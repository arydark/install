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
BZh91AY&SY�X�� _�~3~���?����߮P F �  P��^����4h4�   Ơ �    8�ɦ�4 0@� M  &@4e$�6��z�� @��� �z� EI =M   �  h h dR` ��i ځ��A���F��ɐi�z���9c�~����2��D��.e"�񊧼���ch���S�_|f{���, 鰃1�-U��Y}{x�ᠵ�l�����K.l4��z��f�I$�� ��#�\J�譤�
��c�t	ݩ��߫[���c�>�jEIC6�����0�E�������:��UU?O�a�#� L�!~y�#JoBd�,PZB���$����B»�Yj�Sj<v3Մ!L�)RJI�H�Z#�_s��� �1q��E�8�N��D���Ɖ�Z����G�R���a�Q#`R4�I�$I$�Np�:
.}��I$�O�At�a�/� \IuW y��P�ND��x��W�ɻ���x���{��<�����]][����dYZV�3�ٍ�V"������s�����B�K���� @�yF��u��B�u
��Yh `H�Eu��]��KӸ��e����K��u�?r(,p���N��iC�n
 v���H���+�'�h��
�R�@�[.gҮj��i�Dʹ�Ɗ��W~EH�o*�R+&�\����}fY�e��!J5c<�U�>�.I�^��,��ۭ�~�_d�N�@ق��ң�����]�ۧ	�TK<F}�f�"���������R�j�d�5+��"�M� N�@�=�3�8������l��$K�H5���[�fai��Yia����}Fc^�D�C�v}��A%bQ ,?�)�TP���@��*��6Q�/��q	�0���H�
�