   M S B A M L   `   `   `  ����C  ?FireWall, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:FireWallFireWall  5   	       FireWall.ResetIPWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   (localclr-namespace:FireWall     5   	   a ]DevExpress.Xpf.Core.v15.1, Version=15.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a?dxe5http://schemas.devexpress.com/winfx/2008/xaml/editors  5   	   -   5          �Name$
  main��5	   [    � Title$ ResetIP��6	   $	��250��6   $	��350��6&    � WindowStyle$
 None=�62    � 
ResizeMode$ NoResize=�6E    � AllowsTransparency .  � WindowStartupLocation$ CenterScreen=�6�    � Topmost . .��5
      � .+�5   
   �� 
 �� Top$ 0��6   $��41��6    $��0,0,0,1q�6{   ���	#FFEFE2E2$��	0,0,0,209q�6�   ��6,   �� *Width+ �� ElementName$
 main��	 �� UpdateSourceTrigger$	 PropertyChanged=�._�5      �� -   5        
 ��Name$
 
SetIPTitle��5      $��重设防火墙IP��6,   $
��Left=�6;      	FontBrush#���   6V   $��18.667(�6   $��5,5,0,5q�6�   $	��157��6�    �� Padding$ 10,1,0,0q�6�   5      �� 5   
   $	��155��6`   ��6   �� *Width+$
 main��$	 PropertyChanged=�._�5      � .+�5      �� -   5         ��Name$ IPStarttextBox_1��5      $
��Left=�64   $��25��6O    �� TextWrapping$ NoWrap=�6[   $�� ��6q   $	��Top=�6y   $��28��6�   $��Center=�6�   $��1,1,0,1q�6�   $��	85,62,0,0q�6   J� RenderTransformOrigin$ -0.071,0.08&�6  �� 5      -   5         ��Name$
 sep1��5      $��.��6&   $
��Left=�62   $	��Top=�6M   $��12��6e   $��25��6p   
�������$	��0,1q�6�   ���	#FFABADB3$��	ExtraBold"�6�   $ 0.333,-1.52&�6�   $��
113,62,0,0q�6�   �� 5      -   5        $ IPStarttextBox_2��5      $
��Left=�64   $��25��6O   $ NoWrap=�6[   $�� ��6q   $	��Top=�6y   $��28��6�   $��Center=�6�   $	��0,1q�6�   $ 
1.357,0.52&�6  $��
125,62,0,0q�6$  �� 5      -   5        $
 sep2��5      $��.��6&   $
��Left=�62   $	��Top=�6M   $��12��6e   $��25��6p   
�������$	��0,1q�6�   ���	#FFABADB3$��	ExtraBold"�6�   $ 
4.833,0.48&�6�   $��
153,62,0,0q�6�   �� 5      -   5        $ IPStarttextBox_3��5      $
��Left=�64   $��25��6O   $ NoWrap=�6[   $�� ��6q   $	��Top=�6y   $��28��6�   $��Center=�6�   $	��0,1q�6�   $ 
1.357,0.52&�6  $��
165,62,0,0q�6$  �� 5      -   5        $
 sep3��5      $��.��6&   $
��Left=�62   $	��Top=�6M   $��12��6e   $��25��6p   
�������$	��0,1q�6�   ���	#FFABADB3$��	ExtraBold"�6�   $ 
4.833,0.48&�6�   $��
193,62,0,0q�6�   �� 5      -	   5        $ IPStarttextBox_4��5      $
��Left=�64   $��25��6O   $ NoWrap=�6[   $�� ��6q   $	��Top=�6y   $��28��6�   $��Center=�6�   $��0,1,1,1q�6�   $ 
1.357,0.52&�6  $��
205,62,0,0q�6(  �� 5      -
   5        $ label��5      $��
IP地址 :��6'   $��14(�68   $
��Left=�6F   $��	10,59,0,0q�6a   $	��Top=�6t   5      5      �� 5   
   -   5         ��Name$	 yes��5      $��应  用��6   $
��Left=�6-   $��30��6H   $��
50,210,0,0q�6T   $	��Top=�6h   $��75��6�     MainButtonStyle#���  6�   $��0q�6�   #���   6�     buttongroundbrush#���  6	   �� 	IsDefault . ��6�   Z� 6L  �� 5   
   -   5        $ cancle��5      $��取  消��6!   $
��Left=�60   $��30��6K   $��215,210,0,0q�6W   $	��Top=�6l   $��75��6�   #���  6�   $��0q�6�   #���   6�   #���  6   . $ -0.067,0.667&�6d  ��6�   Z� 6d  5      5      