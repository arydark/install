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
BZh91AY&SY�<�  �_� �}���?!�����P�e�� �(i3I�jm�d4�0=I��"mM4h�     h	!Lh���	�&�&�@4ѓ �`A��2`�IM4ъ�G���h�  h 
�R��N��n1��_A޵�֭����Bj�ũ��E��R�g)$�rc��rݩL�:�<2V�<V۬��`��"v�Q��2�2�Q5Q�Y-�ӏ�
�/K:�潞��5y+1q$B��;AK
��)c^c;�oI��J}�u��4����Q�| ɥ~���'�vr��7ZD�2���֤|�_[�s���?�CtP��*7D�,�j|z�̙>sHB0b�jUA�쎃V�b�%As�d4M�4I��O��ˊ�qb�2��a���"#\�:� XŚJI� �"X|	`��ݰ0ACl��{\r�{N&�
�-8�]�����w�Wf�'�7_�w(e���/?���k%�}{VL����*F��s�e�xw-�is�>WNPs���Y����Y��̽L5 �hFD��g9f����Xe!ğ!���b����;z��/LD�$��L1�|1��s�<qk�3��JW���M�]V��5��1���#s�6%4�֓�Fim2M�!�ı|��l��Ç��ݓ�n��(Q,�Y�!1t�GvӃ���_XZ�+��� ������f�ȝ��AŢS����𝚠;�7�1�JDܓ;6Lok5�����:k��Om^�!U#��e�'��c>��ss;2N��i^3��Io'�u&<��͏ص%�~LJ.A�*f�Q,�u�S!kJ[��u �a����"��cS���ZZq�܅��nI��0��df2kG���z�]������Y����HDs���=]B�,�Cʦ'���1;�VRQě�3%��F.�G�K|%��5K�����E�k������r:�:ަ��Oq����*TF%r+6�.D4`><K�ͯ�
 �E��ѵĚe�#i!Qc`Pn/�`�ؑq�/��5Ҫ�dM��X��\K�~�enļUr�FCˆ�=�;-�s�{!�,S�R�����|Ώqy��)��N��ը�R����q0� SV���P8Š33�:r�D#�
'%:�)�;`��NAL��徆jtD����h|w�V�,�aj�9O1Ȳ����5�؋3��u���?�oAl�iO%ٖv���d��{5�툞�1o���[�`��[4���Z�֮_�hGrd~��w$S�		�ϰ