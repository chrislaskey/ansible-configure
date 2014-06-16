About
================================================================================

An ansible playbook for configuring different kinds of servers. Including roles
for:

- Basic server
- Apache web server
- MySQL Master/Slave replicated database server
- Rsnapshot backup server
- Nagios monitoring server
- Munin monitoring server
- HAProxy proxy server
- NAT public/private gateway server

Tested on CentOS 6.5. Works with SELinux enabled.


### Note ###

Before using this playbook make sure to update appropriate default values with
application specific values using `group_vars` directory. In particular be sure
to set or change:

	# file: group_vars/all
	mysql_dump_username: <value>
	mysql_dump_password: <value>

	# file: group_vars/dbservers
	mysql_root_password: <value>
	mysql_repl_username: <value>
	mysql_repl_password: <value>

License
================================================================================

All code written by me is released under MIT license. See the attached
license.txt file for more information, including commentary on license choice.
