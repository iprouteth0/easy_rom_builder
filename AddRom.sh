#!/bin/bash
dialog --backtitle "Add ROM to ROM menu" --title "Rom - Form" \
--form "\n'ROM make target' is most often bacon, but consult your ROM git readme.  For 'vendor config directory' use \$ROMNAME unless your rom uses a different vendor directory than the rom name.  This is most often seen with AOSP ROMs, but there are a few lineage based that do this too." 25 75 8 \
"Name of ROM:" 1 1 "" 1 25 65 120  \
"Menu number:" 2 1 "" 2 25 10 30  \
"ROM git url:" 3 1 "" 3 25 70 120  \
"ROM make target:" 4 1 "" 4 25 40 30  \
"Vendor config directory:" 5 1 "" 5 25 65 120 > /tmp/out.tmp \
2>&1 >/dev/tty
# Start retrieving each line from temp file 1 by one with sed and declare variables as inputs
export CALLROM=`sed -n 1p /tmp/out.tmp`
export MENUNUMBER=`sed -n 2p /tmp/out.tmp`
export GITURL=`sed -n 3p /tmp/out.tmp`
export MAKEROM=`sed -n 4p /tmp/out.tmp`
export VENDCONF=`sed -n 5p /tmp/out.tmp`
# remove temporary file created
rm -f /tmp/out.tmp
#Write to output file the result
echo $CALLROM , $MENUNUMBER , $GITURL , $MAKEROM , $VENDCONF >> testfile
