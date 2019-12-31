BEGIN {
	state = "CA is California"
	sub("C[Aa]","KA",state)
	print state
}
