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
BZh91AY&SY#n�� Q��!x���?�������@D@  P����j 
��i�� ��y�i�=�4�hɚ���4�i �56��P         4 �&��z4򞑣A�M4yOSM&��� @<�̚hd 1@0@�F� 2��M)�I�MO(C��ڀSG���p Ԑ��
�Ȁ�҃��b 
xZ�B4~�dkg�#�7N0vy`�D���k�T��U��H��hr����>�6���4��Sv�E�f������b�$4���,ށ[�/j�&L5ޗ_����Z��h<&QEH� T@��xn��%J�55�AU�5���w
�f=o��� ���Up����NPv@I����:W���|����z#HR09���,� �n5��6�d��0�=�3��i�5�s0�=�L�a��C�ce�ɵ��Y��) �r�2PC\bM�$��D@��6��ͻ?���h}�x]Jx�$�s�x�Z�F���t�-2�+o%D%6 �s/���fj�������)Ԧ���r�������;����J�"����UD��Y9#�%7�b[��MmH׬��.4F�:J�ay��ճ���[�X�O)���u�Z(!������::����C����A��K���-�`����O�-w���qJ�=�I��$gM {Y@�àr��/F��+�e M��F��4��f�B�˖g��{juP�Ґ�a����Qϭ�~D���R-�����{�uP�]����cHV���=�ΤpXѥ����a�2#�+$��U�x=I����j�X\�~�x� �%ex&�2iR��$���`I�lO�c-Z����.)�g)b��D��u�6*	���E�]B.�?�9�~i�Ҵ$)���:P�S��Z&���JD��5�Wp� ҬE��>$�E��y�\�w��O��G�P�)
)-<k�x"�YB�1��t@���#���� �y��r��|�7p#�*d#k&`�fdu���L�Ed��"�#.�, �*mj�o,Ҡ[U�6�Q����!yM�i��n�"�Z����A��u�����@��4������]A@x6sa��!s�w�Y�^_�$q> X

�w[5e	�)	M�#��z��,d��
��:C�yo�C������5Y�,Y6.�P 9�A��dGf
E6�XrYh��g`h�xt���R�Jj�v�g���L���Ń���◉,E.�>��-�!�s5x*1֊�0��@(J��
Ulv8	�5�P��h����h�� �03��!yl`N ���&Z$�9����bY����Z�p�J�m�}W�=\�r�����)̙� ���3!�Gth%�l�)Dȸ���k� �� �!���g$����Hɵ�z�&]&�&	a����PP 
��g�]��B@��od