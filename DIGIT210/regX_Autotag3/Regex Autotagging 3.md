# Regex Autotagging 3

## Step 1
find and replace &, <, >
replaced with `&amp; &lt; &gt;`

None found

## Step 2
Find all extra Lines. Make sure no more than 2 new line in row.

Find `\n{3,}`

Replace `\n\n`

##Step 3
Wrap all Paragraphs
Find `\n\n`
Replace `</p>\n\n<p>`

**Added first `<p>` manually 

##Step 4
Tag Titles
Find `(<p>)([IVXLC]+\. .*)(</p>)`
Replace `<title>\2</title>`

##Step 5
Tag Chapters
Find `</p>\n\n<title>`
Replace `</p>\n</chapter>\n\n<chapter><title>`


##Step 6
Manually added `<xml>` and `</xml>`

##Step 7
Auto tag passages in quotes
Find `".+?"`
Replace `<quote>\0</quote>`

##Step 8
Manual Clean-Up


