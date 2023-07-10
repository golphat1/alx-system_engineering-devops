#!/usr/bin/env ruby
# matching a string that starts with h ends with n and can have any single character in between
# a Ruby script that accepts one argument and pass it to a regular expression matching method
puts ARGV[0].scan(/^h.n$/).join
