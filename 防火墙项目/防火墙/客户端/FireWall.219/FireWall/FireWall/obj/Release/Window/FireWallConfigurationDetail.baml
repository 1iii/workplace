   M S B A M L   `   `   `  ���� C  ?FireWall, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:FireWallFireWall  *    $FireWall.FireWallConfigurationDetail   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     (localclr-namespace:FireWall     a ]DevExpress.Xpf.Core.v15.1, Version=15.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a?dxe5http://schemas.devexpress.com/winfx/2008/xaml/editors  -     � Title$!  FireWallConfigurationDetail�� � WindowStyle$
 None=�$	��500��$	��800�� � 
ResizeMode$ NoResize=� � WindowStartupLocation$ CenterScreen=�.���    backgroundbrush1#���   .+��� -    ��Name$ label��$��规则配置��$
��Left=�$��	40,10,0,0q�$	��Top=�$	��136��
���   �$��18(��� -   $ Protocollabel��$��协议类型��$
��Left=�$��
260,60,0,0q�$	��Top=�$��76��
���   �$��14(�$��25��$��Center=�$��Center=�)  #DevExpress.Xpf.Editors.ComboBoxEdit  -     Name$ ProtocolComboBox��+  %DevExpress.Xpf.Editors.LookUpEditBase   SelectedIndex$ 0��$��372,60,270,0q�$	��Top=�$��25��$	��150��'  !DevExpress.Xpf.Editors.ButtonEdit   IsTextEditable$ FalseX��� 
�������$��1q�$	��312��$��25,130,25,0q�$	��Top=�._�� .+��� -   $ label1��$��防火墙规则��$
��Left=�$��	20,10,0,0q�$	��Top=�$	��108��$��16(�$��30��
��������� -   $ Sourcelabel��$��主机IP地址��$
��Left=�$��
120,40,0,0q�$	��Top=�
���   �$��14(�$��28��$��Center=�$��Center=�$	��125���� -   $ Destinationlabel��$��从机IP地址��$
��Left=�$��
120,85,0,0q�$	��Top=�
���   �$��14(�$��28��$��Center=�$��Center=�$	��125���� -   $ CoilAddresslabel��$��线圈地址范围��$
��Left=�$��120,130,0,0q�$	��Top=�
���   �$��14(�$��25��$��Center=�$��Center=�$	��125���� -	   $ MinDatalabel��$��最小转速��$
��Left=�$��120,175,0,0q�$	��Top=�
���   �$��14(�$��25��$��Center=�$��Center=�$	��125���� -
   $ MaxDatalabel��$��最大转速��$
��Left=�$��120,220,0,0q�$	��Top=�
���   �$��14(�$��25��$��Center=�$��Center=�$	��125���� -   $ AbledFunctionCodelabel��$��允许通过的功能码��$
��Left=�$��120,265,0,0q�$	��Top=�
���   �$��14(�$��28��$��Center=�$��Center=�$	��125���� -    ��Name$ SourceIPtextBox_1��$
��Left=�$��25��$��
269,40,0,0q�	 �� TextWrapping$
	 Wrap=�$�� ��$	��Top=�$��28��$��Center=�$��1,1,0,1q��� -   $ separatorlabel1��$��.��$
��Left=�$��
294,40,0,0q�$	��Top=�$��12��$��25��
�������$	��0,1q����	#FFABADB3$��	ExtraBold"��� -   $ SourceIPtextBox_2��$
��Left=�$��25��$��
302,40,0,0q�$
	 Wrap=�$�� ��$	��Top=�$��28��$��Center=�$	��0,1q��� -   $ separatorlabel2��$��.��$
��Left=�$��
326,40,0,0q�$	��Top=�$��12��$��25��
�������$	��0,1q����	#FFABADB3$��	ExtraBold"��� -   $ SourceIPtextBox_3��$
��Left=�$��25��$��
334,40,0,0q�$
	 Wrap=�$�� ��$	��Top=�$��28��$��Center=�$	��0,1q��� -   $ separatorlabel3��$��.��$
��Left=�$��
358,40,0,0q�$	��Top=�$��12��$��25��
�������$	��0,1q����	#FFABADB3$��	ExtraBold"��� -   $ SourceIPtextBox_4��$
��Left=�$��25��$��
366,40,0,0q�$
	 Wrap=�$�� ��$	��Top=�$��28��$��Center=�$��0,1,1,1q��� -   $ DestinationIPtextBox_1��$
��Left=�$��25��$��
269,85,0,0q�$
	 Wrap=�$�� ��$	��Top=�$��28��$��Center=�$��1,1,0,1q��� -   $ separatorlabel7��$��.��$
��Left=�$��
294,85,0,0q�$	��Top=�$��12��$��25��
�������$	��0,1q����	#FFABADB3$��	ExtraBold"��� -   $ DestinationIPtextBox_2��$
��Left=�$��25��$��
302,85,0,0q�$
	 Wrap=�$�� ��$	��Top=�$��28��$��Center=�$	��0,1q��� -   $ separatorlabel8��$��.��$
��Left=�$��
326,85,0,0q�$	��Top=�$��12��$��25��
�������$	��0,1q����	#FFABADB3$��	ExtraBold"��� -   $ DestinationIPtextBox_3��$
��Left=�$��25��$��
334,85,0,0q�$
	 Wrap=�$�� ��$	��Top=�$��28��$��Center=�$	��0,1q��� -   $ separatorlabel9��$��.��$
��Left=�$��
358,85,0,0q�$	��Top=�$��12��$��25��
�������$	��0,1q����	#FFABADB3$��	ExtraBold"��� -   $ DestinationIPtextBox_4��$
��Left=�$��25��$��
366,85,0,0q�$
	 Wrap=�$�� ��$	��Top=�$��28��$��Center=�$��0,1,1,1q��� -   $ CoilAddressStarttextBox��$
��Left=�$��25��$��270,130,0,0q�$	 NoWrap=�$�� ��$	��Top=�$	��124��$��Center=��� -   
 ��Name$
 ConnectBorder��
���   �$��1q�$
��Left=�$��1��$��410,142,0,0q�$	��Top=�$��35���� -   $ CoilAddressEndtextBox��$
��Left=�$��25��$��461,130,0,0q�$	 NoWrap=�$�� ��$	��Top=�$	��124��$��Center=��� -   $ MinDatatextBox��$
��Left=�$��25��$��270,175,0,0q�$	 NoWrap=�$�� ��$	��Top=�$	��124��$��Center=��� -   $ MaxDatatextBox��$
��Left=�$��25��$��270,220,0,0q�$	 NoWrap=�$�� ��$	��Top=�$	��124��$��Center=�  -   $ FunctionCodeComboBox��$
��Left=�$��270,265,0,0q�$	��Top=�$	��315��$��25��$ FalseX�%  DevExpress.Xpf.Editors.BaseEdit   StyleSettings 9  3DevExpress.Xpf.Editors.CheckedComboBoxStyleSettings  �� -    $ CodeNum��$��25��$��596,265,0,0q�$
	 Wrap=�$�� ��$	��Top=�$��Center=�$
��Left=�$��40�� �� 
IsReadOnly . �� -!   $ CodeNumLabel��$	��个��$
��Left=�$��641,265,0,0q�$	��Top=�
�������$��14(�$��25��$��Center=�$��Center=�$��25���� -"   $ WarningLabel��$��25��$��590,160,0,0q�$*��$请输入正确的线圈地址范围��$	��Top=�$��Center=�$
��Left=�$	��156��
���  ��$y�	Collapsed=���Z� ��Z� �� -#    ��Name$ SourceIPCheck��$	��All��
���   �$��25��$
��Left=�$��
415,40,0,0q�$	��Top=�$��14(�$��Center=� d� 	IsChecked$ FalseY��� -$   $ DestinationIPCheck��$	��All��
���   �$��25��$
��Left=�$��
415,85,0,0q�$	��Top=�$��14(�$��Center=�$ FalseY��� -%    ��Name$ 	Addbutton��$��确定��$��543,463,0,0q�$	��Top=�$
��Left=�$��14(�$��75��$��30��  MainButtonStyle#���    buttongroundbrush#���    	FontBrush#���  �� -&   $ 
Backbutton��$��返回��$��643,463,0,0q�$	��Top=�$
��Left=�$��14(�$��75��$��30��#���  #���  #���  �� -'   $ logcheckBox��$��记录日志��$
 TrueY�$��14(�$
��Left=�$��
375,95,0,0q�$	��Top=�$��30��$��Center=�$��Center=�
���   �