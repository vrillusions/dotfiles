FasdUAS 1.101.10   ��   ��    k             l      ��  ��    i c
In order for profile image to show up, have to download file, cache it somewhere, then link to it
     � 	 	 � 
 I n   o r d e r   f o r   p r o f i l e   i m a g e   t o   s h o w   u p ,   h a v e   t o   d o w n l o a d   f i l e ,   c a c h e   i t   s o m e w h e r e ,   t h e n   l i n k   t o   i t 
   
  
 l     ��������  ��  ��        l     ����  r         m        �   r ~ / L i b r a r y / C a c h e s / c o m . v r i l l u s i o n s . T w i t t e r S t a t u s A p p l e s c r i p t  o      ���� 0 cachedir cacheDir��  ��        l     ��������  ��  ��        l      ��  ��    � �tell application "Keychain Scripting"	set twitter_key to first Internet key of current keychain whose server is "twitter.com"	set twitter_login to quoted form of (account of twitter_key & ":" & password of twitter_key)end tell      �  � t e l l   a p p l i c a t i o n   " K e y c h a i n   S c r i p t i n g "  	 s e t   t w i t t e r _ k e y   t o   f i r s t   I n t e r n e t   k e y   o f   c u r r e n t   k e y c h a i n   w h o s e   s e r v e r   i s   " t w i t t e r . c o m "  	 s e t   t w i t t e r _ l o g i n   t o   q u o t e d   f o r m   o f   ( a c c o u n t   o f   t w i t t e r _ k e y   &   " : "   &   p a s s w o r d   o f   t w i t t e r _ k e y )  e n d   t e l l        l     ��������  ��  ��        l     ��  ��    8 2- pull out the username and password for a website     �     d -   p u l l   o u t   t h e   u s e r n a m e   a n d   p a s s w o r d   f o r   a   w e b s i t e   ! " ! i      # $ # I      �� %����  0 getcredentials getCredentials %  &�� & o      ���� 0 
servername 
serverName��  ��   $ O     % ' ( ' k    $ ) )  * + * r     , - , 6    . / . n    
 0 1 0 4   
�� 2
�� 
cint 2 m    	����  1 1    ��
�� 
pckc / =    3 4 3 1    ��
�� 
psrv 4 o    ���� 0 
servername 
serverName - o      ���� 0 ourkey ourKey +  5 6 5 r    ! 7 8 7 l    9���� 9 b     : ; : b     < = < n     > ? > 1    ��
�� 
pact ? o    ���� 0 ourkey ourKey = m     @ @ � A A  : ; n     B C B 1    ��
�� 
ppas C o    ���� 0 ourkey ourKey��  ��   8 o      ����  0 ourcredentials ourCredentials 6  D�� D L   " $ E E o   " #����  0 ourcredentials ourCredentials��   ( m      F F                                                                                  kscr   alis    �  Macintosh HD               ��BH+    6&Keychain Scripting.app                                           S����<        ����  	                ScriptingAdditions    ���      ���      6&  f  e  EMacintosh HD:System:Library:ScriptingAdditions:Keychain Scripting.app   .  K e y c h a i n   S c r i p t i n g . a p p    M a c i n t o s h   H D  8System/Library/ScriptingAdditions/Keychain Scripting.app  / ��   "  G H G l     ��������  ��  ��   H  I J I l     �� K L��   K A ;- shell out to curl to download the accounts listing in XML    L � M M v -   s h e l l   o u t   t o   c u r l   t o   d o w n l o a d   t h e   a c c o u n t s   l i s t i n g   i n   X M L J  N O N i     P Q P I      �� R����  0 downloadtweets downloadTweets R  S�� S o      ���� 0 credentials  ��  ��   Q k      T T  U V U l     �� W X��   W � �- set curlCommand to "/usr/bin/curl --silent --show-error --user " & quoted form of credentials & " https://twitter.com/statuses/friends_timeline.xml"    X � Y Y, -   s e t   c u r l C o m m a n d   t o   " / u s r / b i n / c u r l   - - s i l e n t   - - s h o w - e r r o r   - - u s e r   "   &   q u o t e d   f o r m   o f   c r e d e n t i a l s   &   "   h t t p s : / / t w i t t e r . c o m / s t a t u s e s / f r i e n d s _ t i m e l i n e . x m l " V  Z [ Z r      \ ] \ m      ^ ^ � _ _ � / u s r / b i n / c u r l   - - s i l e n t   - - s h o w - e r r o r   h t t p s : / / t w i t t e r . c o m / s t a t u s e s / p u b l i c _ t i m e l i n e . x m l ] o      ���� 0 curlcommand curlCommand [  ` a ` r     b c b I   	�� d��
�� .sysoexecTEXT���     TEXT d o    ���� 0 curlcommand curlCommand��   c o      ���� 0 results   a  e�� e L     f f o    ���� 0 results  ��   O  g h g l     ��������  ��  ��   h  i j i l     �� k l��   k + %- Use curl to download the user image    l � m m J -   U s e   c u r l   t o   d o w n l o a d   t h e   u s e r   i m a g e j  n o n i     p q p I      �� r���� 0 cacheuserpic cacheUserPic r  s�� s o      ���� 0 picurl picUrl��  ��   q k      t t  u v u l     �� w x��   w M G- todo: need to dissassemble url and create appropriate cache structure    x � y y � -   t o d o :   n e e d   t o   d i s s a s s e m b l e   u r l   a n d   c r e a t e   a p p r o p r i a t e   c a c h e   s t r u c t u r e v  z { z l     �� | }��   | 5 /- also down't redownload if we have it allready    } � ~ ~ ^ -   a l s o   d o w n ' t   r e d o w n l o a d   i f   w e   h a v e   i t   a l l r e a d y {   �  l     �� � ���   � 2 ,- should return the system path to the image    � � � � X -   s h o u l d   r e t u r n   t h e   s y s t e m   p a t h   t o   t h e   i m a g e �  � � � r      � � � b      � � � m      � � � � � H / u s r / b i n / c u r l   - - s i l e n t   - - s h o w - e r r o r   � o    ���� 0 picurl picUrl � o      ���� 0 curlcommand curlCommand �  � � � r     � � � I   �� ���
�� .sysoexecTEXT���     TEXT � o    ���� 0 curlcommand curlCommand��   � o      ���� 0 results   �  ��� � L     � � o    ���� 0 results  ��   o  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � Z T- use System Events to parse the XML and return a list of account names and balances    � � � � � -   u s e   S y s t e m   E v e n t s   t o   p a r s e   t h e   X M L   a n d   r e t u r n   a   l i s t   o f   a c c o u n t   n a m e s   a n d   b a l a n c e s �  � � � i     � � � I      �� ����� 0 	gettweets 	getTweets �  ��� � o      ���� 0 xmldata xmlData��  ��   � O     � � � � k    � � �  � � � r     � � � m     � � � � �   � o      ���� 
0 tweets   �  � � � r     � � � I   ���� �
�� .corecrel****      � null��   � �� � �
�� 
kocl � m   
 ��
�� 
xmld � �� ���
�� 
data � o    ���� 0 xmldata xmlData��   � o      ���� 0 xmldocument xmlDocument �  � � � r    % � � � 6   # � � � n     � � � 2   ��
�� 
xmle � n     � � � 4    �� �
�� 
xmle � m     � � � � �  s t a t u s e s � o    ���� 0 xmldocument xmlDocument � =   " � � � 1    ��
�� 
pnam � m    ! � � � � �  s t a t u s � o      ����  0 statuselements statusElements �  � � � X   & � ��� � � k   6 � � �  � � � l  6 6�� � ���   � [ U-set userName to value of (XML element "name" of XML element "user" of statusElement)    � � � � � - s e t   u s e r N a m e   t o   v a l u e   o f   ( X M L   e l e m e n t   " n a m e "   o f   X M L   e l e m e n t   " u s e r "   o f   s t a t u s E l e m e n t ) �  � � � r   6 < � � � n   6 : � � � 4   7 :�� �
�� 
xmle � m   8 9 � � � � �  u s e r � o   6 7���� 0 statuselement statusElement � o      ���� 0 userelement userElement �  � � � r   = G � � � n   = E � � � 1   A E��
�� 
valL � l  = A ����� � n   = A � � � 4   > A�� �
�� 
xmle � m   ? @ � � � � �  n a m e � o   = >���� 0 userelement userElement��  ��   � o      ���� 0 username userName �  � � � r   H T � � � n   H R � � � 1   N R��
�� 
valL � l  H N ����� � n   H N � � � 4   I N�� �
�� 
xmle � m   J M � � � � � " p r o f i l e _ i m a g e _ u r l � o   H I���� 0 userelement userElement��  ��   � o      ���� 0 userimageurl userImageUrl �  � � � r   U a � � � n   U _ � � � 1   [ _��
�� 
valL � l  U [ ����� � n   U [ � � � 4   V [�� �
�� 
xmle � m   W Z � � � � �  t e x t � o   U V���� 0 statuselement statusElement��  ��   � o      ���� 	0 tweet   �  � � � l  b b��������  ��  ��   �  � � � Z   b } � ����� � =  b i �  � n  b g I   c g��������  0 isgrowlrunning isGrowlRunning��  ��    f   b c  m   g h��
�� boovtrue � k   l y  n  l q I   m q�������� 0 growlregister growlRegister��  ��    f   l m �� n  r y	
	 I   s y��~� 0 growlnotify growlNotify  o   s t�}�} 0 username userName �| o   t u�{�{ 	0 tweet  �|  �~  
  f   r s��  ��  ��   �  l  ~ ~�z�y�x�z  �y  �x   �w r   ~ � b   ~ � b   ~ � b   ~ � b   ~ � o   ~ �v�v 
0 tweets   o    ��u�u 0 username userName m   � � �  :     o   � ��t�t 	0 tweet   m   � � �   o      �s�s 
0 tweets  �w  �� 0 statuselement statusElement � o   ) *�r�r  0 statuselements statusElements �  �q  L   � �!! o   � ��p�p 
0 tweets  �q   � m     ""�                                                                                  sevs   alis    �  Macintosh HD               ��BH+    �System Events.app                                                n��SL        ����  	                CoreServices    ���      ���      �  f  e  :Macintosh HD:System:Library:CoreServices:System Events.app  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��   � #$# l     �o�n�m�o  �n  �m  $ %&% l     �l'(�l  ' S M Checks if growl is running, should return true on success and false on error   ( �)) �   C h e c k s   i f   g r o w l   i s   r u n n i n g ,   s h o u l d   r e t u r n   t r u e   o n   s u c c e s s   a n d   f a l s e   o n   e r r o r& *+* i    ,-, I      �k�j�i�k  0 isgrowlrunning isGrowlRunning�j  �i  - k     .. /0/ O     121 r    343 ?    565 l   7�h�g7 I   �f8�e
�f .corecnte****       ****8 l   9�d�c9 6   :;: 2    �b
�b 
prcs; =   <=< 1   	 �a
�a 
pnam= m    >> �??  G r o w l H e l p e r A p p�d  �c  �e  �h  �g  6 m    �`�`  4 o      �_�_ 0 growlstatus GrowlStatus2 m     @@�                                                                                  sevs   alis    �  Macintosh HD               ��BH+    �System Events.app                                                n��SL        ����  	                CoreServices    ���      ���      �  f  e  :Macintosh HD:System:Library:CoreServices:System Events.app  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  0 A�^A L    BB o    �]�] 0 growlstatus GrowlStatus�^  + CDC l     �\�[�Z�\  �[  �Z  D EFE l     �YGH�Y  G   Growl notification   H �II &   G r o w l   n o t i f i c a t i o nF JKJ l     �XLM�X  L %  Registers as "Twitter Updates"   M �NN >   R e g i s t e r s   a s   " T w i t t e r   U p d a t e s "K OPO w      QRQ k      SS TUT i    VWV I      �W�V�U�W 0 growlregister growlRegister�V  �U  W O     XYX I   �T�SZ
�T .registernull��� ��� null�S  Z �R[\
�R 
appl[ m    ]] �^^  T w i t t e r   U p d a t e s\ �Q_`
�Q 
anot_ J    aa b�Pb m    	cc �dd 
 A l e r t�P  ` �Oef
�O 
dnote J    gg h�Nh m    ii �jj 
 A l e r t�N  f �Mk�L
�M 
iappk m    ll �mm " S c r i p t   E d i t o r . a p p�L  Y m     nn2                                                                                  GRRR   alis    �  Macintosh HD               ��BH+   E2�GrowlHelperApp.app                                              E2��R�M        ����  	                	Resources     ���      �Rˍ     E2� E2� E2� =�  �  YMacintosh HD:Library:PreferencePanes:Growl.prefPane:Contents:Resources:GrowlHelperApp.app   &  G r o w l H e l p e r A p p . a p p    M a c i n t o s h   H D  LLibrary/PreferencePanes/Growl.prefPane/Contents/Resources/GrowlHelperApp.app  / ��  U opo l     �K�J�I�K  �J  �I  p q�Hq i    rsr I      �Gt�F�G 0 growlnotify growlNotifyt uvu o      �E�E 0 grrtitle grrTitlev w�Dw o      �C�C  0 grrdescription grrDescription�D  �F  s O     xyx I   �B�Az
�B .notifygrnull��� ��� null�A  z �@{|
�@ 
name{ m    }} �~~ 
 A l e r t| �?�
�? 
titl o    	�>�> 0 grrtitle grrTitle� �=��
�= 
desc� o   
 �<�<  0 grrdescription grrDescription� �;��
�; 
appl� m    �� ���  T w i t t e r   U p d a t e s� �:��9
�: 
iurl� m    �� ��� 8 ~ / L i b r a r y / I m a g e s / t w i t t e r . p n g�9  y m     ��2                                                                                  GRRR   alis    �  Macintosh HD               ��BH+   E2�GrowlHelperApp.app                                              E2��R�M        ����  	                	Resources     ���      �Rˍ     E2� E2� E2� =�  �  YMacintosh HD:Library:PreferencePanes:Growl.prefPane:Contents:Resources:GrowlHelperApp.app   &  G r o w l H e l p e r A p p . a p p    M a c i n t o s h   H D  LLibrary/PreferencePanes/Growl.prefPane/Contents/Resources/GrowlHelperApp.app  / ��  �H  R2                                                                                  GRRR   alis    �  Macintosh HD               ��BH+   E2�GrowlHelperApp.app                                              E2��R�M        ����  	                	Resources     ���      �Rˍ     E2� E2� E2� =�  �  YMacintosh HD:Library:PreferencePanes:Growl.prefPane:Contents:Resources:GrowlHelperApp.app   &  G r o w l H e l p e r A p p . a p p    M a c i n t o s h   H D  LLibrary/PreferencePanes/Growl.prefPane/Contents/Resources/GrowlHelperApp.app  / ��  P ��� l     �8�7�6�8  �7  �6  � ��� l     �5���5  � # - actually execute this stuff   � ��� : -   a c t u a l l y   e x e c u t e   t h i s   s t u f f� ��� l     �4���4  � D >- set xmlData to downloadTweets(getCredentials("twitter.com"))   � ��� | -   s e t   x m l D a t a   t o   d o w n l o a d T w e e t s ( g e t C r e d e n t i a l s ( " t w i t t e r . c o m " ) )� ��� l   ��3�2� r    ��� I    
�1��0�1  0 downloadtweets downloadTweets� ��/� m    �.
�. boovfals�/  �0  � o      �-�- 0 xmldata xmlData�3  �2  � ��� l   ��,�+� r    ��� b    ��� m    �� ���   L a t e s t   U p d a t e s : � I    �*��)�* 0 	gettweets 	getTweets� ��(� o    �'�' 0 xmldata xmlData�(  �)  � o      �&�& 0 balancetext balanceText�,  �+  � ��� l     �%�$�#�%  �$  �#  � ��� l     �"���"  � $ - and put it on the big screen   � ��� < -   a n d   p u t   i t   o n   t h e   b i g   s c r e e n� ��!� l      � ���   � V P
tell application "Quicksilver"	activate	show large type balanceTextend tell    � ��� � 
 t e l l   a p p l i c a t i o n   " Q u i c k s i l v e r "  	 a c t i v a t e  	 s h o w   l a r g e   t y p e   b a l a n c e T e x t  e n d   t e l l  �!       
�����������  � ���������  0 getcredentials getCredentials�  0 downloadtweets downloadTweets� 0 cacheuserpic cacheUserPic� 0 	gettweets 	getTweets�  0 isgrowlrunning isGrowlRunning� 0 growlregister growlRegister� 0 growlnotify growlNotify
� .aevtoappnull  �   � ****� � $������  0 getcredentials getCredentials� ��� �  �� 0 
servername 
serverName�  � ���� 0 
servername 
serverName� 0 ourkey ourKey�  0 ourcredentials ourCredentials�  F�����
 @�	
� 
pckc
� 
cint�  
� 
psrv
�
 
pact
�	 
ppas� &� "*�,�k/�[�,\Z�81E�O��,�%��,%E�O�U� � Q������  0 downloadtweets downloadTweets� ��� �  �� 0 credentials  �  � ��� � 0 credentials  � 0 curlcommand curlCommand�  0 results  �  ^��
�� .sysoexecTEXT���     TEXT� �E�O�j E�O�� �� q���������� 0 cacheuserpic cacheUserPic�� ����� �  ���� 0 picurl picUrl��  � �������� 0 picurl picUrl�� 0 curlcommand curlCommand�� 0 results  �  ���
�� .sysoexecTEXT���     TEXT�� �%E�O�j E�O�� �� ����������� 0 	gettweets 	getTweets�� ����� �  ���� 0 xmldata xmlData��  � 	�������������������� 0 xmldata xmlData�� 
0 tweets  �� 0 xmldocument xmlDocument��  0 statuselements statusElements�� 0 statuselement statusElement�� 0 userelement userElement�� 0 username userName�� 0 userimageurl userImageUrl�� 	0 tweet  � " ������������� ���� ����� � ��� � �������
�� 
kocl
�� 
xmld
�� 
data�� 
�� .corecrel****      � null
�� 
xmle
�� 
pnam
�� 
cobj
�� .corecnte****       ****
�� 
valL��  0 isgrowlrunning isGrowlRunning�� 0 growlregister growlRegister�� 0 growlnotify growlNotify�� �� ��E�O*���� E�O���/�-�[�,\Z�81E�O k�[��l kh ���/E�O���/a ,E�O��a /a ,E�O��a /a ,E�O)j+ e  )j+ O)��l+ Y hO��%a %�%a %E�[OY��O�U� ��-����������  0 isgrowlrunning isGrowlRunning��  ��  � ���� 0 growlstatus GrowlStatus� @�����>��
�� 
prcs
�� 
pnam
�� .corecnte****       ****�� � *�-�[�,\Z�81j jE�UO�� ��W���������� 0 growlregister growlRegister��  ��  �  � n��]��c��i��l����
�� 
appl
�� 
anot
�� 
dnot
�� 
iapp�� 
�� .registernull��� ��� null�� � *����kv��kv��� 
U� ��s���������� 0 growlnotify growlNotify�� ����� �  ������ 0 grrtitle grrTitle��  0 grrdescription grrDescription��  � ������ 0 grrtitle grrTitle��  0 grrdescription grrDescription� ���}��������������
�� 
name
�� 
titl
�� 
desc
�� 
appl
�� 
iurl�� 

�� .notifygrnull��� ��� null�� � *��������� 
U� �����������
�� .aevtoappnull  �   � ****� k     ��  �� ��� �����  ��  ��  �  �  ������������� 0 cachedir cacheDir��  0 downloadtweets downloadTweets�� 0 xmldata xmlData�� 0 	gettweets 	getTweets�� 0 balancetext balanceText�� �E�O*fk+ E�O�*�k+ %E�ascr  ��ޭ