#  jq '[.docs[] 
#  | {title,author_name: .author_name[0], publish_year: .publish_year[0]} 
#  | select(.author_name!=null and .publish_year!=null)]' 
#  openlibrary.json

# jq '[.styleguide.class[] 
# | select(.["@type"]|test("beer")).category[]]' beer-styles.json #> just-beer.json


# works without splitting tags into an array
# jq '[.styleguide.class[] 
# | select(.["@type"]|test("beer")).category[]
# | {category: .["@id"], name: .name, notes: .notes, subcategory: .subcategory[] 
# | { id: .["@id"], name: .name, aroma: .aroma, appearance: .appearance, flavor: .flavor, mouthfeel: .mouthfeel,
# impression: .impression, comments: .comments, history: .history, ingredients: .ingredients,
# comparision: .comparison, examples: .examples, stats: .stats, tags: .tags }} ]' beer-styles.json


jq '[.styleguide.class[] 
| select(.["@type"]|test("beer")).category[]
| {category: .["@id"], name: .name, notes: .notes, subcategory: .subcategory[] 
| { id: .["@id"], name: .name, aroma: .aroma, appearance: .appearance, flavor: .flavor, mouthfeel: .mouthfeel,
impression: .impression, comments: .comments, history: .history, ingredients: .ingredients,
comparision: .comparison, examples: .examples, stats: .stats, 
tags: .tags }} ]' beer-styles.json > just-beer.json


#map(try(.tags |= split(",")))}