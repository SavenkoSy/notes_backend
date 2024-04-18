# frozen_string_literal: true

module Response
  module Renderers
    class Model < Response::Renderers::Base
      private

      def json
        resource
      end
    end
  end
end
