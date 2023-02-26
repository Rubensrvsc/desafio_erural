require 'rails_helper'

RSpec.describe "Users", type: :request do
  describe "GET /new_invite" do
    it "returns http success" do
      get "/user/new_invite"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /invite" do
    it "returns http success" do
      get "/user/invite"
      expect(response).to have_http_status(:success)
    end
  end

end
