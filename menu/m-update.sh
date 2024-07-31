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
BZh91AY&SY��(� ���E�@ ���?�������@�D@0  `9���ދ����*��j�1I�=���A���52d ��h&����h44424 ��� L@h51
G��@Ѡ�hhd4Dژ�����&�5C    h � � "P��jf�G��i� 4� �4hI@)<4�I��S�i���dd�4�@DzCC�R��%?�5�Kq�1f�Zh�ka_��Y";�fX� F�/�Д���lAq�f Y�i�A��bi�wk4Vf�AE]a�aa���ˋe���6_�Y_I���������4J��f\�)D�)8��7�
<\8l6k�Z��\Z2���8��ls�hĸ�,F��{����(��点��d;�>��r���L��Nf�Y�@      �ML.=y��OL��a�5��\}�V��h:�,o�$BC��Vgk��՚xn3(B�!u���Q�TaTHHHHj�		��=����kٜ�����;B��)��D����Ɛ�1
�C�6�����^@��+�X}�=?�'���:[5u���s���{
7�r��"�YD��#��r��j�S��j<I2)�M}����Z�Ǿ���s2F��_�z�7�^�uʸ��5JF��-J�+'�K67.��j�B�!BHHLUh�#�nU��f�����!!!1Uh�am�p	�׾]�
:�`�}_'R���l�3�� ��ٮٿ� �xyd�Lii����T�����V��t�w�����0��x�|�(bj>�]�3`y��/�सט��*�a�M�<~o�І\�yv�·��}]�c�a��E h�0� �� �V�JUڦ�;��l�B�����W���P3�d} �=��O�I*��ԯu��HHp�#���XԒQ����Ğ� ���	$���wUy��܋nU�\����97U{��j���N/�4"��|��Q�w���n��&���)�t�A��7��!R���!e��S�<.�e3��^�Cj��'�0�A�B"��	�nc>�S��fTǘ"" 	u��oY���ɷq`jC���U���<F�NzPW��,7vnU�z����tw��&��/@X#Azn�w��AϫȘ�W��=ת�BjD53V�4/�fo��A�����p+3]UsPE��V-N�-�+�c�1��c�1�a�1�- �B�t�C�zY�cʊ�s!
����o1'I�j]HH����o�n �@J�%(^����qQ�p:bP�pZ�;Y���Y�mr�l�!D(�(�lJ�����w����J�2�$!���:Y�x�uU[�9�C��򸼂.�z�s�����g���Y����sA�	Mm`p ��cFJ�]�� ���hUs�F��J������Bʸ���6�]�P/o@�5��^�i����f p��{*����Dt�	$�+t�Z:j�n�=�2!3�Nc?)V��J�F\��l�à� �t�"f[k}U��+�M����V͜ƍ�2jU���π<f����	��!��;x�)'�.�p�!}�Q�