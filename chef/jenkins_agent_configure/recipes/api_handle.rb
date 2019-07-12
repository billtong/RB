require 'jenkins_api_client'

#Chef::Log.info("current user: #{node[:hostname]}")
#Chef::Log.info("ip address: #{node[:ipaddress]}")
# private_key = `cat /users/tongzhi/.ssh/id_rsa`.gsub(/-{5}(\w|\s)+-{5}/, '').strip
#Chef::Log.info("private key: #{private_key}")

Chef::Log.info("login into the jenkins master...")
@client = JenkinsApi::Client.new(
    :server_ip => node['jenkinsmaster']['ipaddress'],
    :username => node['jenkinsmaster']['username'], 
    :password => node['jenkinsmaster']['password']
    )

Chef::Log.info("create new jenkins nodes")
@client.node.create_dumb_slave(
    :name => node[:hostname],
    :slave_host => node[:ipaddress],
    :private_key_file => File.expand_path("../../id_rsa", __FILE__),
    :executors => 4,
    :labels => "test label"
  )