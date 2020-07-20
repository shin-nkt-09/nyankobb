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

    it "nicknameが6文字以下であれば登録できること" do
      user = build(:user, nickname:"shinsh")
      expect(user).to be_valid
    end
    
    it " nicknameが7文字以上であれば登録できないこと" do
      user = build(:user, nickname: "aaaaaaa")
      user.valid?
      expect(user.errors[:nickname]).to include("is too long (maximum is 6 characters)")
    end

    it "emailがない場合は登録ができないこと" do
      user = build(:user, email: "")
      user.valid?
      expect(user.errors[:email]).to include("can't be blank")
    end

    it "重複したemailが存在する場合登録できないこと" do
      user = create(:user)
      another_user = build(:user, email: user.email)
      another_user.valid?
      expect(another_user.errors[:email]).to include("has already been taken")
    end

    it "passwordがない場合は登録できないこと" do
      user = build(:user, password:"")
      user.valid?
      expect(user.errors[:password]).to include("can't be blank")
    end
    
    it "password_confirmationがない場合は登録できないこと" do
      user = build(:user, password_confirmation:"")
      user.valid?
      expect(user.errors[:password_confirmation]).to include("doesn't match Password")
    end

    it "passwordが7文字以上であれば登録ができること" do
      user = build(:user, password: "shinnkt", password_confirmation: "shinnkt")
      expect(user).to be_valid
     end

    it "passwordが６文字以下だと登録ができないこと" do
      user = build(:user, password: "shinnk", password_confirmation: "shinnk")
      user.valid?
      expect(user.errors[:password]).to include("is too short (minimum is 7 characters)")
     end



  end
end