webnode - 52.0.228.14
ip-172-31-44-160
knife bootstrap 52.0.228.14 --sudo -x chef -P chef -N "webnode" -r "role[webserver]"


haproxy - 54.173.94.194
ip-172-31-44-162
knife bootstrap 54.173.94.194 --sudo -x chef -P chef -N "hanode"-r "role[loadbalancer]"

knife search node 'chef_environment:_default AND role:webserver' 

pool_members = search("node", "role:#{node['haproxy']['app_server_role']} AND chef_environment:#{node.chef_environment}") || []


