# Regex Autotagging 2

## Step 1
find and replace &, <, >
replaced with `&amp; &lt; &gt;`

None found

## Step 2
Find all Lines and wrap in `<line> </line>`

Find `.+`

Replace `<line> \0 </line>`

##Step 3
Find all roman numeral lines and replace with '<sonnet> </sonnet>' also include '@number' attribute

Find `(<line>  )([IVXLC]+)(</line>)`
Replace `<sonnet number="\2">`

Close off each sonnet
Find `(</line>)(\n)(\s)`
Replace `\1\2</sonnet>\2\2`

##Step 4
Manually added `<xml>` and `</xml>`

##Step 5
Reached into origional file and copy/pasted author stuff into file. The find and replace for the sonnets messed it up alot.

