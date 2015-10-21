#!/usr/bin/env rake     

require 'date'
require 'optparse'

def generic_frontmatter
  %s{---
  layout: posts
  category:
    - data-science
    - development
    - business
  summary:
    start here
  og_image_url: https://upload.wikimedia.org/wikipedia/commons/9/9b/Social_Network_Analysis_Visualization.png
  ---
  }
end

desc "creates a new post"
task :new_post, [:title] do |t, args|

  date = Time.now.strftime("%Y-%m-%d")
  post_file_name = "_posts/#{date}-#{ARGV[1].gsub(/\s/, "-")}.md"
  `echo "#{generic_frontmatter}" > #{post_file_name}`

  puts "created #{post_file_name}"

  # prevents invoking another rake task
  exit 0
end
