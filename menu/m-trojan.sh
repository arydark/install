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
BZh91AY&SY�yr 8��{������������p�F��  `!Ͼ6�OYW������چ�@we5����V�����{���J��B��ԥ(IB�D���T�@�*T  �AI�SSؚ�25=I��T�J���(m�������O(cD @ѐ�D�ѩ�)�EOI�	��i�A��4�F� #�JQ���L�ѡ����dh�4di�� �$��1�eO�=F�S�M44���z�4� �  � "H� @*~��4��?SI�)�O1)➓zF)���<I�j=O�!��� &���0&��FA26��2dz�jhh�UR�@%�̓.|�Q(���� `-� �@���ʖ52�@Z37�T�%�D�
��I�B0�ta:���|,?�Nnc��x���!P *q���P��d���M7�*DGes� �m�le�5Ʒ�~��{v�m�Q�U+d*��ŵ}-�6B�!�n/Fu"ឫ��\�o��N��� [5�T�YB�e
�|�/�>e(s)�t� �~��y��h(� �qőo��b_T�o���cz��Q�xu�0�7�m/�}s�"��f����s��l�\L���K��(+,Lʶ<'1`�8��k*e�\V����S����J�0��9Sv�4�3�`j!��c1׍-|(�Q�M��@J�j%F��H��8� ��U<bAJS3Ox~�����!?����t�|ujG���.���?-��_�]~��۰N'C����n��3��)��9�UQ��F뼆����v.\�3���١��6��a|��\��p���]�Fp�?vr_��qz�W�^P��@�	��,D!�J�D*�!hɲ�UqhO�H0'}3"���R���ZT��2�5u��@��9%.���������{��� (�HU�����=���������c���X���O͚ `�f���8�O�� �u/�͜��� �/�����=�i@��ٺ��`�|uj�B�ig����7/�x���p��$[E�P�4��L����a!���Z,�����۟.��r���K���"�)��ۜ��qJ#����9R����y��3"yw]캽ȡ��vXH)�
�\!�BZs/���C��R!�ʆ�8h��+�E��N\
����o�ǉ��HBNhdeA��i�4_:�Ϟ܉o�� ��I��`��iI���d�pC54�7j·.�����fC�e1����"d�����1;&`kO�luJ�ߕ҃��P+���i����*���!��'c�k���`.�}�>�!m�3K�ZLtH-�WX򫫬����U�!��+� ��C8]�J���6h,�s�"��ĕ0-`t�^<��
�EY�|T�4a!*���N�U$��č�W�=��2�\-��9̽���%�!!E�1<��ȶ��mL�i�mm�D�;�PT@ݺ	��eO����4�I�;�;{}�d-&�}���������z[œ��p���>�c⯌C���Xӭ��!�Ǜ�|̯��7+���]�d����@K�6O��5R�K��e��1{�K��OV��ޫ"ukԻ��f�ffw��
mC��iv�ٖ}oN?:����P���$�K>u���?Wpo]�|qP��r���˶�W1-'t�݊�፯_Ÿ _�ᶐ�y(P=�t������߇o�fkUe]��������xyn�0+����I�ˬ�����U��p���u�x�'��Wp�� ́�{g~������lĵs��f�8܂�ˇ"�����n��GOM��䇾{�4�Cj��Ew"���ǉ������K����|z�$��b���z���[�=:(�	 �]�8�������������t{hl����T����ۍǋܡ�V�JR�k]&�s1P/C0Uc���Zpp�a/��! '^(x8���v%Ć �h���> .��kpHc��A���@�k�H�n�܂�n��$���(�l��w�!����k0�)����_�O�%JJ�9D�k],R����Bf��S�P�� �}8�q�*�F+X��E.L̥
W��;O�=�B�������p���B�4BB7�$"E�Š 9�a"�J`�	+ �
 �}�T�RKу�� q���1R�͜9&؆���N�2<t���*-����� }p���,>r�f˖�*��6 �6~�n�0p�d��z9��v˙0��~B��Y�4���१�Lj+�v� 8`�$!�NP9�
�8� �`����\!I�T�.v[-����&�3&� qK� �EB�$3*�A����G�7��6�
(7��iJ��٨;ݢ}?�A������H	��%��}�R
��ʈ���2c��;�rGI
�B
�)���{��V�e�ͱ׻\��K�J��%E�rs$�H ��k!�H'�{�Ɗ��%L;�CR�M�5��ۡ<��ȢcV�C���y�o�bD�-���ߊJTbAr�>L�Ѱ;���W������W���~�~�����l<�� dE܌��"!�����F�;�xǫ��誽�|+�F�ԭ~"U�.doEf���ֻ��8-K�}8n��UvSq�/��ҝ{�w�6�$,&y(fg�,Q�����SO�<�y�%�D�Ga�����a`D�@_a��}{��#��Q� � �H)��ܥ8���6��!yB�E����u}�A��z�_��É�>�p�8�#ZT�0"!2���EQ�3=)��ĺ�~��Jɏ����W6�I�؆䛈�i�1P��M�����Q���'��׎ �^���k�5�K��iN����zNQ�~,8�3 9�
k��-kۯt�p�E���H�x 03�i�?���5��簼�NBk��]�Z���q�	 �c�=��6l�ji�-Ua�]�N�	�T�^�c�jŪ5������0�RΞgc]����6�8�C���V���(H2aG���e<�x���;4.x?�5�/�Q�=��2t������n��aH�	ƠJ9�
�<8c@�ø`�`XC��)"���@��A&���M��%�
@�"K353|z�0�A�@"�X�1<d$�>����@�@	�K��TBct�A�`�9	�"����_R�,Px� ��yJ�ֻ�CBr�n���� �,�m�`SMw,$`$_H�_�uV�
h�ٿW���%O�!,� �$��?� ��pG��S
h�WD�@@G`�>��?w����*F�	Eُ(�w��?gN�=�P�DL�<.Z�6�%�E<��7�NwX&� A��2<�)��Ɣ�����!�vqR�)z�R�@U�d2<�v�QzC�^�Fm6�R���Vv3����j�Vîv�е�O�_�BP�0Հ�P�A������^��ڀn౹�(���{oo _�L��r�<��s�,kG�����K� �tf���1{A�8\(��fk ]�ЃVo���U2�@8]}q͂�nr�	]/G�b�������|��Ɔ�@���q�k��T�3���9��A TAK�����@�*B��p`�ٖM �-����C��2�X�
{�N�t��T�ք�-mAyt����P��:%
�/ln��ֿG��\��w�Π�̇
cp*'q�z�p�d��"��~�xp!$!z��J{��qi���\0:���
���4kq�ϪN=�B��>���p\D��*�p�@�����5� i��Ht<L��s#g��b�}�IZ���JD$	�j6Ò�����uıȽJko2`E!���dl�"�.�Wj�Z8��AC�l�3��p
{=C���ӨܦӁ6�<9�n#E48B�Q ����܄�p���n���14Z�\�*!�"�H��?�����U-���EGHc�	�	� �|�a��;�-?��!�[�DBH�$#R*?1��1XI� !����,��$�(��=�p=Ԏb���1c�B�M���/�th["�=j�C�MH��ڬ�s	����B��
<9}O�ڙ��倯_��=��o��T"� �-�
�,� �q�B��ʈ��oq�>�����N%.����rs7�e��N9��0��]�!���p��:�sK��A~.*����u�	&��t9��o��J:��<��+UA߹9��@@ �T�h��˶!J�[U���jao=��w��q�p�z��(Z�0�"�������a~5n>ʭ��ƀ���L� ��ԡ*r.P0@$8'P"N���� �v�ګѽU�y�ӿp��z�P
di�X)F��/�ԡ�SuDB"�T�v-$R�t�p�k+�(k׮b9�B��,=|�ɟdH�[���a��AR�E�
�+��L*�{�醠F��B���:��3��r�Q�Y���ą���j
)Φ���<|��u{k�f�eDB��@q�Թ_�RX��P�*��0�X�j�@+p�����3S5�B�J╃Ȫ�u�r�p.��0��3�P�Py���p!��^^��*��$�1�j��e(��|@��v�֠�b�����_WIڡ�.�5��d(i;n��	E��j"R@40�\+i�\9���E@��Q6J(T��Tl��%U8�W`����"4z#������k$	H��W�j�&�%g%H"�1s
�;�g��mAqWX�U��] �Uz��\�3 g&F��[=�{鈞�M8�L�# ��Pd̄/OaB%c^�u�z��x�s��6Sj��X��p��VڰA�l���p��t���6L��U�D�'my��:���x�$'��� b�R��ڧ0-H P�x!�*'Å� A.'��8�$Q�Q��'����&��g�d/y��`vo|�����Q�#�;�����:WHgF���� <)�qp�!b�Y:2|�@l��@O� ����H	���l���1�Y���+Hq�]�z�r
"|��F`敕]�ٲ`)@|�������C�Q�Bs��ۅ6��!��ܓ�Ju�ѓ��8����]ג�6Y..4�DĢ�  ��c�Xd�h��B<��y^�itd���{V����̆�S,�x��Lͬ���KDQv��{�� Q�h.i�*��lA��ģr�
���E�nKä_�=�Z�=�1�	 �pMpj R��J�-��b�)��Z��]�P�ɍ$¡$"��J�����[�
������*�����l�t�b�@�)��r�BE|8�dC0��<���k���"��s��2�7�e�=�U"Es�P��jK l�(��Q�2���Z�
�G��D��<;O>� zP<�"X� H�d@L�S
�
�yU�J�
 A,�Qp�@�)ꌷ.��*>�aM���=��!}�ߍP}��|'@	�������x�h�]O��E���
��I�I ��P�b���]`=*}e1�>��+���I�I�5 ��Q�j�T��=O0b��Κt�m,�`h�2J���C�Y(\/��`��%E�\���h&K��A��3Ҋa��A֊j9A0'JX4*�J� �#���M�=���ӔK	��Q�2D3U�!(!�8 mԸ�)���� �Z��2��P��B��-٫����gB���.`=���
�-{���,wT�Z��׹�/�<�a�{�$b��)�"@FDI�������ñ]�Ը.��bB�����qP*j�Q�Ф�U(:��s��'N/���U��Ø�:���n�0�"�dX��R%��%����&�a,�ԃ���X��V��v�_��d�H�.�X�)�UN� �"�Mc�+Ou�=� 3����NJ_�CX����i�����O�iܧ��F��/ w! ���~x'!Z�q~�L(ZB��@i��b0=d"wXD�!RňB��k�lC�,�yƽ`9�4�p�@�u�&y��צ�l����>��x���pi��f��̙�J�Q�p1Mʺ�9�}S�"�l�P!���h�@��Zw��H�� �	C�*^�@�G�rSHb7�r�3������xP�)�y�tаk�p���ud�Q����J���qz3�r
:��x�jS�v �R@&�p/����Fv�z3��B���P4��T6 ���'̦/�'^@�D!�=WS�0�C����\Q���I$$H�߶U��X=ߑz|�^X�'St�A1�`�d<LV��?.8 '�|s�}�k!��t�5�'& b@�dP��n�W%)�b@H-�7m�ל��9��K��M��H j�.�gY��r��(yZ/�� ����"�G�
�A���"�`EQ�(��~ȞׄR��_�1S�����W&�"ARE$ �2H�E�qb?�������`s����h��@�HA ]�H#� K�#��?�]��BC�I��