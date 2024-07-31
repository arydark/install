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
BZh91AY&SYJ}9 ^�������������PDFB�  `M������i^������۠7{On��0��/����hl6���`�c��P��h>����]:���A$�2 F)�)�`SL'��<�ؚ�Q�=�D��h�MB`����z���2@h       ���i�4z�  �jhC@4   	5#H�14ɠ�OQ�����  h �  %4���2���%?*?R~T�I�����z�z(z�S��G�x���( 4z��Bh	��&!=LD�Sѐ=S���A��hmF� �@3���l_f������z��7ѹ��4������Vh!�l��I��W,��3� i*�@q����d���*�-&CP�k�(0#�-B�ٓ��7��e�T	�hv�5�P�P��^l�\D��h8:D\��nב.��]�@uAό�L�.��҉�F��R�8��Mpd}B�^qI��3,X���Nj�*+I�F:6,���f[ӿ5P2�Nb�`�jZ�Z�����=]#��X���8.�L.�5f���`��R=e�Tz:/PeMq$ϝ��c�@�I�l\�W�aJLJ��}WQC�	$�s�8��i����( ��7��~}���W/���m�,��І�4,PZԪ����X#*��������c����[��H�0z�4q�t��T��}���t�WГ�<��K�,#�\�Cr�zG�d�
��%�q��T�!Z����l��L�C�C�8�K�Z���)_���b�.Ao_�i�QiU������5����5�Y��d�x���g\�v��u���#��}ĭ)�k&,P��29�^��C��˯�/$�ޞW�8�p[�rX�(�_�,�_2�����F�ɿ�߈n��i�	Ϝ��ٛ2� �I�OZ|']%0w�\���C�o���ƌ������I�
�PH��)��3 �yXq̡��qP;�B+Ai���	��������'i[H�^�"�!û"=���D���Ӕ*�����s�����������'0�����~����HXx��2�Wr&v5��}܏��$Z0��UYm�?[��������劵U��MJ�$�Ui<P��9�Ґ���y�R���w[�w�Nݹ����;�k�Y�m��6wy�d׻y�T�L�E��p|c/�Ƞk���j��y�����-�^���H������vF��׶eUD��������<طs_��$��pwSб���_9��*�|k��l6�Ȅڧ����P|�~��Y#�͌�@;v{��ˢ���*�AJS�=ɫ`J�'���moSS�7��E��v��{cD}v�I�x�� k@�5�N�-�'-E@`:TV����B�H�Y��m�gKG�	\������-�R�	�!���޼�I�fy��z���m��C���76�e�9�W��>��{I����0d�(狩 8ɀ�%�*�ػ�9*B�fP/��a2D� �l��gbn҅�!�D�U��~�@|���[�^FN���ݿ/&܍��w����@��[^`0w�*L�ӴM�awR��m䁖�e���g,X�����s����T@�E(3�*4�K�(m֩�m��x	��w�"�#O[��a:�P�����V�+��G<x��6
��=�����I$Ed	�Hs����Mi��Bfśl	LH�O&���4��x|�!�A�2����@�����*�D�FI� ��>*��.u=ˆ?��ё1�|h@��gEF�i��
��JBQ]K�s7k�ąb2Nk(%�K,VE����PSE0�i�Xÿ�??�Է����e$��L�wj��#�޷�=PK�hP��_I����Q��Y��/��><�s1#F�jH����zz��%-Ej�X�~���|����w��8��E��F���/�� � ���u�c%����s�F�����K���{��j�B=I�[��$���/KQ��hr�!"D> Xm�{F����r���e�h+�D-$�3��� �y�˼s�:�z��=�������EU��	0
��.�44b�EjQ1��*`U�P5^�t�ԛ ����E��� H�̈�=+PƲ��;;��ppc|�K5Q�$��[�,lZ���:��_we�ZD>u�x��1��y���_mא���j���V'qA?9��.�"��C� � K# ��KDݶ��>�| ���?V��Ko�t��.0�\�~����7�47�c�u(���d�Y�[�舮l���͡�1$B���ޥf���m�3�,��P<�# ���[9�Y|��u�B�W��u������֞CȮ�0&�$J�q������
T��e�u�b�
h
�%%3~D]�5��2F�,#�yЫe:M&FFKzU����y��`P�!���<��;�}�U��������/�{��$�ڪ���$�2qun���c�P�dg��.;9瓉�c�F9p"���goo	Z��UUU;Лh�\s�w��ϣ�����D75�z;����P�6�v�������e����
��k��ۀ���p�Y{+�=bp$�+D��?�V3���lS��<S���V,��F�J�`�˩�T�(s�
�I��kȘ6B���:C O	:	��p&a8M��*7��PO�L���t���3��O������{8e�{#$�C�w9�NQ7���)ɜ�L�=���䍁�H��#�?49O��L˅2dバ�J���W����2��t��$%����,����"R������]����e������`�GK�$mE��[:�L�<e�J���n�7g����UKM+�­Zw.���;�&���Ɠt����o�jn�8��1�aȯ9W�|��DG��o������<�*�<^Q6���~i�T��ʥ!�����45'鍠��͖;Sq������G�����{{��L#z�R�R(T� �m�P�g�;>A�n� 7�4(s]�Xh�����Ɖ�_��t��5Z/�^�A���׃�r�3eP�
$B�&9�b�OE����<�E�)-gq�=�C�':���?V��L��\f�i�9��䟹��*�F�A #��ul���*&V3����i䛲D`T�Dr2��6�QS���d�-��Rv݈6u�a�)���m��^l�%3�
B��Pon��"�Ϥ"p!<�Ҝ�!���DH6��T�D(/a(���֫2FJ��HMB�K)Z��������a��@�4a}ҥuI��is]�h硧y�Կ�ӱ�<�3G������;�oc���C�մON�[�J�p��O����d���[��.�u��\ޣ66�O��C_Tl�"q��
��m����$�!C#�m���Z�W�$�aL�څ�x ����/��C
6�z�5��5ʭJWӗ�c��lU
�R��.�5�ˋA��6ɂM�u�hF�1���G"�Q��q�f�Y����� ��fh���yzu��u�pp�S6-�S���~�l��$��׾<�F�q���;�8�� G�B&f�x�C�P�sE��#�'@�h�~Uys��R|��q'��oJd�"vSZiVÉ�R��W���0���?��U
�9�e�;<Fo/�\[�!&�2);왔FN<��}�)�? �y��f�X�,H��;���a�~��A��g���%�������瀞LV�>x�"��{b?@Qx �?g��3��P��N���+��j��R}r�ڼ�w��#����!��������#r=����Z� (�!x[y*�烀��=��>�(s��A	 �0�ص��Ap���C�,��G*D���v$@���%6�@���g5ffLł��Ӳ#�MlɚV6���@��tbx��-N%R8�<�ѳ����!b7��*B�
R�/����̃s�=b<r.q���-�2���^J�ۀ��%��<B6�s��G o�-c�k _8�Mƒ�D�1�\74.[?ْr�2+{iETb�x�(���(�65��M|II�Yΐ�)� �W����x]��9%��{ʵS�1v,���	��[FDR�
�m��
�e2���nb�$�
�遀X����`�,sgkLo�\�K�Z����A����nI	D�9��h����"�ߢ��f�^�DѡʛHZ�5�0���3�k���ƕ3CGg���Bʺ�;� yX�@�G��ѿɶPG����8���Aݿ)�+�����j��3���/�a0� �v��1���v��3ӻd��ۢj�uE]ƋF0Ǔp���l�"�&�ˏ$ �)�i�.P���E�jc�!$.Zy��a�M:�i�X�t��)�cZd`��r; :�@�������PXĄD�wr��F4���X�?��`n=��sZ(���r� �7�z`�P�|o��W�;����9��.���]���|���s��R���,�FA.|v���Շ����HNf�bM����a@�	����`HRH�*d�q��3��4��&�oL��`H��lW��@�:��7���:�!�l�
����p�֥C�ǃ��^�=	������P�0�ƹ������%$f�Q�A�B����λ��4��m�Y�WJp-8��o�i��b�����b�����mA?j��������r�xC:/>��n�s�P�Ab�P��0X&U�e@N&�΃P'�IӼ�ZYi�RK���L0�p��!T�E��A)�ל�2Ht���%�1�#7z���u𧝍Z�;��4�ޞ�@�s�̦�[�Z��E
�T�A[��)!h�ݰ��ֽ�[��Z���#�,7!�X�4B�i��J#S
�:�6l$��>����GVv@j	�6�:ݘJ�؀P���6�a�M��@G�Q�@	$�7�+rҸ��#�.�B���l@:z��ƿP٢��-��E�-ȷ$L*�{�`	Kz�k�ro���#��4��Z}+�t��͠�S"&�ï���8V�@ժ�,.{��qd���
)����sqD��)�˳YI�g$.�2Ѣ&ȍ �؀k>��F��$�:�qq)$�x��6��+�\|t�xȫѦ��#AC�B��m 1�����t ��l~L��w|��6������X,U�R�4�Y!�p�eE
�t,����%ؕE�UU��n qA���ن�+[��? y��o�� ���<h\)z�˓��"���B���0�9��B�q\S���1S��1�l_�l�"�u��5(��]5^�;�eu��;�k'�"Մ%%�pb�D�(�?F�*4��G�i�>G����%��Ez�7c�W�2`����UK�=|��hTjvTC��B������P�@Ef��51*`�MV���b*{���������D�k��>V�
s% �		E�����>˔nϊ�Z�^J%�@�CJc�cK��3�0�~�,����^ݽZ��Ҕ��[� ��TI��A4&֊�0ި����Ss%L��ֵ�3BGA*șg@g��ˎRjؾ!-ju:lY�!T�k ��곑o�P1�0K,�Q����Ŭ�� �t��b���c�w
�@���6Qf��G!��I+�!*.�tc���yuڦ�(ƪ,b¢�@����g���e�ҥ��r�Ք@�O��v?a؏dښ]f���3@��q_���8��R��k�	���W����)��I��̔���@,hAΝy�h��~�_+}(=-@t+@����C��S�7��\�ڄ���uD^G|JW�|> ���]t��f�n�}�}ֺ	�J4��R��<�����pPx��
���g:��y���N>�U_�3誂����pͷL3UTukkQƌn�p������$e�%@=0�@\t�C�����
P� iI�"��`0eS��5'�ETؐ$��
H(h�����"
������"}/�����Ͼ��(�L�.��OdOPKҡ�@
�� ;GL�!Pf2�efw�	(�[t�X�<FP�4�I���Ȼ]��
J�y�{�2+�45R��t�nVA�o����AR�}A*�"
1T���7�����!x*BH
+���'��З��+D� ��d:�ŔU�R) �HdZ��E �I@2T!@VX/�rE8P�J}9