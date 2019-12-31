BEGIN {
	state = "CA is California"
	print "String CA starts at location", index(state,"CA")
	print "String Cali starts at location",index(state,"Cali")
}
