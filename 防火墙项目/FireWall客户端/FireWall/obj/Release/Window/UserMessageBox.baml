   M S B A M L   `   `   `  ���� C  ?FireWall, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:FireWallFireWall      FireWall.UserMessageBox   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     (localclr-namespace:FireWall     -     �Name$
  main��$	��250��$	��350�� � WindowStyle$
 None=� � 
ResizeMode$ NoResize=� � AllowsTransparency .  � WindowStartupLocation$ CenterScreen=� � Topmost .  � Title ��  �� ElementName$ lblTitle�� �� Path$
 Text�	 � Triggers	 :� 
 :� RoutedEvent$
 Window.Loaded��.[��� .���� -    g�Name$ sbOpShow��.��W�  �� 
TargetName$
 main�� �� TargetProperty$ Opacity� W� From$ 0X�	 W� To$ 1X� g� Duration$ 0:0:0.1D�.���� 
����  �$	��0.5q�._���    backgroundbrush1#���   .+��� 
 �� Top$ 0��$��41��$��0,0,0,1q����	#FFEFE2E2���� *Width+$
 main�� �� UpdateSourceTrigger$ PropertyChanged=�._��� -    ��Name$ lblTitle��$
��test��$
��Left=�  	FontBrush#���  $��18.667(�$��5,5,0,5q�$	��157�� �� Padding$ 10,1,0,0q��� $ 41��$	��155������ *Width+$
 main��$ PropertyChanged=�._��� -   $ lblMsg��#���  $��16(�$
��Wrap=�$
��test��$	��300��$	��100��$��Center=� �� Left$	 135��$ 74��$��Center=��� -    ��Name$ Confirm��$y�	Collapsed=�$��54��$	��350��$	 196��._��� .+��� -    ��Name$
 Yes1��$��确 定��$
��Left=�$��30��$	��Top=�$��75��  MainButtonStyle#���  $��0q�#���    buttongroundbrush#���  $	 165��$ 10�� �� 	IsDefault . ��Z� �� -   $ No��$��取 消��$
��Left=�$��30��$	��Top=�$��75��#���  $��0q�#���  #���  $	 260��$ 10�� �� IsCancel . ��Z� �� -   $	 Tip��$y�Visible=�$��54��$	��350��$	 196��._��� -	   $
 Yes2��$��确 定��$
��Left=�$��30��$��
227,10,0,0q�$	��Top=�$��75��#���  $��0q�#���  #���   . ��Z� 