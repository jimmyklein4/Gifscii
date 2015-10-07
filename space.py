import re
import os

f = open('img.txt', 'r')
contents = f.read()
f.close
finder = re.compile('<!DOCTYPE HTML>.*?<pre>',re.DOTALL)
allStuff = finder.findall(contents)
print len(allStuff)
#re.sub('<\/pre>.*?<\/html>', ' ', contents, flags=re.DOTALL)
f= open('img.txt','w')
newcontents= re.sub(finder, '\n', contents)
print(newcontents)
f.write(newcontents)
