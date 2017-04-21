class ss_monit_apache (
	$apache_port = 8080,
	$check_timeout = "10 seconds",
	$check_rule = "3 times within 3 cycles",
	$check_hostname = "localhost"
) {

	file { "/etc/monit/conf.d/apache":
		ensure => present,
		owner => root,
		group => root,
		mode => 0644,
		content => template("ss_monit_apache/apache.erb"),
		notify  => Service['monit'],
		require  => File['/etc/monit/conf.d/'],
	}

}
