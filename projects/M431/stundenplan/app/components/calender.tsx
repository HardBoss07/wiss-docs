"use client";
import {useEffect, useState} from "react";
import ICAL from "ical.js";
import {data} from "./data";
import Appointment from "@/app/components/Appointment";

type CalendarEvent = {
    summary: string;
    start: Date;
    end: Date;
    location?: string;
    description?: string;
};

const weekdays = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"];

function getWeekNumber(date: Date) {
    const d = new Date(date.getTime());
    d.setHours(0, 0, 0, 0);
    d.setDate(d.getDate() + 4 - (d.getDay() || 7));
    const yearStart = new Date(d.getFullYear(), 0, 1);
    return Math.ceil(((d.getTime() - yearStart.getTime()) / 86400000 + 1) / 7);
}

// 🎨 Theme interface
export interface CalendarScheme {
    weekdayColors: string[]; // array of 7 colors
    backgroundColor: string;
    foregroundColor: string;
}

interface CalendarClientProps {
    scheme: CalendarScheme;
}

export default function CalendarClient({scheme}: CalendarClientProps) {
    const [events, setEvents] = useState<CalendarEvent[]>([]);

    useEffect(() => {
        try {
            const jcalData = ICAL.parse(data);
            const comp = new ICAL.Component(jcalData);
            const vevents = comp.getAllSubcomponents("vevent");

            const now = new Date();
            now.setHours(0, 0, 0, 0); // cutoff at midnight today

            const parsedEvents: CalendarEvent[] = vevents
                .map(eventComp => {
                    const event = new ICAL.Event(eventComp);
                    return {
                        summary: event.summary,
                        start: event.startDate.toJSDate(),
                        end: event.endDate.toJSDate(),
                        location: event.location,
                        description: event.description,
                    };
                })
                .filter(e => e.end >= now);

            setEvents(parsedEvents);
        } catch (err) {
            console.error("Failed to parse ICS data:", err);
        }
    }, []);

    // Group events by week + day
    const eventsByWeek: Record<number, Record<string, CalendarEvent[]>> = {};

    events.forEach(event => {
        const week = getWeekNumber(event.start);
        const day = weekdays[event.start.getDay()];
        if (!eventsByWeek[week]) eventsByWeek[week] = {};
        if (!eventsByWeek[week][day]) eventsByWeek[week][day] = [];
        eventsByWeek[week][day].push(event);
    });

    // Attach earliest date per week for sorting
    const weeksWithDates = Object.entries(eventsByWeek).map(([week, days]) => {
        const allEvents = Object.values(days).flat();
        const earliestEvent = allEvents.reduce(
            (earliest, e) => (e.start < earliest ? e.start : earliest),
            allEvents[0].start
        );
        return {week: Number(week), year: earliestEvent.getFullYear(), earliestDate: earliestEvent, days};
    });

    // Sort weeks chronologically
    const sortedWeeks = weeksWithDates.sort(
        (a, b) => a.earliestDate.getTime() - b.earliestDate.getTime()
    );

    return (
        <div
            style={{backgroundColor: scheme.backgroundColor, color: scheme.foregroundColor}}
            className="p-4 rounded"
        >
            <h1 className="text-2xl font-bold mb-4">Calendar Events</h1>
            {sortedWeeks.map(({week, year, days}) => {
                const nonEmptyDays = weekdays.filter(day => days[day]?.length > 0);

                return (
                    <div key={`${week}-${year}`} className="mb-6">
                        <h2 className="text-xl font-semibold mb-2">
                            Week {week}, {year}
                        </h2>
                        <div className="flex gap-4">
                            {nonEmptyDays.map(day => {
                                const dayIndex = weekdays.indexOf(day);
                                const dayColor = scheme.weekdayColors[dayIndex] || "#f0f0f0";

                                return (
                                    <div
                                        key={day}
                                        className="border p-2 rounded flex-1"
                                        style={{backgroundColor: dayColor}}
                                    >
                                        <h3 className="text-center font-semibold mb-2">{day}</h3>
                                        {days[day]
                                            .sort((a, b) => a.start.getTime() - b.start.getTime())
                                            .map((event, i) => (
                                                <Appointment key={i} event={event}/>
                                            ))}
                                    </div>
                                );
                            })}
                        </div>
                    </div>
                );
            })}
        </div>
    );
}
