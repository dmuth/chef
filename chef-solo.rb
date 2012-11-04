#
# Configuration for chef-solo
#

base_dir "/vagrant/chef/"
#puts base_dir # Debugging

file_cache_path base_dir + "cache/"
#puts file_cache_path # Debugging

cookbook_path base_dir + "cookbooks/"
#puts cookbook_path # Debugging


