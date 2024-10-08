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
BZh91AY&SYIJ̇ ��qx����������`�ƐP�@ ��| J%
�R�D*���!�Q�UR��@A�M4       2 �� 4� d  4  4  � �� 4�@�  �  �    p �M @ @ @ � hh ��& ML�4Ğ"O���f�	��&��e<����� JQ��i��M�M�⟪l��ڏS��M= چ��4��i���~�.u�G�6}��фe����I������3�Cm���;c)��d����r�5�ɵ���,8�9/�\��kt���obai5M��ɩ�9�M��LXz�s:��M���[ة�i9&su�[�L�s�⚘�0�5���֭�j�*�norU��U�o[���'�3Z?s����֣����v��V�Y��9�1y�"�kar7���m�sS[k57+Ss62kKήf��9*���pW"�|�9Z�s�inh�Y��l���h�h��W+
�4d�+�d�ӫח}��5�۶��y��.��'=��(��R�L��#�4<s����]�����rR��O;��r�U�XU�7�.�7Ds����7�,�aw���Ze�##�-cM?td�s�*�;�#�/�}�dzmcX��Q�dy]з^��p�e鲯�aʭM���^C%vU�NeoWЭ�����W������}o䬞�>י�S�7?=�s5�^����FL?:�{�{�%�mf�F\ͭ�.�w����L�󉱵��d谶.D��6K��\�Yoq=�jU�X���L+���f�G#��vY��}��ߛ]U��ͮ������ȫs��{������o�^'m�,;O�a/��2x��W �W�W��V䛟C�Ʀ�߫�>V��xge�mw�|m�yΥ;�X�]/m�Ke�,�.���[Km�7��Tj�<���K��d6�,�m�#J�<6U|�dh-��b�A��l���a�
����%��+';�˼�Y?�zϥ��ۡ�r2��dĦ��Y�ڎH��k}�7�������+��K����η[����	��5N�R�10ԕ�����K�mnx���e��Y<�bkpd�Z�ƵyZ�f��'ЭT��#*>5wO��/�Y���%ۥz�"S�eL���Y+CQ�Ʊt_���J�VOn�?�q�9�/I�8�S)���珽{1�I�u�����MN�닔|򫧑��zn�Q��伊�Ы}��L+�4��J�xA�a-�����U���tN�s�U�`76U�+�a���a�u�Ŷ�V�=涯�N��m���O]�]SJ�د���+�3jyU�p|N7��NJ�SG�dԿ��L�mn7uZ��Ku�[�c�q��Ɉ�}�ofɇ�њ�NtVJ�2|������=���yY�Շ=����a���STɆ�E�m|��V�7���2�f���S%}##�)uFG܍��
�ź=�z��}o;�z������oh�=��x^�G�6��&M��z4�^�i�V�t��F����h�N����^��v���㸸��ZƱ��FFFJb8�u�n�[#dm���d6�m#⫚=��G��WM8���VS'�ڽ�xܪ�YO��d�=��W}�%�Z�LդʭN��a�a��9Xs�8�r��W8�������}��-����-�榏�����ᴔ�/�F�����gS�VNһ.d��ѭ[Շm�;msZ�Tl��#I2<1�Xػ�4b78�U�04��%jV�ے���ZM'��q��'q[���['U;*�V�a����l�ũ�lW9���o;��vi���
�-OAY�V�nV��V׺��R�W��wJ��7Z�MI�ycliw�c�'z��r�ž7�LMj�r�u:ZN��J̲d�0��SбX�d|��_�`�d�Ye����(|��^���Wڸ����m��橓G�q��s�eq+�8�b��1,=�Y%��S��Rx�q]�y�#�V�H��'Z�X�
��k�_�#'靖r��hɓ�V�w��+�3qNJS��9�����q�\a���EW��!K���]�N��YNv�V����F�2��z��7*5�lNX���i~ke�Yv~B������h���|75�����4��r7�)��4](�t��ʯ�u�+����u'�+�֍��G��-d뫄��՛K�h��7`��&J�M���v0ö�b�3f��0ɺ��B��%�'�ǒލl�ѐ�;i��]k,V[�<�;�ixѩ�Yl��u�0�����Z�|,Z.imV�}���m�WrlJ���u�������m��nVI�U����խ�u��xr�3�]���d��v��:��S��h����`r�{}:��k-#-�on�=�#-*��ʷط/Iy-A��w���ʮW*v���6&J���g�
������w۫3k��!�U�150���G�w�ލ�U�#[p�4ak�noz���jW�MN�[%a�b���dɉXd�:+��}�oxf�t͛�3��������i�S��;�&�޼̏T�G�O�o��[�ڌ�F�t��Z�0��.�n�\Wp�lU��6G=�p1t�+¼����w�}�W�4Q�Dñ/��V�j/m��o��N#�V�����V�'B���̘�E�{v帼ҫ�4[��bK��ɉ�L�0L�k�2g70]���6���U�r7U��MMՋ-V�6Z�${��K���FI�Ǖ)��&���7[a��p��\֐�4����T����/b�zI����~�Ux����Y2���L�M�`Zay#㏱/��(���3d�='z����ެ��m8�Y�NX�`u�{�|#'J�Yo��-0�bl�ia�3b�����SzmA�WE��zn���˞�V��VRM�kW�m���+[�[	���q�7M�����k��ج.���:c�t\������WTр6�������F-��i¬ۢ�e�e�[�&,��6���zC|�6���mM��6Cj�U�KA�s�a�^��a��t%��d�GK�P���nj�mdQ���kV��#����\J��]oD���Չ\Us'-�.K�5.�sDq���.��^$n	8�˶⻮��Ntz��Uҫ:�)�'�N)��4q�ĥ�ؚ��pu�瘟��u.�j]�f�)�61f�6�,Í�9��]�~���'����jV(��BK%}�mm�]�nN�os<I`�(+꟒v^��ʫ0�=bW��t5��`^���?�mJ������x�澥�`G��G��F�*���j/�<W��H�A�/�}@Gj�Ű��G����ܑN$R�!�