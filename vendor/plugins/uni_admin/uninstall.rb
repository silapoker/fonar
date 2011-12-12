require 'fileutils'

RAILS_ROOT = File.join(File.dirname(__FILE__), '../../../')

FileUtils.rm_rf(File.join(RAILS_ROOT, 'public', 'stylesheets', 'uni_admin_menu.css'),
  :verbose => true
)

FileUtils.rm_rf(File.join(RAILS_ROOT, 'public', 'stylesheets', 'uni_admin_style.css'),
  :verbose => true
)

FileUtils.rm_rf(File.join(RAILS_ROOT, 'public', 'stylesheets', 'uni_admin_table.css'),
  :verbose => true
)

FileUtils.rm_rf(File.join(RAILS_ROOT, 'public', 'images', 'uni_admin_logo.gif'),
  :verbose => true
)

FileUtils.rm_rf(File.join(RAILS_ROOT, 'public', 'images', 'uni_admin_menu'),
  :verbose => true
)

FileUtils.rm_rf(File.join(RAILS_ROOT, 'app', 'views', 'uni_admin'),
  :verbose => true
)

FileUtils.rm_f(File.join(RAILS_ROOT, 'app', 'controllers', 'uni_admin_controller.rb'),
  :verbose => true
)

FileUtils.rm_f(File.join(RAILS_ROOT, 'app', 'views', 'layouts', 'uni_admin_layout.html.erb'),
  :verbose => true
)

p '========== Uninstallation is completed =========='
