#!/bin/bash

#Use cmus-remote to find the artist's name
ARTIST=$( cmus-remote -Q 2>/dev/null | grep 'tag artist' -w | cut -d " " -f 3- )
#Use cmus-remote to find the title
#TITLE=$( cmus-remote -Q 2>/dev/null | grep title | cut -d " " -f 3- | sed "s/\"/\\\"/g" )
TITLE=$( cmus-remote -Q 2>/dev/null | grep title | cut -d " " -f 3- )
#Use cmus-remote to find the track number
TRACK=$( cmus-remote -Q 2>/dev/null | grep tracknumber -w | cut -d " " -f 3- )

#If the artist's name returns empty,
if [ -z "$ARTIST" ];
then
		#just print;
		echo "-"
		#However if anything else comes back, echo the track, artist and title.
else
		echo "$TRACK. $ARTIST - $TITLE"
fi

