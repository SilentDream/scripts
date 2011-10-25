#!/usr/bin/perl

#This quick script converts a Cain LMNT.LST file into a .lc file
#for importing back into Cain (in case you forgot to export your
#password hashes and want to re-import them in .LST form)

# Usage: perl lst2lc.pl LMNT.LST

use strict;
use warnings;
open(FILE, shift);
while (<FILE>) {
if ($_ =~ /(.*)\t.*\t{3}(\w{32})\t(\w{32})/) {
print $1 . ':"":"":' . $2 . ':' . $3 . "\n";
}
}
