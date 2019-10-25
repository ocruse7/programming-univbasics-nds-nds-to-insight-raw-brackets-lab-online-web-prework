$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'

def directors_totals(nds)
  total = 0
  directors_hash = {}
  nds.length.times do |i|
    nds[i][:movies].length.times do |j|
      money = nds[i][:movies][j][:worldwide_gross]
      total += money
    end
    directors_hash[nds[i][:name]] = total
    total = 0
  end
  return directors_hash
  
end
