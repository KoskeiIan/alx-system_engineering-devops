# kill a running server program

exec { 'kill me now':
	command => 'pkill -n killmenow',
	path => '/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin',
	onlyif => "test $(pgrep killmenow|wc -1) -ge 1",
}
