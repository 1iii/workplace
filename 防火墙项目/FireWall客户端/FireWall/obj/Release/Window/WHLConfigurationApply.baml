   M S B A M L   `   `   `  ���� C  ?FireWall, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:FireWallFireWall  $    FireWall.WHLConfigurationApply   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     (localclr-namespace:FireWall     -     � Title$  WHLConfigurationApply��$	��450��$	��970�� � WindowStyle$
 None=� � 
ResizeMode$ NoResize=� � WindowStartupLocation$ CenterScreen=�.���    backgroundbrush1#���    � ColumnDefinitions �� $	��27* �.+��� -    ��Name$ NewWHLRulebutton��$��添加名单��$��14(�$��323,65,570,0q�$	��Top=�$��30��$��75��  MainButtonStyle#���    buttongroundbrush#���    	FontBrush#���  $��1���� -   $ WHLApplybutton��$��应用��$��14(�$��423,65,300,0q�$	��Top=�$y�	Collapsed=�$��30��$��75��#���  ���	#FF17BD17#���  �� -    ��Name$ 
FWWHLlabel��$��	防火墙��$
��Left=�$��	15,10,0,0q�$	��Top=�$��70��
���   �$��18(�$��2���� -   $ MACWHLlabel��$��MAC: ��$
��Left=�$��	85,10,0,0q�$	��Top=�$	��235��
���   �$��18(��� -   $ 
WHLIPlabel��$
��IP: ��$
��Left=�$��	85,43,0,0q�$	��Top=�$	��210��
���   �$��18(��� 
�������$��1q�$	��270��$��25,130,25,0q�$	��Top=�$��2��._�� .+��� -   $ WHLRuleslabel1��$��白名单列表��$
��Left=�$��	20,10,0,0q�$	��Top=�$	��166��$��14(�$��25��
���   �&   System.Windows.Controls.DataGrid  -     Name$ WHLdataGrid��$��
20,50,20,0q�  	GridStyle#���    GridRowHeaderStyle   RowHeaderStyle# [   GridColumnHeaderStyle	   ColumnHeaderStyle#	 [   DataGridRowStyle
   RowStyle#
 [   GridCellStyle   	CellStyle# [    AutoGenerateColumns .  $��1q�$	��Top=�$	��198��   
IsReadOnly .    CanUserReorderColumns .     CanUserSortColumns .      FireWall.DataGridRowHelper   ShowRowIndexProperty . ���� * +   Columns 0  *System.Windows.Controls.DataGridTextColumn  ,  &System.Windows.Controls.DataGridColumn   Header$ 设备IP��   
IsReadOnly .    Width5  /System.Windows.Controls.DataGridLengthConverter$ * 1  +System.Windows.Controls.DataGridBoundColumn   Binding �� *dev_IP+   ClipboardContentBinding Z�   $ 源IP地址�� . $ *  �� *src_IP+ Z�   $ 	源端口�� . $ *  �� *
src_port+ Z�   $ 目的IP地址�� . $ *  �� *dst_IP+ Z�   $ 目的端口�� . $ *  �� *
dst_port+ Z� 4  .System.Windows.Controls.DataGridTemplateColumn  $ 是否记录日志�� .  $ *    CellTemplate �� .R��� {�.   d� 	IsChecked �� *log+  $ 操作�� .  $ *  �� .R���  �� Orientation$ 
Horizontal=�.+��� -	   $��/image/edit.png��$��20��$��20��$��0,0,40,0q��� -
   $��/image/delete.png��$��20��$��20���� -   $ Closebutton��$��关闭��$��14(�$��643,413,0,0q�$	��Top=�$
��Left=�$��75��$��30��#���  #���  #���  