#!/bin/sed -nf

/Manager/!h
/Manager/{H;x;p}
