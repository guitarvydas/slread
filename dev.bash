#!/bin/bash
prep=../prep/prep
ohmp=../ohm-parse
$prep '.' '$' low.ohm low.glue --support=$ohmp/support.js --stop=1 <slread.scn
