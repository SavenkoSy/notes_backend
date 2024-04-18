module Response
  class Renderer
    def self.call(controller, object, action, options = {})
      case object
      when Dry::Validation::Result
        Response::Renderers::Error
      when ActiveRecord::Relation
        Response::Renderers::List
      when ApplicationRecord
        Response::Renderers::Model
      else
        Response::Renderers::General
      end.call(controller, object, action, options)
    end
  end
end
