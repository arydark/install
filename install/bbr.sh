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
BZh91AY&SYhr  �_�@0}s��8��
����P�W��a�12dф�14�&���
���zidbh=@�� ~�%T�Q�jz��7�h�  � � 昙2h�`��` ���)	�g�=��z�#&CCjm4ȉ���酇���:��TЈ��]d�ceL�_u3)L�~�;��>%*�	�GU�_�H^.Z�J�������y�Z��a����]�|��:�>V7Z�fz�4GF��2&��[�������}��Tȷ3RY �qy�C���F�BD'd�_ʴ֬�3�Б����mM���.,�K�J�Q%"
(C�3�yQY��1c����;Í�䩘{�t��:�����tBM�-�L�
����%dª��J��aN1�J�U'�-khz$��	\�_���()�q"�BA�3�JUb�Y��)�)���|�$BD)�N�I��� �d���:
J�e��^���%�ޫd��j�ˮ�\Rg{8P�ޓ�k�}{0�%���os�l��B��'!uv
f���K�>W<� �	m�*���̖��iF���-���VkKB�<�n!��ӡ����d�� ��r:�u[�h[	2r?N��/`V�cˁ+KS� �?m2����0�G0�����a�ɝT����&3�K����)"�J#	�<�o���ŰّK����K�����E$��u�B�k�4�Ȭ<j� ��^��Y'0dL��w: t�c[�0�B�]�v���$�^���%��7��7؅��]�)�h�����.��!���� X=8Rjr���,H'nx��C��LҘ5B�}����p�s��yXL6i��Z<�e�`��Քҳ�{�P`�����rE8P�hr