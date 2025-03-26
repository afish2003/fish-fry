#RegX Steps
## Step 1
find and replace &, <, >
replaced with `&amp; &lt; &gt;`
Only `&` was found

##Step 2
Added <xml> </xml>

#XSLT STEPS
## Step 1
Wrap all chapters and tag chapter numbers
Find `(\n)(CHAPTER) ([IVXLC]+)(\n)`
Replace `</chapter>\n\n<chapter num="\3">`

##Step 2
Wrap all Headings
Find `(>\n)(.+?)(\n)`
Replace `\1<head>\2</head>\3`

##Step 3
Wrap all text in chapters
Part 1
Find `(</head>\n)`
Replace `\1<text>`

Part 2
Find `(</chapter>)`
Replace `</text>\n\1`

##Step 4
Remove all double new lines except for after chapters
Find `\n{2}`
Replace `\n`

Re add in double new lines after chapters
Find `(</chapter>\n)`
Replace `\1\n`

##Step 5
Tag all dates
Find `(\d+ January.)` Repeated for all months
Replace `<date>\1</date>`

Find `(January \d+.)` Repeated for all months
Replace <date>\1</date>

##Step Omitted
I could not figure out how to wrap the letters. I tried `(<date>)(.+?)(<date>)` but that did not work properly.