include_recipe "apt::default"

apt_repository 'debian.org' do
   uri "http://httpredir.debian.org/debian"
   distribution "jessie"
   components ['main', 'non-free']
end

include_recipe "apache2::default"
include_recipe "apache2::mod_fastcgi"
include_recipe "apache2::mod_actions"
include_recipe "apache2::mod_headers"
include_recipe "apache2::mod_expires"

include_recipe "php-fpm::default"

php_fpm_pool "www" do
   listen "127.0.0.1:9000"
   user "www-data"
   group "www-data"
end


web_app "t3sprint.vm" do
   server_name "t3sprint.vm"
   server_aliases [node['fqdn'], "my-site.example.com"]
   docroot "/var/www/vhosts/t3sprint.vm/httpdocs/"
   server_port 80
   use_php true
   php_fpm_port 9000
   php_fpm_host "127.0.0.1"
end
