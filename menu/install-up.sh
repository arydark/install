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
BZh91AY&SY��M  V�A�@ ���������   @]&ڪ�JD�M�B2=MS5�Pz�4dz&&�ʦ�Q��� �  b  44��4b�` `M0F	��� 0�H�!2S�УOSi4a�����h���J�i�4J�Z��5�r�f��7�6���$���0�oR5���<f��e񩧶���m�ºñZ���[����Aj�0��$�l[�^��GYy�or��`2��"���<瀑�=ŷ��!����b_GL"��3�[����'����P�鴘E��).�J0����T.
��Ƞp];�
jLn[IX�'���}^�sS�ȓ �h{H�<6N��8B�̑\�����3	H�d���i���w!_���]�\��瘘	M}If8��`�\�/҈e0��)�Ĩ��1Z��6��(�������I㎦U�8�#���TdMYI��\����x��Q���G>�lib2Q�d��Xp׬Z#(Z\ I��Qp�K�F�ss�a	!�)Ӛ��Qj���AEDbAa�SgJq���4Z��ƹJ�˽V�4�'�b�J��Y*�Ӣ�GBȬ��%ŋ^����h�Uȕ�q��Bu8�1+L�:�Ŕ��9
��W����i`
`2�q��?��?��H�
�� 