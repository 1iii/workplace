   M S B A M L   `   `   `  ����C  ?FireWall, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:FireWallFireWall  5   	       FireWall.AddUser   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   (localclr-namespace:FireWall     5   	   a ]DevExpress.Xpf.Core.v15.1, Version=15.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a?dxe5http://schemas.devexpress.com/winfx/2008/xaml/editors  5   	   -   5          � Title$  添加用户��5	   	   $	��250��6   $	��350��6$    � WindowStyle$
 None=�60    � 
ResizeMode$ NoResize=�6C      backgroundbrush1#���   6Y    � Topmost .  � WindowStartupLocation$ CenterScreen=�6�   .��5
      � .+�5   
   �� $��添加用户��6   $
��Left=�6     	FontBrush#���  6:   $��17(�6c   $��
10,5,0,210q�6q   $	��116��6�   �� 5   
   $��	用户名��6   $��30��6   $	��100��6*   $��20,50,230,0q�66   #���  6K   $	��Top=�6t   $��14(�6�   �� 5   
   $��密码��6   $	��100��6   $��20,85,230,0q�6)   #���  6>   $��30��6g   $	��Top=�6s   $��14(�6�   �� 5   
   $��重复密码��6   $��30��6   $	��100��6+   $��20,120,230,0q�67   #���  6M   $	��Top=�6v   $��14(�6�   �� 5   
   $��权限��6   $	��100��6   $��20,155,230,0q�6)   #���  6?   $��30��6h   $	��Top=�6t   $��14(�6�   �� 5   
   -   5         ��Name$ textBox��5      $��30��6#   $��121,50,29,0q�6/    �� TextWrapping$
 Wrap=�6D   $	��Top=�6X   $��Center=�6p   $��14(�6�   G� 5   
   -   5         G�Name$ passwordBox��5      $��121,85,29,0q�6+   $	��Top=�6@   $��30��6X   $��Center=�6d   $��14(�6�   G� 5   
   -   5        $ passwordBox1��5      $��121,120,29,0q�6,   $	��Top=�6B   $��30��6Z   $��Center=�6f   $��14(�6�   )  #DevExpress.Xpf.Editors.ComboBoxEdit  5   
   -   5          Name$ comboBox��5      $��121,155,29,0q�6-   $	��Top=�6C   $��30��6[   $��Center=�6g   $��14(�6�   �� 5   
   -   5        	 ��Name$	 CloseButton��5      $�� ��6&   $��Right=�61     MainButtonStyle#���  6M   $��28��6w     CloseButtonBrush#���  6�   $��28��6�   $	��Top=�6�   
 J� RenderTransformOrigin$
 	0.722,0.9&�6�   $��10.667(�6  �� 5   
   -   5        $	 OKButton��5      $��确  定��6#   $��Right=�63   $��	0,0,25,20q�6O   #���  6b   $��75��6�     buttongroundbrush#���  6�   #���  6�   $��14(�6   $��30��6.  $��Bottom=�6:  ��6�   Z� 6:  5      5      