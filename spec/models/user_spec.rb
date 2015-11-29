require 'rails_helper'

RSpec.describe User, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"

    describe User do
    it "has a valid factory" do
      expect(build(:user)).to be_valid
    end 

    it "is invalid without a username" do
      expect(build(:user, username: nil)).to_not be_valid
    end  

    it "is invalid without a fullname" do
      expect(build(:user, fullname: nil)).to_not be_valid
    end 

    it "is invalid without a email" do
      expect(build(:user, email: nil)).to_not be_valid
    end 

    it "is invalid without a password" do
      expect(build(:user, password_digest: nil)).to_not be_valid
    end    
  end
end
