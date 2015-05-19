rbenv_gem "god"

template '/etc/init.d/god' do
  source 'service.erb'
  owner 'root'
  group 'root'
  mode '0755'
end

directory node['god-unicorn']['config_dir'] do
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end

template "#{node['god-unicorn']['config_dir']}/unicorn.conf" do
  source 'unicorn.erb'
  owner node['god-unicorn']['uid']
  group node['god-unicorn']['gid']
  mode '0644'
end

bash "add_god_service" do
  not_if "chkconfig --list | grep god | grep 3:on"
  code <<-EOC
    chkconfig --add god
    chkconfig god on
  EOC
end
