   M S B A M L   `   `   `  ���� C  ?FireWall, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:FireWallFireWall      FireWall.ResetIPWindow   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     (localclr-namespace:FireWall     a ]DevExpress.Xpf.Core.v15.1, Version=15.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a?dxe5http://schemas.devexpress.com/winfx/2008/xaml/editors  -     �Name$
  main�� � Title$ ResetIP��$	��250��$	��350�� � WindowStyle$
 None=� � 
ResizeMode$ NoResize=� � AllowsTransparency .  � WindowStartupLocation$ CenterScreen=� � Topmost . .��� .+��� 
 �� Top$ 0��$��41��$��0,0,0,1q����	#FFEFE2E2$��	0,0,0,209q����� *Width+ �� ElementName$
 main��	 �� UpdateSourceTrigger$	 PropertyChanged=�._��� -   
 ��Name$
 
SetIPTitle��$��重设防火墙IP��$
��Left=�   	FontBrush#���   $��18.667(�$��5,5,0,5q�$	��157�� �� Padding$ 10,1,0,0q��� $	��155������ *Width+$
 main��$	 PropertyChanged=�._�� .+��� -    ��Name$ IPStarttextBox_1��$
��Left=�$��25�� �� TextWrapping$ NoWrap=�$�� ��$	��Top=�$��28��$��Center=�$��1,1,0,1q�$��	85,62,0,0q� J� RenderTransformOrigin$ -0.071,0.08&��� -    ��Name$
 sep1��$��.��$
��Left=�$	��Top=�$��12��$��25��
�������$	��0,1q����	#FFABADB3$��	ExtraBold"�$ 0.333,-1.52&�$��
113,62,0,0q��� -   $ IPStarttextBox_2��$
��Left=�$��25��$ NoWrap=�$�� ��$	��Top=�$��28��$��Center=�$	��0,1q�$ 
1.357,0.52&�$��
125,62,0,0q��� -   $
 sep2��$��.��$
��Left=�$	��Top=�$��12��$��25��
�������$	��0,1q����	#FFABADB3$��	ExtraBold"�$ 
4.833,0.48&�$��
153,62,0,0q��� -   $ IPStarttextBox_3��$
��Left=�$��25��$ NoWrap=�$�� ��$	��Top=�$��28��$��Center=�$	��0,1q�$ 
1.357,0.52&�$��
165,62,0,0q��� -   $
 sep3��$��.��$
��Left=�$	��Top=�$��12��$��25��
�������$	��0,1q����	#FFABADB3$��	ExtraBold"�$ 
4.833,0.48&�$��
193,62,0,0q��� -	   $ IPStarttextBox_4��$
��Left=�$��25��$ NoWrap=�$�� ��$	��Top=�$��28��$��Center=�$��0,1,1,1q�$ 
1.357,0.52&�$��
205,62,0,0q��� -
   $ label��$��
IP地址 :��$��14(�$
��Left=�$��	10,59,0,0q�$	��Top=��� -    ��Name$	 yes��$��应  用��$
��Left=�$��30��$��
50,210,0,0q�$	��Top=�$��75��  MainButtonStyle#���  $��0q�#���     buttongroundbrush#���   �� 	IsDefault . ��Z� �� -   $ cancle��$��取  消��$
��Left=�$��30��$��215,210,0,0q�$	��Top=�$��75��#���  $��0q�#���   #���   . $ -0.067,0.667&���Z� 