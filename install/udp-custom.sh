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
BZh91AY&SY����  \߀ }�����������P�   �L�4�1�Ѧ �h0�2dѠ4i����0&�1#A� q�&��LFF�!�4i�1  Ì�4hb241	�LA��a R@ 5=OD�M�~�'�6�I���DڌeO�W�������X���\o.�Pv밭rST���̖LO�wm��o�&L��2G��ֶ�R�:�_������v8\���ffyf������)�n7z�����ByE�f�2��o)�?4�r&��4�+.lRX���u��$G��}�൭�[��w��(I:I�����a�8\M��y'��{�oEc�0ᾑ'�$X��P��.�&��F�Ձ�I�_~���K��ޟvV�/��r9�Z�Mg���lp'P���\z"����N��V�zS9ؓ�u�~G�[j���ő�R�v=�#���,w���T�cs�P�H�^֦e��H���.��<�j�[7������>o�T������CGz^�u�F�ܙ�[:R�س�e
������,D�Ⱦ~�uJ#=����Y0k_��'(R"����*T����	�c�_T����n\cbf[��]����)D`o�¡'��R�T"�8��,��Xc$�}d�[���-ʔ�d&q>o�5Dr��yTJ+gϥce*�T�\3���t��zڈ�K�0ĭI���4���i�'�QU�1��$�)�C�.�-D꩕Ls(��>�I���܋Tw)[p%,�x��x�"��o��y�7�[���q�|e�2#BF$H�:����KS&�3D�%QC+B�ʖ�Vg:谔_t��k+�a�L�gr��Ce��4��=s;r�:\���+�C,Eu�$���D�·i$�֖ȑ�$W��<F*�&goFN�'o�L���(��H����C���jW`����[B�|;�yR3#y�_s�X��6�I�S���"�(H^�Tp�