require "errors/version"
require 'multi_json'

module Errors
  def initalise
  end

  def read_file
    file = File.read('json/status-codes.json')
  end
end
