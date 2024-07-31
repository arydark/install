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
BZh91AY&SY|Oѣ �߀R}��/ߠ����`�����l�ھ�  @ �$�I��D�ɧ�OFHڃ��F����f@iS�~�4@ ��@   �Sڡ�4        ��ҧ��?Jl���	�A�A�� 4�d�h4 � ���   H� L��4&@�F�'���h��z��#g�_=��{��G�w�����X$a����+]��Rb�ӆPk	������8<��xp
�nFLg�b0������-�'�r)��HE1�������5Z��*��ԑ<���pVV$(�HI$�iR�Ke=%�7���u!f�k���2�QÖ����������0�2�R;S�$�VS��&�'���?H}w���䕤�N!�T�8�8��!<��[� Hh��
Ѿ�3����"���.*��p���\Ӫ�&�:o�H쀰�:�7s����I+&��\Ύ9/�8i��G����ܞ��q�+�"����1�J��:[�%^�K}�;���6%F�0�?HFȪ�BlI^}��
�l��g�t|�ȡ|l���J���e�y�ݒ��ETTb(�GY%�4kB��S7c�"�ts#,5\1��Aq�_����`�i^��Zw,�9�]���-M�����zm��k8�+���rJo�\�	����\�5�IT�\1�d�Z�BΤ�X�9F���
���X����Ia\"f�Fm��H��v�ҽ9����"�h�tX�W�V�D0�M�bG�� R�U9%@х�	H(y�d�A�������4��,arr���o5�Q�ѡbŌ��c�J��Q�a|*B�٪Kl-�=�"i������_��|�nO�q~�$Ѓ�'���N8a	�m"����🎕~I�2���u�n��K��[:�{�8�6�y�5����d��lO~8���{e�
z���u|,j�!{h�jj�����HM*���9$�-$�ox%}�R
	�Ae����AQj����]i�Z�Sz��I��4�/���N>	����	��ĭ���X�B~y��7������w%�91�j˂G'$[�0�A0�T�(;"n�ZBG'�M�B�t�(.S�.�jbT3 �h�3�5�;���9B=�mKT�.�d�{��;ͱrv��H��^�8�u����ğ�7��ܞB��K\@���4����X���̞���
��>�S�mK�$�%P�D��#>�0�bH�h���B���&���0��~`pKRW�I%�`Q%��a�-g��pN�`��MO��f�W���c.r�MW��8�K�-Z�x�^��1+�'_�1&.�y�C�B]O7�D9�`4.I��2	��Ь�_e8�����n$O�`����xp8��y��[γ:8�ȱ�b�'#���������#��d����^��0�)a9�T�js���-J:��[���x��j�k�q�h�bPJ���c�6�&��A;B�K��|��@�(bpд+�G�h��vI
%�nIRDP�$�:%��� !�(�+mф�}i��b5%���˨F��[������/(x��xw���!0��zӽ��-b���x3�`1�!�,�-nn;5"P3�Z�|�pI�hLN)�/�� <���G��@��q($a ZCN�;C8l�1*���жѯc�b@V*w��W�4.���d��\�A�>C(��d�� �*Cx��F	��	���I�0���!��N����=A䕧:�I[����v�f�,E������c!�Ai����� 
Ɖޞ%�$�^�hV��H���q(��w��z�͚�����P�v��bX���6$wA��&��XԬ��^5���Զ����JhD��:A�Upm	�hBZ��*ꁍ��Dۖ;�7���+�6�	��T�`����t����(1�3�����ӫ�tdm��49�=�6�[�X�C�\����#AA($7 ��z��N	V�f�*�G!n���J�J����D�!\/=�4
����
�Zep+#�^�H�rE8P�|Oѣ