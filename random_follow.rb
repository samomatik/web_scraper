require 'watir' # Crawler
require 'pry' # Ruby REPL
require 'rb-readline' # Ruby IRB
require 'awesome_print' # Console output
require_relative 'credentials' # Pulls in login credentials from credentials.rb

username = $username
password = $password

follow_counter = 0
unfollow_counter = 0
MAX_FOLLOWS = 300
start_time = Time.now

# Open Browser, Navigate to Login page
browser = Watir::Browser.new :chrome, switches: ['--incognito']
browser.goto "instagram.com/accounts/login/"

# Navigate to Username and Password fields, inject info
puts "Logging in..."
browser.text_field(:name => "username").set "#{username}"
browser.text_field(:name => "password").set "#{password}"

# Click Login Button
browser.button(:class => ['_qv64e', '_gexxb', '_4tgw8', '_njrw0']).click
sleep(2)
puts "We're in #hackerman"


browser.goto "https://www.instagram.com/explore/"
sleep(2)
browser.button(:class => ['_mck9w', '_gvoze', '_f2mse', 'e3il2', '4rbun']).click
