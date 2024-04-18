module Response
  module Renderers
    module General
      def self.call(_controller, resource, _action, _options)
        { json: resource }
      end
    end
  end
end
