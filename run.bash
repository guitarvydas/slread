#!/bin/bash
prep=../prep/prep
ohmp=../ohm-parse
$prep '.' '$' s.ohm identity-s.glue --support=$ohmp/support.js --stop=1 <slread.scn
