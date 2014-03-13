# See http://docs.opscode.com/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "oclc-tw-test"
client_key               "#{current_dir}/oclc-tw-test.pem"
validation_client_name   "oclc-tw-test-validator"
validation_key           "#{current_dir}/oclc-tw-test-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/oclc-tw-test"
cache_type               'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path            ["#{current_dir}/../cookbooks"]
