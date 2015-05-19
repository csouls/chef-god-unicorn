god-unicorn Cookbook
==================
Add god for unicorn service.

Attributes
----------

### god-unicorn service configuration

- `god-unicorn['daemon']` - the `god-unicorn` executable file path
- `god-unicorn['pid_file']` - pid file
- `god-unicorn['log_file']` - log file
- `god-unicorn['config_dir']` - configuration file install directory
- `god-unicorn['debug_options']` - god-unicorn start option

### god-unicorn monitoring configuration

- `god-unicorn['application_name']` - Application name for monitoring
- `god-unicorn['start_command']` - Application name for monitoring
- `god-unicorn['watch_interval']` - Poll intervals
- `god-unicorn['uid']` - god-unicorn execute user
- `god-unicorn['gid']` - god-unicorn execute group
- `god-unicorn['restart_memory_usage']` - Unicorn memory usage threshold
- `god-unicorn['restart_memory_times']` - The number of times the memory test needs to fail
- `god-unicorn['restart_cpu_usage']` - Unicorn CPU usage threshold
- `god-unicorn['restart_cpu_times']` - The number of times the cpu test needs to fail


Usage
-----

#### god-unicorn::default
Just include `god-unicorn` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[god-unicorn]"
  ]
}
```

Contributing
------------
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors: Yusuke Tanaka ( @csouls )
