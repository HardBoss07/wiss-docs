"use client";
import {useEffect, useState} from "react";
import CalendarClient, {CalendarScheme} from "@/app/components/calender";

const lightScheme: CalendarScheme = {
    weekdayColors: [
        "#FFD580", "#90EE90", "#87CEFA", "#FFB6C1",
        "#D8BFD8", "#FF7F7F", "#FFE066",
    ],
    backgroundColor: "#FFFFFF",
    foregroundColor: "#111827",
};

const darkScheme: CalendarScheme = {
    weekdayColors: [
        "#1f2937", "#1e7d2b", "#7f1d1d", "#4a044e",
        "#312e81", "#064e3b", "#374151",
    ],
    backgroundColor: "#111827",
    foregroundColor: "#f9fafb",
};

export default function Home() {
    const [scheme, setScheme] = useState<CalendarScheme>(lightScheme);

    useEffect(() => {
        // Detect user preference
        const mediaQuery = window.matchMedia("(prefers-color-scheme: dark)");

        const updateScheme = () => {
            setScheme(mediaQuery.matches ? darkScheme : lightScheme);
        };

        // Initial check
        updateScheme();

        // Listen for changes (user switches theme)
        mediaQuery.addEventListener("change", updateScheme);

        return () => {
            mediaQuery.removeEventListener("change", updateScheme);
        };
    }, []);

    return (
        <div>
            <CalendarClient scheme={scheme}/>
        </div>
    );
}
