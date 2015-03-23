name 'loadbalancer'
description 'haproxy load balancer'
run_list('recipe[haproxy::app_lb]', 'recipe[haproxy]')
# run_list('recipe[haproxy::app_lb]')
override_attributes(
 'haproxy' => {
   'app_server_role' => 'webserver'
 }
)
