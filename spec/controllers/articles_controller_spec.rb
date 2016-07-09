require 'rails_helper'

RSpec.describe ArticlesController, type: :controller do

  describe "GET #index" do
    it 'display a list of all articles' do
      get :index
      expect(response).to have_rendered("articles/index")
      expect(response).to have_http_status(200)
      expect(response.body).to include 'Listing Articles'
      # p response
    end
  end

end
