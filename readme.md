About
================================================================================

An ansible playbook for configuring different kinds of servers. Including roles
for:

- Basic server
- Apache web server
- MySQL db server
- Rsnapshot backup server
- Nagios monitoring server

Tested on CentOS 6.5. Works with SELinux enabled.


### Note ###

Before using this playbook make sure to update appropriate values in the
`group_vars` directory. In particular be sure to change the MySQL root
and backup user passwords.


License
================================================================================

All code written by me is released under MIT license. See the attached
license.txt file for more information, including commentary on license choice.
