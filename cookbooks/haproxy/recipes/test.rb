pool_members = search("node", "role:#{node['haproxy']['app_server_role']} AND chef_environment:#{node.chef_environment}") || []
# ruby_block "pool" do
#   block do
#      puts "#{pool_members}"
#   end
# end

pool_members.each do |mem|

		log "#{mem}"

	end