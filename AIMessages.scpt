FasdUAS 1.101.10   ��   ��    k             l     ��������  ��  ��        l     	���� 	 I    �� 
��
�� .sysoexecTEXT���     TEXT 
 m        �  n s q l i t e 3   - l i n e   ~ / L i b r a r y / M e s s a g e s / c h a t . d b   " S E L E C T   m . R O W I D ,   t e x t ,   M A X ( d a t e )   l a s t M e s s a g e D a t e ,   i s _ f r o m _ m e ,   h . i d   F R O M   m e s s a g e   m   I N N E R   J O I N   h a n d l e   h   O N   h . R O W I D = m . h a n d l e _ i d   G R O U P   B Y   h . R O W I D "��  ��  ��        l     ��������  ��  ��        l   	 ����  r    	    1    ��
�� 
rslt  o      ���� 0 shelloutput shellOutput��  ��        l     ��  ��      Initialize variables     �   *   I n i t i a l i z e   v a r i a b l e s      l  
  ����  r   
     m   
 ����    o      ���� 0 maxrowid maxROWID��  ��        l     ����   r     ! " ! m     # # � $ $   " o      ���� 0 maxrowidtext maxROWIDText��  ��     % & % l     ��������  ��  ��   &  ' ( ' l     �� ) *��   ) U O Split the shell output by empty lines to process each message block separately    * � + + �   S p l i t   t h e   s h e l l   o u t p u t   b y   e m p t y   l i n e s   t o   p r o c e s s   e a c h   m e s s a g e   b l o c k   s e p a r a t e l y (  , - , l    .���� . r     / 0 / n     1 2 1 2   ��
�� 
cpar 2 n    3 4 3 m    ��
�� 
ctxt 4 o    ���� 0 shelloutput shellOutput 0 o      ���� 0 messageblocks messageBlocks��  ��   -  5 6 5 l     ��������  ��  ��   6  7 8 7 l     �� 9 :��   9 &   Loop through each message block    : � ; ; @   L o o p   t h r o u g h   e a c h   m e s s a g e   b l o c k 8  < = < l   � >���� > X    � ?�� @ ? k   * � A A  B C B l  * *�� D E��   D 0 * Check if the message block contains ROWID    E � F F T   C h e c k   i f   t h e   m e s s a g e   b l o c k   c o n t a i n s   R O W I D C  G�� G Z   * � H I���� H E   * - J K J o   * +���� 0 amessageblock aMessageBlock K m   + , L L � M M 
 R O W I D I k   0 � N N  O P O l  0 0�� Q R��   Q   Extract ROWID    R � S S    E x t r a c t   R O W I D P  T U T r   0 A V W V I  0 =���� X
�� .sysooffslong    ��� null��   X �� Y Z
�� 
psof Y m   2 3 [ [ � \ \ 
 R O W I D Z �� ]��
�� 
psin ] o   6 7���� 0 amessageblock aMessageBlock��   W o      ���� 0 
rowidstart 
ROWIDStart U  ^ _ ^ r   B W ` a ` n   B S b c b 7  C S�� d e
�� 
ctxt d l  G O f���� f [   G O g h g o   H K���� 0 
rowidstart 
ROWIDStart h m   K N���� ��  ��   e m   P R������ c o   B C���� 0 amessageblock aMessageBlock a o      ���� 0 	rowidtext 	ROWIDText _  i j i r   X c k l k c   X _ m n m o   X [���� 0 	rowidtext 	ROWIDText n m   [ ^��
�� 
long l o      ���� 0 rowidnum ROWIDNum j  o p o l  d d��������  ��  ��   p  q r q l  d d�� s t��   s 6 0 Check if ROWID is greater than current maxROWID    t � u u `   C h e c k   i f   R O W I D   i s   g r e a t e r   t h a n   c u r r e n t   m a x R O W I D r  v�� v Z   d � w x���� w ?   d i y z y o   d g���� 0 rowidnum ROWIDNum z o   g h���� 0 maxrowid maxROWID x k   l � { {  | } | l  l l�� ~ ��   ~   Update maxROWID     � � �     U p d a t e   m a x R O W I D }  � � � r   l q � � � o   l o���� 0 rowidnum ROWIDNum � o      ���� 0 maxrowid maxROWID �  � � � l  r r��������  ��  ��   �  � � � l  r r�� � ���   � , & Extract text associated with maxROWID    � � � � L   E x t r a c t   t e x t   a s s o c i a t e d   w i t h   m a x R O W I D �  � � � r   r � � � � I  r ����� �
�� .sysooffslong    ��� null��   � �� � �
�� 
psof � m   t w � � � � �  t e x t   =   � �� ���
�� 
psin � o   z {���� 0 amessageblock aMessageBlock��   � o      ���� 0 	textstart 	textStart �  ��� � Z   � � � ����� � >  � � � � � o   � ����� 0 	textstart 	textStart � m   � �����   � k   � � � �  � � � l  � � � � � � r   � � � � � [   � � � � � o   � ����� 0 	textstart 	textStart � m   � �����  � o      ���� 0 	textstart 	textStart � 8 2 Adjusting the starting position to skip "text = "    � � � � d   A d j u s t i n g   t h e   s t a r t i n g   p o s i t i o n   t o   s k i p   " t e x t   =   " �  � � � r   � � � � � I  � ����� �
�� .sysooffslong    ��� null��   � �� � �
�� 
psof � m   � � � � � � �  l a s t M e s s a g e D a t e � �� ���
�� 
psin � o   � ����� 0 amessageblock aMessageBlock��   � o      ���� 0 textend textEnd �  � � � Z   � � � ����� � =  � � � � � o   � ����� 0 textend textEnd � m   � �����   � r   � � � � � m   � ������� � o      ���� 0 textend textEnd��  ��   �  ��� � r   � � � � � n   � � � � � 7  � ��� � �
�� 
ctxt � o   � ����� 0 	textstart 	textStart � l  � � ����� � \   � � � � � o   � ����� 0 textend textEnd � m   � ����� ��  ��   � o   � ����� 0 amessageblock aMessageBlock � o      ���� 0 maxrowidtext maxROWIDText��  ��  ��  ��  ��  ��  ��  ��  ��  ��  �� 0 amessageblock aMessageBlock @ o    ���� 0 messageblocks messageBlocks��  ��   =  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � U O Construct the SQLite query to find the text associated with the given maxROWID    � � � � �   C o n s t r u c t   t h e   S Q L i t e   q u e r y   t o   f i n d   t h e   t e x t   a s s o c i a t e d   w i t h   t h e   g i v e n   m a x R O W I D �  � � � l  � � ����� � r   � � � � � b   � � � � � b   � � � � � m   � � � � � � � � s q l i t e 3   ~ / L i b r a r y / M e s s a g e s / c h a t . d b   " S E L E C T   t e x t   F R O M   m e s s a g e   W H E R E   R O W I D   =   � o   � ����� 0 maxrowid maxROWID � m   � � � � � � �  " � o      ���� 0 shellscript shellScript��  ��   �  � � � l     �������  ��  �   �  � � � l     �~ � ��~   �   Execute the shell script    � � � � 2   E x e c u t e   t h e   s h e l l   s c r i p t �  � � � l  � � ��}�| � r   � � � � � I  � ��{ ��z
�{ .sysoexecTEXT���     TEXT � o   � ��y�y 0 shellscript shellScript�z   � o      �x�x 0 messagetext messageText�}  �|   �  ��w � l  �� ��v�u � Z   �� � ��t � � @   �
 � � � n   � � � � 1  �s
�s 
leng � o   ��r�r 0 messagetext messageText � m  	�q�q  � Z  � � ��p � � =   � � � n   � � � 7�o � �
�o 
ctxt � m  �n�n  � m  �m�m  � o  �l�l 0 messagetext messageText � m   � � � � �  [ o l l a m a ] � k  #� � �  � � � r  #* � � � m  #& � � � � � * / u s r / l o c a l / b i n / o l l a m a � o      �k�k 0 
ollamapath 
ollamaPath �  � � � r  +>   n  +: 7 .:�j
�j 
ctxt m  26�i�i 
 m  79�h�h�� o  +.�g�g 0 messagetext messageText o      �f�f 0 this_message   �  r  ?Z	 b  ?V

 b  ?R b  ?N b  ?J m  ?B � 
 e c h o   n  BI 1  EI�e
�e 
strq o  BE�d�d 0 this_message   m  JM �    |   o  NQ�c�c 0 
ollamapath 
ollamaPath m  RU �    r u n   p h i 3	 o      �b�b "0 terminalcommand terminalCommand  r  [f I [b�a�`
�a .sysoexecTEXT���     TEXT o  [^�_�_ "0 terminalcommand terminalCommand�`   o      �^�^ 0 commandoutput commandOutput   I gn�]!�\
�] .sysoexecTEXT���     TEXT! m  gj"" �##  p k i l l   - f   o l l a m a�\    $%$ I ov�[&�Z
�[ .sysoexecTEXT���     TEXT& m  or'' �((  p k i l l   - f   O l l a m a�Z  % )*) I w~�Y+�X
�Y .sysoexecTEXT���     TEXT+ m  wz,, �-- , p k i l l   - f   O l l a m a   H e l p e r�X  * .�W. O  �/0/ k  ��11 232 r  ��454 m  ��66 �77  ( 9 5 4 )   5 5 4 - 7 5 8 05 o      �V�V 0 targetbuddy targetBuddy3 898 r  ��:;: 6 ��<=< n  ��>?> 1  ���U
�U 
ID  ? 4���T@
�T 
icsv@ m  ���S�S = =  ��ABA 1  ���R
�R 
stypB m  ���Q
�Q stypsims; o      �P�P 0 targetservice targetService9 CDC r  ��EFE n  ��GHG 4  ���OI
�O 
presI o  ���N�N 0 targetbuddy targetBuddyH 5  ���MJ�L
�M 
icsvJ o  ���K�K 0 targetservice targetService
�L kfrmID  F o      �J�J 0 thebuddy theBuddyD K�IK I ���HLM
�H .ichtsendnull���     ****L o  ���G�G 0 commandoutput commandOutputM �FN�E
�F 
TO  N o  ���D�D 0 thebuddy theBuddy�E  �I  0 m  �OO�                                                                                      @ alis    8  Macintosh HD               �_JBD ����Messages.app                                                   �����_J        ����  
 cu             Applications  #/:System:Applications:Messages.app/     M e s s a g e s . a p p    M a c i n t o s h   H D   System/Applications/Messages.app  / ��  �W  �p   � I ���CP�B
�C .ascrcmnt****      � ****P m  ��QQ �RR ( o l l a m a   n o t   i n i t i a t e d�B  �t   � I ���AS�@
�A .ascrcmnt****      � ****S m  ��TT �UU " m e s s a g e   t o o   s h o r t�@  �v  �u  �w       �?VW�?  V �>
�> .aevtoappnull  �   � ****W �=X�<�;YZ�:
�= .aevtoappnull  �   � ****X k    �[[  \\  ]]  ^^  __  ,``  <aa  �bb  �cc  ��9�9  �<  �;  Y �8�8 0 amessageblock aMessageBlockZ A �7�6�5�4 #�3�2�1�0�/�.�- L�, [�+�*�)�(�'�&�%�$ ��# ��" � ��!� �� � �������"',O6���d��������Q�T
�7 .sysoexecTEXT���     TEXT
�6 
rslt�5 0 shelloutput shellOutput�4 0 maxrowid maxROWID�3 0 maxrowidtext maxROWIDText
�2 
ctxt
�1 
cpar�0 0 messageblocks messageBlocks
�/ 
kocl
�. 
cobj
�- .corecnte****       ****
�, 
psof
�+ 
psin�* 
�) .sysooffslong    ��� null�( 0 
rowidstart 
ROWIDStart�' �& 0 	rowidtext 	ROWIDText
�% 
long�$ 0 rowidnum ROWIDNum�# 0 	textstart 	textStart�" 0 textend textEnd�! 0 shellscript shellScript�  0 messagetext messageText
� 
leng� � 0 
ollamapath 
ollamaPath� 
� 0 this_message  
� 
strq� "0 terminalcommand terminalCommand� 0 commandoutput commandOutput� 0 targetbuddy targetBuddy
� 
icsv
� 
ID  d  
� 
styp
� stypsims� 0 targetservice targetService
� kfrmID  
� 
pres� 0 thebuddy theBuddy
� 
TO  
� .ichtsendnull���     ****
� .ascrcmnt****      � ****�:��j O�E�OjE�O�E�O��-�-E�O ��[��l kh  �� �*��a �a  E` O�[�\[Z_ a \Zi2E` O_ a &E` O_ � p_ E�O*�a a �a  E` O_ j J_ a E` O*�a a �a  E` O_ j  
iE` Y hO�[�\[Z_ \Z_ l2E�Y hY hY h[OY�EOa �%a %E` O_ j E` O_ a  ,a ! �_ [�\[Zk\Za !2a "  �a #E` $O_ [�\[Za %\Zi2E` &Oa '_ &a (,%a )%_ $%a *%E` +O_ +j E` ,Oa -j Oa .j Oa /j Oa 0 La 1E` 2O*a 3k/a 4,a 5[a 6,\Za 781E` 8O*a 3_ 8a 90a :_ 2/E` ;O_ ,a <_ ;l =UY 	a >j ?Y 	a @j ? ascr  ��ޭ