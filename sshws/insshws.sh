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
BZh91AY&SY"�V  [_� y�W?oߊ����Px���A� 	�	� L Úb`00 	� �6�1��P��z@h�C�RL �1)�&SL�j��ꆃ�i�頊U=���Dz��@��4h �4���>gѾi¹���g��TH�M�KfV2�P�f�$����Q�76��2m6�2Ef�2���`�;J��dj�bj��vC�]��$�a�!���DSF��N�ֵ����KR4�(�o�!��Y��!SLa�"Q/����ܼ���CG��ч���z�d74w9���\����ol|ƀ�l�G�����l'1��r�2��q��5���[��@є9<�k`5h��0�<OK�����ml9/`n���;�c��C@B�ϧM�j�������~�c���v+�P�<��ky&��/����kv����a��nr��C�v��4��$^\f6Β������?M�6aP���l�2-YJa
U�~ے����Fl�{{�ͩ�H1BK����5�!��!�уc�X�^�G�k��.x:��!�H(�!�k��_V(��i��&���s��Z�1���h4<D������:�ƫ�t���]o.֦����d�iC��@X�Y
ioVA�R� !�Z�WK��lBw1�@e�9��� �w�l��1!�F�)�*ɛ��JiB����2 ��\����]�/.޻�b�.�a�����o���}��Źv���hq`� �5����P�f�-�����H�
U���