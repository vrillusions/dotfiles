FasdUAS 1.101.10   ��   ��    k             l      ��  ��   OI
Written by: 	Sean Long

On:			09/01/2004

From: 		http://www.hailstonesoftware.com

Purpose:		Create a CSV(comma separated value) file of all entries in Mac OS X Address Book.
			This CSV file can then be saved to disk and used to import the Address Book data into Mozilla Thunderbird.
			
License:		free to use how you choose.
     � 	 	� 
 W r i t t e n   b y :   	 S e a n   L o n g 
 
 O n : 	 	 	 0 9 / 0 1 / 2 0 0 4 
 
 F r o m :   	 	 h t t p : / / w w w . h a i l s t o n e s o f t w a r e . c o m 
 
 P u r p o s e : 	 	 C r e a t e   a   C S V ( c o m m a   s e p a r a t e d   v a l u e )   f i l e   o f   a l l   e n t r i e s   i n   M a c   O S   X   A d d r e s s   B o o k . 
 	 	 	 T h i s   C S V   f i l e   c a n   t h e n   b e   s a v e d   t o   d i s k   a n d   u s e d   t o   i m p o r t   t h e   A d d r e s s   B o o k   d a t a   i n t o   M o z i l l a   T h u n d e r b i r d . 
 	 	 	 
 L i c e n s e : 	 	 f r e e   t o   u s e   h o w   y o u   c h o o s e . 
   
  
 l     ��������  ��  ��        l   � ����  O    �    k   �       I   	������
�� .miscactv****      � ****��  ��        I  
 ���� 
�� .corecrel****      � null��    ��  
�� 
kocl  m    ��
�� 
docu  �� ��
�� 
insh  l    ����  n         :      2   ��
�� 
docu��  ��  ��        r         m     ! ! � " "  a d d r e s s e s . c s v   l      #���� # n       $ % $ 1    ��
�� 
pnam % 4    �� &
�� 
cwin & m    ���� ��  ��     ' ( ' l     ��������  ��  ��   (  ) * ) O    � + , + k   $� - -  . / . l  $ $��������  ��  ��   /  0 1 0 r   $ ' 2 3 2 m   $ % 4 4 � 5 5   3 o      ���� 0 lasttext lastText 1  6 7 6 Y   (� 8�� 9 :�� 8 k   8� ; ;  < = < l  8 8��������  ��  ��   =  > ? > r   8 > @ A @ 4   8 <�� B
�� 
azf4 B o   : ;���� 0 i   A o      ���� 0 
thisperson 
thisPerson ?  C D C l  ? ?��������  ��  ��   D  E F E Z   ? ^ G H�� I G l  ? H J���� J I  ? H�� K��
�� .coredoexbool    ��� obj  K n   ? D L M L 1   @ D��
�� 
azf7 M o   ? @���� 0 
thisperson 
thisPerson��  ��  ��   H r   K T N O N n   K P P Q P 1   L P��
�� 
azf7 Q o   K L���� 0 
thisperson 
thisPerson O o      ���� 0 m_firstname m_firstName��   I r   W ^ R S R m   W Z T T � U U   S o      ���� 0 m_firstname m_firstName F  V W V l  _ _��������  ��  ��   W  X Y X Z   _ ~ Z [�� \ Z l  _ h ]���� ] I  _ h�� ^��
�� .coredoexbool    ��� obj  ^ n   _ d _ ` _ 1   ` d��
�� 
azf8 ` o   _ `���� 0 
thisperson 
thisPerson��  ��  ��   [ r   k t a b a n   k p c d c 1   l p��
�� 
azf8 d o   k l���� 0 
thisperson 
thisPerson b o      ���� 0 
m_lastname 
m_lastName��   \ r   w ~ e f e m   w z g g � h h   f o      ���� 0 
m_lastname 
m_lastName Y  i j i l   ��������  ��  ��   j  k l k Z    � m n�� o m l   � p���� p I   ��� q��
�� .coredoexbool    ��� obj  q n    � r s r 1   � ���
�� 
pnam s o    ����� 0 
thisperson 
thisPerson��  ��  ��   n r   � � t u t n   � � v w v 1   � ���
�� 
pnam w o   � ����� 0 
thisperson 
thisPerson u o      ���� 0 m_displayname m_displayName��   o r   � � x y x m   � � z z � { {   y o      ���� 0 m_displayname m_displayName l  | } | l  � ���������  ��  ��   }  ~  ~ Z   � � � ��� � � l  � � ����� � I  � ��� ���
�� .coredoexbool    ��� obj  � n   � � � � � 1   � ���
�� 
az43 � o   � ����� 0 
thisperson 
thisPerson��  ��  ��   � r   � � � � � n   � � � � � 1   � ���
�� 
az43 � o   � ����� 0 
thisperson 
thisPerson � o      ���� 0 
m_nickname 
m_nickName��   � r   � � � � � m   � � � � � � �   � o      ���� 0 
m_nickname 
m_nickName   � � � l  � ���������  ��  ��   �  � � � r   � � � � � m   � � � � � � �   � o      ���� 0 m_email   �  � � � r   � � � � � m   � � � � � � �   � o      ���� 0 m_email2   �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � &   get the first 2 email addresses    � � � � @   g e t   t h e   f i r s t   2   e m a i l   a d d r e s s e s �  � � � Z   �# � ����� � l  � � ����� � I  � ��� ���
�� .coredoexbool    ��� obj  � n   � � � � � m   � ���
�� 
az21 � o   � ����� 0 
thisperson 
thisPerson��  ��  ��   � Y   � ��� � ��� � k   � � �  � � � Z   � � ����� � =   � � � � � o   � ����� 0 j   � m   � �����  � r   � � � � � n   � � � � � 1   � ���
�� 
az17 � n   � � � � � 4   � ��� �
�� 
az21 � o   � ����� 0 j   � o   � ����� 0 
thisperson 
thisPerson � o      ���� 0 m_email  ��  ��   �  � � � l ��������  ��  ��   �  ��� � Z   � ���� � =   � � � o  �~�~ 0 j   � m  �}�}  � r   � � � n   � � � 1  �|
�| 
az17 � n   � � � 4  	�{ �
�{ 
az21 � o  �z�z 0 j   � o  	�y�y 0 
thisperson 
thisPerson � o      �x�x 0 m_email2  ��  �  ��  �� 0 j   � m   � ��w�w  � I  � ��v ��u
�v .corecnte****       **** � n   � � � � � 2  � ��t
�t 
az21 � o   � ��s�s 0 
thisperson 
thisPerson�u  ��  ��  ��   �  � � � l $$�r�q�p�r  �q  �p   �  � � � l $$�o � ��o   �    figure out all the phones    � � � � 4   f i g u r e   o u t   a l l   t h e   p h o n e s �  � � � r  $+ � � � m  $' � � � � �   � o      �n�n 0 m_workphone1 m_workPhone1 �  � � � r  ,3 � � � m  ,/ � � � � �   � o      �m�m 0 m_workphone2 m_workPhone2 �  � � � r  4; � � � m  47 � � � � �   � o      �l�l 0 	m_workfax 	m_workFax �  � � � r  <C � � � m  <? � � � � �   � o      �k�k 0 m_homephone1 m_homePhone1 �  � � � r  DK � � � m  DG � � � � �   � o      �j�j 0 m_homephone2 m_homePhone2 �  � � � r  LS � � � m  LO � � � � �   � o      �i�i 0 	m_homefax 	m_homeFax �  � � � r  T[ � � � m  TW � � � � �   � o      �h�h 0 m_mobilephone m_mobilePhone �  �  � r  \c m  \_ �   o      �g�g 0 m_otherphone m_otherPhone   r  dk m  dg		 �

   o      �f�f 0 m_pager    l ll�e�d�c�e  �d  �c    r  lu c  lq m  lm�b
�b boovfals m  mp�a
�a 
bool o      �`�` *0 foundfirstworkphone foundFirstWorkPhone  r  v c  v{ m  vw�_
�_ boovfals m  wz�^
�^ 
bool o      �]�] *0 foundfirsthomephone foundFirstHomePhone  l ���\�[�Z�\  �[  �Z    Z  ���Y�X l ���W�V I ���U �T
�U .coredoexbool    ��� obj   n  ��!"! m  ���S
�S 
az20" o  ���R�R 0 
thisperson 
thisPerson�T  �W  �V   Y  ��#�Q$%�P# k  ��&& '(' r  ��)*) n  ��+,+ 4  ���O-
�O 
az20- o  ���N�N 0 j  , o  ���M�M 0 
thisperson 
thisPerson* o      �L�L 0 	thisphone 	thisPhone( ./. r  ��010 n  ��232 1  ���K
�K 
az183 o  ���J�J 0 	thisphone 	thisPhone1 o      �I�I  0 thisphonelabel thisPhoneLabel/ 454 r  ��676 n  ��898 1  ���H
�H 
az179 o  ���G�G 0 	thisphone 	thisPhone7 o      �F�F  0 thisphonevalue thisPhoneValue5 :;: l ���E�D�C�E  �D  �C  ; <=< Z  ��>?@A> l ��B�B�AB F  ��CDC =  ��EFE o  ���@�@  0 thisphonelabel thisPhoneLabelF m  ��GG �HH  w o r kD =  ��IJI o  ���?�? *0 foundfirstworkphone foundFirstWorkPhoneJ m  ���>
�> boovfals�B  �A  ? k  ��KK LML r  ��NON o  ���=�=  0 thisphonevalue thisPhoneValueO o      �<�< 0 m_workphone1 m_workPhone1M P�;P r  ��QRQ m  ���:
�: boovtrueR o      �9�9 *0 foundfirstworkphone foundFirstWorkPhone�;  @ STS l ��U�8�7U F  ��VWV =  ��XYX o  ���6�6  0 thisphonelabel thisPhoneLabelY m  ��ZZ �[[  w o r kW =  ��\]\ o  ���5�5 *0 foundfirstworkphone foundFirstWorkPhone] m  ���4
�4 boovtrue�8  �7  T ^_^ r  �`a` o  � �3�3  0 thisphonevalue thisPhoneValuea o      �2�2 0 m_workphone2 m_workPhone2_ bcb l d�1�0d F  efe =  ghg o  
�/�/  0 thisphonelabel thisPhoneLabelh m  
ii �jj  h o m ef =  klk o  �.�. *0 foundfirsthomephone foundFirstHomePhonel m  �-
�- boovfals�1  �0  c mnm k  *oo pqp r  $rsr o   �,�,  0 thisphonevalue thisPhoneValues o      �+�+ 0 m_homephone1 m_homePhone1q t�*t r  %*uvu m  %&�)
�) boovtruev o      �(�( *0 foundfirsthomephone foundFirstHomePhone�*  n wxw l -@y�'�&y F  -@z{z =  -4|}| o  -0�%�%  0 thisphonelabel thisPhoneLabel} m  03~~ �  h o m e{ =  7<��� o  7:�$�$ *0 foundfirsthomephone foundFirstHomePhone� m  :;�#
�# boovtrue�'  �&  x ��� r  CJ��� o  CF�"�"  0 thisphonevalue thisPhoneValue� o      �!�! 0 m_homephone2 m_homePhone2� ��� l MT�� �� =  MT��� o  MP��  0 thisphonelabel thisPhoneLabel� m  PS�� ���  w o r k   f a x�   �  � ��� r  W^��� o  WZ��  0 thisphonevalue thisPhoneValue� o      �� 0 	m_workfax 	m_workFax� ��� l ah���� =  ah��� o  ad��  0 thisphonelabel thisPhoneLabel� m  dg�� ���  h o m e   f a x�  �  � ��� r  kr��� o  kn��  0 thisphonevalue thisPhoneValue� o      �� 0 	m_homefax 	m_homeFax� ��� l u|���� =  u|��� o  ux��  0 thisphonelabel thisPhoneLabel� m  x{�� ���  m o b i l e�  �  � ��� r  ���� o  ���  0 thisphonevalue thisPhoneValue� o      �� 0 m_mobilephone m_mobilePhone� ��� l ������ =  ����� o  ����  0 thisphonelabel thisPhoneLabel� m  ���� ��� 
 p a g e r�  �  � ��� r  ����� o  ����  0 thisphonevalue thisPhoneValue� o      �� 0 m_pager  �  A r  ����� o  ����  0 thisphonevalue thisPhoneValue� o      �
�
 0 m_otherphone m_otherPhone= ��	� l ������  �  �  �	  �Q 0 j  $ m  ���� % I �����
� .corecnte****       ****� n  ����� 2 ���
� 
az20� o  ���� 0 
thisperson 
thisPerson�  �P  �Y  �X   ��� l ��� �����   ��  ��  � ��� l ��������  �   figure out the addresses   � ��� 2   f i g u r e   o u t   t h e   a d d r e s s e s� ��� r  ����� m  ���� ���  � o      ���� 0 m_workstreet m_workStreet� ��� l ������ r  ����� m  ���� ���  � o      ���� 0 m_workstreet2 m_workStreet2�  	 not used   � ���    n o t   u s e d� ��� r  ����� m  ���� ���  � o      ���� 0 
m_workcity 
m_workCity� ��� r  ����� m  ���� ���  � o      ���� 0 m_workstate m_workState� ��� r  ����� m  ���� ���  � o      ���� 0 	m_workzip 	m_workZip� ��� r  ����� m  ���� ���  � o      ���� 0 m_workcountry m_workCountry� ��� r  ����� m  ���� ���  � o      ���� 0 m_homestreet m_homeStreet� ��� l ������ r  ����� m  ���� ���  � o      ���� 0 m_homestreet2 m_homeStreet2�  	 not used   � ���    n o t   u s e d� ��� r  ����� m  ���� ���  � o      ���� 0 
m_homecity 
m_homeCity� ��� r  ����� m  ��   �  � o      ���� 0 m_homestate m_homeState�  r    m    �   o      ���� 0 	m_homezip 	m_homeZip 	 r  

 m   �   o      ���� 0 m_homecountry m_homeCountry	  l ��������  ��  ��    Z  ����� l ���� I ����
�� .coredoexbool    ��� obj  n   m  ��
�� 
az27 o  ���� 0 
thisperson 
thisPerson��  ��  ��   Y  ����� k  .�  l ..��������  ��  ��    r  .8 !  n  .4"#" 4  /4��$
�� 
az27$ o  23���� 0 j  # o  ./���� 0 
thisperson 
thisPerson! o      ���� 0 thisaddr thisAddr %&% r  9D'(' n  9@)*) 1  <@��
�� 
az18* o  9<���� 0 thisaddr thisAddr( o      ���� 0 thisaddrlabel thisAddrLabel& +,+ l EE��������  ��  ��  , -.- Z  E�/0��1/ l EL2����2 =  EL343 o  EH���� 0 thisaddrlabel thisAddrLabel4 m  HK55 �66  w o r k��  ��  0 k  O�77 898 r  OZ:;: n  OV<=< 1  RV��
�� 
az28= o  OR���� 0 thisaddr thisAddr; o      ���� 0 m_workstreet m_workStreet9 >?> r  [f@A@ n  [bBCB 1  ^b��
�� 
az29C o  [^���� 0 thisaddr thisAddrA o      ���� 0 
m_workcity 
m_workCity? DED r  grFGF n  gnHIH 1  jn��
�� 
az30I o  gj���� 0 thisaddr thisAddrG o      ���� 0 m_workstate m_workStateE JKJ r  s~LML n  szNON 1  vz��
�� 
az31O o  sv���� 0 thisaddr thisAddrM o      ���� 0 	m_workzip 	m_workZipK P��P r  �QRQ n  �STS 1  ����
�� 
az32T o  ����� 0 thisaddr thisAddrR o      ���� 0 m_workcountry m_workCountry��  ��  1 k  ��UU VWV r  ��XYX n  ��Z[Z 1  ����
�� 
az28[ o  ������ 0 thisaddr thisAddrY o      ���� 0 m_homestreet m_homeStreetW \]\ r  ��^_^ n  ��`a` 1  ����
�� 
az29a o  ������ 0 thisaddr thisAddr_ o      ���� 0 
m_homecity 
m_homeCity] bcb r  ��ded n  ��fgf 1  ����
�� 
az30g o  ������ 0 thisaddr thisAddre o      ���� 0 m_homestate m_homeStatec hih r  ��jkj n  ��lml 1  ����
�� 
az31m o  ������ 0 thisaddr thisAddrk o      ���� 0 	m_homezip 	m_homeZipi n��n r  ��opo n  ��qrq 1  ����
�� 
az32r o  ������ 0 thisaddr thisAddrp o      ���� 0 m_homecountry m_homeCountry��  . s��s l ����������  ��  ��  ��  �� 0 j   m   ����  I  )��t��
�� .corecnte****       ****t n   %uvu 2 !%��
�� 
az27v o   !���� 0 
thisperson 
thisPerson��  ��  ��  ��   wxw l ����������  ��  ��  x yzy Z  ��{|��}{ l ��~����~ I ������
�� .coredoexbool    ��� obj  n  ����� 1  ����
�� 
az12� o  ������ 0 
thisperson 
thisPerson��  ��  ��  | r  ����� n  ����� 1  ����
�� 
az12� o  ������ 0 
thisperson 
thisPerson� o      ���� 0 
m_jobtitle 
m_jobTitle��  } r  ����� m  ���� ���  � o      ���� 0 
m_jobtitle 
m_jobTitlez ��� l ����������  ��  ��  � ��� Z  ������� l �������� I �������
�� .coredoexbool    ��� obj � n  ����� 1  ����
�� 
az55� o  ������ 0 
thisperson 
thisPerson��  ��  ��  � r   	��� n   ��� 1  ��
�� 
az55� o   ���� 0 
thisperson 
thisPerson� o      ���� 0 m_department  ��  � r  ��� m  �� ���  � o      ���� 0 m_department  � ��� l ��������  ��  ��  � ��� Z  3������ l ������ I �����
�� .coredoexbool    ��� obj � n  ��� 1  ��
�� 
az38� o  ���� 0 
thisperson 
thisPerson��  ��  ��  � r   )��� n   %��� 1  !%��
�� 
az38� o   !���� 0 
thisperson 
thisPerson� o      ���� 0 m_organization  ��  � r  ,3��� m  ,/�� ���  � o      ���� 0 m_organization  � ��� l 44��~�}�  �~  �}  � ��� Z  4S���|�� l 4=��{�z� I 4=�y��x
�y .coredoexbool    ��� obj � n  49��� 1  59�w
�w 
az13� o  45�v�v 0 
thisperson 
thisPerson�x  �{  �z  � r  @I��� n  @E��� 1  AE�u
�u 
az13� o  @A�t�t 0 
thisperson 
thisPerson� o      �s�s 0 
m_homepage 
m_homePage�|  � r  LS��� m  LO�� ���  � o      �r�r 0 
m_homepage 
m_homePage� ��� l TT�q�p�o�q  �p  �o  � ��� l T[���� r  T[��� m  TW�� ���  � o      �n�n 0 m_homepage2 m_homePage2� + % AddressBook only supports 1 web page   � ��� J   A d d r e s s B o o k   o n l y   s u p p o r t s   1   w e b   p a g e� ��� l \\�m�l�k�m  �l  �k  � ��� l \\�j�i�h�j  �i  �h  � ��� l \\�g�f�e�g  �f  �e  � ��� r  \c��� m  \_�� ���  � o      �d�d 0 m_birthyear m_birthYear� ��� r  dk��� m  dg�� ���  � o      �c�c 0 m_birthmonth m_birthMonth� ��� r  ls��� m  lo�� ���  � o      �b�b 0 
m_birthday 
m_birthDay� ��� Z  t����a�`� l t}��_�^� I t}�]��\
�] .coredoexbool    ��� obj � n  ty��� 1  uy�[
�[ 
az11� o  tu�Z�Z 0 
thisperson 
thisPerson�\  �_  �^  � k  ���� ��� r  ����� n  ����� 1  ���Y
�Y 
az11� o  ���X�X 0 
thisperson 
thisPerson� o      �W�W 0 bday bDay� ��� l ���V�U�T�V  �U  �T  � ��� r  ����� n  ����� 1  ���S
�S 
year� o  ���R�R 0 bday bDay� o      �Q�Q 0 m_birthyear m_birthYear� ��� r  ��   n  �� m  ���P
�P 
mnth o  ���O�O 0 bday bDay o      �N�N 0 m_birthmonth m_birthMonth� �M r  �� n  �� 1  ���L
�L 
day  o  ���K�K 0 bday bDay o      �J�J 0 
m_birthday 
m_birthDay�M  �a  �`  � 	
	 l ���I�H�G�I  �H  �G  
  Z  ���F l ���E�D I ���C�B
�C .coredoexbool    ��� obj  n  �� m  ���A
�A 
az22 o  ���@�@ 0 
thisperson 
thisPerson�B  �E  �D   r  �� b  �� m  �� �  ( A I M )   n  �� 1  ���?
�? 
az17 n  �� 4  ���>
�> 
az22 m  ���=�=  o  ���<�< 0 
thisperson 
thisPerson o      �;�; 0 	m_aimname 	m_aimName�F   r  ��  m  ��!! �""    o      �:�: 0 	m_aimname 	m_aimName #$# l ���9�8�7�9  �8  �7  $ %&% Z  �'(�6)' l ��*�5�4* I ���3+�2
�3 .coredoexbool    ��� obj + n  ��,-, m  ���1
�1 
az26- o  ���0�0 0 
thisperson 
thisPerson�2  �5  �4  ( r  ��./. b  ��010 m  ��22 �33  ( I C Q )  1 n  ��454 1  ���/
�/ 
az175 n  ��676 4  ���.8
�. 
az268 m  ���-�- 7 o  ���,�, 0 
thisperson 
thisPerson/ o      �+�+ 0 	m_icqname 	m_icqName�6  ) r  �9:9 m  ��;; �<<  : o      �*�* 0 	m_icqname 	m_icqName& =>= l �)�(�'�)  �(  �'  > ?@? Z  #AB�&CA l D�%�$D I �#E�"
�# .coredoexbool    ��� obj E n  	FGF 1  	�!
�! 
az37G o  � �  0 
thisperson 
thisPerson�"  �%  �$  B r  HIH n  JKJ 1  �
� 
az37K o  �� 0 
thisperson 
thisPersonI o      �� 0 m_notes  �&  C r  #LML m  NN �OO  M o      �� 0 m_notes  @ PQP l $$����  �  �  Q RSR l $$�TU�  T "  add any left overs to notes   U �VV 8   a d d   a n y   l e f t   o v e r s   t o   n o t e sS WXW Z  $EYZ��Y l $+[��[ > $+\]\ o  $'�� 0 m_homephone2 m_homePhone2] m  '*^^ �__  �  �  Z l .A`ab` r  .Acdc b  .=efe b  .9ghg b  .5iji o  .1�� 0 m_notes  j m  14kk �ll  
h m  58mm �nn  h o m e   p h o n e 2   =  f o  9<�� 0 m_homephone2 m_homePhone2d o      �� 0 m_notes  a : 4should be on separate line so line break is appended   b �oo h s h o u l d   b e   o n   s e p a r a t e   l i n e   s o   l i n e   b r e a k   i s   a p p e n d e d�  �  X pqp l FF����  �  �  q rsr Z  Fgtu��t l FMv�
�	v > FMwxw o  FI�� 0 m_workphone2 m_workPhone2x m  ILyy �zz  �
  �	  u l Pc{|}{ r  Pc~~ b  P_��� b  P[��� b  PW��� o  PS�� 0 m_notes  � m  SV�� ���  
� m  WZ�� ���  w o r k   p h o n e 2   =  � o  [^�� 0 m_workphone2 m_workPhone2 o      �� 0 m_notes  | : 4should be on separate line so line break is appended   } ��� h s h o u l d   b e   o n   s e p a r a t e   l i n e   s o   l i n e   b r e a k   i s   a p p e n d e d�  �  s ��� l hh����  �  �  � ��� Z  h����� � l ho������ > ho��� o  hk���� 0 m_otherphone m_otherPhone� m  kn�� ���  ��  ��  � l r����� r  r���� b  r���� b  r}��� b  ry��� o  ru���� 0 m_notes  � m  ux�� ���  
� m  y|�� ���  o t h e r   p h o n e   =  � o  }����� 0 m_otherphone m_otherPhone� o      ���� 0 m_notes  � : 4should be on separate line so line break is appended   � ��� h s h o u l d   b e   o n   s e p a r a t e   l i n e   s o   l i n e   b r e a k   i s   a p p e n d e d�  �   � ��� l ����������  ��  ��  � ��� l ��������  �  done with this person   � ��� * d o n e   w i t h   t h i s   p e r s o n� ��� r  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  �}��� b  �y��� b  �u��� b  �q��� b  �m��� b  �i��� b  �e��� b  �a��� b  �]��� b  �Y��� b  �U��� b  �Q��� b  �M��� b  �I��� b  �E��� b  �A��� b  �=��� b  �9��� b  �5��� b  �1��� b  �-��� b  �)��� b  �%��� b  �!��� b  ���� b  ���� b  ���� b  ���� b  �� � b  �	 b  � b  � b  �� b  ��	
	 b  �� b  �� b  �� b  �� b  �� b  �� b  �� b  �� b  �� b  �� b  ��  b  ��!"! b  ��#$# b  ��%&% b  ��'(' b  ��)*) b  ��+,+ b  ��-.- b  ��/0/ b  ��121 b  ��343 b  ��565 b  ��787 b  ��9:9 b  ��;<; b  ��=>= m  ��?? �@@  > o  ������ 0 m_firstname m_firstName< m  ��AA �BB  ,: o  ������ 0 
m_lastname 
m_lastName8 m  ��CC �DD  ,6 o  ������ 0 m_displayname m_displayName4 m  ��EE �FF  ,2 o  ������ 0 
m_nickname 
m_nickName0 m  ��GG �HH  ,. o  ������ 0 m_email  , m  ��II �JJ  ,* o  ������ 0 m_email2  ( m  ��KK �LL  ,& o  ������ 0 m_workphone1 m_workPhone1$ m  ��MM �NN  ," o  ������ 0 m_homephone1 m_homePhone1  m  ��OO �PP  , o  ������ 0 	m_workfax 	m_workFax m  ��QQ �RR  , o  ������ 0 m_pager   m  ��SS �TT  , o  ������ 0 m_mobilephone m_mobilePhone m  ��UU �VV  , o  ������ 0 m_homestreet m_homeStreet m  ��WW �XX  , o  ������ 0 m_homestreet2 m_homeStreet2 m  ��YY �ZZ  ,
 o  ������ 0 
m_homecity 
m_homeCity m  ��[[ �\\  , o  � ���� 0 m_homestate m_homeState m  ]] �^^  , o  ���� 0 	m_homezip 	m_homeZip  m  	__ �``  ,� o  ���� 0 m_homecountry m_homeCountry� m  aa �bb  ,� o  ���� 0 m_workstreet m_workStreet� m  cc �dd  ,� o   ���� 0 m_workstreet2 m_workStreet2� m  !$ee �ff  ,� o  %(���� 0 
m_workcity 
m_workCity� m  ),gg �hh  ,� o  -0���� 0 m_workstate m_workState� m  14ii �jj  ,� o  58���� 0 	m_workzip 	m_workZip� m  9<kk �ll  ,� o  =@���� 0 m_workcountry m_workCountry� m  ADmm �nn  ,� o  EH���� 0 
m_jobtitle 
m_jobTitle� m  ILoo �pp  ,� o  MP���� 0 m_department  � m  QTqq �rr  ,� o  UX���� 0 m_organization  � m  Y\ss �tt  ,� o  ]`���� 0 
m_homepage 
m_homePage� m  aduu �vv  ,� o  eh���� 0 m_homepage2 m_homePage2� m  ilww �xx  ,� o  mp���� 0 m_birthyear m_birthYear� m  qtyy �zz  ,� o  ux���� 0 m_birthmonth m_birthMonth� m  y|{{ �||  ,� o  }����� 0 
m_birthday 
m_birthDay� m  ��}} �~~  ,� o  ������ 0 m_homephone2 m_homePhone2� m  �� ���  ,� o  ������ 0 	m_homefax 	m_homeFax� m  ���� ���  ,� o  ������ 0 	m_aimname 	m_aimName� m  ���� ���  ,� o  ������ 0 	m_icqname 	m_icqName� m  ���� ���  ,� o  ������ 0 m_notes  � o      ���� *0 m_dataforthisperson m_dataForThisPerson� ��� l ����������  ��  ��  � ��� l ��������  � C =append current item in new TextEdit file called addresses.csv   � ��� z a p p e n d   c u r r e n t   i t e m   i n   n e w   T e x t E d i t   f i l e   c a l l e d   a d d r e s s e s . c s v� ��� r  ����� n  ����� m  ����
�� 
ctxt� l �������� n  ����� 4 �����
�� 
docu� m  ������ � m  �����                                                                                  ttxt  alis    V  Macintosh HD               Ё�VH+     �TextEdit.app                                                    (~�4��        ����  	                Applications    Ђ<�      �5**       �  'Macintosh HD:Applications: TextEdit.app     T e x t E d i t . a p p    M a c i n t o s h   H D  Applications/TextEdit.app   / ��  ��  ��  � o      ���� 0 lasttext lastText� ��� l ������ r  ����� b  ����� b  ����� o  ������ 0 lasttext lastText� m  ���� ���  
� o  ������ *0 m_dataforthisperson m_dataForThisPerson� o      ���� 0 lasttext lastText� : 4should be on separate line so line break is appended   � ��� h s h o u l d   b e   o n   s e p a r a t e   l i n e   s o   l i n e   b r e a k   i s   a p p e n d e d� ��� r  ����� c  ����� o  ������ 0 lasttext lastText� m  ����
�� 
ctxt� l     ������ n      ��� m  ����
�� 
ctxt� n  ����� 4 �����
�� 
docu� m  ������ � m  �����  ��  � ���� l ����������  ��  ��  ��  �� 0 i   9 m   + ,����  : I  , 3�����
�� .corecnte****       ****� 2  , /��
�� 
azf4��  ��   7 ��� l ����������  ��  ��  � ��� l ��������  �  done with all people   � ��� ( d o n e   w i t h   a l l   p e o p l e� ���� l ����������  ��  ��  ��   , m     !���                                                                                  adrb  alis    V  Macintosh HD               Ё�VH+     �Contacts.app                                                     ����z        ����  	                Applications    Ђ<�      ��>�       �  'Macintosh HD:Applications: Contacts.app     C o n t a c t s . a p p    M a c i n t o s h   H D  Applications/Contacts.app   / ��   * ��� l ����������  ��  ��  � ��� l ��������  �   This needs to be fixed   � ��� .   T h i s   n e e d s   t o   b e   f i x e d� ���� l ��������  � ? 9 save document "addresses.csv" in "Desktop/addresses.csv"   � ��� r   s a v e   d o c u m e n t   " a d d r e s s e s . c s v "   i n   " D e s k t o p / a d d r e s s e s . c s v "��    m     ���  ��    ���� l     ��������  ��  ��  ��       B������ T g� � � � � � � � � � ��	���������������� ����������!;���������������������������������  � @��������������������������������������~�}�|�{�z�y�x�w�v�u�t�s�r�q�p�o�n�m�l�k�j�i�h�g�f�e�d�c�b�a�`�_�^�]�\�[�Z�Y�X�W�V�U�T�S�R
�� .aevtoappnull  �   � ****�� 0 lasttext lastText�� 0 
thisperson 
thisPerson�� 0 m_firstname m_firstName�� 0 
m_lastname 
m_lastName�� 0 m_displayname m_displayName�� 0 
m_nickname 
m_nickName�� 0 m_email  �� 0 m_email2  �� 0 m_workphone1 m_workPhone1�� 0 m_workphone2 m_workPhone2�� 0 	m_workfax 	m_workFax�� 0 m_homephone1 m_homePhone1�� 0 m_homephone2 m_homePhone2�� 0 	m_homefax 	m_homeFax�� 0 m_mobilephone m_mobilePhone�� 0 m_otherphone m_otherPhone�� 0 m_pager  � *0 foundfirstworkphone foundFirstWorkPhone�~ *0 foundfirsthomephone foundFirstHomePhone�} 0 	thisphone 	thisPhone�|  0 thisphonelabel thisPhoneLabel�{  0 thisphonevalue thisPhoneValue�z 0 m_workstreet m_workStreet�y 0 m_workstreet2 m_workStreet2�x 0 
m_workcity 
m_workCity�w 0 m_workstate m_workState�v 0 	m_workzip 	m_workZip�u 0 m_workcountry m_workCountry�t 0 m_homestreet m_homeStreet�s 0 m_homestreet2 m_homeStreet2�r 0 
m_homecity 
m_homeCity�q 0 m_homestate m_homeState�p 0 	m_homezip 	m_homeZip�o 0 m_homecountry m_homeCountry�n 0 thisaddr thisAddr�m 0 thisaddrlabel thisAddrLabel�l 0 
m_jobtitle 
m_jobTitle�k 0 m_department  �j 0 m_organization  �i 0 
m_homepage 
m_homePage�h 0 m_homepage2 m_homePage2�g 0 m_birthyear m_birthYear�f 0 m_birthmonth m_birthMonth�e 0 
m_birthday 
m_birthDay�d 0 	m_aimname 	m_aimName�c 0 	m_icqname 	m_icqName�b 0 m_notes  �a *0 m_dataforthisperson m_dataForThisPerson�` 0 bday bDay�_  �^  �]  �\  �[  �Z  �Y  �X  �W  �V  �U  �T  �S  �R  � �Q��P�O���N
�Q .aevtoappnull  �   � ****� k    ���  �M�M  �P  �O  � �L�K�L 0 i  �K 0 j  � ���J�I�H�G�F�E !�D�C� 4�B�A�@�?�>�=�< T�;�: g�9 z�8�7 � ��6 ��5�4�3 ��2 ��1 ��0 ��/ ��. ��- ��,�+	�*�)�(�'�&�%�$�#�"GZi~������!�� �������������� ������5����������
��	��������������� ����������!��2��;����N^kmy�����?ACEGIKMOQSUWY[]_acegikmoqsuwy{}��������
�J .miscactv****      � ****
�I 
kocl
�H 
docu
�G 
insh�F 
�E .corecrel****      � null
�D 
cwin
�C 
pnam�B 0 lasttext lastText
�A 
azf4
�@ .corecnte****       ****�? 0 
thisperson 
thisPerson
�> 
azf7
�= .coredoexbool    ��� obj �< 0 m_firstname m_firstName
�; 
azf8�: 0 
m_lastname 
m_lastName�9 0 m_displayname m_displayName
�8 
az43�7 0 
m_nickname 
m_nickName�6 0 m_email  �5 0 m_email2  
�4 
az21
�3 
az17�2 0 m_workphone1 m_workPhone1�1 0 m_workphone2 m_workPhone2�0 0 	m_workfax 	m_workFax�/ 0 m_homephone1 m_homePhone1�. 0 m_homephone2 m_homePhone2�- 0 	m_homefax 	m_homeFax�, 0 m_mobilephone m_mobilePhone�+ 0 m_otherphone m_otherPhone�* 0 m_pager  
�) 
bool�( *0 foundfirstworkphone foundFirstWorkPhone�' *0 foundfirsthomephone foundFirstHomePhone
�& 
az20�% 0 	thisphone 	thisPhone
�$ 
az18�#  0 thisphonelabel thisPhoneLabel�"  0 thisphonevalue thisPhoneValue�! 0 m_workstreet m_workStreet�  0 m_workstreet2 m_workStreet2� 0 
m_workcity 
m_workCity� 0 m_workstate m_workState� 0 	m_workzip 	m_workZip� 0 m_workcountry m_workCountry� 0 m_homestreet m_homeStreet� 0 m_homestreet2 m_homeStreet2� 0 
m_homecity 
m_homeCity� 0 m_homestate m_homeState� 0 	m_homezip 	m_homeZip� 0 m_homecountry m_homeCountry
� 
az27� 0 thisaddr thisAddr� 0 thisaddrlabel thisAddrLabel
� 
az28
� 
az29
� 
az30
� 
az31
� 
az32
� 
az12� 0 
m_jobtitle 
m_jobTitle
� 
az55�
 0 m_department  
�	 
az38� 0 m_organization  
� 
az13� 0 
m_homepage 
m_homePage� 0 m_homepage2 m_homePage2� 0 m_birthyear m_birthYear� 0 m_birthmonth m_birthMonth� 0 
m_birthday 
m_birthDay
� 
az11�  0 bday bDay
�� 
year
�� 
mnth
�� 
day 
�� 
az22�� 0 	m_aimname 	m_aimName
�� 
az26�� 0 	m_icqname 	m_icqName
�� 
az37�� 0 m_notes  �� *0 m_dataforthisperson m_dataForThisPerson
�� 
ctxt�N���*j O*���*�-5� O�*�k/�,FO���E�O�k*�-j kh  *��/E�O�a ,j  �a ,E` Y 	a E` O�a ,j  �a ,E` Y 	a E` O��,j  ��,E` Y 	a E` O�a ,j  �a ,E` Y 	a E` Oa E` Oa E` O�a  ,j  M Gk�a  -j kh �k  �a  �/a !,E` Y hO�l  �a  �/a !,E` Y h[OY��Y hOa "E` #Oa $E` %Oa &E` 'Oa (E` )Oa *E` +Oa ,E` -Oa .E` /Oa 0E` 1Oa 2E` 3Ofa 4&E` 5Ofa 4&E` 6O�a 7,j $k�a 7-j kh �a 7�/E` 8O_ 8a 9,E` :O_ 8a !,E` ;O_ :a < 	 _ 5f a 4& _ ;E` #OeE` 5Y �_ :a = 	 _ 5e a 4& _ ;E` %Y �_ :a > 	 _ 6f a 4& _ ;E` )OeE` 6Y y_ :a ? 	 _ 6e a 4& _ ;E` +Y Y_ :a @  _ ;E` 'Y E_ :a A  _ ;E` -Y 1_ :a B  _ ;E` /Y _ :a C  _ ;E` 3Y 	_ ;E` 1OP[OY��Y hOa DE` EOa FE` GOa HE` IOa JE` KOa LE` MOa NE` OOa PE` QOa RE` SOa TE` UOa VE` WOa XE` YOa ZE` [O�a \,j  � �k�a \-j kh �a \�/E` ]O_ ]a 9,E` ^O_ ^a _  @_ ]a `,E` EO_ ]a a,E` IO_ ]a b,E` KO_ ]a c,E` MO_ ]a d,E` OY =_ ]a `,E` QO_ ]a a,E` UO_ ]a b,E` WO_ ]a c,E` YO_ ]a d,E` [OP[OY�^Y hO�a e,j  �a e,E` fY 	a gE` fO�a h,j  �a h,E` iY 	a jE` iO�a k,j  �a k,E` lY 	a mE` lO�a n,j  �a n,E` oY 	a pE` oOa qE` rOa sE` tOa uE` vOa wE` xO�a y,j  2�a y,E` zO_ za {,E` tO_ za |,E` vO_ za },E` xY hO�a ~,j  a �a ~k/a !,%E` �Y 	a �E` �O�a �,j  a ��a �k/a !,%E` �Y 	a �E` �O�a �,j  �a �,E` �Y 	a �E` �O_ +a � _ �a �%a �%_ +%E` �Y hO_ %a � _ �a �%a �%_ %%E` �Y hO_ 1a � _ �a �%a �%_ 1%E` �Y hOa �_ %a �%_ %a �%_ %a �%_ %a �%_ %a �%_ %a �%_ #%a �%_ )%a �%_ '%a �%_ 3%a �%_ /%a �%_ Q%a �%_ S%a �%_ U%a �%_ W%a �%_ Y%a �%_ [%a �%_ E%a �%_ G%a �%_ I%a �%_ K%a �%_ M%a �%_ O%a �%_ f%a �%_ i%a �%_ l%a �%_ o%a �%_ r%a �%_ t%a �%_ v%a �%_ x%a �%_ +%a �%_ -%a �%_ �%a �%_ �%a �%_ �%E` �O��k/a �-E�O�a �%_ �%E�O�a �&��k/a �-FOP[OY�]OPUOPU� ����v 
 N a t h a n , W a l l a c e , N a t h a n   W a l l a c e , , n w a l l a c e @ s p a r k b a s e . c o m , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , 
 J o n , S c h u l t z , J o n   S c h u l t z , , j s c h u l t z @ s p a r k b a s e . c o m , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , 
 T i n a , M o r d u e , T i n a   M o r d u e , , t i n a m @ n e o . r r . c o m , t m o r d u e @ g m a i l . c o m , , 3 3 0 6 2 6 0 6 8 5 , , , ( 3 3 0 )   6 2 0 - 1 7 3 5 , 1 2 9 8   V A N T A G E   W A Y , , S T R E E T S B O R O , O H , 4 4 2 4 1 - 4 9 6 6 , U S A , , , , , , , , , , , , 1 9 7 5 , F e b r u a r y , 9 , , , , , 
 M a r i s a , C o l e m a n , M a r i s a   C o l e m a n , , m a r i s a @ t e k g n o m e . c o m , , , ( 2 1 6 )   4 7 9 - 0 0 9 0 , , , ( 2 1 6 )   9 6 5 - 3 5 3 4 , 1 2 1 5   W   1 0 T H   S T   A P T   9 3 4 , , C L E V E L A N D , O H , 4 4 1 1 3 - 1 2 4 9 , U S A , , , , , , , , , , , , 1 9 8 0 , J u l y , 2 1 , , , ( A I M )   b u t r f l y _ g o d _ s @ y a h o o . c o m , , 
 , , R o n   M a r h o f e r   A u t o   M a l l , , , , 3 3 0 - 9 4 0 - 4 0 1 0 , , , , , , , , , , , 1 2 6 0   M a i n   S t , , C u y a h o g a   F a l l s , O H , 4 4 2 2 1 , U S , , , R o n   M a r h o f e r   A u t o   M a l l , , , , , , , , , , 
 o t h e r   p h o n e   =   ( 3 3 0 )   9 2 3 - 5 8 0 0 
 B h a r a t , S h a w ,   M D , B h a r a t   S h a w ,   M D , , , , ( 3 3 0 )   8 6 4 - 6 3 3 1 , , , , , , , , , , , 6 3   B a k e r   B l v d , , F a i r l a w n , O H , 4 4 3 3 3 , m i s s i n g   v a l u e , , , , , , , , , , , , , 
 Z a k , M a c D o n a l d , Z a k   M a c D o n a l d , , z a k . m a c d o n a l d @ g m a i l . c o m , , , , , , , , , , , , , , , , , , , , , , , , 1 9 8 7 , O c t o b e r , 9 , , , ( A I M )   z a k m a c d o n a l d , , 
 o t h e r   p h o n e   =   + 1 5 0 3 5 6 7 9 2 5 6 
 , , J o t t , , , , , , , , ( 8 7 7 )   5 6 8 - 8 4 8 6 , , , , , , , , , , , , , , , J o t t , , , , , , , , , , 
 B e n , K a u f m a n , B e n   K a u f m a n , , b e n @ s p a r k b a s e . c o m , b k a u f m a n @ s p a r k b a s e . c o m , , , , , , , , , , , , , , , , , , , , , , , 2 0 0 9 , S e p t e m b e r , 2 5 , , , , , 
 , , A c t i o n   A u t o   B o d y , , , , 3 3 0 - 6 2 6 - 3 1 1 6 , , , , , , , , , , , 8 8 9 5   S t a t e   R o u t e   1 4 , , S t r e e t s b o r o , O H , 4 4 2 4 1 , U S , , , A c t i o n   A u t o   B o d y , , , , , , , , , , 
 , , T e x t a m e r i c a . c o m , , v r i l l u s i o n s . w j g g h @ t a m w . c o m , , , , , , , , , , , , , , , , , , , , , T e x t a m e r i c a . c o m , , , , , , , , , , A m   i   s t i l l   e v e n   o n   h e r e ? 
 A m a n d a , O h a y o c o n , A m a n d a   O h a y o c o n , , , , , , , , ( 7 0 3 )   5 0 5 - 1 8 3 7 , , , , , , , , , , , , , , , , , , , , , , , , , 
 B r i a n , S i l v e r r a v e r , B r i a n   S i l v e r r a v e r , , , , , , , , 4 1 2 - 4 4 3 - 5 0 4 5 , , , , , , , , , , , , , , , , , , , , , , , , , 
 J e s s i c a , , J e s s i c a , , , , , , , , ( 3 3 0 )   5 7 1 - 0 2 1 0 , , , , , , , , , , , , , , , , , , , , , , , , , 
 , , W a l - M a r t   M a c e d o n i a :   V i s i o n   C e n t e r , , , , ( 3 3 0 )   4 6 8 - 0 4 0 4 , , , , , , , , , , , 8 1 6 0   M a c e d o n i a   C M N S   B l v d , , M a c e d o n i a , O H , 4 4 0 5 6 , U S , , , W a l - M a r t   M a c e d o n i a :   V i s i o n   C e n t e r , , , , , , , , , , 
 S h i v a m , A n w e k a r , S h i v a m   A n w e k a r , , s a n w e k a r @ s p a r k b a s e . c o m , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , 
 , , D o n a t o ' s   P a r m a   ( R i d g e   R o a d ) , , , , 4 4 0 - 8 4 3 - 6 8 6 1 , , , , , , , , , , , 5 4 6 1   R i d g e   R d , , P a r m a , O H , 4 4 1 2 9 , U S , , , D o n a t o ' s   P a r m a   ( R i d g e   R o a d ) , , , , , , , , , , 
 B e t s e , , B e t s e , , M K K K M o m 1 @ a o l . c o m , b r i z z i @ t e c h n o l o g y i m a g i n g . c o m , ( 3 3 0 )   7 5 8 - 7 8 0 0 , , , , , , , , , , , , , , , , , , , T I S , , , 2 0 0 0 , N o v e m b e r , 7 , , , ( A I M )   m k k k m o m 1 , , 
 F r e d , L a n d , F r e d   L a n d , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , 
 T o m , P r e b i s h , T o m   P r e b i s h , , t p r e b i s h @ s p a r k b a s e . c o m , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , 
 T i m o t h y , B r z u s k i , C h a s e   B a n k   -   S t r e e t s b o r o , , t i m o t h y . j . b r z u s k i @ c h a s e . c o m , , ( 3 3 0 )   6 2 6 - 4 1 5 5 , , ( 3 3 0 )   6 2 6 - 2 1 4 7 , , , , , , , , , 9 1 6 3   S t a t e   R o u t e   4 3 , , S t r e e t s b o r o , O H , 4 4 2 4 1 , U S , B r a n c h   M a n a g e r , , C h a s e   B a n k   -   S t r e e t s b o r o , , , , , , , , , , B r a n c h :   O H 2 - 5 2 1 9 
 D i r e c t   W o r k   L i n e :   ( 3 3 0 )   6 2 6 - 4 1 9 0 
 
 I n t e r n e t   S u p p o r t :   ( 8 7 7 )   2 4 2 - 7 3 7 2 
 C u s t o m e r   S u p p o r t :   ( 8 7 7 )   2 2 6 - 5 6 6 3 
 , , S i m p l e n o t e , , s n - d d 8 7 b 0 f 5 @ s i m p l e - n o t e . a p p s p o t m a i l . c o m , , , , , , , , , , , , , , , , , , , , , S i m p l e n o t e , , , , , , , , , , 
 P a u l , G u l d e n , P a u l   G u l d e n , , p g u l d e n @ s p a r k b a s e . c o m , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , 
 J e n n a , M o s s , J e n n a   M o s s , , , , , , , , 3 3 0 - 4 2 1 - 5 4 7 1 , , , , , , , , , , , , , , , , , , , , , , , , , 
 , , G e o S t a r   C o m m u n i c a t i o n s , , c u s t o m e r s e r v i c e @ g e o s t a r c o m . c o m , , 3 3 0 - 7 5 2 - 4 3 1 7 , , , , , , , , , , , , , , , , , , , G e o S t a r   C o m m u n i c a t i o n s , , , , , , , , , , 
 A l e x a n d r u , B o r u z , A l e x a n d r u   B o r u z , , a b o r u z @ s p a r k b a s e . c o m , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , 
 M a r k , K u c e r a , M a r k   K u c e r a , , m k u c e r a @ f n n i . c o m , , 4 0 2 - 6 0 2 - 2 0 7 4 , , 4 0 2 - 6 0 2 - 5 5 0 3 , , , , , , , , , , , , , , , S e n i o r   N a t i o n a l   A c c o u n t   M a n a g e r , , F i r s t   N a t i o n a l   M e r c h a n t   S o l u t i o n s , , , , , , , , , , 9 - 2 2 - 0 9 
 C o n t a c t   f o r   n p c   m o n t h l y   t r a n s a c t i o n   r e p o r t 
 K e v i n , D a y , K e v i n   D a y , , k d a y @ s p a r k b a s e . c o m , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , 
 S a b l e , , S a b l e , , , , , , , , 1   ( 3 3 0 )   2 7 7 - 7 6 4 2 , 1 2   E a s t w a y   D r i v e , , K e n t , O H , 4 4 2 5 3 , m i s s i n g   v a l u e , , , , , , , , , , , , , , , , , , , 
 R o b , P o e l k i n g , R o b   P o e l k i n g , , r o b @ o h i o k a j u k e n b o . c o m , , , , , , , , , , , , , , , , , , , , , , , , , , , , , ( A I M )   p o e l k i n g r o b , , 
 T o m m y , E d d y , T o m m y   E d d y , , r o l l e r b o n e s @ m e . c o m , r o l l e r b o n e s @ m a c . c o m , , , , , ( 3 3 0 )   2 0 8 - 7 0 0 4 , 2 2 2 9   C R A N F O R D   D R , , S T O W , O H , 4 4 2 2 4 - 7 0 3 7 , U S A , , , , , , , , , , , , 1 9 7 2 , A p r i l , 1 0 , , , , , 
 o t h e r   p h o n e   =   ( 3 3 0 )   6 8 8 - 1 3 3 2 
 R e n e e , M a r t i n o , W a l - M a r t   A u r o r a :   V i s i o n   C e n t e r , , , , ( 3 3 0 )   5 6 2 - 6 3 5 0 , , ( 3 3 0 )   5 6 2 - 9 5 2 8 , , , , , , , , , 7 2 3 5   M a r k e t   P l a c e   D r , , A u r o r a , O H , 4 4 2 0 2 , U S , O p t o m e t r i s t , , W a l - M a r t   A u r o r a :   V i s i o n   C e n t e r , , , , , , , , , , 
 , , K e r i o   T e c h n o l o g i e s   I n c . , , s u p p o r t @ k e r i o . c o m , , 8 8 8 - 7 7 5 - 3 7 4 6 , , , , , 1 1 1   W e s t   S t .   J o h n   S t r e e t ,   S u i t e   1 0 0 , , S a n   J o s e , C A , 9 5 1 1 3 , U S , , , , , , , , , K e r i o   T e c h n o l o g i e s   I n c . , , , , , , , , , , 
 A m a n d a , Y e s k o , A m a n d a   Y e s k o , , a _ y e s k o @ y a h o o . c o m , , , , , , 3 3 0 - 5 7 1 - 1 3 9 2 , 7 3 2 2   G r a n b y   D r , , H u d s o n , O H , 4 4 2 3 6 , U S , , , , , , , , , , , , , , , , , , , 
 o t h e r   p h o n e   =   3 3 0 5 7 1 4 4 0 0 
 M a r k , T u t t , M a r k   T u t t , , m a r k t u t t @ o n t h e m a r k s o l u t i o n s . n e t , , 9 2 0 - 4 7 5 - 7 1 7 8 , , 9 2 0 - 7 3 0 - 0 8 4 7 , , , , , , , , , , , , , , , , , O n   T h e   M a r k   S o l u t i o n s , , , , , , , , , , 
 B o n n i e , B r a y , B o n n i e   B r a y , , b b r a y @ s p a r k b a s e . c o m , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , 
 C o r y , H a r r i n g t o n , C o r y   H a r r i n g t o n , , c h a r r i n g t o n @ s p a r k b a s e . c o m , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , 
 R o b e r t , J o n e s , R o b e r t   J o n e s , , r j o n e s @ s p a r k b a s e . c o m , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , 
 A l y c i a , G a t t a , A l y c i a   G a t t a , , , , , , , , 3 3 0 - 3 9 8 - 3 2 6 2 , , , , , , , , , , , , , , , , , , , , , , , ( A I M )   t h e   s u n s e t   g o 1 d , , 
 S h e r r y , , S h e r r y , B o o m p s i e , d j _ b o o m p s i e @ y a h o o . c o m , , , ( 2 1 6 )   9 6 1 - 4 8 9 9 , , , , 2 1 1 9   W   1 0 1 s t   S t , , C l e v e l a n d , O H , 4 4 1 0 2 , U S , , , , , , , , , , , , , , , , , , , 
 S t e v e , J o b s , S t e v e   J o b s , , s j o b s @ a p p l e . c o m , , , , , , , , , , , , , , , , , , , , , A p p l e ,   I n c , , , , , , , , , , 
 J e n n a , , J e n n a , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , ( A I M )   e x k i s s o h , , m y s p a c e . c o m / l y k o m g z j e n n a d e a t h m e t a l d o o g i e :   s t a b   h e r   i n   t h e   f a c e S M D A s m o t :   w e   l o o k   h o t   t o g e t h e r�x   p u t   t h i s   i n   y o u r   p r o f i l e   i f   y o u ' r e   s i c k   o f   p e o p l e   p u t t i n g   s h i t   l i k e   t h i s   i n   t h e i r   p r o f i l e 
 , , W a l - M a r t   P a r m a :   V i s i o n   C e n t e r , , , , 4 4 0 - 8 8 4 - 5 8 2 8 , , , , , , , , , , , , , , , , , , , W a l - M a r t   P a r m a :   V i s i o n   C e n t e r , , , , , , , , , , 
 N i c k , D e n n i s , N i c k   D e n n i s , n i c k 2 , , , , , , , ( 2 1 6 )   4 1 0 - 8 0 7 2 , , , , , , , , , , , , , , , , , , , , , , , , , 
 , , T o u c h   O f   C l a s s   A u t o   B o d y , , , , , , , , ( 2 1 6 )   4 5 9 - 0 9 0 0 , , , , , , , 1 6 1 1   B r o o k p a r k   R d , , P a r m a , O H , 4 4 1 0 9 , U n i t e d   S t a t e s , , , T o u c h   O f   C l a s s   A u t o   B o d y , , , , , , , , , , 
 , , S p a m C o p   S p a m   R e p o r t , , s u b m i t . 2 u k U V H 4 Y 2 m F U O X N 4 @ s p a m . s p a m c o p . n e t , , , , , , , , , , , , , , , , , , , , , S p a m C o p   S p a m   R e p o r t , , , , , , , , , , 
 D a n a , , D a n a , , , , , , , , ( 3 3 0 )   4 4 7 - 0 9 2 9 , , , , , , , , , , , , , , , , , , 1 9 8 6 , M a r c h , 1 9 , , , ( A I M )   L e p e r L u s t , , 
 A n n , E d d y , A n n   E d d y , , , , , ( 2 1 6 )   6 6 2 - 5 8 7 8 , , , , 5 5 5 8   G a r d e n   S t , , M a p l e   H e i g h t s , O H , 4 4 1 3 7 , m i s s i n g   v a l u e , , , , , , , , , , , , , , , , , , , 
 B r i a n , J a m e s o n , B r i a n   J a m e s o n , , b j a m e s o n @ s p a r k b a s e . c o m , , , , , , ( 4 4 0 )   5 5 4 - 9 4 2 2 , , , , , , , , , , , , , , , , , , , , , , , , , 
 , , D a t a C e n t e r . B Z , , , , , , , , , , , , , , , 5 3 5   S c h e r e r s   C t , , C o l u m b u s , O H , 4 3 0 8 5 , U S , , , D a t a C e n t e r . B Z , , , , , , , , , , 
 , , S u b u r b a n   A n i m a l   H o s p i t a l , , , , 4 4 0 - 8 8 6 - 1 1 6 6 , , , , , , , , , , , 5 9 7 7   S t a t e   R d , , P a r m a , O H , 4 4 1 3 4 , U S , , , S u b u r b a n   A n i m a l   H o s p i t a l , , , , , , , , , , 
 S t a p h a n i e , P h l a u m , S t a p h a n i e   P h l a u m , , , , , , , , ( 3 3 0 )   6 2 0 - 1 7 4 4 , , , , , , , , , , , , , , , , , , , , , , , , , 
 K e r r y , B i a l e r , K e r r y   B i a l e r , , k b i a l e r @ s p a r k b a s e . c o m , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , 
 T r i c k , , T r i c k , , c h e s s i a t r i c k @ g m a i l . c o m , , , , , , 3 3 0 2 3 2 5 7 6 0 , , , , , , , , , , , , , , , , , , , , , , , , , r e a l n a m e   c h e l s i a ? 
 D r . , S t o l a r k s y , D r .   S t o l a r k s y , , s t d e n t a l 1 5 7 1 0 @ g m a i l . c o m , , 2 1 6 - 6 6 2 - 4 0 2 8 , , , , , , , , , , , 1 5 7 1 0   B r o a d w a y   A v e , , M a p l e   H e i g h t s , O H , 4 4 1 3 7 , U S , , , , , , , , , , , , , 
 , , C o n r a d s :   P a r m a , , , , ( 2 1 6 ) � 3 9 8 - 4 2 0 0 , , , , , , , , , , , 1 9 4 2   S n o w   R o a d , , P a r m a , O H , 4 4 1 3 4 , U n i t e d   S t a t e s , , , C o n r a d s :   P a r m a , , , , , , , , , , 
 S c o t t , S h a r p , S c o t t   S h a r p , , s s h a r p @ t e c h n o l o g y i m a g i n g . c o m , s s h a r p @ s p a r k b a s e . c o m , ( 3 3 0 )   7 5 8 - 7 8 0 0 , , ( 3 3 0 )   7 5 8 - 1 6 1 7 , , ( 3 3 0 )   5 1 9 - 9 9 2 6 , , , , , , , 8 4 3 3   S o u t h   A v e   # 4 , , P o l a n d , O H , 4 4 5 1 4 , U S A , , , , , , 1 9 8 1 , J u l y , 3 1 , , , ( A I M )   s s h a r p t i s , , 
 w o r k   p h o n e 2   =   ( 8 0 0 )   4 0 9 - 2 6 8 8 
 D o u g , P i e r c e , D o u g   P i e r c e , , d p i e r c e @ s p a r k b a s e . c o m , , , ( 4 4 0 )   2 5 9 - 4 4 3 0 , , , 4 4 0 - 3 3 9 - 6 4 6 4 , , , , , , , , , , , , , , , , , , , , , , , , , 
 P a m , , G r a n g e   I n s u r a n c e , , j a n e t @ d e v a u l b u n t a i n . c o m , i n f o @ d e v a u l b u n t a i n . c o m , 3 3 0 - 6 7 3 - 5 9 5 8 , , , , , , , , , , , 4 2 2 2 - B   S t a t e   R o u t e   4 3 
 P O   B o x   3 3 8 , , K e n t , O H , 4 4 2 4 0 , U S , , , G r a n g e   I n s u r a n c e , , , , , , , , , , 
 , , X O   D i r e c t , , , , 8 0 0 - 4 2 1 - 3 8 7 2 , , , , , , , , , , , , , , , , , , , X O   D i r e c t , , , , , , , , , , L o c a l   l i n e s   i n   B o a r d m a n   ( p h o n e :   3 3 0 7 5 8 7 8 0 0 )   a c c o u n t   n u m b e r   i s   0 0 4 0 0 0 0 0 0 0 3 7 3 7 8 
 , N e w E g g , N e w E g g , , , , , , , , 6 3 9 3 4 4 , , , , , , , , , , , , , , , , , , , , , , , , , 
 , , F i e l d   T e s t   M o d e , , , , , , , , * 3 0 0 1 # 1 2 3 4 5 # * , , , , , , , , , , , , , , , F i e l d   T e s t   M o d e , , , , , , , , , , 
 D a n i e l , D e S a n t i s , B l u e B r i d g e   N e t w o r k s , , d d e s a n t i s @ b b n l l c . c o m , , ( 2 1 6 )   6 2 1 - 2 5 8 3   x 2 2 2 3 , , 2 1 6 6 2 1 2 5 8 4 , , , , , , , , , T h e   S t e r l i n g   B u i l d i n g 
 1 2 5 5   E u c l i d   A v e ,   S u i t e   5 0 0 , , C l e v e l a n d , O H , 4 4 1 1 5 , U S , C h i e f   T e c h n o l o g y   O f f i c e r , , B l u e B r i d g e   N e t w o r k s , , , , , , , , , , C o n t a c t   w i l l i a m   r o d r i g u e z   f o r   t h e   s e r v e r   r e s t a r t 
 w o r k   p h o n e 2   =   ( 8 6 6 )   9 9 0 - 2 5 8 3 
 , , E v e r n o t e , , v r i l l u s i o n s . 4 6 e 2 d @ m . e v e r n o t e . c o m , , , , , , , , , , , , , , , , , , , , , E v e r n o t e , , , , , , , , , , S e n d   a n   e m a i l   t o   t h i s   a d d r e s s   t o   h a v e   i t   p u t   i n   e v e r n o t e 
 L i n d s e y , C h a r n a , L i n d s e y   C h a r n a , , l c h a r n a @ s p a r k b a s e . c o m , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , 
 M a v e n , , M a v e n , , , , , , , , 2 1 6 3 1 6 3 3 7 2 , , , , , , , , , , , , , , , , , , , , , , , , , 
 S t a c y , S i m c o x , S t a c y   S i m c o x , S p a c y   S t a c y , , , , ( 3 3 0 )   6 3 3 - 0 2 9 2 , , , ( 3 3 0 )   5 5 4 - 3 1 0 0 , 1 1 8   M I N W O O D   A V E , , T A L L M A D G E , O H , 4 4 2 7 8 - 1 4 3 8 , U S A , , , , , , , , , , , , , , , , , ( A I M )   M i s s S c a r i e , , 
 K e v i n , S h o v e s t u l l , K e v i n   S h o v e s t u l l , , k e v i n s h o v @ y a h o o . c o m , , , , , , ( 7 8 1 )   6 9 6 - 8 9 5 4 , , , , , , , , , , , , , , , , , , , , , , , , , 
 , , S t a t e   R o a d   P i z z a , , , , 2 1 6 - 7 4 9 - 1 1 2 2 , , , , , , , , , , , , , , , , , , , S t a t e   R o a d   P i z z a , , , , , , , , , , 
 T i k a c h u , , T i k a c h u , , t i k a c h u @ m e . c o m , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , 
 S a r a h , S l a t e r   L a n g ,   M D , S t r e e t s b o r o   F a m i l y   P r a c t i c e , , , , ( 3 3 0 )   6 2 6 - 3 1 1 1 , , ( 3 3 0 )   6 2 6 - 5 9 7 8 , , , , , , , , , 9 1 5 0   M a r k e t   S q u a r e   D r . 
 S u i t e   2 0 3 , , S t r e e t s b o r o , O H , 4 4 2 4 1 , U S , , , S t r e e t s b o r o   F a m i l y   P r a c t i c e , , , , , , , , , , 
 , , S a v e   t o   P o c k e t , , a d d @ g e t p o c k e t . c o m , , , , , , , , , , , , , , , , , , , , , S a v e   t o   P o c k e t , , , , , , , , , , 
 P a u l , R o g e r s , P a u l   R o g e r s , , p r o g e r s @ s p a r k b a s e . c o m , , 2 1 6 - 8 6 7 - 0 8 7 7   x 3 5 1 2 , , , , ( 4 4 0 )   7 9 6 - 2 7 2 6 , , , , , , , , , , , , , , , , , , 1 9 8 0 , J u n e , 2 5 , , , ( A I M )   p r o g e r s t i s , , 
 C h r i s t o p h e r , C a v a l l a r o , C h r i s t o p h e r   C a v a l l a r o , , c h r i s t o p h e r . c a v a l l a r o @ g i f t c a r d s e r v i c e c e n t e r . c o m , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , 
 J o h n , H e d l e y , J o h n   H e d l e y , , , , , , , , + 1 2 1 6 2 1 4 7 6 8 0 , , , , , , , , , , , , , , , P a r a g r i d , , , , , , , , , , 
 A n d r e w , K u h a r , A n d r e w   K u h a r , , a k u h a r @ s p a r k b a s e . c o m , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , 
 , , P a g e r D u t y , , , , , , , , 7 3 8 8 9 , , , , , , , , , , , , , , , P a g e r D u t y , , , , , , , , , , 
 o t h e r   p h o n e   =   4 1 5 3 6 3 9 9 1 6 
 N a t e , W i s e , N a t e   W i s e , , n w i s e @ s p a r k b a s e . c o m , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , 
 A l e x , G a n d y , A l e x   G a n d y , , a g a n d y @ s p a r k b a s e . c o m , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , 
 A m b e r , E d g e r t o n , A m b e r   E d g e r t o n , , a e d g e r t o n @ s p a r k b a s e . c o m , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , 
 A n d r e w , W i t t , A n d r e w   W i t t , , a w i t t @ s p a r k b a s e . c o m , w i t t @ t u x . o r g , , , , , ( 2 1 6 )   8 1 6 - 6 1 6 4 , , , , , , , , , , , , , , , S p a r k B a s e , , , , , , , , , , 
 T a m m y , K a p p e r t , T a m m y   K a p p e r t , , , , , , , , 1   ( 2 1 6 )   2 6 8 - 9 7 7 7 , , , , , , , , , , , , , , , , , , , , , , , , , 
 R o d n e y , W i n t e r s , R o d n e y   W i n t e r s , , r w i n t e r s @ s p a r k b a s e . c o m , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , 
 , , C V S   P r e s c r i p t i o n   N o t i f i c a t i o n , , , , 2 1 6 3 5 1 2 9 4 4 , , , , , , , , , , , , , , , , , , , C V S   P r e s c r i p t i o n   N o t i f i c a t i o n , , , , , , , , , , 
 , , P i n g . f m , , a 6 2 c 3 a @ p i n g . f m , , , , , , , , , , , , , , , , , , , , , P i n g . f m , , , , , , , , , , S u b j e c t   =   i g n o r e d   ( i   t h i n k ) 
 B o d y   =   m e s s a g e 
 
 C a n   a t t a c h   a   p i c t u r e   t o   e m a i l . 
 N i c k , F r a k e r , N i c k   F r a k e r , , n f r a k e r @ s p a r k b a s e . c o m , , , , , , ( 2 1 6 )   2 1 8 - 0 9 9 4 , 1 2 0 9   W   1 1 0 T H   S T 
 A P T   2 1 , , C l e v e l a n d , O H , 4 4 1 0 2 , U S , , , , , , , , , S p a r k B a s e , , , , , , , , , , 
 J o h n , K o m l a n c , J o h n   K o m l a n c , , j k o m l a n c @ s p a r k b a s e . c o m , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , 
 L u c r e t i z , , L u c r e t i z , , , , , , , , ( 4 1 2 )   5 8 3 - 4 2 2 7 , , , , , , , , , , , , , , , , , , , , , , , , , 
 M a r v i n , , M a r v i n , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , 
 D a v i d , K e t t e r e r , D a v i d   K e t t e r e r , , D a v i d . K e t t e r e r @ m s c i n f o . c o m , , ( 8 0 0 )   3 2 0 - 0 0 0 0 , , , , , , , , , , , , , , , , , A s s i s t a n t   M a n a g e r   o f   C u s t o m e r   S e r v i c e , , M e r c h a n t   S e r v i c e s   C e n t e r , , , , , , , , , , 
 K e v i n , K u e m m e l , W o r l d   D a t a   P r o d u c t s , , k e v i n . k u e m m e l @ w d p i . c o m , , 9 5 2 - 2 6 1 - 0 5 0 6 , , 9 5 2 - 2 6 1 - 0 5 0 7 , , , , , , , , , , , , , , , S e n i o r   N e t w o r k i n g   A c c o u n t   M a n a g e r , , W o r l d   D a t a   P r o d u c t s , , , , , , , , ( A I M )   k e v i n k w d p i , , H a v e   o r d e r e d   C i s c o   P I X   f i r e w a l l s   a   c o u p l e   t i m e s . 
 W i l l , , W i l l , , , , , ( 2 1 6 )   9 6 1 - 5 1 4 2 , , , ( 2 1 6 )   2 2 8 - 4 6 5 3 , , , , , , , 1 8 1 1   W   4 5 t h   S t , , C l e v e l a n d , O H , 4 4 1 0 2 , U n i t e d   S t a t e s , , , , , , , , , , , , , 
 V a l e r i e , T y l e r , V a l e r i e   T y l e r , , , , , , , , 4 4 0 - 8 2 3 - 3 6 7 1 , , , , , , , , , , , , , , , , , , , , , , , , , 
 A l a n , S e m e l , A l a n   S e m e l , , a s e m e l @ s p a r k b a s e . c o m , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , 
 D a n , K e l l e y , D a n   K e l l e y , , , , , , , , 4 1 2 - 3 3 0 - 9 7 7 9 , 1 9 0 6   E A S T   C A R S O N   S T   A P T   5 , , P I T T S B U R G H , P A , 1 5 2 0 3 - 1 8 8 6 , U S , , , , , , , , , , , , , , , , , , , 
 L e k s h m i , R a j e s h , L e k s h m i   R a j e s h , , l r a j e s h @ s p a r k b a s e . c o m , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , 
 C h r i s t i n e , P r i m i s c h , C h r i s t i n e   P r i m i s c h , , c h r i s t i n e @ s p a r k b a s e . c o m , , , , , , 2 1 6 - 2 8 8 - 1 4 9 4 , , , , , , , , , , , , , , , , , , 2 0 0 9 , S e p t e m b e r , 2 3 , , , , , 
 O r l a n d o , R a m o n , O r l a n d o   R a m o n , , o r a m o n @ p r o f i t p o i n t i n c . c o m , , 8 8 8 - 5 4 1 - 6 7 8 9   x 1 3 6 , , , , , , , , , , , , , , , , , D B A , , P r o f i t   P o i n t ,   I n c . , , , , , , , , , , 
 , , C l e a r C h e c k B o t , , , , , , , , 2 6 5 - 0 1 0 , , , , , , , , , , , , , , , C l e a r C h e c k B o t , , , , , , , , , , P r e f i x   m e s s a g e   w i t h   " c l e a r c h e c k b o t : " 
 T o d d , E d d y , T o d d   E d d y , , t e d d y @ s p a r k b a s e . c o m , v r i l l u s i o n s @ g m a i l . c o m , 2 1 6 - 8 6 7 - 0 8 7 7   x 3 5 1 3 , , 8 0 0 - 5 5 0 - 3 2 0 6 , , 3 3 0 - 6 2 0 - 7 2 6 0 , 6 4 8 4   S T A T E   R D   A P T   D 1 , , P A R M A , O H , 4 4 1 3 4 - 4 1 6 3 , U S , 3 6 1 5   S U P E R I O R   A V E   E   S T E   4 4 0 4 , , C L E V E L A N D , O H , 4 4 1 1 4 - 4 1 3 9 , U S , I T   M a n a g e r , , S p a r k B a s e ,   L L C , , , 1 9 8 1 , J a n u a r y , 1 3 , , , , , " H o m e "   n u m b e r   i s   g o o g l e   v o i c e 
 G a r y , H a r d m a n , G a r y   H a r d m a n , , g a r y @ h d d g . n e t , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , 
 T e d , F r a n k , T e d   F r a n k , , t f r a n k @ s p a r k b a s e . c o m , , , , , , ( 4 4 0 )   2 8 9 - 7 2 7 2 , , , , , , , , , , , , , , , , , , , , , , , , , 
 , , N a t i o n a l   P o i s o n   C o n t r o l   H o t l i n e , , , , 8 0 0 - 2 2 2 - 1 2 2 2 , , , , , , , , , , , , , , , , , , , N a t i o n a l   P o i s o n   C o n t r o l   H o t l i n e , , , , , , , , , , 
 J a m i e , T y l e r , J a m i e   T y l e r , , , , , , , , 4 4 0 - 4 6 3 - 5 7 8 0 , , , , , , , , , , , , , , , , , , , , , , , , , 
 M a r y , C h i o v i t t i , M a r y   C h i o v i t t i , , m c h i o v i t t i @ t e c h n o l o g y i m a g i n g . c o m , , ( 3 3 0 )   7 5 8 - 7 8 0 0 , , , , , , , , , , , , , , , , , , , T I S , , , , , , , , ( A I M )   m c h i o v i t t i t i s , , 
 M e l i s s a , T o m a r o , M e l i s s a   T o m a r o , , m t o m a r o @ s p a r k b a s e . c o m , , , , , , 4 4 0 - 4 7 6 - 2 0 2 4 , , , , , , , , , , , , , , , , , , , , , , , , , 
 B e n , S h e r i d a n , B e n   S h e r i d a n , , , , , , , , 2 1 6 - 2 8 0 - 0 0 0 0 , , , , , , , , , , , , , , , , , , , , , , , , , 
 , , C h i p o t l e :   S o l o n , , , , 4 4 0 5 4 2 0 0 1 7 , , ( 4 4 0 )   5 4 2 - 9 9 9 3 , , , , , , , , , 3 3 5 9 9   A u r o r a   R d , , S o l o n , O H , 4 4 1 3 9 , U S , , , C h i p o t l e :   S o l o n , , , , , , , , , , 
 G a y l e , Z d o l s h e k , G a y l e   Z d o l s h e k , , z r e a l t o r 1 0 0 @ a o l . c o m , , , , , , 4 4 0 - 7 7 3 - 8 4 9 2 , , , , , , , 5 0 0   E   R o y a l t o n   R d , , B r o a d v i e w   H e i g h t s , O H , 4 4 1 4 7 , U S , , , R e m a x , , , , , , , , , , 
 R a n d y , O K a n e , R a n d y   O K a n e , , r o k a n e @ t e c h n o l o g y i m a g i n g . c o m , , , , , , , , , , , , , , , , , , , , , T e c h n o l o g y   I m a g i n g   S e r v i c e s ,   I n c . , , , 2 0 0 5 , S e p t e m b e r , 2 2 , , , ( A I M )   r o k t i s , , 
 J i m , B a t t i s t a , J i m   B a t t i s t a , , j b a t t i s t a @ p r o f i t p o i n t i n c . c o m , , 8 8 8 - 5 4 1 - 6 7 8 9   x 1 1 0 , , , , , , , , , , , , , , , , , P r e s i d e n t , , P r o f i t   P o i n t ,   I n c . , , , , , , , , , , 
 , , T w i t P i c , , v r i l l u s i o n s . 2 3 8 5 @ t w i t p i c . c o m , , , , , , , , , , , , , , , , , , , , , T w i t P i c , , , , , , , , , , S u b j e c t :   t e x t   t o   s e n d 
 C a r y n , W e i n b e r g , C a r y n   W e i n b e r g , , c w e i n b e r g @ t e c h n o l o g y i m a g i n g . c o m , , ( 4 4 0 )   8 9 3 - 9 6 7 2   x 3 0 1 , , , , ( 2 1 6 )   9 7 3 - 1 1 1 4 , , , , , , , , , , , , , , , , , , 2 0 0 5 , F e b r u a r y , 1 0 , , , ( A I M )   c w e i n b e r g t i s , , 2 1 6 - 5 1 4 - 9 9 9 5   w a s   i n   o l d   p h o n e   f o r   " C a r y n "   u n s u r e   i f   h e r   n u m b e r   c h a n g e d     - 7 / 2 / 0 7 
 N i c k , K a l l a s , N i c k   K a l l a s , , n k a l l a s @ s p a r k b a s e . c o m , , , , , , 3 3 0 - 4 5 1 - 9 9 6 4 , , , , , , , , , , , , , , , , , , , , , , , , , 
 C h r i s s y , N e u b a u e r , C h r i s s y   N e u b a u e r , , c n e u b a e r @ s p a r k b a s e . c o m , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , 
 C a r l , L o s k o f s k y , C a r l   L o s k o f s k y , , c l o s k o f s k y @ s p a r k b a s e . c o m , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , 
 , , G a l l u c c i ' s , , , , 2 1 6 - 8 8 1 - 0 0 4 5 , , , , , , , , , , , 6 6 1 0   E u c l i d   A v e , , C l e v e l a n d , O H , 4 4 1 0 3 , U S , , , G a l l u c c i ' s , , , , , , , , , , 
 , , B B N   E m e r g e n c y   S y s t e m , , , , 2 1 6 - 6 2 1 - 2 5 8 3 , , , , , , , , , , , , , , , , , , , B B N   E m e r g e n c y   S y s t e m , , , , , , , , , , T h i s   i s   t h e   n u m b e r   u s e d   i f   a n   e m e r g e n c y   s i t u a t i o n   h a p p e s   a t   b l u e   b r i d g e 
 M i r a n d a , M o r d u e , M i r a n d a   M o r d u e , , g y m g a l 0 0 @ g m a i l . c o m , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , 
 B r y c e , R a u s c h , B r y c e   R a u s c h , , b r a u s c h @ s p a r k b a s e . c o m , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , 
 J e n e t t e , G a r b a r z , J e n e t t e   G a r b a r z , , j g a r b a r z @ t e c h n o l o g y i m a g i n g . n e t , j g a r b a r z @ t e c h n o l o g y i m a g i n g . c o m , ( 3 3 0 )   7 5 8 - 7 8 0 0 , , , , , , , , , , , , , , , , , , , T I S , , , , , , , , ( A I M )   j g a r b a r z t i s , , 
 K i t K a t , , K i t K a t , , , , , , , , 1 4 1 2 7 6 0 8 8 6 5 , , , , , , , , , , , , , , , , , , , , , , , , , 
 C a t h y , E d d y , C a t h y   E d d y , , c a t h y @ v r i l l u s i o n s . c o m , , , , , , + 1   ( 3 3 0 )   3 1 0 - 7 8 1 2 , , , , , , , , , , , , , , , , , , 1 9 4 9 , A u g u s t , 1 3 , , , , , 
 , , F l i c k r   P h o t o   U p l o a d , , d i r e c t 9 0 j o b @ p h o t o s . f l i c k r . c o m , , , , , , , , , , , , , , , , , , , , , F l i c k r   P h o t o   U p l o a d , , , , , , , , , , S u b j e c t   =   t i t l e 
 B o d y   =   d e s c r i p t i o n 
 
 T o   a d d   e x t r a   t a g s   p u t   " t a g s :   c o o l   ' s o m e   t a g ' "   i n   e i t h e r   s u b j e c t   o r   b o d y 
 P a t , M c G u i r k , P a t   M c G u i r k , , p a t @ t h e c o p i e r g u y . c o m , , , , , , ( 2 1 6 )   2 5 2 - 8 7 7 5 , , , , , , , , , , , , , , , T h e   C o p i e r   G u y , , , , , , , , , , 
 G r e g o r y , D a v i s , D r   G r e g o r y   J   D a v i s   D O , , , , 4 4 0 8 4 2 5 5 5 5 , , , , , , , , , , , 6 7 8 9   R i d g e   R d   # 2 0 7 , , P a r m a , O H , 4 4 1 2 9 , U S , , , , , , , , , , , , , 
 J a n e t , R o m a c k , J a n e t   R o m a c k , , j r o m a c k @ t e c h n o l o g y i m a g i n g . c o m , j r o m a c k @ t e c h n o l o g y i m a g i n g . n e t , 3 3 0 - 7 5 8 - 7 8 0 0 , , , , , , , , , , , , , , , , , , , T I S , , , , , , , , ( A I M )   j r o m a c k t i s , , 
 A l e x a n d e r , H o l t , A l e x a n d e r   H o l t , , h o l t a l e x a n d e r @ y a h o o . c o m , a . w . h o l t @ c s u o h i o . e d u , , , , , , 1 9 0 0   S U P E R I O R   A V E   E   A P T   2 1 1 , , C L E V E L A N D , O H , 4 4 1 1 4 - 2 1 4 3 , U S A , , , , , , , , , , , , 1 9 8 3 , D e c e m b e r , 2 7 , , , ( A I M )   a l e k s o s c i , , 
 o t h e r   p h o n e   =   ( 3 3 0 )   2 8 1 - 1 7 4 8 
 K e n , G o o d w i n , K e n   G o o d w i n , , k g o o d w i n @ p r o f i t p o i n t i n c . c o m , , 8 8 8 - 5 4 1 - 6 7 8 9   x 1 5 5 , , , , , , , , , , , , , , , , , S y s t e m s   A d m i n i s t r a t o r , , P r o f i t   P o i n t ,   I n c . , , , , , , , , , , 
 N i c k , S c h m a u d e r , N i c k   S c h m a u d e r , s n i c k , s n i c k @ t w i s t e d s l i n k y . o r g , , , , , , , , , , , , , , , , , , , , , , , , , , , , , ( A I M )   s n i c k e r w o r k , ( I C Q )   3 3 3 4 3 1 9 1 7 , 
 T o m , S o b i n o v s k y , T o m   S o b i n o v s k y , , t s o b i n o v s k y @ t e c h n o l o g y i m a g i n g . c o m , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , 
 , , C h a s e   M o b i l e , , , , , , , , 2 4 2 7 3 , , , , , , , , , , , , , , , C h a s e   M o b i l e , , , , , , , , , , C o m m a n d s : 
 b a l   -   B a l a n c e s   f o r   a l l   a c c o u n t s 
 b a l   n i c k   -   B a l a n c e   f o r   a c c o u n t   ' n i c k ' 
 h i s t   n i c k   -   L a s t   5   t r a n s a c t i o n s   f o r   ' n i c k ' 
 d u e   n i c k   -   A m o u n t   d u e   f o r   ' n i c k ' 
 n i c k   -   L i s t   a l l   n i c k n a m e s 
 c o m m a n d   -   L i s t   a l l   c o m m a n d s 
 h e l p   -   H e l p   f o r   s u p p o r t 
 s t o p   -   U n s u b s c r i b e   f r o m   s e r b i c e 
 B . J . , , B . J . , , b j @ n o l l e t t i . n e t , b n o l l e t t i @ d b s i n e t . c o m , ( 4 4 0 )   9 4 2 - 6 9 6 1 , , , , , , , , , , , , , , , , , , , , , , 1 9 7 6 , J u n e , 2 0 , , , ( A I M )   t k n o l o g i k , , 
 V a l e r i e , C o o p e r , V a l e r i e   C o o p e r , , m u s i c _ m y _ a v a l o n @ y a h o o . c o m , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , 
 I v a n , D a v y d o v , I v a n   D a v y d o v , , i v a n @ s p a r k b a s e . c o m , , 2 1 6 - 8 6 7 - 0 8 7 7   x 3 5 1 7 , , , , ( 3 1 4 )   8 0 3 - 6 5 3 0 , , , , , , , , , , , , , , , , , , , , , , , , , 
 T r a c i e , H a l l , T r a c i e   H a l l , , , , , , , , ( 7 4 0 )   9 7 1 - 8 2 6 2 , 1 2 2 7   J A C K S O N   S T   A P T   4 1 9 , , C I N C I N N A T I , O H , 4 5 2 0 2 - 5 8 0 3 , U S A , , , , , , , , , , , , , , , , , ( A I M )   I c h B i n U b e r A l i c e , , 
 J o y c e , B r i m f i e l d , J o y c e   B r i m f i e l d , , j b r i m f i e l d @ t e c h n o l o g y i m a g i n g . c o m , , ( 3 3 0 )   7 5 8 - 7 8 0 0 , , , , , , , , , , , , , , , , , , , T I S , , , , , , , , ( A I M )   j b r i m f i e l d t i s , , 
 , , G o o g l e   S M S , , , , , , , , 4 6 6 4 5 , , , , , , , , , , , , , , , G o o g l e   S M S , , , , , , , , , , 
 J u l i a n n , S t a i n b r o o k , J u l i a n n   S t a i n b r o o k , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , 
 H a l l i e , R i c e , H a l l i e   R i c e , , h r i c e @ s p a r k b a s e . c o m , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , 
 , , F a c e b o o k , , , , , , , , 3 2 6 6 5 , , , , , , , , , , , , , , , F a c e b o o k , , , , , , , , , , 
 C a r o l , B u r g , D r .   C a r o l   B u r g   M D , , , , 2 1 6 - 5 2 4 - 4 0 0 9 , , , , , , , , , , , 6 7 0 1   R o c k s i d e   R d   S t e   3 3 0 , , I n d e p e n d e n c e , O H , 4 4 1 3 1 , U S , , , , , , , , , , , , , 
 L u k e , , L u k e , , , , , , , , ( 3 3 0 )   5 7 3 - 6 9 6 9 , , , , , , , , , , , , , , , , , , , , , , , , , 
 J o h n , H e a n e y , J o h n   H e a n e y , , j h e a n e y @ s p a r k b a s e . c o m , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , 
 J e r e m y , B i b l e , J e r e m y   B i b l e , , j b i b l e @ d c i m a g e . c o m , i n f o @ e x p e r i m e d i a . n e t , , , , , , , , , , , , 2 2 5   W e s t   B a r t g e s   S t , , A k r o n , O H , 4 4 3 0 7 , m i s s i n g   v a l u e , D i r e c t o r   D y n a m i c   M e d i a   S e r v i c e s , , D i g i t a l   C o l o r   I m a g i n g , , , 2 0 0 0 , A p r i l , 1 4 , , , , , 
 T r o u t , , T r o u t , , t r o u t s o u p @ g m a i l . c o m , t r o u t @ t r o u t s o u p . c o m , , , , , , 8 3 2 2   P I T T S B U R G   A V E   N W , , N O R T H   C A N T O N , O H , 4 4 7 2 0 , U S , , , , , , , , , , , , 1 9 7 3 , F e b r u a r y , 2 7 , , , ( A I M )   h y p e r t r o u t , , 
 o t h e r   p h o n e   =   + 1   ( 3 3 0 )   4 4 5 - 0 7 1 8 
 C h a r l e s , D e g e n , C h a r l e s   D e g e n , , c h a r l e s @ s p a r k b a s e . c o m , t r u e s t . w i z z l e @ g m a i l . c o m , , , , , 4 1 9 - 2 3 4 - 2 6 7 9 , 3 8 0 0   F a i r w a y p a r k   D r i v e   A p t   2 0 7 , , C o p l e y , O H , 4 4 3 2 1 , U S , , , , , , , , , , , , , , , , , , , 
 S t a c e y , C l e m e n c e , S t a c e y   C l e m e n c e , , s c l e m e n c e @ s p a r k b a s e . c o m , , , , , , ( 2 1 6 )   3 3 7 - 5 5 9 4 , , , , , , , , , , , , , , , , , , , , , , , , , 
 N a d i n e , L e p e r , N a d i n e   L e p e r , , n a d i n e @ l i n e 4 7 . c o m , , , , , , , 2 2 5   S T O N E   A V E   A P T   2 , , L E X I N G T O N , K Y , 4 0 5 0 8 - 2 6 7 0 , U S A , , , , , , , , , , , , , , , , , , , R e a l   f i s t   n a m e   i s   T r i c i a ,   b u t   p r e f e r s   N a d i n e ,   w h i c h   i s   h e r   m i d d l e   n a m e 
 K y m b e r l i e , S t u t z , K y m b e r l i e   S t u t z , , k s t u t z @ t e c h n o l o g y i m a g i n g . c o m , k s t u t z @ t e c h n o l o g y i m a g i n g . n e t , ( 3 3 0 )   7 5 8 - 7 8 0 0 , , , , , , , , , , , , , , , , , , , T I S , , , , , , , , ( A I M )   k s t u t z t i s , , 
 , , M e r c h a n t   S e r v i c e s   C e n t e r , , i n f o @ m s c i n f o . c o m , , ( 8 0 0 )   3 2 0 - 0 0 0 0 , , ( 8 8 8 )   4 7 1 - 6 6 4 3 , , , , , , , , , 1 2 3 4   S .   C l e v e l a n d - M a s s i l l o n   R d . , , C o p l e y , O H , 4 4 3 2 1 , U S , , , M e r c h a n t   S e r v i c e s   C e n t e r , , , , , , , , , , 
 , , A t l a s s i a n . c o m   a u t o m a t e d   e m a i l s , , n o r e p l y @ a t l a s s i a n . c o m , , , , , , , , , , , , , , , , , , , , , A t l a s s i a n . c o m   a u t o m a t e d   e m a i l s , , , , , , , , , , 
 M i c h e l e , C h e s l a , M i c h e l e   C h e s l a , , m i k a y l i e 1 1 @ a o l . c o m , , , ( 2 1 6 )   6 6 2 - 2 8 8 1 , , , ( 2 1 6 )   8 3 2 - 2 7 2 3 , , , , , , , , , , , , , , , , , , 2 0 0 5 , J u l y , 2 6 , , , ( A I M )   m c h e s l a t i s , , 
 A m b e r , , A m b e r , , , , , , , , ( 3 3 0 )   3 2 9 - 1 9 2 3 , , , , , , , , , , , , , , , , , , , , , , , , , 
 , , S p i n V o x   ( T w i t t e r ) , , , , , , , , 8 7 7 - 5 7 7 - 6 5 3 6 , , , , , , , , , , , , , , , S p i n V o x   ( T w i t t e r ) , , , , , , , , , , 
 W i l l i a m , R o d r i g u e z , W i l l i a m   R o d r i g u e z , , w r o d r i g u e z @ b b n l l c . c o m , , ( 8 6 6 )   9 9 0 - 2 5 8 3 , , 2 1 6 6 2 1 2 5 8 4 , , , , , , , , , T h e   S t e r l i n g   B u i l d i n g 
 1 2 5 5   E u c l i d   A v e ,   S u i t e   5 0 0 , , C l e v e l a n d , O H , 4 4 1 1 5 , U S , S u p p o r t , , B l u e B r i d g e   N e t w o r k s , , , , , , , , ( A I M )   q u i n c a y e r o , , S p e a k   t o   w i l l   w h e n   y o u   n e e d   a   s e r v e r   r e s t a r t e d 
 B l u e   B r i d g e   N e t w o r k s 
 w o r k   p h o n e 2   =   ( 2 1 6 )   6 2 1 - 2 5 8 3 
 R o b , T u c k e r , R o b   T u c k e r , , r t u c k e r @ f i d e l i t y a c c e s s . c o m , , 2 1 6 - 2 4 5 - 4 1 1 3 , , , , , , , , , , , , , , , , , , , F i d e l i t y   V o i c e   a n d   D a t a , , , , , , , , , , H e a d   p e r s o n   a t   d a t a c e n t e r ,   u n s u r e   i f   s u p p o r t   p h o n e   n u m b e r   g o e s   t o   d a t a c e n t e r   o r   t h e i r   o f f i c e s   i n   b e a c h w o o d 
 o t h e r   p h o n e   =   2 1 6 - 5 9 5 - 0 8 6 6 
 A l e x , M a r u n o w s k i , A l e x   M a r u n o w s k i , , a m a r u n o w s k i @ s p a r k b a s e . c o m , m a r u n o w s k i a @ g m a i l . c o m , , , , , 2 1 6 - 6 4 0 - 1 7 2 3 , , , , , , , , , , , , , , , , , , , , , , , , , 
 C a r l , G e o r g e , C a r l   G e o r g e , , c g e o r g e @ t e c h n o l o g y i m a g i n g . c o m , , , , , , , , , , , , , , , , , , , , , T I S , , , , , , , , ( A I M )   c g e o g e t i s , , 
 A p r i l , , A p r i l , , , , , , , , 5 7 0 - 4 9 0 - 1 8 1 9 , , , , , , , , , , , , , , , , , , , , , , , ( A I M )   a p r i l s t a r 1 0 , , 
 M e l i s s a , J e n k i n s , M e l i s s a   J e n k i n s , , m j e n k i n s @ s p a r k b a s e . c o m , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , 
 s h u b s , , s h u b s , , , , , , , , + 1 - 2 1 6 - 2 8 0 - 8 8 8 1 , , , , , , , , , , , , , , , , , , , , , , , , , 
 B o b , G a y d o s , B o b   G a y d o s , , b g a y d o s @ s p a r k b a s e . c o m , , , , , , 3 3 0 6 0 8 5 1 6 7 , , , , , , , , , , , , , , , , , , , , , , , , , 
 G e o f f , H a r d m a n , G e o f f   H a r d m a n , , g e o f f @ s p a r k b a s e . c o m , g e o f f @ s p a r k b a s e . c o m , 4 4 0 - 2 8 7 - 8 2 4 0   x 7 4 1 , , , , 2 1 6 2 7 2 8 9 4 8 , 2 8 6 0   d e t r o i t   a v e , , c l e v e l a n d , o h , m i s s i n g   v a l u e , m i s s i n g   v a l u e , , , , , , , , , , , , 2 0 0 5 , A p r i l , 1 1 , , , ( A I M )   g e o f f r y h a r d m a n , , 
 S a n d i , , S a n d i , , , , , , , , 4 4 0 - 8 8 6 - 3 9 4 0 , , , , , , , , , , , , , , , , , , , , , , , , , T r e a s u r e r   o f   D   u n i t   a t   c o n d o 
 D r e w , M a y e r , D r e w   M a y e r , , d m a y e r @ s p a r k b a s e . c o m , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , 
 R y a n , , R y a n , L i n k , , , , , , , ( 3 3 0 )   3 2 8 - 4 4 2 5 , , , , , , , , , , , , , , , , , , , , , , , , , 
 , , I f t t t   S m s , , , , , ( 4 1 5 ) � 5 7 8 - 7 6 5 3 , , , , , , , , , , , , , , , , , , I f t t t   S m s , , , , , , , , , , 
 T o m , K l e n o t i c , T o m   K l e n o t i c , , t k l e n o t i c @ s p a r k b a s e . c o m , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , 
 M a t t , M i g n o n a , M a t t   M i g n o n a , , m m i g n o n a @ s p a r k b a s e . c o m , , , , , , , , , , , , , , , , , , , , , S p a r k B a s e , , , , , , , , , , 
 , , B a r t e l s   &   B u s a c k   P e t   H o s p i t a l   R e s o r t   a n d   S p a , , , , 4 4 0 - 8 4 5 - 7 1 4 1 , , 4 4 0 - 8 4 5 - 2 5 1 9 , , , , , , , , , 6 2 7 0   S t a t e   R o a d , , P a r m a , O H , 4 4 1 3 4 , U S , , , B a r t e l s   &   B u s a c k   P e t   H o s p i t a l   R e s o r t   a n d   S p a , , , , , , , , , , a s   o f   m a r c h ,   2 0 1 0   g r o o m i n g   i s   $ 6 5 
 o t h e r   p h o n e   =   4 4 0 8 4 5 1 0 0 9 
 J e n n i f e r , C z a r k o w s k i , J e n n i f e r   C z a r k o w s k i , , j e n n i f e r c @ c a r d s o l u t i o n s . c o m , , ( 4 4 0 )   3 3 7 - 1 2 8 8   x 6 0 1 , , , , , , , , , , , , , , , , , , , , , , 1 9 8 4 , J u l y , 8 , , , ( A I M )   j e n a l y n n 0 7 1 0 , , 
 S t e p h a n i e , A b u   Q a d u o r a h , S t e p h a n i e   A b u   Q a d u o r a h , , s t e p h a n i e @ t e c h n o l o g y i m a g i n g . c o m , , , , , , , , , , , , , , , , , , , , , , , , , , , , , ( A I M )   s t e p h a n i e t i s , , 
 B r a n d o n , D a v i s , B r a n d o n   D a v i s , , , , , , , , ( 4 1 9 )   7 0 8 - 9 0 4 4 , , , , , , , , , , , , , , , , , , , , , , , , , 
 C r y s t a l , , C r y s t a l , , , , , , , , ( 4 1 2 )   6 6 7 - 1 6 2 4 , , , , , , , , , , , , , , , , , , , , , , , , , 
 T e s s a , B u r g , T e s s a   B u r g , , t b u r g @ s p a r k b a s e . c o m , , , , , , 2 1 6 9 7 3 1 9 4 8 , , , , , , , , , , , , , , , , , , , , , , , , , 
 R a l p h , V i n c e , R a l p h   V i n c e , , r v i n c e @ s p a r k b a s e . c o m , r a l p h @ s p a r k b a s e . c o m , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , 
 , , T i m e   O f   D a y   S e r v i c e , , , , , , , , , , , , , , , , , , , , , , , T i m e   O f   D a y   S e r v i c e , , , , , , , , , , F r o m   c e l l   p h o n e   c a n   h a v e   1 0 0 m s e c   o r   m o r e   d e l a y .     L a n d   l i n e s   a r e   g e n e r a l l y   < 1 m s e c 
 o t h e r   p h o n e   =   ( 3 0 3 )   4 9 9 - 7 1 1 1 
 J e s s i c a , L e i g h , J e s s i c a   L e i g h , , v o l u p t u o u s b o o g e r @ g m a i l . c o m , , , , , , 2 1 6 2 1 5 5 4 7 9 , , , , , , , , , , , , , , , , , , , , , , , , , T h a t   i s   h e r   m o s t   c u r r e n t   e m a i l ,   b u t   I   k n o w   s h e   l i k e s   t o   c h a n g e   i t   a   l o t 
 , , T I S   B o a r d m a n , , , , ( 3 3 0 )   7 5 8 - 7 8 0 0 , , ( 3 3 0 )   7 5 8 - 1 6 1 7 , , , , , , , , , 8 4 3 3   S o u t h   A v e   
 B l d g   4 ,   S t e   1 , , P o l a n d , O H , 4 4 5 1 4 , U S A , , , T I S   B o a r d m a n , , , , , , , , , , 
 w o r k   p h o n e 2   =   ( 8 0 0 )   4 0 9 - 2 6 8 8 
 L e o , L a p o r t e , L e o   L a p o r t e , , l e o @ l e o v i l l e . c o m , , , , , , 7 0 7 9 7 1 9 1 9 2 , , , , , , , , , , , , , , , , , , , , , , , , , C e l l   n u m b e r   w a s   g i v e n   o u t   o n   a i r   o n   3 / 1 6 / 2 0 0 8 .   W h e t h e r   i t s   s t i l l   l i v e   o r   n o t   I   d o n ' t   k n o w . 
 , , T I S   S o l o n , , , , 4 4 0 2 8 7 8 2 3 0 , , 4 4 0 - 2 8 7 - 8 2 3 1 , , , , , , , , , 3 0 2 7 5   B a i n b r i d g e   R d 
 S u i t e   A - 2 , , S o l o n , O H , 4 4 1 3 9 , U S , , , T I S   S o l o n , , , , , , , , , , 
 A n d r e a , M e n o s k y , A n d r e a   M e n o s k y , , a m e n o s k y @ t e c h n o l o g y i m a g i n g . c o m , , ( 3 3 0 )   7 5 8 - 7 8 0 0 , , , , , , , , , , , , , , , , , , , T I S , , , , , , , , ( A I M )   a m e n o s k y t i s , , 
 , , G o o d y e a r   A u t o :   S t o w   # 0 5 3 , , , , 3 3 0 6 7 8 0 6 0 0 , , , , , , , , , , , 4 4 5 5   K e n t   R d , , S t o w , O H , 4 4 2 2 4 , U S , , , G o o d y e a r   A u t o :   S t o w   # 0 5 3 , , , , , , , , , , 
 S p a r k B a s e , , S p a r k B a s e , , i n f o @ s p a r k b a s e . c o m , s a l e s @ s p a r k b a s e . c o m , 2 1 6 - 8 6 7 - 0 8 7 7 , , 8 6 6 - 5 5 0 - 3 2 0 6 , , , , , , , , , 3 0 2 7 5   B a i n b r i d g e   R d 
 S u i t e   A - 2 , , S o l o n , O H , 4 4 1 3 9 , U S , , , S p a r k B a s e , , , , , , , , , , 
 L e e , R o b i n s o n , L e e   R o b i n s o n , , l r o b i n s o n @ s p a r k b a s e . c o m , , , , , , ( 3 3 0 )   8 0 1 - 0 2 2 4 , , , , , , , , , , , , , , , , , , , , , , , , , 
 A n g e l e n a , L o n g c o y , A n g e l e n a   L o n g c o y , , a n g e l e n a . l o n g c o y @ g i f t c a r d s e r v i c e c e n t e r . c o m , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , 
 , V e r i C e n t r e   S u p p o r t , V e r i C e n t r e   S u p p o r t , , v c _ s u p p o r t @ V E R I F O N E . c o m , , 8 8 8 - 4 3 2 - 7 0 3 0 , , , , , , , , , , , , , , , , , , , , , , , , , , , , , 
 E r i k , H u g h e s , E r i k   H u g h e s , , e h u g 0 @ a l l s t a t e . c o m , e h u g h e s @ t e k g n o m e . c o m , ( 2 1 6 )   4 7 9 - 0 0 9 0 , , , , ( 2 1 6 )   9 6 5 - 3 5 6 1 , 1 2 1 5   W   1 0 T H   S T   A P T   9 3 4 , , C L E V E L A N D , O H , 4 4 1 1 3 - 1 2 4 9 , U S A , , , , , , , , , , , , 1 9 7 3 , J u n e , 2 5 , , , , , 
 , , G o o g l e   4 1 1 , , , , , , , , , , , , , , , , , , , , , , , G o o g l e   4 1 1 , , , , , , , , , , 
 o t h e r   p h o n e   =   8 0 0 - 4 6 6 - 4 4 1 1 
 D o u g , H a r d m a n , D o u g   H a r d m a n , , d o u g @ h a r d m a n . o r g , d o u g @ s p a r k b a s e . c o m , 4 4 0 - 2 8 7 - 8 2 4 0   x 3 0 7 , ( 2 1 6 )   7 5 2 - 1 5 5 4 , , , ( 2 1 6 )   6 5 0 - 6 0 7 3 , 3 0 2 9   C h a d b o u r n e   R d . , , S h a k e r   H t s , O H , 4 4 1 2 0 , U S , , , , , , , O w n e r , , S p a r k B a s e ,   L L C , , , 2 0 0 5 , J a n u a r y , 1 7 , , , ( A I M )   c p t t r i p p s , , 
 E r i c , S m i t h , E r i c   S m i t h , , e s m i t h @ s p a r k b a s e . c o m , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , 
 A m a n d a , M o o r e , A m a n d a   M o o r e , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , ( A I M )   X a n d e r M a i r e 4 2 0 6 9 , , 
 S t e p h , D l u g o n , S t e p h   D l u g o n , , s d l u g o n @ s p a r k b a s e . c o m , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , 
 , , D C T   T e l e c o m   G r o u p ,   I n c , , c u s t o m e r s e r v i c e @ 4 d c t . c o m , , 4 4 0 - 8 9 2 - 0 3 0 0 , , , , , , , , , , , 2 7 8 7 7   C l e m e n s   R d , , W e s t l a k e , O H , 4 4 1 4 5 , U S , , , D C T   T e l e c o m   G r o u p ,   I n c , , , , , , , , , , O t h e r   w a s   f r o m   t a l k i n g   t o   P a t t y   w h e n   t h e r e   w a s   a n   i s s u e 
 o t h e r   p h o n e   =   4 4 0 - 8 0 8 - 0 8 0 0 
 D a v i d , J a n s e n , D a v i d   J a n s e n , , d a v i d @ s t i k c . c o m , , 8 7 7 - 8 5 1 - 2 2 6 0 , , , , , , , , , , , 1 6 0 4 1   M a r t y   C i r c l e , , O v e r l a n d   P a r k , K S , 6 6 0 8 5 , m i s s i n g   v a l u e , , , S t a l l a r d , , , , , , , , , , 
 A a r o n , S e x s t e l l a , A a r o n   S e x s t e l l a , , a s e x s t e l l a @ s p a r k b a s e . c o m , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , 
 , , G a t e w a y   A n i m a l   C l i n i c , , , , 2 1 6 - 7 7 1 - 4 4 1 4 , , , , , , , , , , , 1 5 0 2   A b b e y   A v e , , C l e v e l a n d , O H , 4 4 1 1 3 , U S , , , G a t e w a y   A n i m a l   C l i n i c , , , , , , , , , , w a l k   i n   c l i n i c ,   n o   a p p o i n t m e n t   n e c e s s a r y 
 T o m , E d d y , T o m   E d d y , , t o m @ v r i l l u s i o n s . c o m , , , , , , ( 3 3 0 )   3 2 2 - 8 1 3 5 , , , , , , , , , , , , , , , , , , 1 9 4 4 , O c t o b e r , 2 2 , , , , , 
 , , T w i t x r , , b o o k 2 0 2 7 @ t w i t x r . c o m , , , , , , , , , , , , , , , , , , , , , T w i t x r , , , , , , , , , , S u b j e c t :   l o c a t i o n 
 B o d y :   u p d a t e 
 A t t a c h   p i c 
 L i s a , S t e e l e , L i s a   S t e e l e , , l s t e e l e @ s p a r k b a s e . c o m , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , 
 , , T w i t t e r , , , , , , , , 4 0 4 0 4 , , , , , , , , , , , , , , , T w i t t e r , , , , , , , , , , 
 A n d r e w , K r a y n a k , A n d r e w   K r a y n a k , , a k r a y n a k @ s p a r k b a s e . c o m , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , 
 , , B l o g   E m a i l s , , 2 b 6 d 1 5 b b 2 f 8 0 0 9 6 @ g o l f o p i n i o n s . c o m , 7 5 3 b 6 c 4 6 e f c 1 8 4 2 @ p u t t e r t a l k . c o m , , , , , , , , , , , , , , , , , , , , B l o g   E m a i l s , , , , , , , , , , 
 J o n a t h a n , B a l l a r d , J o n a t h a n   B a l l a r d , , j b a l l a r d @ s p a r k b a s e . c o m , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , 
 P a r e n t s , , P a r e n t s , , , , , 3 3 0 - 6 2 6 - 2 2 6 6 , , , , , , , , , , , , , , , , , , , , , , , , , , , , n e e d   t h i s   o n e   s o   I   c a n   s a y   " c a l l   p a r e n t s "   w i t h   v o i c e   o v e r 
 J a s o n , G i n t e r t , J a s o n   G i n t e r t , , j a s o n @ f i d e l i t y v o i c e . c o m , , 2 1 6 - 2 4 5 - 4 1 0 3 , , 2 1 6 - 5 9 5 - 0 7 0 6 , , , , , , , , , 2 3 2 5 0   C h a g r i n   B l v d ,   S u i t e   2 5 0 , , B e a c h w o o d , O H , 4 4 1 2 2 , U S , C h i e f   T e c h n o l o g y   O f f i c e r , , F i d e l i t y   V o i c e   a n d   D a t a , , , , , , , , , , 
 J o e , F i o r i n i , J o e   F i o r i n i , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , 
 D o u g , M a s o n , D o u g   M a s o n , , d m a s o n @ s p a r k b a s e . c o m , , , , , , 4 4 0 2 7 9 3 5 6 5 , , , , , , , , , , , , , , , , , , , , , , , , , 
 E r n e s t , Q u e s e n b e r r y , E r n e s t   Q u e s e n b e r r y , , e r n b e r r y @ w i n d s t r e a m . n e t , , , 3 3 0 - 6 5 3 - 8 7 6 3 , , , ( 3 3 0 )   8 0 7 - 4 1 3 5 , 6 9 9   D I A N E   A V E , , S T R E E T S B O R O , O H , 4 4 2 4 1 - 4 7 1 7 , U S A , , , , , , , , , , , , 1 9 4 4 , J a n u a r y , 2 2 , , , , , 
 J o d i n , R a v i a , J o d i n   R a v i a , , j r a v i a @ a d e l p h i a . n e t , j r a v i a @ m e d o v a t i o n . c o m , , , , , , , , , , , , , , , , , , , , , , , , , , , , ( A I M )   j o d i n r a v i a , , 
 J a c k i e , H a n s h a w , J a c k i e   H a n s h a w , , j h a n s h a w @ t e c h n o l o g y i m a g i n g . c o m , , , , , , , , , , , , , , , , , , , , , , , , , , , , , ( A I M )   j h a n s h a w t i s , , 
 , , A n n a c o , , , , ( 3 3 0 )   3 7 6 - 1 4 0 0 , , , , , , , , , , , 9 4 3   H A Z E L   S T , , A K R O N , O H , 4 4 3 0 5 - 1 6 0 9 , U S A , , , A n n a c o , , , , , , , , , , M e t a l   R e c y c l i n g 
 B i l l , R o b b , B i l l   R o b b , , 4 t e c h n o @ g m a i l . c o m , 4 t e c h n o @ r a v e f u e l . c o m , , , , , + 1   ( 3 3 0 )   9 3 3 - 6 2 1 0 , 3 4 2 5   A R N O L D   A V E   N W , , C A N T O N , O H , 4 4 7 0 9 - 2 7 1 3 , U n i t e d   S t a t e s , , , , , , , , , , , , 1 9 7 6 , J u n e , 1 9 , , , ( A I M )   w r o b b 2 3 , , 
 A m a n d a , , A m a n d a , , , , , , , , ( 3 3 0 )   8 0 8 - 0 4 8 9 , , , , , , , , , , , , , , , , , , , , , , , , , J e s s i c a ' s   S i s t e r 
 X a n d r i e , , X a n d r i e , , , , , , , , 3 3 0 4 4 7 7 5 3 8 , , , , , , , , , , , , , , , , , , , , , , , , , 
 K a t h y , M u s i l l i , K a t h y   M u s i l l i , , k m u s i l l i @ t e c h n o l o g y i m a g i n g . c o m , , ( 3 3 0 )   7 5 8 - 7 8 0 0 , , , , , , , , , , , , , , , , , , , T I S , , , , , , , , ( A I M )   k m u s i l l i t i s , , 
 S a r a h , H i m e s , S a r a h   H i m e s , , s h i m e s @ s p a r k b a s e . c o m , , , , , , 4 4 0 - 7 2 4 - 8 5 9 7 , , , , , , , , , , , , , , , , , , , , , , , , , 
 , , B r i g h t K i t e , , , , , , , , 4 1 4 1 4 , , , , , , , , , , , , , , , B r i g h t K i t e , , , , , , , , , , @ a d d r e s s , c i t y , s t a t e 
 
 H R , , H R , , , , , , , , 1   ( 7 2 7 )   6 7 8 - 2 7 8 2 , , , , , , , , , , , , , , , , , , , , , , , , , 
 , , S n a p F o o , , p o s t @ s n a p f o o . c o m , , , , , , , , , , , , , , , , , , , , , S n a p F o o , , , , , , , , , , s u b j e c t   i s   t h e   d e s c r i p t i o n 
 A l e x a n d e r , V a s a r a b , A l e x a n d e r   V a s a r a b , , a l e x a n d e r @ h y p n o p o l i t a n . c o m , a l e x a n d e r @ s p a r k b a s e . c o m , , , , , 1   ( 2 1 6 )   3 4 6 - 0 8 6 4 , , , , , , , , , , , , , , , , , , 1 9 8 8 , J u l y , 2 6 , , , ( A I M )   v a s a r a b , , 
 T y l e r , H a i n s , T y l e r   H a i n s , , t h a i n s @ p r o f i t p o i n t i n c . c o m , , 8 8 8 - 5 4 1 - 6 7 8 9   x 1 1 5 , , , , , , , , , , , , , , , , , I T   D i r e c t o r , , P r o f i t   P o i n t ,   I n c . , , , , , , , , , , 
 N i k k i , , N i k k i , , , , , , , , 3 3 0 - 3 4 7 - 5 2 1 0 , , , , , , , , , , , , , , , , , , , , , , , ( A I M )   S h a d o 1 3 x 2 9 , , 
 S a r a h , R e y m o n d , S a r a h   R e y m o n d , , s r e y m o n d @ s p a r k b a s e . c o m , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , 
 , , A p p l e   I n c . , , , , , , , , , , , , , , , 1   I n f i n i t e   L o o p , , C u p e r t i n o , C A , 9 5 0 1 4 , U n i t e d   S t a t e s , , , A p p l e   I n c . , , , , , , , , , , 
 o t h e r   p h o n e   =   1 - 8 0 0 - M Y - A P P L E 
 S a b i n , B o r u z , S a b i n   B o r u z , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , 
 C r y s t a l , M a d r i l e j o s , C r y s t a l   M a d r i l e j o s , , c m a d r i l e j o s @ s p a r k b a s e . c o m , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , 
 , , I l l u m i n a t i n g   C o m p a n y ,   T h e , , , , 8 0 0 - 5 8 9 - 3 1 0 1 , , , , , , , , , , , , , , , , , , , I l l u m i n a t i n g   C o m p a n y ,   T h e , , , , , , , , , , 
 B r a d , C h a r n a , B r a d   C h a r n a , , b c h a r n a @ s p a r k b a s e . c o m , , , , , , ( 2 1 6 )   4 0 9 - 2 4 9 8 , , , , , , , , , , , , , , , , , , , , , , , , , 
 , , K w i r y , , , , , , , , 5 9 4 7 9 , , , , , , , , , , , , , , , K w i r y , , , , , , , , , , 
 F i d e l i t y   A c c e s s , S u p p o r t , F i d e l i t y   V o i c e   a n d   D a t a , , s u p p o r t @ f i d e l i t y a c c e s s . c o m , s u p p o r t @ f i d e l i t y v o i c e . c o m , , , , , , , , , , , , , , , , , , , , F i d e l i t y   V o i c e   a n d   D a t a , , , , , , , , , , 
 o t h e r   p h o n e   =   8 8 8 - 2 1 7 - 1 1 4 0 
 K u r t , B u r n s , K u r t   B u r n s , , k b u r n s @ s p a r k b a s e . c o m , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , 
 , , S e n d   T o   D r o p b o x , , t o d d _ x 2 b 4 @ s e n d t o d r o p b o x . c o m , , , , , , , , , , , , , , , , , , , , , S e n d   T o   D r o p b o x , , , , , , , , , , E m a i l   a t t a c h m e n t s   a n d   t h e y ' l l   b e   a d d e d   t o   d r o p b o x   a c c o u n t   u n d e r   " a t t a c h m e n t s " 
 M a r c o , , N o r t h   S h o r e   T i n t , , , , 4 4 0 - 8 4 2 - 3 5 1 1 , , , , ( 2 1 6 )   9 9 0 - 0 7 3 9 , , , , , , , 6 6 7 2   P e a r l   R d , , P a r m a   H e i g h t s , O H , 4 4 1 3 0 , U S , , , N o r t h   S h o r e   T i n t , , , , , , , , , , 
 J a s o n , I a n n o n e , J a s o n   I a n n o n e , , j a s o n @ j a s o n - i a n n o n e . c o m , j a s o n @ s p a r k b a s e . c o m , 2 1 6 - 8 6 7 - 0 8 7 7   x 3 5 1 6 , , , , + 1   ( 2 1 6 )   5 3 3 - 4 2 1 6 , , , , , , , , , , , , , , , , , , 2 0 0 9 , O c t o b e r , 9 , , , , , 
 R e n e e , M a t t e o , R e n e e   M a t t e o , , r m a t t e o @ t e c h n o l o g y i m a g i n g . c o m , , , , , , , , , , , , , , , , , , , , , , , , , , , , , ( A I M )   r r o t h t i s , , 
 A d a m , Z i v s a k , A d a m   Z i v s a k , , a z i v s a k @ s p a r k b a s e . c o m , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , 
 J e n n , S t o n e k i n g , J e n n   S t o n e k i n g , , j e n n @ f u t u r e c o n s o r t i u m . c o m , , , , , , ( 2 1 6 )   8 3 2 - 1 5 1 8 , 1 9 0 0   S U P E R I O R   A V E   E   A P T   2 1 1 , , C L E V E L A N D , O H , 4 4 1 1 4 - 2 1 4 3 , U S A , , , , , , , , , , , , , , , , , ( A I M )   f u t u r e c r u , , 
 C h r i s t i n e , J a c o b s , C h r i s t i n e   J a c o b s , , c j a c o b s @ s p a r k b a s e . c o m , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , 
 A l e x , L u b n e u s k i , A l e x   L u b n e u s k i , , a l u b n e u s k i @ p r o f i t p o i n t i n c . c o m , , 8 8 8 - 5 4 1 - 6 7 8 9   x 1 6 9 , , , , , , , , , , , , , , , , , A s s t .   S y s a d m i n , , P r o f i t   P o i n t ,   I n c . , , , , , , , , , , 
 D a v i d , I n g l i s , D a v i d   I n g l i s , , d i n g l i s @ s p a r k b a s e . c o m , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , 
 N i c k , M o r l a n , N i c k   M o r l a n , , n i c k @ h d d g . n e t , , , , , , ( 3 3 0 )   2 5 6 - 3 9 9 7 , , , , , , , , , , , , , , , , , , , , , , , ( A I M )   H a y E l m e r , , 
 E u g e n e , , E u g e n e , , , , , , , , 4 4 0 - 2 8 9 - 5 5 3 3 , , , , , , , , , , , , , , , , , , , , , , , , , P r e s i d e n t   o f   D   u n i t   a t   c o n d o 
 J o s h u a , L o c h n e r , J o s h u a   L o c h n e r , , j l o c h n e r @ s p a r k b a s e . c o m , , , , , , + 1   ( 2 1 6 )   3 4 6 - 6 5 2 9 , , , , , , , , , , , , , , , , , , , , , , , , , 
 S t e p h a n i e , H e n r y , S t e p h a n i e   H e n r y , , , , , , , , 4 4 0 - 8 6 4 - 8 7 8 1 , , , , , , , , , , , , , , , , , , , , , , , , , 
 A s h l e y , , A s h l e y , , , , , , , , 1 3 3 0 9 2 6 8 8 1 4 , , , , , , , , , , , , , , , , , , , , , , , , , 
 M a k a y l a , E d d y , M a k a y l a   E d d y , , m a k a y l a e d d y @ m e . c o m , , , , , , + 1 3 3 0 3 2 2 6 6 2 1 , , , , , , , , , , , , , , , , , , , , , , , , , 
 T o d d , D a n i e l , T o d d   D a n i e l , , t d a n i e l @ s p a r k b a s e . c o m , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , 
 C a t h y   a n d   T o m , E d d y , C a t h y   a n d   T o m   E d d y , P a r e n t s , g o 4 i t @ v r i l l u s i o n s . c o m , , , , , , , 9 2 4 7   H i c k o r y   R i d g e   D r i v e , , S t r e e t s b o r o , O H , 4 4 2 4 1 , U n i t e d   S t a t e s , , , , , , , , , , , , , , , , , ( A I M )   c y e w 2 , , 
 S h a n e , O ' C o n n o r , S h a n e   O ' C o n n o r , , s o c o n n o r @ s p a r k b a s e . c o m , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , 
 D a v i d , J e d l i n s k y , D a v i d   J e d l i n s k y , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , 
 N i c o l e , V o e l z k e , N i c o l e   V o e l z k e , , , , , , , , 1   ( 7 2 4 )   9 8 0 - 4 8 6 3 , 2 9 1 8   A u t u m n w o o d   D r , , P i t t s b u r g h , P A , 1 5 2 1 6 , m i s s i n g   v a l u e , , , , , , , , , , , , , , , , , , , 
 E r i c , M o o r e , E r i c   M o o r e , , e m o o r e @ s p a r k b a s e . c o m , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , 
 T o d d , E d d y , T o d d   E d d y , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , 
 , , A p p l e   I n c . , , , , , , , , , , , , , , , 1   I n f i n i t e   L o o p , , C u p e r t i n o , C A , 9 5 0 1 4 , U n i t e d   S t a t e s , , , A p p l e   I n c . , , , , , , , , , , 
 o t h e r   p h o n e   =   1 - 8 0 0 - M Y - A P P L E� �� ������
�� 
azf4� ��� Z 7 1 A E E 6 5 8 - C D 8 B - 4 F E C - 9 B 7 2 - 9 9 B 5 D 7 8 F 2 2 6 3 : A B P e r s o n
�� kfrmID  � ���  A p p l e   I n c .� ���  1 - 8 0 0 - M Y - A P P L E
�� boovfals
�� boovfals� �� ������ ������
�� 
azf4� ��� Z 7 1 A E E 6 5 8 - C D 8 B - 4 F E C - 9 B 7 2 - 9 9 B 5 D 7 8 F 2 2 6 3 : A B P e r s o n
�� kfrmID  
�� 
az20�� � ���  m a i n� ���  1   I n f i n i t e   L o o p� ���  C u p e r t i n o� ���  C A� ��� 
 9 5 0 1 4� ���  U n i t e d   S t a t e s� �� ������ ������
�� 
azf4� ��� Z 7 1 A E E 6 5 8 - C D 8 B - 4 F E C - 9 B 7 2 - 9 9 B 5 D 7 8 F 2 2 6 3 : A B P e r s o n
�� kfrmID  
�� 
az27�� � ���  w o r k� ���  A p p l e   I n c .� ��� : 
 o t h e r   p h o n e   =   1 - 8 0 0 - M Y - A P P L E� ���  , , A p p l e   I n c . , , , , , , , , , , , , , , , 1   I n f i n i t e   L o o p , , C u p e r t i n o , C A , 9 5 0 1 4 , U n i t e d   S t a t e s , , , A p p l e   I n c . , , , , , , , , , , 
 o t h e r   p h o n e   =   1 - 8 0 0 - M Y - A P P L E� ldt     ���@��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ascr  ��ޭ