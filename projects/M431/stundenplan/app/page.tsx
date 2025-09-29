import CalendarClient, {CalendarScheme } from "@/app/components/calender";
import sharp from "sharp";

const lightScheme: CalendarScheme = {
    weekdayColors: [
        "#FFD580", // Sunday - warm orange
        "#90EE90", // Monday - bright green
        "#87CEFA", // Tuesday - sky blue
        "#FFB6C1", // Wednesday - pink
        "#D8BFD8", // Thursday - purple/lavender
        "#FF7F7F", // Friday - coral/red
        "#FFE066", // Saturday - sunny yellow
    ],
    backgroundColor: "#FFFFFF", // white background
    foregroundColor: "#111827", // dark gray text
};

const darkScheme: CalendarScheme = {
    weekdayColors: [
        "#1f2937", // Sunday
        "#1e7d2b", // Monday
        "#7f1d1d", // Tuesday
        "#4a044e", // Wednesday
        "#312e81", // Thursday
        "#064e3b", // Friday
        "#374151", // Saturday
    ],
    backgroundColor: "#111827", // dark background
    foregroundColor: "#f9fafb", // light text
};

export default function Home() {
    const scheme = darkScheme;

    return (
        <div>
            <CalendarClient scheme={scheme}/>
        </div>
    );
}
