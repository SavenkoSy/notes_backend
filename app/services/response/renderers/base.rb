# frozen_string_literal: true

module Response
  module Renderers
    class Base < BaseService
      SUCCESS_STATUSES = {
        create: :created,
        update: :ok,
        destroy: :no_content,
        show: :ok,
        index: :ok
      }.freeze

      def initialize(controller, resource, action, options = {})
        @controller = controller
        @resource = resource
        @action = action
        @options = options
      end

      def call
        {
          json: json,
          status: status,
          serializer: serializer,
          options: options
        }
      end

      private

      attr_reader :controller, :resource, :action, :options

      def json
        raise NotImplementedError
      end

      def status
        options[:status].presence || SUCCESS_STATUSES.fetch(action.to_sym)
      end

      def serializer
        options[:serializer] || default_serializer
      end

      def default_serializer
        "#{resource.class}Serializer".constantize
      end
    end
  end
end
