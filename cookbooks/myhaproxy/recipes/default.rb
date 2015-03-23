
pool_members = search("node", "role:webserver")

package "haproxy" do
  action :install
end

template "/etc/haproxy/haproxy.cfg" do
  source "haproxy.cfg.erb"
  owner "root"
  group "root"
  mode "644"
  variables(:servers => server_list)
  notifies :reload, service("haproxy")
end

service "haproxy" do
  action [:enable, :start]
end