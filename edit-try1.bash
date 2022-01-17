#!/bin/bash
prep=../prep/prep
sed < s.ohm -E \
    -e 's/":"/kcolon/g' \
    -e 's/"{"/klbrace/g' \
    -e 's/"}"/krbrace/g' \
    -e 's/"\("/klpar/g' \
    -e 's/"\)"/krpar/g' \
    -e 's/"\["/klbracket/g' \
    -e 's/"\]"/krbracket/g' \
    -e 's/"\<"/klt/g' \
    -e 's/"\>"/kgt/g' \
    | $prep '["][\\]["]["]' '.' dq.ohm dq.glue --exclusive --stop=1 \
    | $prep 'applySyntactic' '>|$' as.ohm as.glue \
    | $prep '~' ' ' not.ohm not.glue \
    | $prep '["]' '["]|$' k.ohm k.glue \
    | $prep '[&]' ' ' amp.ohm amp.glue \
	    
