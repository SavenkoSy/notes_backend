require 'spec_helper'

RSpec.configure do |config|
  config.swagger_root = Rails.root.join('swagger').to_s

  config.swagger_docs = {
    'swagger.yaml' => {
      openapi: '3.0.1',
      info: {
        title: 'API V1',
        version: 'v1'
      },
      servers: [
        {
          url: 'http://localhost:3000',
          description: 'Local environment',
          variables: {
            defaultHost: {
              default: 'http://localhost:3000'
            }
          }
        },
        {
          url: 'http://localhost:3300',
          description: 'Docker environment',
          variables: {
            defaultHost: {
              default: 'http://localhost:3300'
            }
          }
        }
      ]
    }
  }

  config.swagger_format = :yaml
end
