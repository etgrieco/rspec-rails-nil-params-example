require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  before { get :index, params: params }
  subject { JSON.parse(response.body) }

  let(:query) { "this is a query" }
  let(:params) { { query: query } }

  context 'with a query' do
    it { should eql("query" => "this+is+a+query") }
  end

  context 'without a query' do
    let(:query) { nil }

    it { should eql("query" => '') }
  end
end
