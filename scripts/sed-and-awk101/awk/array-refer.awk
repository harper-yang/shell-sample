BEGIN {
	x=item[55];
	if ( 55 in item) 
		print "array index 55 contains",item[55];
	item[77]="xxx";
		print "array index 77 contains",item[77];
	if( 66 in item) 
		print "array index 66 contains";
}
