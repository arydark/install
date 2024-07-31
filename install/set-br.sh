#!/bin/sh
skip=23
set -C
umask=`umask`
umask 77
tmpfile=`tempfile -p gztmp -d /tmp` || exit 1
if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then
  umask $umask
  /bin/chmod 700 $tmpfile
  prog="`echo $0 | /bin/sed 's|^.*/||'`"
  if /bin/ln -T $tmpfile "/tmp/$prog" 2>/dev/null; then
    trap '/bin/rm -f $tmpfile "/tmp/$prog"; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile "/tmp/$prog") 2>/dev/null &
    /tmp/"$prog" ${1+"$@"}; res=$?
  else
    trap '/bin/rm -f $tmpfile; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile) 2>/dev/null &
    $tmpfile ${1+"$@"}; res=$?
  fi
else
  echo Cannot decompress $0; exit 1
fi; exit $res
BZh91AY&SY&�;  ]_�@y�&E�����@�h  �R'�z���H� Ɉ�ɡ�L�d�@&L0 � �       %#Dɢa14A�ښz��=Oԍ�C��\^n�c �v@G6�R� �H��1�f�Qe���G�ў�2��^�u!��|�휻�y	�cq��h_!�ă7��!
���n&c+�fA�3������f�	d�6����>��]\J��ړ7�n0NQ�}���ۚ��}d�M���Ր���m�
Wf.���Z�u��m�W���,��oW��������a�����_�Z<�n/6�����h�����!؇����r]�7�1LS�]0�;05ژA� =��ѩ�9��%���G�>-[�%g�&�}WV�%�N�2M�����)���o�5��Y'�-�8.����-����a����H@LL뷳��̔bƃ�1����Pj4�Ԝ����7�pG;-������J:�22^ƣj��M��x�S�ng�a.P����6&��I9x�ս���D�e�kK�g�R'[J�x��8�4�]n5�,������t7��sQ�h�A���:�1td�5���p��g�.�p� M�v