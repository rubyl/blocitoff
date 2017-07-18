require 'rails_helper'

RSpec.describe Item, type: :model do
  let(:user) { User.create!(email: "user@bloccit.com", password: "password") }

  it { is_expected.to belong_to(:user) }
end
