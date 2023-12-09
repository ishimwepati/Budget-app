require 'rails_helper'

RSpec.describe 'Categories', type: :request do
  describe 'POST /create' do
    it 'redirects to categories#index on success' do
      post '/categories', params: { category: { name: 'Example', icon: 'example_icon' } }

      expect(response).to have_http_status(:redirect)

      follow_redirect!

      expect(response).to have_http_status(:success)
    end
  end
end
