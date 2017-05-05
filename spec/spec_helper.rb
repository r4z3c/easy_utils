require 'bundler/setup'
require 'simplecov'

SimpleCov.start { add_filter 'spec' }

require 'easy_utils/testing/support/database_connection'