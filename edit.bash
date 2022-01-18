#!/bin/bash
prep=../prep/prep
ohmp=../ohm-parse
#$prep '.' '$' $ohmp/ohm.ohm $ohmp/identity-ohm.glue --stop=1 <s.ohm
$prep '.' '$' $ohmp/emitglue.ohm $ohmp/emitglue.glue --support=$ohmp/support.js --stop=1 <s.ohm
