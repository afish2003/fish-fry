<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    exclude-result-prefixes="xs math"
    version="3.0">

    <xsl:mode on-no-match="shallow-copy"/>
    
    
<!-- Step 1: Wrap all chapters and tag chapter numbers -->
    <xsl:template match="text()">
        <xsl:analyze-string select="." regex="(\n)(CHAPTER) ([IVXLC]+)(\n)" flags="s">
            <!-- @flags="s" sets the "dot matches all" functionality in xsl:analyze-string. Remove it 
            if you need to prevent the dot from matching newline characters. -->
            <xsl:matching-substring>
                <chapter>
                <xsl:value-of select="regex-group(3)"/>">
                </chapter>
            </xsl:matching-substring>
            
            <xsl:non-matching-substring>
                <xsl:apply-templates select="."/>
            </xsl:non-matching-substring>
            
        </xsl:analyze-string>
    </xsl:template>
    
    
    <!--Step 2: Wrap All Headings-->
    <xsl:template match="text()">
        <xsl:analyze-string select="." regex="(\n)(CHAPTER) ([IVXLC]+)(\n)" flags="s">
            <!-- @flags="s" sets the "dot matches all" functionality in xsl:analyze-string. Remove it 
            if you need to prevent the dot from matching newline characters. -->
            <xsl:matching-substring>
                <chapter>
                    <xsl:value-of select="regex-group(3)"/>">
                </chapter>
            </xsl:matching-substring>
            
            <xsl:non-matching-substring>
                <xsl:apply-templates select="."/>
            </xsl:non-matching-substring>
            
        </xsl:analyze-string>
    </xsl:template>
    
    
    <!--Step 2: Wrap all Headings-->
    <xsl:template match="text()">
        <xsl:analyze-string select="." regex="(>\n)(.+?)(\n)" flags="s">
            <!-- @flags="s" sets the "dot matches all" functionality in xsl:analyze-string. Remove it 
            if you need to prevent the dot from matching newline characters. -->
            <xsl:matching-substring>
                <xsl:value-of select="regex-group(1)"/><head><xsl:value-of select="regex-group(2)"/></head><xsl:value-of select="regex-group(3)"/>
            </xsl:matching-substring>
            
            <xsl:non-matching-substring>
                <xsl:apply-templates select="."/>
            </xsl:non-matching-substring>
            
        </xsl:analyze-string>
    </xsl:template>
    
    
    <!--Step 3: Wrap all Text in Chapters-->
    <xsl:template match="text()">
        <xsl:analyze-string select="." regex="(&lt;/head&gt;\n)" flags="s">
            <!-- @flags="s" sets the "dot matches all" functionality in xsl:analyze-string. Remove it 
            if you need to prevent the dot from matching newline characters. -->
            <xsl:matching-substring>
                <xsl:value-of select="regex-group(1)"/><text>
            </xsl:matching-substring>
            
            <xsl:non-matching-substring>
                <xsl:apply-templates select="."/>
            </xsl:non-matching-substring>
            
        </xsl:analyze-string>
    </xsl:template>
    
    
    <!--Step 3.1: Wrap all Text in Chapters-->
    <xsl:template match="text()">
        <xsl:analyze-string select="." regex="(</chapter>\n)" flags="s">
            <!-- @flags="s" sets the "dot matches all" functionality in xsl:analyze-string. Remove it 
            if you need to prevent the dot from matching newline characters. -->
            <xsl:matching-substring>
                <xsl:value-of select="regex-group(1)"/></text>
            </xsl:matching-substring>
            
            <xsl:non-matching-substring>
                <xsl:apply-templates select="."/>
            </xsl:non-matching-substring>
            
        </xsl:analyze-string>
    </xsl:template>
    
    
    <!--Step 4: Remove All Double Lines After Chapters-->
    <xsl:template match="text()">
        <xsl:analyze-string select="." regex="(</chapter>\n)" flags="s">
            <!-- @flags="s" sets the "dot matches all" functionality in xsl:analyze-string. Remove it 
            if you need to prevent the dot from matching newline characters. -->
            <xsl:matching-substring>
                <xsl:value-of select="regex-group(1)"/>\n
            </xsl:matching-substring>
            
            <xsl:non-matching-substring>
                <xsl:apply-templates select="."/>
            </xsl:non-matching-substring>
            
        </xsl:analyze-string>
    </xsl:template>
    
    
    <!--Step 5: Tag All Dates-->
    <xsl:template match="text()">
        <xsl:analyze-string select="." regex="((\d+ January.))" flags="s">
            <!-- @flags="s" sets the "dot matches all" functionality in xsl:analyze-string. Remove it 
            if you need to prevent the dot from matching newline characters. -->
            <xsl:matching-substring>
                <date><xsl:value-of select="regex-group(1)"/></date>
            </xsl:matching-substring>
            
            <xsl:non-matching-substring>
                <xsl:apply-templates select="."/>
            </xsl:non-matching-substring>
            
        </xsl:analyze-string>
    </xsl:template>
    
    
    <xsl:template match="text()">
        <xsl:analyze-string select="." regex="((\d+ Febuary.))" flags="s">
            <!-- @flags="s" sets the "dot matches all" functionality in xsl:analyze-string. Remove it 
            if you need to prevent the dot from matching newline characters. -->
            <xsl:matching-substring>
                <date><xsl:value-of select="regex-group(1)"/></date>
            </xsl:matching-substring>
            
            <xsl:non-matching-substring>
                <xsl:apply-templates select="."/>
            </xsl:non-matching-substring>
            
        </xsl:analyze-string>
    </xsl:template>
    
    
    <xsl:template match="text()">
        <xsl:analyze-string select="." regex="((\d+ March.))" flags="s">
            <!-- @flags="s" sets the "dot matches all" functionality in xsl:analyze-string. Remove it 
            if you need to prevent the dot from matching newline characters. -->
            <xsl:matching-substring>
                <date><xsl:value-of select="regex-group(1)"/></date>
            </xsl:matching-substring>
            
            <xsl:non-matching-substring>
                <xsl:apply-templates select="."/>
            </xsl:non-matching-substring>
            
        </xsl:analyze-string>
    </xsl:template>
    
    
    <xsl:template match="text()">
        <xsl:analyze-string select="." regex="((\d+ April.))" flags="s">
            <!-- @flags="s" sets the "dot matches all" functionality in xsl:analyze-string. Remove it 
            if you need to prevent the dot from matching newline characters. -->
            <xsl:matching-substring>
                <date><xsl:value-of select="regex-group(1)"/></date>
            </xsl:matching-substring>
            
            <xsl:non-matching-substring>
                <xsl:apply-templates select="."/>
            </xsl:non-matching-substring>
            
        </xsl:analyze-string>
    </xsl:template>
    
    
    <xsl:template match="text()">
        <xsl:analyze-string select="." regex="((\d+ May.))" flags="s">
            <!-- @flags="s" sets the "dot matches all" functionality in xsl:analyze-string. Remove it 
            if you need to prevent the dot from matching newline characters. -->
            <xsl:matching-substring>
                <date><xsl:value-of select="regex-group(1)"/></date>
            </xsl:matching-substring>
            
            <xsl:non-matching-substring>
                <xsl:apply-templates select="."/>
            </xsl:non-matching-substring>
            
        </xsl:analyze-string>
    </xsl:template>
    
    
    <xsl:template match="text()">
        <xsl:analyze-string select="." regex="((\d+ June.))" flags="s">
            <!-- @flags="s" sets the "dot matches all" functionality in xsl:analyze-string. Remove it 
            if you need to prevent the dot from matching newline characters. -->
            <xsl:matching-substring>
                <date><xsl:value-of select="regex-group(1)"/></date>
            </xsl:matching-substring>
            
            <xsl:non-matching-substring>
                <xsl:apply-templates select="."/>
            </xsl:non-matching-substring>
            
        </xsl:analyze-string>
    </xsl:template>
    
    
    <xsl:template match="text()">
        <xsl:analyze-string select="." regex="((\d+ July.))" flags="s">
            <!-- @flags="s" sets the "dot matches all" functionality in xsl:analyze-string. Remove it 
            if you need to prevent the dot from matching newline characters. -->
            <xsl:matching-substring>
                <date><xsl:value-of select="regex-group(1)"/></date>
            </xsl:matching-substring>
            
            <xsl:non-matching-substring>
                <xsl:apply-templates select="."/>
            </xsl:non-matching-substring>
            
        </xsl:analyze-string>
    </xsl:template>
    
    
    <xsl:template match="text()">
        <xsl:analyze-string select="." regex="((\d+ August.))" flags="s">
            <!-- @flags="s" sets the "dot matches all" functionality in xsl:analyze-string. Remove it 
            if you need to prevent the dot from matching newline characters. -->
            <xsl:matching-substring>
                <date><xsl:value-of select="regex-group(1)"/></date>
            </xsl:matching-substring>
            
            <xsl:non-matching-substring>
                <xsl:apply-templates select="."/>
            </xsl:non-matching-substring>
            
        </xsl:analyze-string>
    </xsl:template>
    
    
    <xsl:template match="text()">
        <xsl:analyze-string select="." regex="((\d+ September.))" flags="s">
            <!-- @flags="s" sets the "dot matches all" functionality in xsl:analyze-string. Remove it 
            if you need to prevent the dot from matching newline characters. -->
            <xsl:matching-substring>
                <date><xsl:value-of select="regex-group(1)"/></date>
            </xsl:matching-substring>
            
            <xsl:non-matching-substring>
                <xsl:apply-templates select="."/>
            </xsl:non-matching-substring>
            
        </xsl:analyze-string>
    </xsl:template>
    
    
    <xsl:template match="text()">
        <xsl:analyze-string select="." regex="((\d+ October.))" flags="s">
            <!-- @flags="s" sets the "dot matches all" functionality in xsl:analyze-string. Remove it 
            if you need to prevent the dot from matching newline characters. -->
            <xsl:matching-substring>
                <date><xsl:value-of select="regex-group(1)"/></date>
            </xsl:matching-substring>
            
            <xsl:non-matching-substring>
                <xsl:apply-templates select="."/>
            </xsl:non-matching-substring>
            
        </xsl:analyze-string>
    </xsl:template>
    
    
    <xsl:template match="text()">
        <xsl:analyze-string select="." regex="((\d+ November.))" flags="s">
            <!-- @flags="s" sets the "dot matches all" functionality in xsl:analyze-string. Remove it 
            if you need to prevent the dot from matching newline characters. -->
            <xsl:matching-substring>
                <date><xsl:value-of select="regex-group(1)"/></date>
            </xsl:matching-substring>
            
            <xsl:non-matching-substring>
                <xsl:apply-templates select="."/>
            </xsl:non-matching-substring>
            
        </xsl:analyze-string>
    </xsl:template>
    
    
    <xsl:template match="text()">
        <xsl:analyze-string select="." regex="((\d+ December.))" flags="s">
            <!-- @flags="s" sets the "dot matches all" functionality in xsl:analyze-string. Remove it 
            if you need to prevent the dot from matching newline characters. -->
            <xsl:matching-substring>
                <date><xsl:value-of select="regex-group(1)"/></date>
            </xsl:matching-substring>
            
            <xsl:non-matching-substring>
                <xsl:apply-templates select="."/>
            </xsl:non-matching-substring>
            
        </xsl:analyze-string>
    </xsl:template>
    
    
    <xsl:template match="text()">
        <xsl:analyze-string select="." regex="((January \d+.))" flags="s">
            <!-- @flags="s" sets the "dot matches all" functionality in xsl:analyze-string. Remove it 
            if you need to prevent the dot from matching newline characters. -->
            <xsl:matching-substring>
                <date><xsl:value-of select="regex-group(1)"/></date>
            </xsl:matching-substring>
            
            <xsl:non-matching-substring>
                <xsl:apply-templates select="."/>
            </xsl:non-matching-substring>
            
        </xsl:analyze-string>
    </xsl:template>
    
    
    <xsl:template match="text()">
        <xsl:analyze-string select="." regex="((Febuary \d+.))" flags="s">
            <!-- @flags="s" sets the "dot matches all" functionality in xsl:analyze-string. Remove it 
            if you need to prevent the dot from matching newline characters. -->
            <xsl:matching-substring>
                <date><xsl:value-of select="regex-group(1)"/></date>
            </xsl:matching-substring>
            
            <xsl:non-matching-substring>
                <xsl:apply-templates select="."/>
            </xsl:non-matching-substring>
            
        </xsl:analyze-string>
    </xsl:template>
    
    
    <xsl:template match="text()">
        <xsl:analyze-string select="." regex="((March \d+.))" flags="s">
            <!-- @flags="s" sets the "dot matches all" functionality in xsl:analyze-string. Remove it 
            if you need to prevent the dot from matching newline characters. -->
            <xsl:matching-substring>
                <date><xsl:value-of select="regex-group(1)"/></date>
            </xsl:matching-substring>
            
            <xsl:non-matching-substring>
                <xsl:apply-templates select="."/>
            </xsl:non-matching-substring>
            
        </xsl:analyze-string>
    </xsl:template>
    
    
    <xsl:template match="text()">
        <xsl:analyze-string select="." regex="((April \d+.))" flags="s">
            <!-- @flags="s" sets the "dot matches all" functionality in xsl:analyze-string. Remove it 
            if you need to prevent the dot from matching newline characters. -->
            <xsl:matching-substring>
                <date><xsl:value-of select="regex-group(1)"/></date>
            </xsl:matching-substring>
            
            <xsl:non-matching-substring>
                <xsl:apply-templates select="."/>
            </xsl:non-matching-substring>
            
        </xsl:analyze-string>
    </xsl:template>
    
    
    <xsl:template match="text()">
        <xsl:analyze-string select="." regex="((May \d+.))" flags="s">
            <!-- @flags="s" sets the "dot matches all" functionality in xsl:analyze-string. Remove it 
            if you need to prevent the dot from matching newline characters. -->
            <xsl:matching-substring>
                <date><xsl:value-of select="regex-group(1)"/></date>
            </xsl:matching-substring>
            
            <xsl:non-matching-substring>
                <xsl:apply-templates select="."/>
            </xsl:non-matching-substring>
            
        </xsl:analyze-string>
    </xsl:template>
    
    
    <xsl:template match="text()">
        <xsl:analyze-string select="." regex="((June \d+.))" flags="s">
            <!-- @flags="s" sets the "dot matches all" functionality in xsl:analyze-string. Remove it 
            if you need to prevent the dot from matching newline characters. -->
            <xsl:matching-substring>
                <date><xsl:value-of select="regex-group(1)"/></date>
            </xsl:matching-substring>
            
            <xsl:non-matching-substring>
                <xsl:apply-templates select="."/>
            </xsl:non-matching-substring>
            
        </xsl:analyze-string>
    </xsl:template>
    
    
    <xsl:template match="text()">
        <xsl:analyze-string select="." regex="((July \d+.))" flags="s">
            <!-- @flags="s" sets the "dot matches all" functionality in xsl:analyze-string. Remove it 
            if you need to prevent the dot from matching newline characters. -->
            <xsl:matching-substring>
                <date><xsl:value-of select="regex-group(1)"/></date>
            </xsl:matching-substring>
            
            <xsl:non-matching-substring>
                <xsl:apply-templates select="."/>
            </xsl:non-matching-substring>
            
        </xsl:analyze-string>
    </xsl:template>
    
    
    <xsl:template match="text()">
        <xsl:analyze-string select="." regex="((August \d+.))" flags="s">
            <!-- @flags="s" sets the "dot matches all" functionality in xsl:analyze-string. Remove it 
            if you need to prevent the dot from matching newline characters. -->
            <xsl:matching-substring>
                <date><xsl:value-of select="regex-group(1)"/></date>
            </xsl:matching-substring>
            
            <xsl:non-matching-substring>
                <xsl:apply-templates select="."/>
            </xsl:non-matching-substring>
            
        </xsl:analyze-string>
    </xsl:template>
    
    
    <xsl:template match="text()">
        <xsl:analyze-string select="." regex="((September \d+.))" flags="s">
            <!-- @flags="s" sets the "dot matches all" functionality in xsl:analyze-string. Remove it 
            if you need to prevent the dot from matching newline characters. -->
            <xsl:matching-substring>
                <date><xsl:value-of select="regex-group(1)"/></date>
            </xsl:matching-substring>
            
            <xsl:non-matching-substring>
                <xsl:apply-templates select="."/>
            </xsl:non-matching-substring>
            
        </xsl:analyze-string>
    </xsl:template>
    
    
    <xsl:template match="text()">
        <xsl:analyze-string select="." regex="((October \d+.))" flags="s">
            <!-- @flags="s" sets the "dot matches all" functionality in xsl:analyze-string. Remove it 
            if you need to prevent the dot from matching newline characters. -->
            <xsl:matching-substring>
                <date><xsl:value-of select="regex-group(1)"/></date>
            </xsl:matching-substring>
            
            <xsl:non-matching-substring>
                <xsl:apply-templates select="."/>
            </xsl:non-matching-substring>
            
        </xsl:analyze-string>
    </xsl:template>
    
    
    <xsl:template match="text()">
        <xsl:analyze-string select="." regex="((November \d+.))" flags="s">
            <!-- @flags="s" sets the "dot matches all" functionality in xsl:analyze-string. Remove it 
            if you need to prevent the dot from matching newline characters. -->
            <xsl:matching-substring>
                <date><xsl:value-of select="regex-group(1)"/></date>
            </xsl:matching-substring>
            
            <xsl:non-matching-substring>
                <xsl:apply-templates select="."/>
            </xsl:non-matching-substring>
            
        </xsl:analyze-string>
    </xsl:template>
    
    
    <xsl:template match="text()">
        <xsl:analyze-string select="." regex="((December \d+.))" flags="s">
            <!-- @flags="s" sets the "dot matches all" functionality in xsl:analyze-string. Remove it 
            if you need to prevent the dot from matching newline characters. -->
            <xsl:matching-substring>
                <date><xsl:value-of select="regex-group(1)"/></date>
            </xsl:matching-substring>
            
            <xsl:non-matching-substring>
                <xsl:apply-templates select="."/>
            </xsl:non-matching-substring>
            
        </xsl:analyze-string>
    </xsl:template>
</xsl:stylesheet>