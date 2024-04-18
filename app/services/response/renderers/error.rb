module Response
  module Renderers
    class Error < Response::Renderers::Base
      private

      def json
        { errors: resource.errors.to_h }
      end

      def status
        :unprocessable_entity
      end

      def serializer
        nil
      end
    end
  end
end
