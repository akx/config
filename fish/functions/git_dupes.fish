function git_dupes
	git ls-files -s | awk '{print $2, $4;}' | sort | guniq -w20 --all-repeated=prepend | grep -v e69de29bb2d1d6434b8b29ae775ad8c2e48c5391
end	