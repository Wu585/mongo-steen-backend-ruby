require "rails_helper"

RSpec.describe "ValidationCodes", type: :request do
  describe "发送验证码" do
    it "可以被发送" do
      post "/api/v1/validation_codes", params: { email: "15151851516@163.com" }
      expect(response).to have_http_status(200)
    end
  end
end
