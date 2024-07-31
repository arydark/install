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
BZh91AY&SY��_  �_� ��%�*����Psoz�� 	D�#���@4 � i	�'�OP �� �4O�UA�Cɠd�C 4���z���z���Q�4= �f("�D�)��@A�F�1 � �o�Ã%����0w�j�:�嚖'�H�4j1H��b���5� @�DG�LD������      U���nj�R��c8
���c�"d"�a���Խ�k�&��ޛ{����(��(4Q�)]}|�j�n�����U*+��p�e�m�����D:���Փ���M�!B�!�JJmJ@�aH�F�=U=[�G��*e4�;)}I	��6E!�G��PQ�'�:���ob��4�vBB�����$�ܣ�<���2|�? \�pm�ʥ����������ݞ�S2�)4��
藟�{��,{E�l/�����[$�I'+ߒ�Wp_�G�Gn�뱒 �r-�j5��xo'���֤9 ��^��r�E��;uz(�34Z�:�֜#^W�d�oYυP�/��FX���{�z\HHT ���!1v2ul�r��p3+y:��Q�����`�&z6����]rzpQ��Ff�(��q� x��A�\�X�y�$	����ܣe�����h��<��(���l�e-Q���YJ�rS{Gsj�A��G&�[A�)$�����Ih�����qĒs:(�Q��i3�I$�6�*:5���[�o���������)�?���