$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)

require 'bundler/setup'
require 'active_support/inflector'
require 'httparty'
require 'pry'
require 'metaxa'
require 'json'

include Metaxa

URL = 'http://www.colourlovers.com/api/colors?format=json&numResults=30'.freez

colors = HTTParty.get(URL).tap do |res|
  JSON.parse(res.body)
end

colors.each do |c|
  c['name'] = c['title'].parameterize.underscore
  introduce c['name'], with_value: c['rgb']
end

introduce :colors, with_value: colors.map { |c| c['name'].to_sym }

Pry.start

# Usage:
#
# [1] pry(main)> red
# => {"red"=>255, "green"=>0, "blue"=>0}
# [2] pry(main)> aglet
# => {"red"=>240, "green"=>240, "blue"=>216}
# [3] pry(main)> black_tulip
# => {"red"=>66, "green"=>9, "blue"=>67}
# [4] pry(main)> colors
# => [:black,
#  :white,
#  :dutch_teal,
#  :serenity_is,
#  :heart_of_gold,
#  :hot_pink,
#  :mighty_slate,
#  :haunted_milk,
#  :vanilla_cream,
#  :certain_frogs,
#  :red,
#  :grr_ey,
#  :vitamin_c,
#  :sugar_hearts_you,
#  :bloons,
#  :sex_on_the_floor,
#  :orange_icing,
#  :aglet,
#  :darth_gray,
#  :strawberry_lipgloss,
#  :raspberry_lemonade,
#  :minted_peas,
#  :barbie_world,
#  :chartreuse,
#  :christmas_blue,
#  :love_like_a_man,
#  :millennial_blue,
#  :lickable_lips,
#  :alice_in_freezeland,
#  :black_tulip]
# [5] pry(main)>
