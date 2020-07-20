require "rails_helper"

describe User do
  describe "#create" do
    it "全てのカラムに値が存在すれば登録ができること" do
      user = build(:user)
      expect(user).to be_valid
    end


    it "nicknameがない場合は登録できないこと" do
      user = build(:user, nickname: nil)
      user.valid?
      expect(user.errors[:nickname]).to include("can't be blank")
     end



     
  end
end