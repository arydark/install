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
BZh91AY&SY~~�6  ���g�� ����������@F@�  P^u�m��2ĺe@���G��M4MM4�@4��G����@@$����Sѐ��F�M=&@4 =F�Fj �!�� hd�@� L�  @h4h4  M44 ѣ@F�E	�S�j~��4��4�A� ���� i� \�`la�
|�{���=/�����n�]��jM{Z���,���F����
Ё���"]�S}l YM#eH�
�B�eŴށƌtj�҄�&0U"� �dL�䤾���*^�����s1�����*����d?��e��ePt(�2��L/ě�I����d��y�����&7��fm��6�Ǫ�}io�6�a��Y��Ū3;	��p�dςQ �[K�#���
!0��g�f\ �W�"+�p*�޾!Xn���}LGy��p;����ݜ��yd�0y�49,Ia��X��wJ<B�f�yXi��'�O0%J�̤�ȊT/��MRV�Na|��n��*�%׋"��łPI8tD�Ix�n��d�h�+֧E'O��M|�y�����}�c��E�b|�AM�o������X���\T2M�g�F���uU�>�p�;
�M(�K�tPO?"�qm��X��hǂZhk�^[��dn����Z����,�P�� ��[�*&a+H��tZ4��>���\���"+P
BS�F�;�u����@�J:�嶭\� Ractk�,�����	�ۮn���I��'�f��`"lFQw�aﲕ jպ!��$��o
�Hi�j�X��{+*����6Zo!��USh�Y*���.]q��4ɮ8��%Db*�`��m��q�}�V�Tߜ�j�ÏP�6�8�����(>���Ӣ��RD���� T���׊?zu�1��D��M�@TP�o�p�qc��ye�$j���"q���f��O�	E�4WM�z��X�/�h>����x@1��7��%R��L���O��	�b
R��G"k��:]��@b�U~�,a�#�@�S F�S2� Ղ=�d E��2JU�$^EMf�[�Zh��� Ɣ���Q�H���PK��х�t�XOqʤ����Ҁ��B̬�H9�~��?`���   0H?d@�o�PP�g��p X���"�(H??p� 