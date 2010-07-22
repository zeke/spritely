require 'fileutils'

spritely_dir = File.join(File.dirname(__FILE__))
root_dir = File.join(spritely_dir, '..', '..', '..')
compass_dir = File.join(root_dir, 'app', 'stylesheets')

FileUtils.mkdir_p compass_dir
FileUtils.cp File.join(spritely_dir, '_spritely.sass'), File.join(compass_dir, '_spritely.sass')

puts "\nSpritely Installed!"
puts "Created app/stylesheets/_spritely.sass"
puts "Check out README.rdoc for usage instructions.\n\n"