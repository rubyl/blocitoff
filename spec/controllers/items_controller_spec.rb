require 'rails_helper'

RSpec.describe ItemsController, type: :controller do
  let(:user) { User.create!(email: "user@bloccit.com", password: "password") }


  describe "POST create" do
    before do
      sign_in user
    end
    it "increases the number of Item by 1" do
      post :create, user_id: user.id, item: {name: "helloworld"}
      expect(user.items.count).to eq(1)
    end
  end
end
