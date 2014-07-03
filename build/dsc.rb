require 'json'
require 'yaml'
require 'fileutils'
require 'pathname'
require 'erb'
require 'open-uri'
require 'mof'
require 'cim'
require 'find'
require 'logger'
require 'pry'


LIB_PATH = File.dirname(__FILE__)

require "#{LIB_PATH}/dsc/version"
require "#{LIB_PATH}/dsc/mof"
require "#{LIB_PATH}/dsc/property"
require "#{LIB_PATH}/dsc/resource"
require "#{LIB_PATH}/dsc/manager"

module Dsc

  begin
    Config = YAML::load_file("#{LIB_PATH}/dsc.yaml")
  rescue
    puts "Configuration file not found."
    exit 1
  end

end