require File.dirname(__FILE__) + '/spec_helper'
require File.expand_path(File.join(File.dirname(__FILE__), '..', 'app.rb'))

disable :run

require 'capybara'
require 'capybara/dsl'

Capybara.app = Sinatra::Application

RSpec.configure do |config|
  config.include Capybara::DSL
end

def assert_content(content)
  page.should have_content(content)
end

def assert_img_alt(alt_text)
  page.should have_xpath("//img[@alt='#{alt_text}']")
end