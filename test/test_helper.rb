ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require 'minitest/spec'
require "minitest/rails"

class ActionController::TestCase
  include Devise::TestHelpers
end
