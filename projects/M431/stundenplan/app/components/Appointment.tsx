// components/Appointment.tsx
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
}

export default function Appointment({event}: AppointmentProps) {
    return (
        <div className="p-4 mb-2 border rounded shadow-sm bg-white">
            <h2 className="text-lg font-semibold">{event.summary}</h2>
            <p className="text-sm text-gray-600">
                {event.start.toLocaleString()} - {event.end.toLocaleString()}
            </p>
            {event.location && <p className="text-sm italic">{event.location}</p>}
            {event.description && <p className="mt-1 text-gray-700">{event.description}</p>}
        </div>
    );
}
