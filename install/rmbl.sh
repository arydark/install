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
BZh91AY&SY�� &߀PP}������~����P�    ��2bh2d�i�2@i�C &��d��dɄ� d4��&� M�24ɉ�ɓ	�@�h�M �di�A�&L���L�4
�B�Bi�zS4��S��{S)�2��Hڟ�<�ڥh]��$u;WkY���hv��b�Sȵ�η����J�D�;sB���i.�j���S;���	�be|\�+�457�r�g���n���(�uD�t���(4!�}� �$9�	A<���5\����䒅T,jXґ�(Z9��a}�T嘘��Pv���'�%HP����M/Z�OA7�Y��<)��QޙFCN"p��&s�S�a'���ք�^�{^��(�`i�_!cq�5:�%b`u49�u�8��%��	��l�^��=�q����|�R��a�9D���(�3����d``Z���C����KQ�I���zO�j�͘\�>��{��I����;ɤ��B�	4'[ASqi�|M%N�Y-2��IA.m�2/G3�Ғ:O*��M��u?wDE��a?�{I�����09�BdtN�Ӹ������V�9�^��>�3W���I8ň�1ľѐ{��x�gZ�7	�&���Z*)[Q��q���t>Iq|0#X��qa(>�\9��8�}�K�m����ik'Bc}��.�+(���	�o���Bo�*M�#]�+'���b�T��ęf&�D�K���`�.bVKI��m&D����X�0�*��H����a�i0x���&�S)��)�;�I67I�y��o
�%�>����Qa:��X�q�"p��%���YIj9�.�Z�\��d
FU�c3%KG�ZG���jcN'������/L�9(*�ZN��5�<l��d��\N�΁��a(kP�K��(�=G��]��B@X