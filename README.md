# Comedy Transcripts 

source: https://scrapsfromtheloft.com/stand-up-comedy-scripts

## Steps

- download transcripts using python script 
- write XSLT-script to convert .html-transcripts to XML-files 
- create XML format for annotating transcripts 
- annotate example transcripts

## problems 

parser: 
- & needs to be written as &amp;. Solved by regex. 
- var ... = {...}; causes error. all deleted using regex.
- meta tags aren't closed, async attributes aren't specified. Solved by BeautifulSoup.

