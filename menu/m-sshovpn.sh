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
BZh91AY&SY��� ����8�����������p�F��  `&�"BеjՊ�!�+Z�Җ�0�Ow'f�h�$
}��
�T�U%
ى"��H�	EDR��RQE"�%�̈́�@��CD��2i�?M)�&�d�F�i=��zCF���=   0L     �` �  h�����#A� h�   d  � JD� h@  � 1   @4 4I&��ɩ��Ȇ�d����M4'�z��=4�Q�4@���I���$�zM12MOT���)�&����{T<�Q�#!���/�_��)��PA=��!Cup��#K��>���rn��W�~����o?�Yb�rk������f���s��~ݾM����9�����#���T��R|�IД�1���M�N�ɽ�C�Ƿ�ŷ���S��>5�:Z�moƷ�x��_b��v��+�N�Y�ϗ��fճ?�|���ʰ�An��af��L~;���_�m5ʍ���3�'W)
��e~8�;9�Oz�1�a|�Y����
�"AL/c(V����m�/�Uj�S"�رx���F�:�������ŏ�7��ZzY��|t9Y�ڧ�l�J����ā�����Mq���r���Q�29�8���	�3Ll��������Վ�҃�R�����h�B�h��V��e,��J�VZtWF��6p�2m��Ô�SS���[�L㶔�j<��īo)�qd_X��@�����������0��ײ�)�����w�����yq�e�ٗ��w�s��k��os�9~2ͩO��KI���~nM���q}|�q�R��ߒ�W5��fe)��#4��)J�K�Y�jݮ���x������5u��)�F#&w� �@a���@.ӽ��G�����'$p�1�U;y@�ϳ(��/������8�������L	#������B4Rj���ԥ_��&b��܇�[��ϤSn��l�gM��b��A+<[6W�"�7C�^��a7���I��=��T8d����q2�1�޶k��x�Z�L�K�D�'#s���y�Ź���^�;��>��R�Y�^Jb�!�:G�y	z�F ��!� u9�5n��}�$Sq���ܬ�@�N�C���{��6�&��U:�Ls'~�U�vY��B�w��i���?�rp��9؞tЁ�0c8,�� ��(��h��YbpҾw#bkI���x�����`����'�HYQ�/4vQic�K4��>>J��S7y;w<�t�.�'%I)F|��	>�!�kV�9'p��>�sa��7�ɕ�p� ���%�!rO<�3����a�HQ&7�{�a��US��?��i��d����N�S�t����=[�#eI��E(��;���σQ����z^����"b�
.�X�v.aI�g�����o�թ�w�.e��YJ>����(�id����`.NF&X�(���6>#������ԉ�w�V�:�pu��B��Œ��s�S�j5L;d�rrl��4�;_(Ef%�08�H��i�Q�4�	�d�K3�g��8ZȌJ�{t�ӡ*�w����TW�bBeU�E]4n��3Y.�~B����q@�<Y��տ��
����}�������}�N��gsWN��5a �id���n����4��oG���lq81�Ո��ňV�����s�z7�<���XO	��/T��>0�'��X9I4�����~����s.g~�D8��"��Ც�)a7H�ƙ=eS���R�ĞÑ<�^�����7L{�rOj.����*3!���
��n�����pʎ�V��^'�ȍ�ƥ����aI����5zx����]y@�=���PO��S�.��7#�]:i���"��ri�9/�s��\*�_�x�QE9�����Lh��IH�D|�j��~��0�7<��jTS=�>���hJ��꾺&����|\���0.u���a!! ����~i��|�|���S�%$Fx��mj�m}N�_���y#��T,���]�Nڄ����~3�忥=�=����j��B��N�\n딴��'���1�"�2p-{�췎�(����σ�	{�6[y4�Y�S�뛬�H���#�=_���eh�{D�:�S`��K�Q��,��C���If�e���u��w1�ə�KX9��2�hY Ha
�]a�:g?z�SʲG�Q>�(�3��`�z�t�5u��W��ѯ�Q��*�QT�ǢUB��#]�׈(�ܗ7*J����+����r6�����T�SR�.�=�S&�6j�z[Y��0�#�X��T!�C�����bHH���SOn�(�I ������ c��
�����S�D'@�p�����f�ԉb�P���y>��c0G��4\?Mhb�
O�*�.��H�=����R����FK{�HY��XbU~�@�	�# }��@�b��ٲc6U�酈�Q��_�Y�uZ�h�2
(���8�[��&yY���%٫-e���Q��Q�c+���S
�x��Vh�-��o�����iO�`b�T��`5�� ]�uҴc�x��D���߄�#×K�AǑ©#4�����p8�~�?���EL!fI`��;�.���e�N-���&�����/�j>P2��"����0k(Ib Y,ߣ���x�8��<�/+��m �KQ3<D6������Ʌ��t����))y>�	>�gb�����=6\SlO� ?o5��O����z�^�M<�s���&������C��{����ф�H��s c��r�>й�����Z������q��1�w��A	Kx�hAd� �R��.����Ŋ�ڏ�f"���W��~tш�[M�xK��5ͭ�d�Y)
8�u��`�&�ջ�G<}�~$j���ͱ�,>�G�"����?��}��ES�H
@b���	=E�d�(�ܤ`�ᅊ��0��F�Ǧ��Md�4�"F^�	$�Qʝ	����8��cjs�aLao��l�'�n򤞧}-��Rk�k]�v��Zy��H؛:^�C���^�w[��}��S`	Ɠ�����a����Ay䊤��P$JM���~"&t&;�kNx\���%��'��>jNu�3';���Tؚ��O�ԥo/�$��9	Ф�謳���MJu���w�`��O��5��Mq�#��#,�&���|V��w��1ᯎ�VK&Բ�b���5RI$�@�0{�@�m�T��C����P�:��=�o�L4.�Bj�tY��9v�_@���Yn����L�q'��������q��I~툐v'K�+���oE��F?�s�=Y�'Z����fݿ^��l�Ϡ�f�tߩ�G�Myo��2fck�,��IВ���JMI���M���V%�����mJR�N�'�� ��e��d�D�%��q�Įa6``�ʓ
L�a�3ڬ�����4)0�%��dYL�LMu�L�M�X��5�G%��<��	��E����&�25�~�g�X����לO'�_
8�9ig4�8���|���,�]�L1�f���.9��OΞ�I�	6i����*�?��
���-,C�T�Q�#��_4S(X�Q�he }?;O�~Ok�U��w��H#�q�>�s����D"	01$c��B����"��t�Ă��h�"�O
$��L1�#��B���9E�E�O32%h4򐪮q��hp{����0.�z�s�ک��b�$�|����lԀ��� D�0I�]V��@��c��C(��H|߁�)J(���������tE���m��b�^��������<:<�K��W���ۊ@� ���2^��Am���\����3��d�����Q����k��z�5BIkH%�t�w�T�>0�Ov��FD��L�ذWia� C#��h�NjF�ӿ��JZ좏�kghm��gY��}ӿ�-�9I��@��|�׺-E��G6]�i;�������IΓ���:�S����:��ˑ�F~|�dbq��bi6Ů����0�$~T����0i�+Dx��<cZI#S��ԧ�����f�ur�At�pl.&#��Q-xc��)\���,�������8c�D�%ғś��r�:�J��4�ѓ��b�U]�w��&�Ԓ���K�5(��t�[%]2���2pMG&�n �|#�ۛ$ʧ��xI}�Br��8�EH�'>��@��I��G�a�vP�"<yȐ@Ah�I{����%�d5S���$��Ԥ�J�*���ݸ]��7]�S�in<��0H�fq&�i Пb���G���kB,�`H���^��k��L�:�����I\hS�5�3ak,��R�{ުK�Z���A�Y0(%�I�m��Y�k<P�&-��&(M%%앢�f%���p�(�Y3%T�9I:Ȅ����X�g.�!�͡\��ANX����0��÷��0䰲X�^x$��h��sP�i�=�+b.'5��
�p�=X\.�CR��=�A�A��IP�ebNe�w���fd��J�TY��Hs�hw�N����\�@퇭vD6��ԧ �y��Fn�/
���C�j���lpTU#�=��^2��i0oW��[��36A����LH:e ��c�By������f�I�'�P�S%��B��g���7�2c)(RW�(_��%��I"���T��KFU��2UU$�w"�a9�ز>iD$T� p�>/,(�D��y�=Q�Z/j-?ѓ��Hj��� �U��+��8��QjWW�yuQf�a0:���R��L���a	"��0����~D�0�����������29�8C��?*b�\/
���Uy�,y��;��|�UR�5���G�Y��S�y����z��h(oW�8n��!�y]�!Ӿ)]�0�1��}_d�)�/Xm��0�x|��E�]��X���l��'e�f�W+�v:fwН�>},|�i��s�:v5��,F	;�	��}a���@�u ���I	'q�s�_XlTu�,��܆�P�z ��Hw�a�;G�U���bx���|rtȾ&�e�QLN�k�fM��ĝi���Q&m�:u��t���Ō A��_Չ�)FƎ���MyP�Њ)�;Ԭ	�qG�Q3K��Wj��x^���'"��'H�˳eWW�&���xP�G*'f8u�V�1yi%�u^v���9[���0���
�i75����mb�䛷��lcA��^�'����I��,H�}Q�&��(�����8i�tBr����P��Wrb���#(8�@�dM@�k�9��&��# �"T�C�_B�� �R�,��8�%���aI��u�zS+�SR=�{M�h�+YBF-nw��U��v�]�hC^h%
����HR*u!]*��	 ����D4W�Y�!6�!�-~��"��~��A�`��2�3�j�dǜ��J���w�%�m�a"qْTD�viQ��V����˚��
�#� ���m���� I
)�,TXr���т��b�*��4�Y-�a���Q�h��(:�/���l��(r�i @��BI,Q�̆����,uMqB�]tRBM�&��F��u�ĺ�0��0Db�)Z�š{�Sba��M�yi'�<��CH�z�ޠ�L�=��C"Ғk��{��e��=O�&���n!���]hIˇW�i�H����'�hG�d�|�JRR����j��t�N���������[^:���/O��X�q=^J{k�09Ё��%}T9��Iu$X�D�*Nt�����a=���.�Bi"{Y���5-��V
*��Z��AH��J�'��_���@*hd@��sf�0���ah����S�hYC���$�������z��Z�q������k&���hI�E��KY��ʉܞ���X*q�Z�I 
`��8Cjl�kRkB�d�B���w���A�\̊An�m�$5���v*�H9E� �J����c��g{j�:N�d0⑁4��{San����/i�֒F�	��t;dw�qDuNWb�%8����}7�O�؎�9ۓ^����^f�V!C�k��k�a�f�!�&�J�aIE�'�T��5�]&GY6I�l2`���H-<�f���,P���4�Ƙ�-��.�ՅMXVKԑX^�|�3fYK��2��b�� �X,��A�bA�[!Aqu�@p_Lq��H�b	e��d��&:��[��<Ts����%�1\�:	��u�D��R0ZZ��K%Դ(�a��b�`�&x��MH{<�"GL�ȯ��i=U�UG��#�d� �VD`@!ny�A��*�p��رX��B�����_+dy�����%J�d��y��qz�=�:F��u��i��s的�kN�x�D BC��C�H�d�
D�!Ii �A�:��} v�A�F�"��j�yᏞ���x��p���k{ȗ�|O8o<�N���^H��}�Iw42OvV�����3w�u�����Ym$&E�ԩ5x���f���0r�M-R�ؕU0dj	Q;B$Al0-� ���U�n���T�<�sdH��p��ޜ>YJ��l�nIp�۷ƹ�b�A�5G��(�f�t�BjP
)M�W ���G��3����h�?y�SeT���F��e�ػ���򗔘��2��zhj�f�B��U�#�L����N��؞U�QR����e�Q8��>��2BHD"�M6e[r�-
��P=�I�K#7�mM�aSIێT�G,��v���^.G5�Yb%��n��FpI�Ch���)�P �++��Iʒ�l8��	O/2'?. 7�&��Vi�^l��Iu�"�K#Wu$�6�;�E)KSAFhh�P�H$�*���鱥D^s�U�"ISV�D��}A�I��x����(�;p7r� -"�8�߆�5I�s!����'��BP��b�kᖉ4
��5��Q���N��L���s���/�7�xǀ�s�ɦ�q8
~S�zk����	�����ր� 4	���_γ���Awt�=�fFdE����b�O�R٭��6"s'�>Z��x{XN���3�#^p�C��30*cA�)DCix������u1�<G�n,������7 �I!"nY!��-�}�!�T��ٙ��3^ufC�����@S�P�C��Z�R���������~�A�	"����8]$N��$��[��e�Q�2�c	vY�������v�>9���b)�\a��H��@�["�����`�~�F���~�H,$�"~�$�?8�H��
QG�HlC�AT$��R�D@�� 0����d.ʤ�c���6l<|�4����4%0�4�H��)Hb��FA��"�' �J�H�$r!bBDA�.�p�!#��