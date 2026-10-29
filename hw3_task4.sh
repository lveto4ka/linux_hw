#!/bin/bash
if [ ! -d "$1" ]; then
    echo "Error: there is no such directory"
    exit 1
fi
echo "Отчeт о файлах в директории: $1"
files="$(find "$1" -type  f | wc -l)"
echo "Всего файлов: $files"
size="$(find "$1" -type f -printf '%s\n' | awk '{sum += $1} END{print sum}')"
echo "Общий размер файлов в директории: $size"

declare -A count
while read -r  filename; do
if [[ "$filename" == *.* ]]; then
    ext="${filename##*.}"
else
    ext="Файл без расширения"
fi
    ((count["$ext"]++))
done < <(find "$1" -type f -printf '%f\n')
echo "Количество файлов по расширениям:"
for ext in "${!count[@]}"; do
    echo "$ext: ${count[$ext]}"
done


