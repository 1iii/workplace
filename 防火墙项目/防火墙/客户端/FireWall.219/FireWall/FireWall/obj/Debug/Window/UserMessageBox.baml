   M S B A M L   `   `   `  ����C  ?FireWall, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:FireWallFireWall  5   	       FireWall.UserMessageBox   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   (localclr-namespace:FireWall     5   	   -   5          �Name$
  main��5   |   $	��250��6:   $	��350��6G    � WindowStyle$
 None=�6S    � 
ResizeMode$ NoResize=�6f    � AllowsTransparency .  � WindowStartupLocation$ CenterScreen=�6�    � Topmost .  � Title 6	   ��  �� ElementName$ lblTitle�� �� Path$
 Text�	 � Triggers	 5	      :� 5
   
   
 :� RoutedEvent$
 Window.Loaded��6   .[�5      �� .��5      �� -   5         g�Name$ sbOpShow��5      .��5      W�  �� 
TargetName$
 main��6&    �� TargetProperty$ Opacity�6C    W� From$ 0X�6g   	 W� To$ 1X�6p    g� Duration$ 0:0:0.1D�6w   5      5      5      .��5      �� 
����  �$	��0.5q�6    ._�5   
   ��    backgroundbrush1#���   6   .+�5      �� 
 �� Top$ 0��6   $��41��6$   $��0,0,0,1q�6   ���	#FFEFE2E2��60   �� *Width+$
 main�� �� UpdateSourceTrigger$ PropertyChanged=�._�5      �� -   5         ��Name$ lblTitle��5      $
��test��6.   $
��Left=�6:     	FontBrush#���  6U   $��18.667(�6~   $��5,5,0,5q�6�   $	��157��6�    �� Padding$ 10,1,0,0q�6�   5      �� 5      $ 41��6   $	��155��6t   ��6%   �� *Width+$
 main��$ PropertyChanged=�._�5      �� -   5        $ lblMsg��5      #���  6,   $��16(�6U   $
��Wrap=�6c   $
��test��6w   $	��300��6�   $	��100��6�   $��Center=�6�    �� Left$	 135��6�   $ 74��6�   $��Center=�6�   5      �� 5      -   5         ��Name$ Confirm��5      $y�	Collapsed=�6&   $��54��6=   $	��350��6I   $	 196��6U   ._�5      �� .+�5      �� -   5         ��Name$
 Yes1��5      $��确 定��6+   $
��Left=�69   $��30��6T   $	��Top=�6`   $��75��6x     MainButtonStyle#���  6�   $��0q�6�   #���  6�     buttongroundbrush#���  6  $	 165��6D  $ 10��6V   �� 	IsDefault . ��6�   Z� 6f  �� 5      -   5        $ No��5      $��取 消��6)   $
��Left=�67   $��30��6R   $	��Top=�6^   $��75��6v   #���  6�   $��0q�6�   #���  6�   #���  6�   $	 260��6A  $ 10��6S   �� IsCancel . ��6�   Z� 6c  5      5      �� 5       -   5        $	 Tip��5       $y�Visible=�6"   $��54��67   $	��350��6C   $	 196��6O   ._�5!      �� -	   5        $
 Yes2��5!      $��确 定��6'   $
��Left=�65   $��30��6P   $��
227,10,0,0q�6\   $	��Top=�6p   $��75��6�   #���  6�   $��0q�6�   #���  6�   #���  6   . ��6�   Z� 6T  5"      5#      5$      5%      