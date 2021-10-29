# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  describe "User sign_up" do
    context "when a user is created" do
      let(:user) do
        User.create!(
          first_name: 'Test',
          last_name: 'User',
          email: 'test123@user.com',
          username: 'Testing24',
          password: 'Testing456',
          will_pair_program: true
        )
      end

      it "saves the user to the database" do
        expect(User.count).to eq 1
      end
    end
  end
end
