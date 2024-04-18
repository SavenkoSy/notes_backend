require 'swagger_helper'

describe 'Notes API' do
  path '/api/notes' do
    get 'Search for notes' do
      tags 'Notes'
      consumes 'application/json'
      parameter name: :query, in: :query, type: :string, required: false

      context 'list of notes' do
        let(:query) { nil }

        response '200', 'list of notes' do
          run_test! { |response| expect(response.status).to eq 200 }
        end
      end
    end
  end
end
