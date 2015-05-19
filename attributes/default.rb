default['god-unicorn']['daemon'] = '/usr/local/rbenv/shims/god'
default['god-unicorn']['pid_file'] = '/var/run/god.pid'
default['god-unicorn']['log_file'] = '/var/log/god.log'
default['god-unicorn']['config_dir'] = '/etc/god'
default['god-unicorn']['debug_options'] = '' # e.g. --log-level debug

default['god-unicorn']['application_name'] = node['app_name']
default['god-unicorn']['unicorn_start'] = 'cd #{rails_root} && bundle exec unicorn -c #{rails_root}/config/unicorn/#{rails_env}.rb -E #{rails_env} -D'
default['god-unicorn']['watch_interval'] = '30.seconds' # god default
default['god-unicorn']['uid'] = '' # Please change me
default['god-unicorn']['gid'] = '' # Please change me
default['god-unicorn']['restart_memory_usage'] = '300.megabytes'
default['god-unicorn']['restart_memory_times'] = '[3, 5]' # 3 out of 5 intervals
default['god-unicorn']['restart_cpu_usage'] = '50.percent'
default['god-unicorn']['restart_cpu_times'] = '5'
