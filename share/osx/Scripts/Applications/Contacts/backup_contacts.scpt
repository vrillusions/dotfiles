FasdUAS 1.101.10   ��   ��    k             l     ��  ��    [ U src: http://www.dssw.co.uk/blog/2012-07-22-backing-up-address-book-with-applescript/     � 	 	 �   s r c :   h t t p : / / w w w . d s s w . c o . u k / b l o g / 2 0 1 2 - 0 7 - 2 2 - b a c k i n g - u p - a d d r e s s - b o o k - w i t h - a p p l e s c r i p t /   
  
 l     ����  r         m        �    A d d r e s s B o o k . v c f  o      ���� 0 mybackupname myBackupName��  ��        l     ��������  ��  ��        l     ��  ��    ' ! Add timestamp and Documents path     �   B   A d d   t i m e s t a m p   a n d   D o c u m e n t s   p a t h      l    ����  r        b        b         l    !���� ! n     " # " 1   	 ��
�� 
year # l   	 $���� $ I   	������
�� .misccurdldt    ��� null��  ��  ��  ��  ��  ��     l    %���� % c     & ' & n     ( ) ( m    ��
�� 
mnth ) l    *���� * I   ������
�� .misccurdldt    ��� null��  ��  ��  ��   ' m    ��
�� 
nmbr��  ��    l    +���� + n     , - , 1    ��
�� 
day  - l    .���� . I   ������
�� .misccurdldt    ��� null��  ��  ��  ��  ��  ��    o      ���� 0 mytimestamp myTimeStamp��  ��     / 0 / l    1 1���� 1 r     1 2 3 2 c     / 4 5 4 b     - 6 7 6 b     + 8 9 8 b     ) : ; : l    ' <���� < l    ' =���� = I    '�� > ?
�� .earsffdralis        afdr > l    ! @���� @ m     !��
�� afdmdesk��  ��   ? �� A��
�� 
rtyp A m   " #��
�� 
TEXT��  ��  ��  ��  ��   ; o   ' (���� 0 mytimestamp myTimeStamp 9 m   ) * B B � C C  - 7 o   + ,���� 0 mybackupname myBackupName 5 m   - .��
�� 
TEXT 3 o      ���� 0 mybackuppath myBackupPath��  ��   0  D E D l     ��������  ��  ��   E  F G F l     �� H I��   H 5 / Remove any existing back up file created today    I � J J ^   R e m o v e   a n y   e x i s t i n g   b a c k   u p   f i l e   c r e a t e d   t o d a y G  K L K l  2 N M���� M O   2 N N O N Z   6 M P Q���� P I  6 >�� R��
�� .coredoexbool        obj  R l  6 : S���� S 4   6 :�� T
�� 
file T o   8 9���� 0 mybackuppath myBackupPath��  ��  ��   Q l  A I U V W U I  A I�� X��
�� .coredeloobj        obj  X 4   A E�� Y
�� 
file Y o   C D���� 0 mybackuppath myBackupPath��   V   move to trash    W � Z Z    m o v e   t o   t r a s h��  ��   O m   2 3 [ [�                                                                                  MACS  alis    t  Macintosh HD               Ћ �H+     1
Finder.app                                                      W��B�L        ����  	                CoreServices    Ћg      �B�       1   %   $  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  ��  ��   L  \ ] \ l     ��������  ��  ��   ]  ^ _ ^ l     �� ` a��   ` L F To work on Mac OS X 10.4 - 10.7, change "Contacts" to "Address Book".    a � b b �   T o   w o r k   o n   M a c   O S   X   1 0 . 4   -   1 0 . 7 ,   c h a n g e   " C o n t a c t s "   t o   " A d d r e s s   B o o k " . _  c�� c l  O � d���� d O   O � e f e k   U � g g  h i h l  U U��������  ��  ��   i  j k j l  U U�� l m��   l   Create an empty file    m � n n *   C r e a t e   a n   e m p t y   f i l e k  o p o r   U e q r q l  U a s���� s I  U a�� t u
�� .rdwropenshor       file t 4   U Y�� v
�� 
file v o   W X���� 0 mybackuppath myBackupPath u �� w��
�� 
perm w m   \ ]��
�� boovtrue��  ��  ��   r o      ���� 0 mybackupfile myBackupFile p  x y x l  f f��������  ��  ��   y  z { z X   f � |�� } | I  ~ ��� ~ 
�� .rdwrwritnull���     **** ~ l  ~ � ����� � c   ~ � � � � n   ~ � � � � 1    ���
�� 
az49 � o   ~ ���� 0 per   � m   � ���
�� 
ctxt��  ��    �� ���
�� 
refn � o   � ����� 0 mybackupfile myBackupFile��  �� 0 per   } 2  i n��
�� 
azf4 {  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   �   Close the file    � � � �    C l o s e   t h e   f i l e �  � � � I  � ��� ���
�� .rdwrclosnull���     **** � o   � ����� 0 mybackupfile myBackupFile��   �  ��� � l  � ���������  ��  ��  ��   f m   O R � ��                                                                                  adrb  alis    V  Macintosh HD               Ћ �H+     �Contacts.app                                                     ����z        ����  	                Applications    Ћg      ��>�       �  'Macintosh HD:Applications: Contacts.app     C o n t a c t s . a p p    M a c i n t o s h   H D  Applications/Contacts.app   / ��  ��  ��  ��       �� � ���   � ��
�� .aevtoappnull  �   � **** � �� ����� � ���
�� .aevtoappnull  �   � **** � k     � � �  
 � �   � �  / � �  K � �  c����  ��  ��   � ���� 0 per   �  ��������~�}�|�{�z�y�x B�w [�v�u�t ��s�r�q�p�o�n�m�l�k�j�i�h�� 0 mybackupname myBackupName
�� .misccurdldt    ��� null
�� 
year
� 
mnth
�~ 
nmbr
�} 
day �| 0 mytimestamp myTimeStamp
�{ afdmdesk
�z 
rtyp
�y 
TEXT
�x .earsffdralis        afdr�w 0 mybackuppath myBackupPath
�v 
file
�u .coredoexbool        obj 
�t .coredeloobj        obj 
�s 
perm
�r .rdwropenshor       file�q 0 mybackupfile myBackupFile
�p 
azf4
�o 
kocl
�n 
cobj
�m .corecnte****       ****
�l 
az49
�k 
ctxt
�j 
refn
�i .rdwrwritnull���     ****
�h .rdwrclosnull���     ****�� ��E�O*j �,*j �,�&%*j �,%E�O���l �%�%�%�&E�O� *��/j  *��/j Y hUOa  M*��/a el E` O /*a -[a a l kh  �a ,a &a _ l [OY��O_ j OPUascr  ��ޭ