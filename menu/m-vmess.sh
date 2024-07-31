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
BZh91AY&SY�_� ���� �����������p�F��  `&����%��t5]n��[VS�������ޜ��dĵ���nniJ��E(ڙ�]"E
��U@)!B�PT$��vҬ$�	������3DO�0&��O!���0	���4�@&� hTə �M0 & � �0 0& �               ����������L�h�����eI� i�FM6��$dz�CA�%�&�SL&��SLFA��	�ꞓO�OS�z���z�hѵ z���"�	�JxOT��T�bH�S�6�<OJ~�=F��f��=&�# �xb�"��� ���:>�.a�� ����b:b�N�n8��,p�\c@`?��>�K����s~R�~F��orq3�}�w�)�I�*//��T�ZN\�J�9����P0�y�e@Nv����އ�~�d�����������Ϗ+˙ic�B0����g�v������m�[j�B��+[��(9��As�彍T�hr֫.��T�E�W����9�hB��gj��B�%c��郇9�Q�Q@͊�����O�g~^�h�n�����ĉR�L.H��~M�
�u�yWf{3p5�t<��pX�ؽ����:��s�f|��_B���{p����x9b��wwX.�UD
�#`vz��e�|$x��ش����cN+eF��`�CaCmo�ޝF�3Q��y�˟+gV�^��K׮�Y�Imuu���n�t����-�J���>�1k�L���<�A�_ ���`�\-����ͥ���
��_�R����^��
6���'�g￣ir�(ld&��A
�)��e˜�w�_�U�=$&���M=(7ۡ�o|O�'�k�� v.�����~}�}�8�3/��w���U��P���"eE@�QhX�[��p��\D��F�(�%r�H�aH, .��H-J_Z-j����4	L

a�h�p�7I���n=㸷I��bݵL��k�",�ӥ�������¿���=2��P2Y��,@�_.�|k떨`ן�����������3��^E�\�! ��_�6���)���2!�ύj
`~;6p��y��[�}[�o�m��Iԙ��K��0<�t�c�������\xC��Y����bu$�q���K|oz�"�(�[Mx�.�,�>E@����wy�<<��0D�5�_�kKU�iF���S]�P�C�BY7.�O����:�5�B�!ޅ��ճ����F8�Z���w�U�k5�kfb�!4��J���e@�Pt���?�����|�@k�֪����j�/��A]}�W5��i(X���[^�~Ŝ��_�:X�ື�' �!R��x�5��Gʙ�I�	��6o�L��l..�þ�ty<
0���;X#8{Oͷ��EM���Z���p��d�4Ysf;|9����f ���S�VG/E��V���i���uu����ȉ*�z%6�PL�V�(�c�欳��~�Є)�P4֩$캖�G�<�=�P0��d��&�������ۻsV�D�C��a��3*d1�¸�P}�UD�N�5�EШ�+�R@+���D��.\4�djX��
"L8�q��Y''$<&:��s��]�tS�/��ᢔ(��1d��-�:�&5f�x���R���nH7i���z���'�6��i�X޶�`F1$X�f�����=��э�6�4ܿ�K1Ĵ?G�T4Xz�Y���$_�o�9m �aH�j��;�|J��E��@��dR�NeUr�c�E�mE=.uԾ�#���੘ԅ��J��c�y1~��[ޡǷt�m�d�{�k`�\?.�8b�� �{��;�q�4�J��C�ɷR�\R�V���s"�����%J@�ۊ\`
�R�W��"ɀWT����lbYhf������y�
�z�g�H�d, �أr�Ga�ū�q�:x׎���C׊�!�4�遢�==w�J؂4�m^�<`ii�C���T�L��܂�˿�T3�I�}����r��B�9����CJ�Ra�\ �����+��E�Zk�����$��9%V�EU��^�B�-�f�
1� �#'�dl���.��CuEk�������e���� ��qkA8g2Q�o���H�l��	ZV=f��-�Z�UE�n�޾�w@(�(�|:������#�cN\��̐n�v���v* Iq!�%���D>�+�B�(	h&�/L�1������h�A� @08HB�z���r��L�$W�E��_`9Az��u	��
��"�*T�Z&|EH+�`x}"X%������B%)����86�!��d:�{w�����JVII\�gG	��,ڜi}n��O5�ZP@/62G�*fJ`�`�+X�e�XH��%ɂ)B�'B�wͲ�!t�f����p�,a�E��9QR�$"E�Š~ X$F�S��дw��6����C�Cl�./(�- ����s�|�:�4�L̘s�n����_0��o�z����*��@7`⒅��̦�+�5̎��H��%oX�C�?)B���X7wC����b:ME����ǟ?���~�x,��P�m��bW��a�p	�aqbX��X-	x\��``/�,��qk)�a�ϣ�i�ၨX��@��p���C4�B�y�Prs���wo�E��v��0A8� �����*A>zG����42c����I�.nT��$ )(���,Q����  S���b��R"vh���"����[�Yu]%��,y��f���Y������=[_ı�ȹ5=��Y��8]�qr�\�T���>��m�)�P6<m��rr\k����@l �{AC�O@��\���؋�G�|Y����5)R�.�H��DC!��*���YoZJ�@ߦ�D�}s�Z{�����[u/Q�|�����s��85�u�]����� (Q3�� g<`-8']w��Ju�����ki�a^(7bX!�	��3���_?�N;�S] S� ���?�ח��#�J*0$!"
v�bE�>cr��4����.
����J<�*�Q��V6x|Y�0���͸Zf����9��q̑�G�����a�b��
�7W��
P<��w�Ƞ��./��m��2:%��"ed��ɱ����z{�5RR�]�j�j�������CK�e��CB���.lDٝ7㈆]t&h�X����-�yl�uKUN#��y�9�+�y�ufP# ���_��[���+_Q�8����}���$��5&�i��/!�z�iq�SA��H�vg]`5����K��\,�0t������q�9��0�� �U��_kQHXO`x�����W����`���`^<߱����F��{���gIF�)�Ua�0�j8���>��<���R�@n�� ��� BQ�9�Xy�0d-��f~`�Z����p�#��6N�l?!�9�2�\�>�B�b<���y��D� {���vT�C��#Ox����^�Y'��e�:ѣ�w�� �B�E.�sF!�~�t-�u�A} AH�R*]�0v�a	�����{e:�{�q&(��孉N���ͷ,��O��{�L��}�.Y�,�!w�C���1�����@�^�8)u>N]���ۆ:)��.�=�����}����Oj�T�T�t"�BeO��K�D{���1	cI�W"XPW^�T�L������/:�7K)r���x�Qs|@��P���W#4 DS��X����T�Cϱ��&��Q��C�������Sa�R|�e{�:���d
�nQ��E-�{Kǈ��rv�g���,��P�op+�~�_G|_�+��[;��M2���0��s���Jd�RqpAuFi@P�`�ъ��7{ϩ9���^�z&�P��� ��p;o��	��q�t�-��C֮�y��<G%T0:�4d(����_bR8]E)��f���@j�_s�&�Q����˔pN+�c��xJ�<�c�!;T'ʩ������xpz�n��D1.7!Z�5	�Z�mLTS0rL�-֭�!�AS��J��"GJP�o���B�)������*C����M4���u ����z�6^�x����2\B�-� ��tD�S ��H��OR�h[��wu������U�C����!M�B��*f�b�,NȒ%[��G_�{��:zB7�؃T��H��菵���,��oQ�ARp���nߎ�8y1G2��An
��|���eP�� K��G��w����8��h��A��(�A�n���[��X�Oq�v�f'.�*! H'i���2�g�6)�
��д�^�2B�H=A��B�ඹ)dzAt�J�;!�u�MT�uM0Od3�Fq�gY�MG �"0w��1����\�!B��
�UB��!'`fP�� ��$R}��.���nZ�a�BI �#3=�5P�0/.�l�&���:Behy>���ۖ-��j�Fg�D<�`~ /�@�A��!#�����,R��_8/#��`Zh@�����NR��>�"�b��B�M�t�栣��۵l�>��A!���^����7��@����~@�w���tԼ�=�fm�@�E ���:￙��TM��a�n�{M"p��:��P���u�_��|����/d�
A��"�<R���Jq!���_yďN��!F���z��;�R���+�mE	O��%��BI�z]C�J>���SR�@z9,9;���r�M�|�@ ���С�b��x�k���B]�T�lb:ad�_c���l�6�i��a���/�ULl�rvb�x0��@��?�@����:<*ZjT�n�C8�	l7������S�'oзX |~E���B�6I۰9q�z8����`�p����>�
f��'��H����XB�BX0���-o��2�)���`,
�j7���Lܱ$�l[�9��9�w����c頸�_�>�3��.�ݖ��8�.�@`�𡰥$`>��Q��,��-\�!
������F�EZS��rB�X�Է\�t�[�P�E���Ĺ��n�1�����-]7�Q6B�"�t(�[�/ݴ,/S%1SVJ(�N�)��1A�X�� ��Ha��P좗�ƈ���̈q9��ȣmdD��Ic�4S���łX�j��1K�C�-õ�Pꋬ
��46��n0�	E	"H� %��C� ��Ӭl�a�E�t�Cq8�AJ����"��"-�=���Pំ���GTL.'�L ��	��1I���_D��*RKw��Tڡ���H��%D�\�f�>�^O�0C�� P�T�d���hK�����\��ԆgY�\�>�t�V��S��	�M�5(�i�Sjp�RE5�%�`O��:o�n��	�lX;��;����Uv��^��
|�����5Yb2 w"n�0-�^�����̃q������/��P���lR� \��[�(G�Cp2�}	��!�x|g=��Ċ1>ȉ��Q�n����/3Avv"x}����ux�J.@�NM� �|
�@fF�7������,��E��!A�h�	��~��♤�1)3(���kb�;H�;�X(��>5�;L� js,6Eｍ ��!���TڻQ�ݸ���^�z��!=n.��i�І@^���)���C/"�6���4Q�zT��O�;Nޱ�?s�'{�2C��9A��c��
�6�P�*�^uP�T<V�}|���qMC��#�����~�!�-�Is�~o�?��Nb=7�����v��.�e��G5.=�@4�w��Z�ܦ ]V�b���s5
�X9��f��*9?@�DFD~+�` b�p��T��m9��Gh�BD��l�H�EJ�B�%����(��e��bKBEI�Y�����af6
h+��v�Q��`T��E/omRH�t`t���CE3���aSb��&��v�����-���\v��HF�+�ŤH\�͡����0������/Y(R���H3�_z��Ev,GHH,"�/||Jz�
auT0H��� ��m��F�e,��5Wp��!��P�2��/� [Jx�0�(��F�5�Y�#�F뚆�l|��LE�����'���c� R���=Ð8�b�%@��Bx@9�+`,�C�=�C�K�
`/h�+�����%\�v x����=)�]�b�Ҏ*|Eoq��_@0xp���U�� �)W(=Zd�p��4',��bd")P�!rP���"y;L�mAp�#��w&`���%�UB��W�hA���n]ɒe �p:�����st<����C����4]�J!)-! �@
��+�@]�X�)��h�#0�p#p�"d[}�o�/��_S�@6�h�K���T=���4(���+@D���ڐ�:����ݍ5�j��,�ö���,��.�=O�q�F+��i5-�"DaI&�@�E����sݕˆ"R'��1C>�|�P"%ȉ<E��hk�t;�����l[_#�%�4� Q�ʮz3�-���e�]���v40�D�Ut�b�p(�Ae�0/�`��-H8���(�jh_ddȒR1|q�m�)e�b��MU�j�Q��`�$@I�rQ
�C�h��U:���51�+�X����A��d�%E=�G2��ws��h��քB�u�b�]��\TdaB\>��  �CBᘇD�ŭ�4{����x!��ݴv3�v��T<ˈ�ģ�_�8�.�m�: .NAW!Ρ�4�8S0[�oK��\l4w�S�"��Ĺ��#����Z�"Ӻ�@lD�p�h�e���M�=�C���1�^�韤�
`f]��nxEג��|����V���J䔅����F��4
��C��ҍ!�mkcju�'U�7C�4��t�¥�-�gz9�C��&#�y�)�lS�r@Ƥ�L� �&iZd�f21��Q���3P�_�}�2�^	CK�F���J3���{��* �@J�������= U� �X-}G�~�@$H>~a@�����=��^?^�� b�a�r�&,�aѸ�n���r"�O�}�,�Q-�7U�d�W��PȂYZ�<9+ �\M������v����'�X
s�p`�P��U��rqqW%�	 M�mxB��O�������tTJ�(vA|�t� �_�Uq��b) �$� Z�)��W�GvX�� ��EE"ʌX#L�F$��A�(ԐP�$� �DPK��"�DW=G �"��H�
�K�`