require 'compass'
# require 'convert-number-to-word'
require 'modular-scale'

Compass::Frameworks.register("ZURBfoundation", :path => File.join(File.dirname(__FILE__), ".."))

module ZURBfoundation

  VERSION = "2.9.4"
  DATE = "2012-06-04"

end

## Convert Number To Word Function from https://gist.github.com/1439296

## install Linguistics gem, sudo install gem linguistics
require 'linguistics'
Linguistics::use( :en ) # extends Array, String, and Numeric
## this is the linguistics gem,
## instructions on how to use, http://deveiate.org/projects/Linguistics/wiki/English
## 5.en.numwords would output 'five'

## Sass Function
module Sass::Script::Functions
  def convert_number_to_word(number)
    assert_type number, :Number
    Sass::Script::String.new(number.value.en.numwords)
  end
  declare :convert_number_to_word, :args => [:Number]
end


## To use in Compass, save this file in the same directory as the config.rb
## and add as a required library in your config.rb file.
##
## require 'convert-number-to-word'
##
