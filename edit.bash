#!/bin/bash
clear
set -x
prep=../prep/prep
cat junk.ohm \
    | $prep '["][\\]["]["]' '.' dq.ohm dq.glue --exclusive --stop=1 \
    | $prep 'applySyntactic' '>|$' as.ohm as.glue \
    | $prep '~' ' ' not.ohm not.glue \
    | $prep '["]' '["]|$' k.ohm k.glue \
    | $prep '[&]' ' ' amp.ohm amp.glue \
