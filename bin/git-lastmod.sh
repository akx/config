#!/bin/bash
(
	git ls-files | sed 's/^/+ /'
	git log --format=format:"~ %aI" --name-only .
) | gawk '
/^~/ {date=$2;}
/^+/ {extant[$2] = 1;}
/^[^~+]/ {dates[$1] = date;}
END { for (file in dates) if(extant[file]) print(dates[file], file); }
' | sort