   M S B A M L   `   `   `  ���� C  ?FireWall, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:FireWallFireWall      FireWall.LoginWindow   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     (localclr-namespace:FireWall     -     � Title$  登录��$��387.583��$��556.727�� � WindowStyle$
 None=�   backgroundbrush1#���    � 
ResizeMode$ NoResize=� � WindowStartupLocation$ CenterScreen=�.��� -    �Name$
 grid�� � RowDefinitions �� $
��143* ��� $
��245* � � ColumnDefinitions �� .+��� -    ��Name$ image��$��76��$��	54,29,0,0q�$	��Top=�$
��Left=�$��76��$��/image/logo.png���� -    ��Name$ label��$'��!工业防火墙配置监控系统��$��130,30,60,0q�$��32(�
���   �$��Center=�$��75��$	��Top=���Z� �� -   	 ��Name$	 CloseButton��$�� ��$��Right=�  MainButtonStyle#���  $��24��  CloseButtonBrush#���  $��24��$	��Top=�$��10.667(�� -   $ 	LoginGrid��$��0,0,0,0q�$��1��$y�Visible=�.+��� -   $ label1��$��用 户 名��$��
126,20,0,0q�
���   �$��Center=�$��Center=�$��20(�$	��Top=�$
��Left=�$	��113���� -   $ label2��$��密     码��$��
126,75,0,0q�$	��Top=�
���   �$��Center=�$��Center=�$��20(�$
��Left=�$	��113���� -	   
 ��Name$
 userBox��$��239,20,123,0q� �� TextWrapping$
 Wrap=�$��36��$	��Top=�$��Center=�$��16(�G� -
    G�Name$ passwordBox��$��239,75,123,0q�$��16(�$��Center=�$��36��$	��Top=��� -   $	 loginbutton��$��
登    录��$��148,147,123,0q�#���    backgroundbrush#���   �� 	IsDefault . 
���   �$��16(�$
��Bold"�$��39��$	��Top=�� -   $ LoginSuccess��$y�	Collapsed=�$��0,0,0,0q�$��1��.+��� $��欢迎��$��Center=�$��47��$��0,10,0,0q�$	��Top=�  	FontBrush#���  $��21.333(�$��Center=��� -   $ Welcome��$��	用户名��$��41��$��0,57,0,0q�$	��Top=�#���  $��18.667(�$��Center=�$��Center=�� -   $ 
LayoutRoot��$y�Visible=�
������ $��Center=�$��Center=�$��245,124,252,61q�$��60��$��60��z��� -   SpinnerScale�� �� ScaleX$	 1.0Q� �� ScaleY$	 1.0Q�.+���  J� RenderTransformOrigin$ 0.5,0.5&�$��Center=�$��Center=�$��60��$��60��.+�A� $��4.835��$��4.862�� �� Left$ 10.0848��
 �� Top$ 4.88179�� �� Stretch$
 Fill=�
����  � J� Opacity$	 1.0Q�A� $��4.835��$��4.862��$ 1.43408��$ 14.97905��$
 Fill=�
����  �$	 0.9Q�A� $��4.835��$��4.862��$ -0.51879��$ 28.96705��$
 Fill=�
����  �$	 0.8Q�A� $��4.835��$��4.862��$ 6.06015��$ 41.65815��$
 Fill=�
����  �$	 0.7Q�A� $��4.835��$��4.862��$ 18.27295��$ 49.069��$
 Fill=�
����  �$	 0.6Q�A� $��4.835��$��4.862��$ 32.33615��$ 48.42055��$
 Fill=�
����  �$	 0.5Q�A� $��4.835��$��4.862��$ 43.8088��$ 40.63915��$
 Fill=�
����  �$	 0.4Q�A� $��4.835��$��4.862��$ 49.0825��$ 27.207��$
 Fill=�
����  �$	 0.3Q�A� $��4.835��$��4.862��$ 46.4919��$ 13.4969��$
 Fill=�
����  �$	 0.2Q�A� $��4.835��$��4.862��$ 23.63915��$
 0.25��$
 Fill=�
����  �$	 0.1Q�z��� -   SpinnerRotate�� �� Angle$ 0Q� � Triggers :�  :� RoutedEvent$ ContentControl.Loaded��.[��� .���� .��W�  �� 
TargetName$ SpinnerRotate�� �� TargetProperty$ (RotateTransform.Angle)� W� From$ 0X�	 W� To$	 360X� g� Duration$ 0:0:01D� g� RepeatBehavior$ Forever��