# awk中的运算

BEGIN {
	FS=",";
	OFS=",";
	item_discount=0;
}
{
	item_discount=$4*20/100;
	print $1,$2,$3,$40-item_discount,$5-1
}
