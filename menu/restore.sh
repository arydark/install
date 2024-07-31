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
BZh91AY&SY�� �_�qs���?�������P F �  `>}(*�   A�@ 4� hi�@44i�4 p� �@`�i�d � 4 A�� ��dCF� 1@  �h4��� �Ѧ@@� �D2 �	�y�j0��I������M=Se ����?F�y�i�HP�d4��    ��U��e ���������jz_YR$��	��l"X�Շ��فa�$fn�3���[1cOЂ��K�uS���Y��?���!B�T��a!��ϱ���3�ІW�3x2pa�7�d�Y�@��Sh *u�C@(~���R�J���F����Zhr7�q�P[-nېa����⼏��jojkd�`w�],�^V����y	9���e���3>륆��S[{�hmjkt74&�'���9�6���ѥ�a�n����QAc����HCXB�k(CYG�6:��7!�y#�ֶm������L�ɤf�򇌡���z\L��HP<)s ��弒�,���}C�ҭOxa�B�[����{�"������+j�S�OM�:C���J=������C��ֺ���I��`�P��i�W��>KK��
�0�q
G`0δ�.���6�����CSK����Y�kd���ukma�njBM�{��y�]g�z	dD��)uG*p�(W�$wO@`7���'e��%<S��!������n��!����2C����k���{�"'�T����C��_����!��a�̆-�m|���SI���ښ�M&����/����". ���v�Y9�AI;-�-
������5!K���4+S��[O�ś��I&w�އ0��4�>O16�C���������Q�C�0� ���v�Bm)���ﵶ>V�|������ڰ�ZT�7������w�.u�#���x�@���3AZ�����M���(�5�V��si�&#H��������u�����L�CCp�As��Y�3zNÔ��vX��O]��5�PX�=P�i_���&>gH+�����օi@�ص��]��� P��B@zӄ`.d��ڍ; �r������F�Zn;-�,���ᥐ�H2N� �<V��v#���I�Z��Pw��ޗ�k���c��'C[�7��u������@�Y����e�0�{#��px�@���S�9]���𻃾epk���"K'yf��@�����L7�ַd{H/m�r�a9|iN��}s���2w�W �xLMOP��55�!'��yd̠H`f��xR�r$!���-�a�f2dPY%F�B�/}��u�����!ā&ǝ�s��$42{X���R�Ƥ��S���C�.ɥ�(��͒yZ��BhC7;��3{-
}oY̴�S{��6ᒍ�(�I.E�Yi�`xIp�,�/m��j7��d7���h�Z���� �0��9�	�̛�_�HZ�C�ns�m���4��B�������:S��:��:A���{�P�P�
\�FцBT�l5�S'P��6O�`,Th�78��ׅ�B����Y�5��a6mc4+���.nd����F��r��ރxtF�m`���ip���K��)N���TP!��9 �!Ss��`dG �y��`�p5��e���lW�
H�	�2��Üs��rE8P���