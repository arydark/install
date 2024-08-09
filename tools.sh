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
BZh91AY&SYi�  �_� �}���?!�����P�6��L�mY �&���4z��jdi��d4�@sFLL LFi�#ɀF	��)�'�jh�m@ Ѡ� �4�j���i�4� � ��Mj��<I<��� h���on�K�_����'�����_�4��1��>�:H���(��t��h���U�9�>xW������]�^�?dR���Y����F\vS�}��R�����[�w�4{�O��э�sM��Κ°Y�9�s�r��cC�7՝ƃ�o-˄N=��[R��KU���ٖe}�
���tF�a�/f;�t~)�`a�P9R�p��d�mX�?��M>�d"b�Dt.K�ލU��(��t:��#�]��0��o΂ur�g�l$
��MD�[q��;&��%V�����.C��[�M��	Eˡ�N�`�X��]���i�����gZ.G�-"r"N
� I,7�Z�S��#��Q�}�].�t�������5��|���[�ܯ��!���? >�y���b�C�L�jAe��*�!�!����be����/"�:0`"��Y{�����R�˦JD}i5LfQ|z!A�1�a;D*�4�\�9���J��Po�a{�S�t&�g�m<X�u�y��]hM�$NV�����վ����$7�0g�^`�P6��ؒe�`�{w�8Э\��WqV�i���v$=�y�H$��ȍ/�`�s�%J�$;��hH?�V�Q@Ɔu1���[dt������$EAP�n0ՔХ�옧�Wn���iBy���:A�Iw�:�bD"��q��U-�5ߒˬɂb�V��XD�J�X�"$#���{�ⓘ0���0��Z�n[fw����M�I��9s9�;��fY����ݲe{[,�EU�ٵ �BR�k�c!��ՔD�L��9���X����C�ɗ�ERY�O�@�ܗ*�Z��F	g��;pG(my^�I`䵝Wc2)�@�q�㉪m�DDjG.����7�PQ`����bn��T��y&*�dH�e�Je�OOx⣴��y��5���cП�����h-`Ԕ��ؤf8kvxH�h4A^ו�-%x�g�4+BPO�3-[����#��c� i*�TY����,g7��P���2H�I!T��2�2�HR_
���WK,���ľH����4��v�*�J,���+6�ҶI�ٓ���B��*�g@{�h-�%�-�}`�0zg���d��ĭ����/�����g��\<��i��G���w$S�	���