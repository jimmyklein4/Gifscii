import json
import urllib

data = json.loads(urllib.urlopen("http://api.giphy.com/v1/gifs/random?api_key=dc6zaTOxFJmzC").read())

img= data['data']['image_url']

url=urllib.urlopen(img)
output=open("giphy.gif", "wb")
output.write(url.read())
output.close()
