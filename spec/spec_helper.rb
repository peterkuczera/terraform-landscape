require 'rspec'
require 'timeout'
require 'terraform_landscape'

Dir[File.dirname(__FILE__) + '/support/**/*.rb'].each { |f| require f }
