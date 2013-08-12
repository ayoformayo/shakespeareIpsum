module ShakespeareIpsum
  class Name
    class << self
      file = File.open("lib/shakespeareIpsum/names.txt")
      names = file.read
      CHARACTER_NAMES = names.split(',')
      
      def name
        return CHARACTER_NAMES.sample
      end
    end
  end
end


