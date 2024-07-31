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
BZh91AY&SY���n  ���=s �����������P F �  Pٸ�Y,��(�QM4�M��L��L�$�2�2bh3D�M� EL���M@ &L` MFFh�	� $����xH�F�2d�hd��   p4 �44 hd4�M � @��Dɣ(ji�M21  �4 h   � C����}�{��m����1DI��=
�u��#י��z���1G�v���M�P�l�[��VD�ц4C�v����w6����ı����-;�3=�:Kx�Jr�aH��!�Ѕ$�6�U��\v �0fhh=l��0�l܀�PIk�;�&�D���ތ���U���H�)*\�4*�=�����:Me))� c>0Z��V��<W�S��{P�N���iG�*!�K/5�,�t��{t"|�a�gn ;��y������#��;UZ��!��2�T����?hEs�>�����N��l��BH�a$̩9��}�N���ȾJuu�c�)I���-�ڐM��GB�z��H�|Y~�E,��IT[�|�f��o#q�g�����H�3�St�AQ�iZ�UÓ���lԬn[�0��iǃ>֟��ۧ��6Wץ��������i���\c9�؉��u�Iժm�u~8��KrF���Ī��;��2Wc�Cﰀ�D�&rY��G�$��m�h�ْ�v���vFQr8�#�=ݐ�+�b��n�[�j�H��wx7�P!��6�#Y�������8��6b��	+ᴡ�`f��(��m�$�	ƻ�E��0Xg���s
Jd���|�[]o]Mjkp����-ED����f��g	0���Xpul4��r�1\���Y!�g���02�b���&�P&��*�fk*�Ӣ0�N�l�d���ػ[(�U Ô26��gS����TP�zNjpܛ�C�<(��J�;�2/B�(�ʷ�4~Y";�e�Q����9U]VXO2��.p�+�I_˫)@�c���z��T��k�H�%AhI3�V�g��C��S1c8)8L��h�N,�W�dT����HA�Ә������N��M �J$b�s6���R�֧C���:ĕ�4Vq�*F�GY�[aݧjX�a�*,6��M��ܲU����U�3�����e�Ҟa��iT��8�4�<�����ɟ<E��D����T��
*ˋ�g�s����+������< ^��8��
!�$�
�-lp�	��^�3D�$UTB���%�WU:$��'�b�QsD�! f�E�$1hq3���*[Y0����RDJ��vq4OaP��Oc(q$��p�	s��5���-��A �$!{�A�p� ����)���p