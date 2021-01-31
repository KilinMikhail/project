ENV["RAILS_ENV"] ||= "test"

require File.expand_path("../config/environment", __dir__)
require "spec_helper"
require "rspec/rails"
require "email_spec"
require "email_spec/rspec"
require "simplecov"

SimpleCov.start "rails"

Dir[Rails.root.join("spec/support/**/*.rb")].sort.each { |f| require f }

RSpec.configure do |config|
  config.fixture_path = "#{::Rails.root}/spec/fixtures"
end
