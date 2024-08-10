#!/usr/bin/ruby
require 'nokogiri'

@doc=File.open(ARGV[0]) { |f| Nokogiri::XML(f) }

@per =  @doc.xpath("//peripheral")

@per.each do |x|
  name = x.xpath('name')
  ba = x.xpath('baseAddress')
  puts name.text
  puts ba.text
end





















