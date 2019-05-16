#!/usr/bin/env bash
find $1 -name "*.$2" -exec cat {} \; >tmp.txt
soffice --headless --convert-to docx tmp.txt
rm tmp.txt
