#!/bin/bash
(ls count >> /dev/null 2>&1 && a=1) || a=0
if [ $a == 0 ]
then
	echo " firsttime"
	touch count
   ./script.sh
else
	echo " secondtime"
	git add .
	git commit -a --allow-empty-message -m ''
	filename=`cat config`
	git push -u origin main https://kaushikkodeeswaran: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@github.com/kaushikkodeeswaran/${filename}"-.git" --all
fi