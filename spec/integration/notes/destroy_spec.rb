require 'swagger_helper'

describe 'Notes API' do
  path '/api/notes/{id}' do
    delete 'Update a note' do
      tags 'Notes'
      consumes 'application/json'
      parameter name: :id, type: :integer, in: :path, required: true, description: 'id of note'

      context 'when note is destroyed' do
        let!(:note) { create(:note) }
        let(:id) { note.id }

        response '204', 'note is deleted' do
          run_test! { |response| expect(response.status).to eq 204 }
        end
      end
    end
  end
end
