#!/usr/bin/env ruby
#0-simply_match_school.rb
if ARGV.LENGTH == 1
  if ARGV[0] =~ /School/
    puts ARGV[0]
  end
end
