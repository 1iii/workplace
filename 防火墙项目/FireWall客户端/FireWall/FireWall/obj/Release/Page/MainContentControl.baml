   M S B A M L   `   `   `  ���� C  ?FireWall, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:FireWallFireWall      FireWall.MainContent   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     (localclr-namespace:FireWall     a ]DevExpress.Xpf.Grid.v15.1, Version=15.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49af bDevExpress.Xpf.Grid.v15.1.Core, Version=15.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a>dxg2http://schemas.devexpress.com/winfx/2008/xaml/grid   a ]DevExpress.Xpf.Core.v15.1, Version=15.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a;dx2http://schemas.devexpress.com/winfx/2008/xaml/core  ?dxe5http://schemas.devexpress.com/winfx/2008/xaml/editors  .���� 
�������$��1q�._�� -     �Name$  DragableGrid��$��	1,-1,-1,1q� � ColumnDefinitions �� $
��353* �.+�� -   $  
LayoutRoot��$y�	Collapsed=�
������ $��Center=�$��Center=�$��419,309,428,309q�$��0��$��0��$��2��z��� -   SpinnerScale�� �� ScaleX$	 1.0Q� �� ScaleY$	 1.0Q�.+���  J� RenderTransformOrigin$ 0.5,0.5&�$��Center=�$��Center=�$	��120��$	��120��z��� -   SpinnerRotate�� �� Angle$ 0Q� � Triggers :�  :� RoutedEvent$ FrameworkElement.Loaded��.[��� .���� .��W�  �� 
TargetName$ SpinnerRotate��	 �� TargetProperty$	 (RotateTransform.Angle)�
 W� From$
 0X�	 W� To$	 360X� g� Duration$ 0:0:01D� g� RepeatBehavior$ Forever��.+�A� $��21.835��$��21.862�� �� Left$ 20.1696��
 �� Top$ 9.76358�� �� Stretch$
 Fill=����	#FF007ACC J� Opacity$	 1.0Q�A� $��21.835��$��21.862��$ 2.86816��$ 29.9581��$
 Fill=����	#FF007ACC$	 0.9Q�A� $��21.835��$��21.862��$ 5.03758e-006��$ 57.9341��$
 Fill=����	#FF007ACC$	 0.8Q�A� $��21.835��$��21.862��$ 12.1203��$ 83.3163��$
 Fill=����	#FF007ACC$	 0.7Q�A� $��21.835��$��21.862��$ 36.5459��$ 98.138��$
 Fill=����	#FF007ACC$	 0.6Q�A� $��21.835��$��21.862��$ 64.6723��$ 96.8411��$
 Fill=����	#FF007ACC$	 0.5Q�A� $��21.835��$��21.862��$ 87.6176��$ 81.2783��$
 Fill=����	#FF007ACC$	 0.4Q�A� $��21.835��$��21.862��$ 98.165��$ 54.414��$
 Fill=����	#FF007ACC$	 0.3Q�A� $��21.835��$��21.862��$ 92.9838��$ 26.9938��$
 Fill=����	#FF007ACC$	 0.2Q�A� $��21.835��$��21.862��$ 47.2783��$	 0.5��$
 Fill=����	#FF007ACC$	 0.1Q��� $
��Left=�$��	300,0,0,0q�$��1��
�������|�.  �� -    ��Name$ ControllistBox��$
��Left=�$	��199��$	��Top=�$	��300��   backgroundbrush#���     SimpleListBox#���  $��0,30,0,0q���Z� .@��� $��电脑��  SimpleListBoxItemComputer#��[ 
���   ��� $	��PLC��  ListBoxItemPLC#��[ 
���   ��� -   $ ScanlistBox��$
��Left=�$��	0,326,0,0q�$	��300��
�������#���   #���  �� 
�������$��0,0,0,1q�$
��Left=�$��30��$	��Top=�$	��300��._��� -    ��Name$ label��$��控件��
���   �$��16(�
�������$��Center=�$��Center=��� #���   $��1,1,1,1q�$
��Left=�$��99��$��	0,229,0,0q�$	��Top=�$	��300��
�������._�� .+��� #���   $��0,0,0,1q�$
��Left=�$��30��$	��Top=�$	��300��._��� -   $ label1��$��扫描设备��
���   �$��16(�$��Center=�$��Center=��� -	   $ IPlabel��$��扫描范围��$
��Left=�$��0,30,0,0q�$	��Top=�
�������$��14(�$��25���� -
    ��Name$ ScanIPStarttextBox_1��$
��Left=�$��25��$��5,65,0,0q� �� TextWrapping$ NoWrap=�$�� ��$	��Top=�$��28��$��Center=�$��1,1,0,1q��� -   $ separatorlabel1��$��.��$
��Left=�$��	30,65,0,0q�$	��Top=�$��12��$��25��
�������$	��0,1q����	#FFABADB3$��	ExtraBold"��� -   $ ScanIPStarttextBox_2��$��25��$��38,65,234,0q�$ NoWrap=�$�� ��$	��Top=�$��Center=�$	��0,1q��� -   $ separatorlabel2��$��.��$
��Left=�$��	62,65,0,0q�$	��Top=�$��12��$��25��
�������$	��0,1q����	#FFABADB3$��	ExtraBold"��� -   $ ScanIPStarttextBox_3��$
��Left=�$��25��$��	70,65,0,0q�$ NoWrap=�$�� ��$	��Top=�$��28��$��Center=�$	��0,1q��� -   $ separatorlabel3��$��.��$
��Left=�$��	94,65,0,0q�$	��Top=�$��12��$��25��
�������$	��0,1q����	#FFABADB3$��	ExtraBold"��� -   $ ScanIPStarttextBox_4��$
��Left=�$��25��$��
102,65,0,0q�$ NoWrap=�$�� ��$	��Top=�$��28��$��Center=�$��0,1,1,1q��� 
�������$��1q�$
��Left=�$��1��$��
135,78,0,0q�$	��Top=�$��30���� -   $ ScanIPEndtextBox_1��$
��Left=�$��25��$��
170,65,0,0q�$ NoWrap=�$�� ��$	��Top=�$��28��$��Center=�$��1,1,0,1q��� -   $ separatorlabel4��$��.��$
��Left=�$��
195,65,0,0q�$	��Top=�$��12��$��25��
�������$	��0,1q����	#FFABADB3$��	ExtraBold"��� -   $ ScanIPEndtextBox_2��$
��Left=�$��25��$��
203,65,0,0q�$ NoWrap=�$�� ��$	��Top=�$��28��$��Center=�$	��0,1q��� -   $ separatorlabel5��$��.��$
��Left=�$��
227,65,0,0q�$	��Top=�$��12��$��25��
�������$	��0,1q����	#FFABADB3$��	ExtraBold"��� -   $ ScanIPEndtextBox_3��$
��Left=�$��25��$��
235,65,0,0q�$ NoWrap=�$�� ��$	��Top=�$��28��$��Center=�$	��0,1q��� -   $ separatorlabel6��$��.��$
��Left=�$��
259,65,0,0q�$	��Top=�$��12��$��25��
�������$	��0,1q����	#FFABADB3$��	ExtraBold"��� -   $ ScanIPEndtextBox_4��$
��Left=�$��25��$��
267,65,0,0q�$ NoWrap=�$�� ��$	��Top=�$��28��$��Center=�$��0,1,1,1q��� -    ��Name$ 
Scanbutton��$��扫描��$
��Left=�$��
220,30,0,0q�$	��Top=�$��75��$��30��$��14(� �� 	IsDefault .   MainButtonStyle#���    buttongroundbrush#���  
��������� -    ��Name$ FirsttabControl�� �� SelectedIndex$ 0��$��	300,0,0,0q�$��3��.@��� $��网络拓扑��$��14(�.��� #���    � ShowGridLines . $��0,0,0,0q� �� $
��101* �.+�R� -    R�Name$ treeView�� J� 	AllowDrop . 
�������  backgroundbrush1#���   � ContextMenu ��   
SimpleMenu#���  .@�m� -    m�Name$ NoIPConfigure��  SimpleMenuItem#���  $��无IP配置��m� -   $ Delete��#���  $��删除��m� -   $ Clear��#���  $��清空��