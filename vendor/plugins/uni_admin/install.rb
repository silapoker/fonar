require 'fileutils'

RAILS_ROOT = File.join(File.dirname(__FILE__), '../../../')

#####################################
# Copy resource files
#####################################

unless FileTest.exist? File.join(RAILS_ROOT, 'public', 'images', 'uni_admin_menu')
  FileUtils.mkdir( File.join(RAILS_ROOT, 'public', 'images', 'uni_admin_menu') )
end

FileUtils.cp( 
  Dir[File.join(File.dirname(__FILE__), 'resources', 'public', 'images', 'uni_admin_menu', '*.gif')], 
  File.join(RAILS_ROOT, 'public', 'images', 'uni_admin_menu'),
  :verbose => true
)

FileUtils.cp( 
  Dir[File.join(File.dirname(__FILE__), 'resources', 'public', 'images', 'uni_admin_logo.gif')], 
  File.join(RAILS_ROOT, 'public', 'images'),
  :verbose => true
)

FileUtils.cp( 
  Dir[File.join(File.dirname(__FILE__), 'resources', 'public', 'stylesheets', '*.css')], 
  File.join(RAILS_ROOT, 'public', 'stylesheets'),
  :verbose => true
)

#####################################
# Copy controller and views
#####################################

unless FileTest.exist? File.join(RAILS_ROOT, 'app', 'views', 'uni_admin')
  FileUtils.mkdir( File.join(RAILS_ROOT, 'app', 'views', 'uni_admin') )
end

FileUtils.cp( 
  File.join(File.dirname(__FILE__), 'controllers', 'uni_admin_controller.rb'), 
  File.join(RAILS_ROOT, 'app', 'controllers'),
  :verbose => true
)

FileUtils.cp( 
  File.join(File.dirname(__FILE__), 'views', 'layouts', 'uni_admin_layout.html.erb'), 
  File.join(RAILS_ROOT, 'app', 'views', 'layouts'),
  :verbose => true
)

FileUtils.cp( 
  Dir[File.join(File.dirname(__FILE__), 'views', 'uni_admin', '*.html.erb')], 
  File.join(RAILS_ROOT, 'app', 'views', 'uni_admin'),
  :verbose => true
)

p '========== Installation of Uni Admin is completed =========='

#####################################
# Show the README text file
#####################################
puts IO.read(File.join(File.dirname(__FILE__), 'README'))

