#!/usr/bin/env ruby
# Find the regular expression that will match
# a Ruby script that accepts one argument and pass it to a regular expression
puts ARGV[0].scan(/hbt+n/).join
