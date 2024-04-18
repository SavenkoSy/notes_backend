require 'swagger_helper'

describe 'Notes API' do
  path '/api/notes' do
    post 'Creates a note' do
      tags 'Notes'
      consumes 'application/json'
      parameter name: :params, in: :body, schema: {
        type: :object,
        properties: {
          title: { type: :string },
          content: { type: :string }
        },
        required: %w[title content]
      }

      context 'when note is created' do
        let(:params) { attributes_for(:note) }

        response '200', 'note created' do
          run_test! { |response| expect(response.status).to eq 200 }

          example 'application/json', 'ok', {
            data: {
              title: 'title',
              content: 'content',
              created_at: '2024-01-01T01:01:01.011Z',
              updated_at: '2024-01-01T01:01:01.011Z'
            }
          }
        end
      end
    end
  end
end
