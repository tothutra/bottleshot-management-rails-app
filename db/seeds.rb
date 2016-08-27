# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

bottle_shape_list = [
  ["Bordeaux - Traditional", "based on Verallia - Bordeaux Ecova Tradition"],
  ["Bordeaux - Premium / Tapered", "based on Verallia - Bordeaux Ecova Terroir"],
  ["Bordeaux - Classic Premium", "based on Saverglass - Classic Bordelaise"],
  ["Bordeaux - Super Premium / Tapered", "based on Saverglass - Constance"],
  ["Burgundy - High Shoulder", "based on Saint-Gobain - Bourgogne Standard"],
  ["Burgundy - Low Shoulder", "based on Verallia - Bourgogne Avantage"],
  ["Hock - Traditional", "based on Saint-Gobain - Flute Alsace Trad."],
  ["Sparkling - Champagne", "based on Saverglass - Passion"],
  ["Sparkling - Prosecco", "based on Saverglass - Passion"],
  ["Specialty - Port", "500mL based on Tortuga"],
  ["Specialty - Icewine / Late Harvest 375ml", ""],
  ["Magnum - Tappered Bordeaux", "150cL based on Saverglass - Icon"],
  ["Magnum - Burgundy", "150cL based on Saverglass - Tradition"],
  ["Other", ""]
]

bottle_shape_list.each do |name, description|
  BottleShape.create(name: name, description: description)
end

glass_color_list = [
  ["Clear/Flint", ""],
  ["Antique Green", ""],
  ["Dead Leaf", ""],
  ["Champagne Green", ""],
  ["Light Blue", ""],
  ["Dark Amber", ""],
  ["Amber", ""],
  ["Black", ""],
  ["Other", ""]
]

glass_color_list.each do |name, description|
  GlassColor.create(name: name, description: description)
end

wine_color_list = [
  ["Light-Bodied Red", "e.g. Pinot Noir, Zweigelt & Gamay"],
  ["Medium-Bodied Red", "e.g. Merlot, Sangiovese & Zinfandel"],
  ["Full-Bodied Red", "e.g. Syrah, Malbec & Cab. Sauv."],
  ["Old Red", "e.g. Port Style Wine"],
  ["Light-Bodied White", "e.g. Pinot Grigio, Albarino & Muscadet"],
  ["Light-to-Medium-Bodied White", "e.g. Sauvignon Blanc & Pinot Gris"],
  ["Medium-Bodied White", "e.g. Riesling & Semillon"],
  ["Full-Bodied White", "e.g. Chardonnay & Viognier"],
  ["Light Salmon Rosé", "e.g. Pinot Noir"],
  ["Salmon Rosé", "e.g. Merlot"],
  ["Light Pink Rosé", "e.g. Mourvèdre"],
  ["Deep Pink Rosé", "e.g. Grenache"],
  ["Other", ""]
]

wine_color_list.each do |name, description|
  WineColor.create(name: name, description: description)
end

capsule_list = [
  ["Screw Cap / Stelvin", "matte, semi-matte or glossy finish"],
  ["Metal or PVC capsule - Regular", "matte, semi-matte or glossy finish"],
  ["Metal or PVC - High ring", "matte, semi-matte or glossy finish"],
  ["Champagne cork with wrap", "matte, semi-matte or glossy finish"],
  ["Naked glass with cork", ""],
  ["Wax with cork", ""],
  ["Zork", ""],
  ["Bottle cap", ""],
  ["Other", ""]
]

capsule_list.each do |name, description|
  Capsule.create(name: name, description: description)
end

paperstock_list = [
  ["Estate", "bright white, natural white or cream"],
  ["Matte Litho", "bright white, natural white or cream"],
  ["Cotton / Felt", "bright white, natural white or cream"],
  ["Linen", "bright white, natural white or cream"],
  ["Classic Laid", "bright white, natural white or cream"],
  ["Tramado", "bright white, natural white or cream"],
  ["Clear / Transparent", ""],
  ["Other", ""]
]

paperstock_list.each do |name, description|
  Paperstock.create(name: name, description: description)
end

label_finish_list = [
  ["Light Gold Foil", ""],
  ["Warm Gold Foil", ""],
  ["Silver Foil", ""],
  ["Copper Foil", ""],
  ["Embossing", ""],
  ["Debossing", ""],
  ["Gloss Varnish", ""],
  ["Pearl Foil", ""],
  ["Other", ""]
]

label_finish_list.each do |name, description|
  LabelFinish.create(name: name, description: description)
end

