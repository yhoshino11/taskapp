require 'rails_helper'

RSpec.describe HomeController, type: :controller do
  context 'GET #welcome' do
    it 'shows welcome message' do
      get :welcome
      expect(assigns(:msg)).to eq('welcome')
    end
  end
end
