FasdUAS 1.101.10   ��   ��    k             l      ��  ��   
This archives email in to the given mailbox plus year. By default this means if the message was received in 2014 then it would get moved to INBOX/archive/2014. Also this script doesn't do any filtering of messages itself. That means if the rule that triggers this script matches new mail it will also move it to archive mailbox.

Recommended usage is to create a mail rule that matches messages older than 90 days (or however many days you want)

TODO: create a version that works with selected messages and not just matching a rule
     � 	 	, 
 T h i s   a r c h i v e s   e m a i l   i n   t o   t h e   g i v e n   m a i l b o x   p l u s   y e a r .   B y   d e f a u l t   t h i s   m e a n s   i f   t h e   m e s s a g e   w a s   r e c e i v e d   i n   2 0 1 4   t h e n   i t   w o u l d   g e t   m o v e d   t o   I N B O X / a r c h i v e / 2 0 1 4 .   A l s o   t h i s   s c r i p t   d o e s n ' t   d o   a n y   f i l t e r i n g   o f   m e s s a g e s   i t s e l f .   T h a t   m e a n s   i f   t h e   r u l e   t h a t   t r i g g e r s   t h i s   s c r i p t   m a t c h e s   n e w   m a i l   i t   w i l l   a l s o   m o v e   i t   t o   a r c h i v e   m a i l b o x . 
 
 R e c o m m e n d e d   u s a g e   i s   t o   c r e a t e   a   m a i l   r u l e   t h a t   m a t c h e s   m e s s a g e s   o l d e r   t h a n   9 0   d a y s   ( o r   h o w e v e r   m a n y   d a y s   y o u   w a n t ) 
 
 T O D O :   c r e a t e   a   v e r s i o n   t h a t   w o r k s   w i t h   s e l e c t e d   m e s s a g e s   a n d   n o t   j u s t   m a t c h i n g   a   r u l e 
   
  
 l     ��������  ��  ��        l     ��  ��    B < IMPORTANT: if changing this make sure to include trailing /     �   x   I M P O R T A N T :   i f   c h a n g i n g   t h i s   m a k e   s u r e   t o   i n c l u d e   t r a i l i n g   /      j     �� �� 0 base_archive_mailbox    m        �    I N B O X / a r c h i v e /      l     ��������  ��  ��        l     ��������  ��  ��        l     ��  ��    = 7 USAGE: write_error_log("message to write to log file")     �   n   U S A G E :   w r i t e _ e r r o r _ l o g ( " m e s s a g e   t o   w r i t e   t o   l o g   f i l e " )       i     ! " ! I      �� #���� 0 write_error_log   #  $�� $ o      ���� 0 
this_error  ��  ��   " k     M % %  & ' & r      ( ) ( b     	 * + * l     ,���� , c      - . - l     /���� / I    �� 0��
�� .earsffdralis        afdr 0 m     ��
�� afdrdesk��  ��  ��   . m    ��
�� 
ctxt��  ��   + m     1 1 � 2 2 4 A r c h i v e   M a i l   E r r o r   L o g . t x t ) l      3���� 3 o      ���� 0 	error_log  ��  ��   '  4�� 4 Q    M 5 6 7 5 k    1 8 8  9 : 9 I   �� ; <
�� .rdwropenshor       file ; 4    �� =
�� 
file = l    >���� > o    ���� 0 	error_log  ��  ��   < �� ?��
�� 
perm ? m    ��
�� boovtrue��   :  @ A @ I   (�� B C
�� .rdwrwritnull���     **** B l    D���� D b     E F E o    ���� 0 
this_error   F o    ��
�� 
ret ��  ��   C �� G H
�� 
refn G 4    "�� I
�� 
file I l    ! J���� J o     !���� 0 	error_log  ��  ��   H �� K��
�� 
wrat K m   # $��
�� rdwreof ��   A  L�� L I  ) 1�� M��
�� .rdwrclosnull���     **** M 4   ) -�� N
�� 
file N l  + , O���� O o   + ,���� 0 	error_log  ��  ��  ��  ��   6 R      ������
�� .ascrerr ****      � ****��  ��   7 Q   9 M P Q�� P I  < D�� R��
�� .rdwrclosnull���     **** R 4   < @�� S
�� 
file S l  > ? T���� T o   > ?���� 0 	error_log  ��  ��  ��   Q R      ������
�� .ascrerr ****      � ****��  ��  ��  ��      U V U l     ��������  ��  ��   V  W X W l     ��������  ��  ��   X  Y�� Y w       Z [ Z i    
 \ ] \ I     �� ^ _
�� .emalcpmanull���     **** ^ o      ���� 0 these_messages   _ �� `��
�� 
pmar ` o      ���� 	0 _rule  ��   ] Q     � a b c a O    j d e d X    i f�� g f k    d h h  i j i r     k l k l    m���� m n     n o n 1    ��
�� 
rdrc o o    ���� 0 msg  ��  ��   l o      ���� 0 msg_date   j  p q p r    " r s r l     t���� t n      u v u 1     ��
�� 
year v o    ���� 0 msg_date  ��  ��   s o      ���� 0 msg_year   q  w x w r   # * y z y n   # ( { | { m   & (��
�� 
mact | n  # & } ~ } m   $ &��
�� 
mbxp ~ o   # $���� 0 msg   z o      ���� 0 msg_account   x   �  r   + 4 � � � b   + 2 � � � o   + 0���� 0 base_archive_mailbox   � o   0 1���� 0 msg_year   � o      ���� 0 msg_archive_mailbox   �  � � � Z   5 U � ����� � H   5 > � � l  5 = ����� � I  5 =�� ���
�� .coredoexnull���     **** � n   5 9 � � � 4   6 9�� �
�� 
mbxp � o   7 8���� 0 msg_archive_mailbox   � o   5 6���� 0 msg_account  ��  ��  ��   � r   A Q � � � I  A O���� �
�� .corecrel****      � null��   � �� � �
�� 
kocl � m   C D��
�� 
mbxp � �� � �
�� 
insh � o   E F���� 0 msg_account   � �� ���
�� 
prdt � K   G K � � �� ���
�� 
pnam � o   H I���� 0 msg_archive_mailbox  ��  ��   � o      ���� 	0 _mbox  ��  ��   �  � � � l  V V�� � ���   � 9 3 Can't set this till after I know it's been created    � � � � f   C a n ' t   s e t   t h i s   t i l l   a f t e r   I   k n o w   i t ' s   b e e n   c r e a t e d �  � � � r   V \ � � � n   V Z � � � 4   W Z�� �
�� 
mbxp � o   X Y���� 0 msg_archive_mailbox   � o   V W���� 0 msg_account   � o      ���� 0 destination_mailbox   �  ��� � I  ] d� � �
� .coremovenull���     obj  � o   ] ^�~�~ 0 msg   � �} ��|
�} 
insh � o   _ `�{�{ 0 destination_mailbox  �|  ��  �� 0 msg   g o   
 �z�z 0 these_messages   e m     � ��                                                                                  emal  alis    F  Macintosh HD               ����H+     VMail.app                                                        �.΄��        ����  	                Applications    ��0      ΄��       V  #Macintosh HD:Applications: Mail.app     M a i l . a p p    M a c i n t o s h   H D  Applications/Mail.app   / ��   b R      �y � �
�y .ascrerr ****      � **** � l      ��x�w � o      �v�v 0 error_message  �x  �w   � �u ��t
�u 
errn � l      ��s�r � o      �q�q 0 error_number  �s  �r  �t   c k   r � � �  � � � r   r  � � � b   r } � � � b   r { � � � b   r w � � � m   r u � � � � �  E r r o r :   � l  u v ��p�o � o   u v�n�n 0 error_number  �p  �o   � m   w z � � � � �  .   � l  { | ��m�l � o   { |�k�k 0 error_message  �m  �l   � l      ��j�i � o      �h�h 0 
error_text  �j  �i   �  � � � l  � ��g � ��g   � l f the following line evokes the sub-routine to write the error into an error log created on the desktop    � � � � �   t h e   f o l l o w i n g   l i n e   e v o k e s   t h e   s u b - r o u t i n e   t o   w r i t e   t h e   e r r o r   i n t o   a n   e r r o r   l o g   c r e a t e d   o n   t h e   d e s k t o p �  ��f � n  � � � � � I   � ��e ��d�e 0 write_error_log   �  ��c � l  � � ��b�a � o   � ��`�` 0 
error_text  �b  �a  �c  �d   �  f   � ��f   [�                                                                                  emal  alis    F  Macintosh HD               ����H+     VMail.app                                                        �.΄��        ����  	                Applications    ��0      ΄��       V  #Macintosh HD:Applications: Mail.app     M a i l . a p p    M a c i n t o s h   H D  Applications/Mail.app   / ��  ��       �_ �  � ��_   � �^�]�\�^ 0 base_archive_mailbox  �] 0 write_error_log  
�\ .emalcpmanull���     **** � �[ "�Z�Y � ��X�[ 0 write_error_log  �Z �W ��W  �  �V�V 0 
this_error  �Y   � �U�T�U 0 
this_error  �T 0 	error_log   � �S�R�Q 1�P�O�N�M�L�K�J�I�H�G�F�E
�S afdrdesk
�R .earsffdralis        afdr
�Q 
ctxt
�P 
file
�O 
perm
�N .rdwropenshor       file
�M 
ret 
�L 
refn
�K 
wrat
�J rdwreof �I 
�H .rdwrwritnull���     ****
�G .rdwrclosnull���     ****�F  �E  �X N�j �&�%E�O '*�/�el O��%�*�/��� O*�/j W X   *�/j W X  h � �D ]�C�B � ��A
�D .emalcpmanull���     ****�C 0 these_messages  �B �@�?�>
�@ 
pmar�? 	0 _rule  �>   � �=�<�;�:�9�8�7�6�5�4�3�2�= 0 these_messages  �< 	0 _rule  �; 0 msg  �: 0 msg_date  �9 0 msg_year  �8 0 msg_account  �7 0 msg_archive_mailbox  �6 	0 _mbox  �5 0 destination_mailbox  �4 0 error_message  �3 0 error_number  �2 0 
error_text   �  ��1�0�/�.�-�,�+�*�)�(�'�&�%�$�# � � ��"
�1 
kocl
�0 
cobj
�/ .corecnte****       ****
�. 
rdrc
�- 
year
�, 
mbxp
�+ 
mact
�* .coredoexnull���     ****
�) 
insh
�( 
prdt
�' 
pnam�& 
�% .corecrel****      � null
�$ .coremovenull���     obj �# 0 error_message   � �!� �
�! 
errn�  0 error_number  �  �" 0 write_error_log  �A � l� d a�[��l kh ��,E�O��,E�O��,�,E�Ob   �%E�O��/j  *�����l� E�Y hO��/E�O��l [OY��UW X  a �%a %�%E�O)�k+ ascr  ��ޭ