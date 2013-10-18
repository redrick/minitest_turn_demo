ENV["RAILS_ENV"] = "test"
require File.expand_path("../../config/environment", __FILE__)

require "rails/test_help"
require 'minitest/autorun'
require "minitest/rails/capybara"
require "minitest/ci"

class MiniTest::Spec
  include Capybara::DSL
  include Rails.application.routes.url_helpers

  before do
    load "#{Rails.root}/db/seeds.rb" 
  end
end