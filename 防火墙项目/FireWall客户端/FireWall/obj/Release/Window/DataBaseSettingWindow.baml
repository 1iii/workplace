   M S B A M L   `   `   `  ���� C  ?FireWall, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:FireWallFireWall  $    FireWall.DataBaseSettingWindow   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     (localclr-namespace:FireWall     -     �Name$
  main�� � Title$ 数据库设置��$	��250��$	��350�� � WindowStyle$
 None=� � 
ResizeMode$ NoResize=� � AllowsTransparency .  � WindowStartupLocation$ CenterScreen=� � Topmost . .���    backgroundbrush1#���   .+�� -   $	��Tip��$y�Visible=�.+��� -    ��Name$ CloseButton��$�� ��$��Right=�  MainButtonStyle#���  
���   �$��24��  CloseButtonBrush#���  $��24��$	��Top=�$��10.667(��� $��提示��$
��Left=�  	FontBrush#���  $��17(�$��
10,5,0,210q�$��66���� $��1��$��0,0,0,1q����	#FFEFE2E2$��
0,41,0,208q��� $E��?由于你是第一次使用，请首先配置数据库信息！��#���  $��16(�$
��Wrap=�$	��300��$	��100��$��Center=�$��Center=��� -   $	 Yes��$��确  定��$��Right=�$��	0,0,25,20q�$��75��#���  $��0q�#���    buttongroundbrush#���   �� 	IsDefault . $��30��$��Bottom=���Z� � -   $��DatabaseSettingGrid��$y�	Collapsed=�.+��� $��数据库信息��$
��Left=�#���  $��17(�$��
10,5,0,210q�$	��116���� $��数据库名称��$��30��$	��100��$��	18,50,0,0q�#���  $	��Top=�$��14(�$
��Left=��� $��主机名或IP地址��$��	18,85,0,0q�#���  $��30��$	��Top=�$��14(�$
��Left=��� $��	用户名��$��30��$	��100��$��
18,120,0,0q�#���  $	��Top=�$��14(�$
��Left=��� $��密码��$	��100��$��
18,155,0,0q�#���  $��30��$	��Top=�$��14(�$
��Left=��� -   	 ��Name$	 DataBaseBox��$	��200��$��30��$��126,50,24,0q�$��Center=�
���   �$��14(�$	��Top=��� -   $	 DataSourceBox��$	��200��$��30��$��126,85,24,0q�$��Center=�
���   �$��14(�$	��Top=��� -   $	 	UserIDBox��$	��200��$��30��$��126,120,24,0q�$��Center=�
���   �$��14(�$	��Top=��� -	   $	 PassWordBox��$	��200��$��126,155,24,0q�$��Center=�
���   �$��14(�$��30��$	��Top=��� -
   $ ClearButton��$��清  空��$��30��$��75��$��138,200,0,20q�$
��Left=�#���  $��14(�#���  �� -   $ 
SaveButton��$��保  存��$��30��$��75��#���  $��	0,0,25,20q�$��Right=�$��14(�#���  $��Bottom=�