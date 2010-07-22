plugins_dir = File.expand_path(".")
spritely_dir = File.join(plugins_dir, 'spritely')
root_dir = File.join(spritely, '..', '..', '..')

File.copy File.join(spritely, '_spritely.sass'), File.join(root_dir, 'app', 'stylesheets', '_spritely.sass')

puts "\n\nSpritely!"
puts "Created app/stylesheets/_spritely.sass"
puts "Check out README.rdoc for usage instructions.\n\n"