import json
import logging
import os 
dir_path = os.path.dirname(os.path.realpath(__file__))

logger = logging.getLogger('scope.name')

beerFile = os.path.join(dir_path, "beer-only-style-guide.json") 
with open(beerFile) as beerStyles:
  data = beerStyles.read()
  yadda = json.dumps(data)
  print(yadda)
logger.debug(yadda)