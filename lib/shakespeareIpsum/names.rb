require_relative '../shakespeareIpsum'
class ShakespeareIpsum::Name
  file = File.open('names.txt')
  names = file.read
  CHARACTER_NAMES = names.split(',')
  
  def self.name
    return CHARACTER_NAMES.sample
  end
end

p ShakespeareIpsum::Name.name
