   M S B A M L   `   `   `  ���� C  ?FireWall, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:FireWallFireWall  $    FireWall.NATConfigurationApply   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     a ]DevExpress.Xpf.Grid.v15.1, Version=15.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49af bDevExpress.Xpf.Grid.v15.1.Core, Version=15.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a>dxg2http://schemas.devexpress.com/winfx/2008/xaml/grid   $localclr-namespace:FireWall   a ]DevExpress.Xpf.Core.v15.1, Version=15.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a?dxe5http://schemas.devexpress.com/winfx/2008/xaml/editors  -     � Title$  NATConfigurationApply��$	��450��$	��970�� � WindowStyle$
 None=� � 
ResizeMode$ NoResize=� � WindowStartupLocation$ CenterScreen=�.���  � ColumnDefinitions �� $
��247* �.+��� -    ��Name$ NATApplybutton��$��应用��$��14(�$��445,65,446,0q�$	��Top=�$y�	Collapsed=�$��30��$��75��   MainButtonStyle#���   ���	#FF17BD17  	FontBrush#���  $��1���� -    ��Name$ 
NATFWlabel��$��	防火墙��$
��Left=�$��	15,10,0,0q�$	��Top=�$��70��
���   �$��18(�$��2���� -   $ NATMAClabel��$��MAC: ��$
��Left=�$��	85,10,0,0q�$	��Top=�$	��235��
���   �$��18(��� -   $ 
NATIPlabel��$
��IP: ��$
��Left=�$��	85,43,0,0q�$	��Top=�$	��210��
���   �$��18(��� -   $ NewNATRulebutton��$��	添加NAT��$��14(�$��323,65,570,0q�$	��Top=�$��30��$��75��#���     buttongroundbrush#���  #���  $��1���� 
�������$��1q�$	��270��$��25,130,25,0q�$	��Top=�$��2��._�� .+�&   System.Windows.Controls.DataGrid  -     Name$ DNATdataGrid��$��
20,50,20,0q�  	GridStyle#���    GridRowHeaderStyle   RowHeaderStyle# [   GridColumnHeaderStyle	   ColumnHeaderStyle#	 [   DataGridRowStyle
   RowStyle#
 [   GridCellStyle   	CellStyle# [    AutoGenerateColumns .  $��1q�$	��Top=�$	��198��   
IsReadOnly .    CanUserReorderColumns .     CanUserSortColumns .      FireWall.DataGridRowHelper   ShowRowIndexProperty . ���� * +   Columns 0  *System.Windows.Controls.DataGridTextColumn  ,  &System.Windows.Controls.DataGridColumn   Header$ 源IP地址��   
IsReadOnly .    Width5  /System.Windows.Controls.DataGridLengthConverter$ * 1  +System.Windows.Controls.DataGridBoundColumn   Binding �� *origin_dstIP+   ClipboardContentBinding Z�   $ 	源端口�� . $ *  �� *origin_dport+ Z�   $ 映射IP地址�� . $ *  �� *map_IP+ Z�   $ 映射端口�� . $ *  �� *
map_port+ Z� 4  .System.Windows.Controls.DataGridTemplateColumn  $ 是否记录日志�� .  $ *    CellTemplate �� .R��� {�.   d� 	IsChecked �� *log+  $ 操作�� .  $ *  �� .R���  �� Orientation$ 
Horizontal=�.+��� -   $��/image/edit.png��$��20��$��20��$��0,0,40,0q��� -	   $��/image/delete.png��$��20��$��20��  -
   $ SNATdataGrid��$y�	Collapsed=�$��
20,50,20,0q�#���  # [ #	 [ #
 [ # [  .  $��1q�$	��Top=�$	��198�� .  .   .   . ���� * +   $ 源设备IP地址�� . $ *  �� *origin_devIP+ Z�   $ 网口�� . $ *  �� *	EthName+ Z�   $ 网口IP地址�� . $ *  �� *EthIP+ Z�   $ 映射IP地址�� . $ *  �� *NATIP+ Z�   $ 是否记录日志�� .  $ *  �� .R��� {�.   �� *log+  $ 操作�� .  $ *  �� .R��� $ 
Horizontal=�.+��� -   $��/image/edit.png��$��20��$��20��$��0,0,40,0q��� -   $��/image/delete.png��$��20��$��20��)  #DevExpress.Xpf.Editors.ComboBoxEdit  -     Name$ NATComboBox��'	  !DevExpress.Xpf.Editors.ButtonEdit 	  IsTextEditable$ FalseX�+
  %DevExpress.Xpf.Editors.LookUpEditBase 
  SelectedIndex$ 0��$
��Left=�$��
120,15,0,0q�$	��Top=�$��89��$��30���� -   $ label��$��NAT类型 ：��$��14(�$
��Left=�$��	20,15,0,0q�$	��Top=� J� RenderTransformOrigin$ 
0.254,-0.4&�$��30��$��95���� -   $ Closebutton��$��关闭��$��14(�$��643,413,0,0q�$	��Top=�$
��Left=�$��75��$��30��#���   #���  #���  