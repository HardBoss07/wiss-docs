import React from "react";

type CalendarEvent = {
    summary: string;
    start: Date;
    end: Date;
    location?: string;
    description?: string;
};

interface AppointmentProps {
    event: CalendarEvent;
    textColor?: string; // text color from theme
    bgColor?: string;   // optional card background color
}

export default function Appointment({event, textColor, bgColor}: AppointmentProps) {
    const cleanSummary = event.summary.includes("/")
        ? event.summary.split("/").pop()?.trim()
        : event.summary;

    const cleanLocation = event.location
        ? event.location.split(",")[0].trim()
        : undefined;

    return (
        <div
            className="p-4 mb-2 border rounded shadow-sm"
            style={{
                color: textColor || undefined,
                backgroundColor: bgColor || "#ffffff",
            }}
        >
            <h2 className="text-md font-semibold">{cleanSummary}</h2>
            <p className="text-sm">
                {event.start.toLocaleDateString()}
            </p>
            <p className="text-sm">
                {event.start.toLocaleTimeString([], {hour: "2-digit", minute: "2-digit"})} -{" "}
                {event.end.toLocaleTimeString([], {hour: "2-digit", minute: "2-digit"})}
            </p>
            {cleanLocation && <p className="text-sm italic">{cleanLocation}</p>}
        </div>
    );
}
