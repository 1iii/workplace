   M S B A M L   `   `   `  ����C  ?FireWall, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:FireWallFireWall  5   	       FireWall.RenameWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   (localclr-namespace:FireWall     5   	   a ]DevExpress.Xpf.Core.v15.1, Version=15.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a?dxe5http://schemas.devexpress.com/winfx/2008/xaml/editors  5   	   -   5          � Title$  添加PLC设备��5	   	   $	��190��6   $	��350��6&    � 
ResizeMode$ NoResize=�62    � WindowStyle$
 None=�6H      backgroundbrush1#���   6[    � WindowStartupLocation$ CenterScreen=�6�   .��5
      � .+�5   
   �� $��添加PLC设备��6   $
��Left=�6"     	FontBrush#���  6=   $��17(�6f   $��10,5,0,0q�6t   $	��116��6�   $��35��6�   $	��Top=�6�   �� 5   
   $��设备类型��6   $��30��6   $��42,50,241,0q�6+   #���  6@   $	��Top=�6i   $��14(�6�   )  #DevExpress.Xpf.Editors.ComboBoxEdit  5   
   -   5        $��PLCtype��5      $
��Left=�6*   '  !DevExpress.Xpf.Editors.ButtonEdit   IsTextEditable$ FalseX�6E   $��
129,50,0,0q�6\   $	��Top=�6p   $	��125��6�   $��25��6�   �� 5   
   $��	设备 IP��6   $��30��6    $��42,90,241,0q�6,   #���  6A   $	��Top=�6j   $��14(�6�   �� 5   
   -   5         ��Name$ IPtextBox_1��5      $
��Left=�6'   $��25��6B   $��
129,90,0,0q�6N    �� TextWrapping$
 Wrap=�6b   $�� ��6v   $	��Top=�6~   $��28��6�   $��Center=�6�   $��1,1,0,1q�6�   6�   �� 5   
   -   5         ��Name$ separatorlabel1��5      $��.��6)   $
��Left=�65   $��
154,90,0,0q�6P   $	��Top=�6d   $��12��6|   $��25��6�   
�������$	��0,1q�6�   ���	#FFABADB3$��	ExtraBold"�6�   �� 5   
   -   5        $ IPtextBox_2��5      $
��Left=�6'   $��25��6B   $��
162,90,0,0q�6N   $
 Wrap=�6b   $�� ��6v   $	��Top=�6~   $��28��6�   $��Center=�6�   $	��0,1q�6�   6�   �� 5   
   -   5        $ separatorlabel2��5      $��.��6)   $
��Left=�65   $��
186,90,0,0q�6P   $	��Top=�6d   $��12��6|   $��25��6�   
�������$	��0,1q�6�   ���	#FFABADB3$��	ExtraBold"�6�   �� 5   
   -   5        $ IPtextBox_3��5      $
��Left=�6'   $��25��6B   $��
194,90,0,0q�6N   $
 Wrap=�6b   $�� ��6v   $	��Top=�6~   $��28��6�   $��Center=�6�   $	��0,1q�6�   6�   �� 5   
   -   5        $ separatorlabel3��5      $��.��6)   $
��Left=�65   $��
218,90,0,0q�6P   $	��Top=�6d   $��12��6|   $��25��6�   
�������$	��0,1q�6�   ���	#FFABADB3$��	ExtraBold"�6�   �� 5   
   -	   5        $ IPtextBox_4��5      $
��Left=�6'   $��25��6B   $��
226,90,0,0q�6N   $
 Wrap=�6b   $�� ��6v   $	��Top=�6~   $��28��6�   $��Center=�6�   $��0,1,1,1q�6�   6�   �� 5   
   -
   5         ��Name$ OKButton��5      	 �� 	IsDefault	 . $��确  定��64   $��Right=�6C   $��
0,140,25,0q�6`     MainButtonStyle#���  6t   $��75��6�     buttongroundbrush#���  6�   #���  6�   $��14(�6  $��30��6)  $	��Top=�65  5      5      