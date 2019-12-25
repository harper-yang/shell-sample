BEGIN {
	FS=":"
	print "---header---"
}
/mail/ {
	print $1
}

END {
	print "---footer---"
}
