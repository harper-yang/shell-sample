#!/bin/bash

echo create album

mkdir -p thumbs

cat <<EOF > index2.html
<html>
<head>
<style>
body
{
	width:470px;
	margin:auto;
	border: 1px dashed grey;
	paddding: 10px;
}
img
{
	margin: 5px ;
	border:1px solid black;
}

</style>
</head>
<body>
<p>
EOF

for img in *.jpg;
do 
	convert "$img" -resize "100px" "thumbs/$img"
	
done

cat << EOF >> index2.html
</p>
</body>
</html>
EOF
