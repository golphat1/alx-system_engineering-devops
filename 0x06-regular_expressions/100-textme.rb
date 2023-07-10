#!/usr/bin/env ruby
# A script tha tatistics on the TextMe app text messages transactions
puts ARGV[0].scan(/\[from:(.*?)\] \[to:(.*?)\] \[flags:(.*?)\]/).join(",")
