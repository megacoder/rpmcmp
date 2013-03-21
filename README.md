RPMCMP
======

Sometime you'd like to see if two or more systems have the same RPM inventory installed.  With two systems, it is easy:

	$ ssh system1 rpm -qa | sort >list-1
	$ ssh system2 rpm -qa | sort >list-2
	$ diff -ruNp list-1 list-2

But this technique gets cumbersome with a cluster of three or more nodes.  Instead of using diff(1), do this:

	$ ssh system1 rpm -qa | sort >list-1
	...
	$ ssh systemN rpm -qa | sort >list-N
	$ rpmcmp list-*

Warning
-------

The output listing gets wide quickly, especially with lots of cluster nodes.  To help fix this, any common pathname components are removed from the file names.
