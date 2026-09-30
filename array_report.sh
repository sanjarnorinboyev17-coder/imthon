#!/bin/bash

mevalar=(olma banan gilos uzum shaftoli)

echo "Array elementlari:"
for meva in "${mevalar[@]}"; do
    echo "$meva"
done

echo "Elementlar soni: ${#mevalar[@]}"

qidir() {
    for meva in "${mevalar[@]}"; do
        if [ "$meva" = "$1" ]; then
            echo "$1 array ichida bor."
            return
        fi
    done
    echo "$1 array ichida yo‘q."
}

read -r -p "Qidiriladigan qiymatni kiriting: " qiymat
if [ -z "$qiymat" ]; then
    echo "Noto‘g‘ri input: qiymat kiritilmadi."
else
    qidir "$qiymat"
fi
