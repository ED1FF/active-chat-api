require 'rails_helper'

RSpec.describe MessagesController, type: :controller do

  describe "#index" do
    subject { get :index }
    it { is_expected.to have_http_status(:ok) }
  end

end
