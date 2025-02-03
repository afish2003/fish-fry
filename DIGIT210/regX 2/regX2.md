Step 1
Find-all `&`
Replace All with `amp&;`
315 Results Replaced

Find-all <
Replace All with `&lt;`
0 Results Found

Find-all >
Replace All with `&gt;`
0 Results Found


Step 2
Mark all years

find `(\d\d\d\d)`
replace `<year>\1</year>`

Step 3
Mark All Titles
`^(.+?)\t(<year>)` Find All
`<title>\1</title>\2` Replace All

Step 4
Mark All Locations
`(</year>)\t"?(.+?)"?(\t)` Find All
`\1<country>\2</country>\3` Replace All


Step 5
Mark All Runtime
`\t(\d+) (min)` Find All
`<runTime unit="\2">\1</runTime>` Replace All


Step 6
Collate All Year,Title,Location,Runtime Packages
`.+` Find All
`<movie>\0</movie>` Replace All
Dot Matches All NO


Step 7
Band everything in `<xml> </xml>`
`.+` Find All
`<movie>\0</movie>` Replace All
Dot Matches All YES

