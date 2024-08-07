FasdUAS 1.101.10   ��   ��    k             l     ��  ��    ? 9 This checks if UI Scripting is enabled which is required     � 	 	 r   T h i s   c h e c k s   i f   U I   S c r i p t i n g   i s   e n a b l e d   w h i c h   i s   r e q u i r e d   
  
 l     ��  ��    b \ src: http://www.mactech.com/articles/mactech/Vol.21/21.06/UserInterfaceScripting/index.html     �   �   s r c :   h t t p : / / w w w . m a c t e c h . c o m / a r t i c l e s / m a c t e c h / V o l . 2 1 / 2 1 . 0 6 / U s e r I n t e r f a c e S c r i p t i n g / i n d e x . h t m l      l    
 ����  O    
    r    	    1    ��
�� 
uien  o      ���� ,0 isuiscriptingenabled isUIScriptingEnabled  m       �                                                                                  sevs  alis    �  Macintosh HD               ��+�H+    System Events.app                                               +��7��        ����  	                CoreServices    ��d      �8'7         �   �  :Macintosh HD:System:Library:CoreServices:System Events.app  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  ��  ��        l   1 ����  Z    1  ����  =        o    ���� ,0 isuiscriptingenabled isUIScriptingEnabled  m    ��
�� boovfals  O    -    k    ,      ! " ! I   ������
�� .miscactvnull��� ��� null��  ��   "  # $ # r    # % & % 4    �� '
�� 
xppb ' m     ( ( � ) ) H c o m . a p p l e . p r e f e r e n c e . u n i v e r s a l a c c e s s & 1    "��
�� 
xpcp $  * + * I  $ )�� ,��
�� .sysodlogaskr        TEXT , m   $ % - - � . .r Y o u r   s y s t e m   i s   n o t   p r o p e r l y   c o n f i g u r e d   t o   r u n   t h i s   s c r i p t .     
                   P l e a s e   s e l e c t   t h e   " E n a b l e   a c c e s s   f o r   a s s i s t i v e   d e v i c e s "   
                   c h e c k b o x   a n d   t r i g g e r   t h e   s c r i p t   a g a i n   t o   p r o c e e d .��   +  /�� / L   * ,����  ��    m     0 0�                                                                                  sprf  alis    |  Macintosh HD               ��+�H+    %System Preferences.app                                          +��k/�        ����  	                Applications    ��d      �kh      %  0Macintosh HD:Applications:System Preferences.app  .  S y s t e m   P r e f e r e n c e s . a p p    M a c i n t o s h   H D  #Applications/System Preferences.app   / ��  ��  ��  ��  ��     1 2 1 l     ��������  ��  ��   2  3 4 3 l     �� 5 6��   5   begin actual code here    6 � 7 7 .   b e g i n   a c t u a l   c o d e   h e r e 4  8 9 8 l     ��������  ��  ��   9  : ; : l  2 5 <���� < r   2 5 = > = m   2 3���� 	 > o      ���� 0 tracking  ��  ��   ;  ? @ ? l     ��������  ��  ��   @  A B A l  6 J C���� C O   6 J D E D k   : I F F  G H G I  : ?������
�� .miscactvnull��� ��� null��  ��   H  I�� I r   @ I J K J 5   @ E�� L��
�� 
xppb L m   B C M M � N N 4 c o m . a p p l e . p r e f e r e n c e . m o u s e
�� kfrmID   K 1   E H��
�� 
xpcp��   E m   6 7 O O�                                                                                  sprf  alis    |  Macintosh HD               ��+�H+    %System Preferences.app                                          +��k/�        ����  	                Applications    ��d      �kh      %  0Macintosh HD:Applications:System Preferences.app  .  S y s t e m   P r e f e r e n c e s . a p p    M a c i n t o s h   H D  #Applications/System Preferences.app   / ��  ��  ��   B  P Q P l     ��������  ��  ��   Q  R S R l     �� T U��   T ' ! need a delay before UI Scripting    U � V V B   n e e d   a   d e l a y   b e f o r e   U I   S c r i p t i n g S  W X W l  K P Y���� Y I  K P�� Z��
�� .sysodelanull��� ��� nmbr Z m   K L���� ��  ��  ��   X  [ \ [ l     ��������  ��  ��   \  ] ^ ] l  Q u _���� _ O   Q u ` a ` O   U t b c b k   ^ s d d  e f e l  ^ ^�� g h��   g 5 / This returns the name of "slider 1" used below    h � i i ^   T h i s   r e t u r n s   t h e   n a m e   o f   " s l i d e r   1 "   u s e d   b e l o w f  j k j l  ^ ^�� l m��   l - ' get name of slider 1 of window "Mouse"    m � n n N   g e t   n a m e   o f   s l i d e r   1   o f   w i n d o w   " M o u s e " k  o�� o r   ^ s p q p o   ^ _���� 0 tracking   q n       r s r 1   n r��
�� 
valL s n   _ n t u t 4   g n�� v
�� 
sliI v m   j m w w � x x  T r a c k i n g u 4   _ g�� y
�� 
cwin y m   c f z z � { { 
 M o u s e��   c 4   U [�� |
�� 
prcs | m   W Z } } � ~ ~ $ S y s t e m   P r e f e r e n c e s a m   Q R  �                                                                                  sevs  alis    �  Macintosh HD               ��+�H+    System Events.app                                               +��7��        ����  	                CoreServices    ��d      �8'7         �   �  :Macintosh HD:System:Library:CoreServices:System Events.app  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  ��  ��   ^  � � � l     ��������  ��  ��   �  ��� � l  v � ����� � O  v � � � � I  z ������
�� .aevtquitnull��� ��� null��  ��   � m   v w � ��                                                                                  sprf  alis    |  Macintosh HD               ��+�H+    %System Preferences.app                                          +��k/�        ����  	                Applications    ��d      �kh      %  0Macintosh HD:Applications:System Preferences.app  .  S y s t e m   P r e f e r e n c e s . a p p    M a c i n t o s h   H D  #Applications/System Preferences.app   / ��  ��  ��  ��       �� � ���������   � ��������
�� .aevtoappnull  �   � ****�� ,0 isuiscriptingenabled isUIScriptingEnabled�� 0 tracking  ��   � �� ����� � ���
�� .aevtoappnull  �   � **** � k     � � �   � �   � �  : � �  A � �  W � �  ] � �  �����  ��  ��   �   �  ���� 0���� (�� -������ M������ }�� z�� w����
�� 
uien�� ,0 isuiscriptingenabled isUIScriptingEnabled
�� .miscactvnull��� ��� null
�� 
xppb
�� 
xpcp
�� .sysodlogaskr        TEXT�� 	�� 0 tracking  
�� kfrmID  
�� .sysodelanull��� ��� nmbr
�� 
prcs
�� 
cwin
�� 
sliI
�� 
valL
�� .aevtquitnull��� ��� null�� �� *�,E�UO�f  !� *j O*��/*�,FO�j 	OhUY hO�E�O� *j O*���0*�,FUOkj O� !*�a / �*a a /a a /a ,FUUO� *j U
�� boovtrue�� 	��  ascr  ��ޭ