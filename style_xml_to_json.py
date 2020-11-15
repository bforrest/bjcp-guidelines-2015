import xmltodict
import pprint
import json

with open('styleguide.xml') as fd:
    doc = xmltodict.parse(fd.read())

f = open("beer-styles.json", "w")

pp = pprint.PrettyPrinter(indent=4)
pp.pprint(json.dumps(doc))

f.write(json.dumps(doc))
f.close

