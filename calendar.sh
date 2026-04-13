#!/bin/bash

# 1. Define paths
DOWNLOADS_DIR="$HOME/Downloads"
TARGET_FILE="projects/M431/stundenplan/app/components/data.ts"

# 2. Find the most recent .taf file
LATEST_TAF=$(ls -t "$DOWNLOADS_DIR"/*.taf 2>/dev/null | head -n 1)

if [ -z "$LATEST_TAF" ]; then
    echo "Error: No .taf file found in $DOWNLOADS_DIR"
    exit 1
fi

# 3. Extract the URL from the file
# This assumes the .taf file contains the URL as its primary text
FILE_URL=$(cat "$LATEST_TAF" | tr -d '[:space:]')

if [ -z "$FILE_URL" ]; then
    echo "Error: The .taf file is empty."
    exit 1
fi

echo "Fetching data from: $FILE_URL"

# 4. Curl the URL and clean the response
# -s runs curl in silent mode
RAW_CONTENT=$(curl -s "$FILE_URL")
CLEANED_CONTENT=$(echo "$RAW_CONTENT" | sed 's/\\n\\n----------------------------\\n//g')

# 5. Write to the TypeScript file
cat <<EOF > "$TARGET_FILE"
export const data: string =
\`
$CLEANED_CONTENT
\`;
EOF

echo "Successfully updated $TARGET_FILE"