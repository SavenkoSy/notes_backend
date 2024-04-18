module Response
  module Renderers
    class List < Response::Renderers::Base
      private

      def json
        ActiveModel::Serializer::CollectionSerializer.new(
          resource,
          serializer: item_serializer
        )
      end

      def serializer
        nil
      end

      def item_serializer
        "#{resource.class.to_s.split('::').first}Serializer".constantize
      end
    end
  end
end
