#!/bin/bash
export LC_ALL=C.UTF-8
echo "Топ 3 наболее используемых слов в файле:"
grep -oE '[[:alnum:]]+' "$1" | tr '[:upper:]' '[:lower:]' | sort | uniq -c | sort -rn | head -n 3 

