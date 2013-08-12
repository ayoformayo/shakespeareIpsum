module ShakespeareIpsum

  class Sonnets
    class << self
      file = File.read("lib/shakespeareIpsum/sonnets.txt")
      raw_sonnet_array = file.split(/\n{2,}/)
      edited_sonnet_array = []
      raw_sonnet_array.each do |sonnet| 
        edited_sonnet_array << sonnet.split(/\n/)
      end

      FINAL_SONNET_ARRAY = []
      edited_sonnet_array.each do |sub_array|
        sub_array.each {|line| line.strip!}
        FINAL_SONNET_ARRAY << sub_array.drop(1)
      end

      def sonnet
        return FINAL_SONNET_ARRAY.sample.join("\n")
      end

      def lines(number)
        return FINAL_SONNET_ARRAY.sample.slice(0,number).join("\n")
      end
    end
  end
end
