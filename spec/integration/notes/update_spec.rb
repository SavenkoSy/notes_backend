require 'swagger_helper'

describe 'Notes API' do
  path '/api/notes/{id}' do
    patch 'Update a note' do
      tags 'Notes'
      consumes 'application/json'
      parameter name: :id, type: :integer, in: :path, required: true, description: 'id of note'
      parameter name: :params, in: :body, schema: {
        type: :object,
        properties: {
          title: { type: :string },
          content: { type: :string }
        }
      }

      context 'when note is updated' do
        let(:note) { create(:note) }
        let(:id) { note.id }
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
