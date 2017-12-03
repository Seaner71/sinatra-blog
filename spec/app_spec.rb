ENV['RACK_ENV'] = 'test'

require_relative '../app.rb'  # <-- your sinatra app
require 'rspec'
require 'sinatra'
require 'rack/test'

describe 'App' do
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  it "has a log in" do
    get '/'
    expect(last_response).to be_ok
    expect(last_response.body).to include('Log In')
  end
  describe User do
    it "has a username" do
      user = User.new
      expect(user.username).to be_nil
    end
    it "increments a user id" do
      user = User.new
      expect(user.id).not_to eq(0)
    end
  end
  describe Post do
    it "increments a post id" do
      post = Post.new
      expect(post.id).not_to eq(0)
    end
    # TODO add test that a post has a user
    # it "a post has content" do
    #   post = Post.new
    #   expect(post.id).not_to eq(0)
    # end
  end
end
