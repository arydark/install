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
BZh91AY&SY�ɭ`  ���@ ��_?������`    P��n�8N	D �I�I��m6�=!�4�A�Q�(��z���4I5 )0�� =@�4  4 �$�O*~�Q�?S�P4i�   �  � s	�#CC!�hd4Ѡ� @0	$���ҏ�@ Ѡ�   �F�m��~y�Y&5�:��Ean�Rڨn@n*lX��r�h?�Kͯ;�����pSۿ�}�D������8�q	Y�fm��
`j���Lr���vo�\f):X���
6�}�����ˍ~j��r$ǃ��Ч��j�޼����VJ��`���S/ROA';��g'�حo��D����~�	Z�cK��A��7X�D«��߫����&C��Xؿ|մl��u��f�Y�ɬ���M�p�6�d6���a�,i��R����4L�.�����\U��2D��r]��C�B1�}F���õ�m�Ą2Ņ�+Ꭳ/LXq�l�K�;V|2䯏�Y�����{4��i�3b��49XY%�1o�U.L��p��*�ҕ����b�KEt�6-�ON��O�n3���w�C�w�
�~dΒ�N�>��!��	%D� ���΁�56	��8x��4��u�P�%ܝ�tG��0�Aru[܃�R��O���@,�,�V;e�\TM*lIQ$6�R����!Sת�L�mJ���;�Ufx� �nF�̫#���`h2���$�YW���9��2��:�i�/ě<��|���3��x6
Dk�ev�S�l/�O���QZ4��b&�� �f���Yu�����k����J��Qa�A���fkaL1��S�@'-��y�˅=&��_(��$���P�a��M9K)�K����	e��$�]�,�t��Ya�(�cJf7�MA~�,������J*�E�&�6���*�p�:�<\Oϕ5���9<�!�`]%=��h h�#B��t%jagX��H@�B
H�{�"��ܑN$.2kX 