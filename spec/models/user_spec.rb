require 'rails_helper'

RSpec.describe User, type: :model do
  #名前、Eメール、パスワード、確認パスワードがあれば有効であること
  it "has a valid factory" do
    expect(FactoryBot.build(:user)).to be_valid
  end

  #名前が無ければ無効であること
  it "is invalid without a name" do
    user = FactoryBot.build(:user, name: nil)
    user.valid?
    expect(user.errors[:name]).to include("can't be blank")
  end

  #Eメールが無ければ無効であること
  it "is invalid without a email" do
    user = FactoryBot.build(:user, email: nil)
    user.valid?
    expect(user.errors[:email]).to include("can't be blank")
    end

  #名前が50文字以上であれば無効であること
  it "should not be too long with a name" do
    user = FactoryBot.build(:user, name: "a" * 51)
    user.valid?
    expect(user.errors[:name]).to include("is too long (maximum is 50 characters)")
  end

  #フォーマットに従っていないEメールを使っている場合無効であること
  it "should reject invalid addresses with a email" do
    invalid_addresses = %w[user@example,com user_at_foo.org user.name@example. foo@bar_baz.com foo@bar+baz.com]
    invalid_addresses.each do |invalid_address|
      user = FactoryBot.build(:user, email: invalid_address)
      user.valid?
      expect(user.errors[:email]).to include("is invalid")
    end
  end

  #Eメールが重複する場合、無効であること
  it "does not allow duplicate emails" do
    sample_address = "test@example.com"
    FactoryBot.create(:user, email:sample_address)
    user = FactoryBot.build(:user, email:sample_address)
    user.valid?
    expect(user.errors[:email]).to include("has already been taken")
  end

  #Eメールに大文字がある場合、DB保存時に小文字に変換していること
  it "does not allow Upcase emails" do
    mixed_case_email = "Foo@ExAMPle.CoM"
    user = FactoryBot.build(:user, email: mixed_case_email)
    user.save
    expect(user.reload.email).to eq mixed_case_email.downcase
  end

  #パスワード無しの場合無効であること
  it "is invalid without password" do
    user = FactoryBot.build(:user, password: nil)
    user.valid?
    expect(user.errors[:password]).to include("can't be blank")
  end

  #パスワードと確認パスワードが一致しないとき
  it "is invalid with password and password_confirmation do not match" do
    user = FactoryBot.build(:user, password: "hogehoge", password_confirmation: "fugafuga")
    user.valid?
    expect(user.errors[:password_confirmation]).to include("doesn't match Password")
  end

  #パスワードが６文字以下の場合、無効であること
  it "is should not be too short with a password" do
    user = FactoryBot.build(:user, password: "a" * 5, password: "a" * 5)
    user.valid?
    expect(user.errors[:password]).to include("is too short (minimum is 6 characters)")
  end

end
