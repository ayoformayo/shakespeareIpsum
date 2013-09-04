module ShakespeareIpsum
  class Name
    class << self
      file = File.read(File.dirname(File.expand_path(__FILE__)) + "/names.txt")
      # file = File.read(File.dirname(File.expand_path(__FILE__)) + "/sonnets.txt")
      # names = file.read
      CHARACTER_NAMES = file.split(',')
      
      def name
        return CHARACTER_NAMES.sample
      end
    end
  end
end


