#!/bin/sh

BOLD_GREEN="\033[1;92m"
ITALIC_WHITE="\033[3;97m"
GRAY="\033[90m"
RESET="\033[0m"

printf "${BOLD_GREEN}SayHello${RESET} ${GRAY}-${RESET} ${ITALIC_WHITE}Hallo aus dem Docker-Container!${RESET}\n"
