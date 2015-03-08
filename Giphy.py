import json
import urllib

data = json.loads(urllib.urlopen("http://api.giphy.com/v1/gifs/search?q=ryan+gosling&api_key=dc6zaTOxFJmzC&limit=5").read())

img= data['data'][0]['images']['fixed_height']['url']

url=urllib.urlopen(img)
print url
output=open("giphy.gif", "wb")
output.write(url.read())
output.close()
