FasdUAS 1.101.10   ��   ��    k             l     ��������  ��  ��        l     �� 	 
��   	 K E TODO: get the value of using 'enable mouse keys' and activate if not    
 �   �   T O D O :   g e t   t h e   v a l u e   o f   u s i n g   ' e n a b l e   m o u s e   k e y s '   a n d   a c t i v a t e   i f   n o t      l     ����  O         k           I   	������
�� .miscactvnull��� ��� null��  ��        I  
 �� ��
�� .miscmvisnull���     ****  n   
     4    �� 
�� 
xppa  m       �   
 M o u s e  5   
 �� ��
�� 
xppb  m       �   H c o m . a p p l e . p r e f e r e n c e . u n i v e r s a l a c c e s s
�� kfrmID  ��         l   ��������  ��  ��      !�� ! I   �� "��
�� .sysodelanull��� ��� nmbr " m    ���� ��  ��    m      # #�                                                                                  sprf  alis    R  Macintosh HD                   BD ����System Preferences.app                                         ����            ����  
 cu             Applications  &/:Applications:System Preferences.app/  .  S y s t e m   P r e f e r e n c e s . a p p    M a c i n t o s h   H D  #Applications/System Preferences.app   / ��  ��  ��     $ % $ l      �� & '��   &�� NOT WORKINGtell application "System Events"	tell process "System Preferences"
	    activate		--set isMouseKeysEnabled to the value of (first checkbox where its accessibility description = "Enable Mouse Keys")		set isMouseKeysEnabled to (first checkbox where its accessibility description = "Enable Mouse Keys") enabled		display dialog "is mouse keys enabled: " & isMouseKeysEnabled	end tellend tell
    ' � ( (.   N O T   W O R K I N G  t e l l   a p p l i c a t i o n   " S y s t e m   E v e n t s "  	 t e l l   p r o c e s s   " S y s t e m   P r e f e r e n c e s " 
 	         a c t i v a t e  	 	 - - s e t   i s M o u s e K e y s E n a b l e d   t o   t h e   v a l u e   o f   ( f i r s t   c h e c k b o x   w h e r e   i t s   a c c e s s i b i l i t y   d e s c r i p t i o n   =   " E n a b l e   M o u s e   K e y s " )  	 	 s e t   i s M o u s e K e y s E n a b l e d   t o   ( f i r s t   c h e c k b o x   w h e r e   i t s   a c c e s s i b i l i t y   d e s c r i p t i o n   =   " E n a b l e   M o u s e   K e y s " )   e n a b l e d  	 	 d i s p l a y   d i a l o g   " i s   m o u s e   k e y s   e n a b l e d :   "   &   i s M o u s e K e y s E n a b l e d  	 e n d   t e l l  e n d   t e l l 
 %  )�� ) l      �� * +��   * S Mrepeat 50 times	tell application "System Events" to key code 84end repeat    + � , , �  r e p e a t   5 0   t i m e s  	 t e l l   a p p l i c a t i o n   " S y s t e m   E v e n t s "   t o   k e y   c o d e   8 4  e n d   r e p e a t ��       �� - .��   - ��
�� .aevtoappnull  �   � **** . �� /���� 0 1��
�� .aevtoappnull  �   � **** / k      2 2  ����  ��  ��   0   1 	 #���� ���� ����
�� .miscactvnull��� ��� null
�� 
xppb
�� kfrmID  
�� 
xppa
�� .miscmvisnull���     ****
�� .sysodelanull��� ��� nmbr�� � *j O*���0��/j Okj U ascr  ��ޭ