#!/bin/sh

B='#00000000'  # blank
C='#ffffff22'  # clear ish
D='#89a2b2ff'  # default
T='#e9b774ff'  # text
W='#880000bb'  # wrong
V='#281d16ff'  # verifying

i3lock \
--image ~/.wallpapers/kofi.jpg \
--blur 1 \
--bar-indicator \
--bar-position h \
--bar-direction 1 \
--bar-max-height 50 \
--bar-base-width 50 \
--bar-color 000000cc \
--keyhlcolor $D \
--bar-periodic-step 50 \
--bar-step 50 \
--bar-width 250 \
--redraw-thread \
\
--clock \
--force-clock \
--timepos 5:h-80 \
--timecolor $T \
--datepos tx:ty+15 \
--datecolor $T \
--date-align 1 \
--time-align 1 \
--ringvercolor 000000cc \
--ringwrongcolor $W \
--statuspos 5:h-16 \
--verif-align 1 \
--wrong-align 1 \
--verifcolor $T \
--wrongcolor $T \
--modifpos -50:-50 \
\
--screen 1
