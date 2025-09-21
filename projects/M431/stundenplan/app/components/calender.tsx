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

export default function CalendarClient() {
    const [events, setEvents] = useState<CalendarEvent[]>([]);

    useEffect(() => {
        try {
            const jcalData = ICAL.parse(data);
            const comp = new ICAL.Component(jcalData);
            const vevents = comp.getAllSubcomponents("vevent");

            const parsedEvents: CalendarEvent[] = vevents.map(eventComp => {
                const event = new ICAL.Event(eventComp);
                return {
                    summary: event.summary,
                    start: event.startDate.toJSDate(),
                    end: event.endDate.toJSDate(),
                    location: event.location,
                    description: event.description,
                };
            });

            setEvents(parsedEvents);
        } catch (err) {
            console.error("Failed to parse ICS data:", err);
        }
    }, []);

    const eventsByWeek: Record<number, Record<string, CalendarEvent[]>> = {};

    events.forEach(event => {
        const week = getWeekNumber(event.start);
        const day = weekdays[event.start.getDay()];
        if (!eventsByWeek[week]) eventsByWeek[week] = {};
        if (!eventsByWeek[week][day]) eventsByWeek[week][day] = [];
        eventsByWeek[week][day].push(event);
    });

    const sortedWeeks = Object.keys(eventsByWeek)
        .map(Number)
        .sort((a, b) => a - b);

    return (
        <div>
            <h1 className="text-2xl font-bold mb-4">Calendar Events</h1>
            {sortedWeeks.map(week => {
                const weekEvents = eventsByWeek[week];
                const nonEmptyDays = weekdays.filter(day => weekEvents[day]?.length > 0);

                return (
                    <div key={week} className="mb-6">
                        <h2 className="text-xl font-semibold mb-2">Week {week}</h2>
                        <div className="flex gap-4">
                            {nonEmptyDays.map(day => (
                                <div key={day} className="border p-2 rounded bg-gray-50 flex-1">
                                    <h3 className="text-center font-semibold mb-2">{day}</h3>
                                    {weekEvents[day].map((event, i) => (
                                        <Appointment key={i} event={event}/>
                                    ))}
                                </div>
                            ))}
                        </div>
                    </div>
                );
            })}
        </div>
    );
}
