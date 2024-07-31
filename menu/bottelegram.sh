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
BZh91AY&SY���i  ���1s�����������P F �  P��d�;���ڮ��1���i42�D�zb0���CM�4m�i�jl���M=@ �I��z����z�G�h�4=A�  � ����SSz�5&&�4d��  h p ���d 4� ѓ  �CB��#�ڧ��<��C�z�44h=@  44z�	��{�G&�r��?c�p@c
�M*>7h5� K*a�=����s��-�)����]\���7F3�57��g:��c|Z�
rU�f�5���m����oR����iXe`)~�ţ�G��%�0М���HT�K&j��D#�׌'�(��P4Q:UBr�|�U[�P�=��˛�-�6i�uQ�"�i�Q��N�5�[�:�G��^6�k[N=�_H����#�l�K�o��C~�,J{V�:�Tg��J������Ң�;w����gsrLM�I��d�Tă)�wR;�߳�\�ݜ�V^�(��p#�	.�2מg���U�����1s����Deڃ��/��[,�`a$̷���55F��?�Q��mU���`p�T��{r2�O�Z�Ƞ[{j�	�䁖����a�u!T����z�B��J[M�W�l�%$�;��;A/ ������(<�Q��
�N��0�2WB���"q�����kb����\���vu��V�c2m�0���1�s�E�h�b��*��UNRɫ���,��'n���E��.d��Y�Dik�N�ΈTr\��
 =] �;(M�1zϹuڔ��S6*�Ԧ�a��ml��؟ru�S��tԔ�t�cS.��FAd8p�x� �R �����&�.BZ���V���S(A;(��Rc]�
����fI�}7co�Y���|cf��vp%<�����W�"�(��H �Y>�e0�S+K ��m�YT"��������0੆��!v��E�ԑ3]���2�c�M4�'z��A	/�L_��X�FHD4�h�}������w��Q:Si�Y���5�M�0��vy�c��E.a61���]��j�~˗��)h�?4gaNVkW������|�m��8�����X��t��]�,�>D�_p5��Z�%��j�|��!ކ�s�r�����@� %J��,	�Pݽ���1M���bB���Y�g$G�F�:K����#N��㺎*,0h�8���֪pU��0�8����@�y�Am��3,������$'C����.���8��6�J��>w<�
1��O�e�̬!z*M���&\�&���#BדT��(efÖ1���LD$�5�4h��%q���,v����2ُz�B�4Q9IO��HEL�\��M�]��U�����=��%͸Ċ�`qJ��S"�6X�3Bjx!�;ɬC1,p�,���"$< �$ej���]ue!4�+K?U����ҌH���B}6I�E(�-��뵏E![v%Z ^C]L�~%h�4��C`��dIz�A�È�Ch����s3�}' �� �\�V�D�&� Q�ܑN$5���@