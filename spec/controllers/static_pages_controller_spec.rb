require 'rails_helper'

RSpec.describe StaticPagesController, type: :controller do

  render_views
  let(:base_title) { 'Ruby on Rails Tutorial Sample App' }            # #{base_title}で呼び出せるように

  describe "GET #home" do
    before do
      get :home                                                       #StaticPagesControllerのhomeアクションにGETでアクセス
    end

    it "returns http success" do
      expect(response).to have_http_status(:success)                  #リクエストに対するレスポンスはSuccessになる
    end
    it "has correct title" do
      expect(response.body).to have_title "#{base_title}"     #titleがHome | Ruby on Rails Tutorial Sample Appとなっている
    end
  end

  describe "GET #help" do
    before do
      get :help                                                       #StaticPagesControllerのhelpアクションにGETでアクセス
    end

    it "returns http success" do
      expect(response).to have_http_status(:success)                  #リクエストに対するレスポンスはSuccessになる
    end
    it "has correct title" do
      expect(response.body).to have_title "Help | #{base_title}"     #titleがHelp | Ruby on Rails Tutorial Sample Appとなっている
    end
  end

  describe "GET #about" do
    before do
      get :about                                                       #StaticPagesControllerのaboutアクションにGETでアクセス
    end
    it "returns http success" do
      expect(response).to have_http_status(:success)                  #リクエストに対するレスポンスはSuccessになる
    end
    it "has correct title" do
      expect(response.body).to have_title "About | #{base_title}"     #titleがAbout | Ruby on Rails Tutorial Sample Appとなっている
    end
  end

  describe "GET #contact" do
    before do
      get :contact                                                    #StaticPagesControllerのcontactアクションにGETでアクセス
    end
    it "returns http success" do
      expect(response).to have_http_status(:success)                  #リクエストに対するレスポンスはSuccessになる
    end
    it "has correct title" do
      expect(response.body).to have_title "Contact | #{base_title}"     #titleがContact | Ruby on Rails Tutorial Sample Appとなっている
    end
  end


end
