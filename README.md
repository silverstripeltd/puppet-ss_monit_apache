# puppet-ss_monit_apache

## Set-up
- Ensure you have `mod 'echoes/monit', '1.1.1'` in your `Puppetfile`.
- Instantiate `monit` and the `ss_monit_apache` class

```
class { 'monit':
	httpd => true,
	httpd_port => 2812,
	httpd_address => "127.0.0.1",
	check_interval => 30,
	start_delay => 300,
	logfile => "syslog",
}

class { 'ss_monit_apache':
	apache_port => "80",
	check_hostname => example.domain.com,
}
```
