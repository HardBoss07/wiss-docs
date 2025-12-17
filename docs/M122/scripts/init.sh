#!/bin/bash

parent_path=$(cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P)
cd "parent_path"

echo "Aktiviere alle Skripte in: $parent_path"

chmod +x *.sh

echo "Fertig! Alle Skripte sind nun ausführbar."