require "rails_helper"

RSpec.describe User, type: :model do
  it "有email" do
    user = User.new email: "xiaowu@qq.com"
    expect(user.email).to eq "xiaowu@qq.com"
  end
end
