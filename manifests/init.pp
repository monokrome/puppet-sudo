class sudo
{
	package {
		"sudo":
			ensure => latest,
	}

	file {
		"/etc/sudoers":
			mode => 440,
			owner => root,
			group => root,
			source => "puppet:///sudo/etc/sudoers",
	}
}

