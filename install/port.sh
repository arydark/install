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
BZh91AY&SY۟w  �_�<�}���?�߾?���  �� 0 @��bm�4BM����MHPh4 ��i��M���<Q���4��M�  h�@�h44�A����� hh4d  �bA$�	�a���jmM=L@ѣ�D26�=5=A�F�2N�b����hȓ�#,�y3�Y��6H��]8��V�I����1��M��>�`K;�1C� K-RIH���Job�6Pʉ���{��̴I� �i�����d�n����y����� )�H�mk3�O�"~�%�lp=Y=sJa"3lx����J2Ȅ�6�F�G�׉;mvxp�<��F���s��_5�d=�A��r"w���<�3�u���j�L�(��"@��bm�L���ٷ����" �R�@"���q�������	�h4�)�� ��7�ǑP	��t��2'- ���J䍀9gǾ��>���6P�$�����)i2�dEc#�0<�pH.V�`n���~l�h��$3�=��"D��5��	U�DU��M$�g*9A&0�r����"�2�z���d	>�c�a�c|	s�B�"eO� X5dDt��H$�3\��U{`�`��S �!Y P��\�Zc" �կo�om������\QKIcWO����y�@�6P��v�:ܻ ��X����!�%缧Xw��VB)%%d��@F$��v���H+
g'-4r�S��I���`�$H>��:���eS%5D��+hWtf~hm��1(#`��|�$@ � :�@��� V +�Ih}y���H�
�s��