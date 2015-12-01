require 'rails_helper'

RSpec.describe AlbumsController, type: :controller do
  describe "GET 'index'" do
    it "is successful" do
      get :index
      expect(response.status).to eq 200
    end
  end
  describe "GET 'new'" do
    it "is successful" do
      get :new
      expect(response.status).to eq 200
    end
  end
  describe "GET 'show/:id'" do
    it "is successful" do
      @album = Album.create(name: "hello")
      get :show, id: 1
      expect(response.status).to eq 200
    end
  end
end
