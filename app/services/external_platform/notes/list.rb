module ExternalPlatform
  module Notes
    class List
      def self.call
        data = File.read(Rails.root.join('public/data.json'))

        JSON.parse(data)
      end
    end
  end
end
