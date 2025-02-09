# Regex Autotagging 4

## Step 1
find and replace &, <, >
replaced with `&amp; &lt; &gt;`

None found


## Step 2
Check for extra Lines. Make sure no more than 2 `\n` in row.

Find `\n{3,}`

Replace `\n\n`

None found


##Step 3
Wrap all Paragraphs
Find `\n\n`
Replace `</line>\n\n<line>`


##Step 4
Manually add Root Element
'<xml> </xml>'

##Step 5
Manual Clean-Up
