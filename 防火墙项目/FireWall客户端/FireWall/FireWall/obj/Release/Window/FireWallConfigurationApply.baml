   M S B A M L   `   `   `  ���� C  ?FireWall, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:FireWallFireWall  )    #FireWall.FireWallConfigurationApply   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     (localclr-namespace:FireWall     a ]DevExpress.Xpf.Grid.v15.1, Version=15.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49af bDevExpress.Xpf.Grid.v15.1.Core, Version=15.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a>dxg2http://schemas.devexpress.com/winfx/2008/xaml/grid   -     � Title$   FireWallConfigurationApply��$	��450��$	��970�� � WindowStyle$
 None=� � 
ResizeMode$ NoResize=� � WindowStartupLocation$ CenterScreen=�.���    backgroundbrush1#���   .+��� -    ��Name$ NewRulebutton��$��	新规则��$��14(�$��300,65,423,0q�$	��Top=�$��30��$��75��  MainButtonStyle#���    buttongroundbrush#���    	FontBrush#���  �� -   $ Applybutton��$��应用��$��14(�$��423,65,300,0q�$	��Top=�$y�	Collapsed=�$��30��$��75��#���  ���	#FF17BD17#���  �� -    ��Name$ label��$��	防火墙��$
��Left=�$��	15,10,0,0q�$	��Top=�$��70��
���   �$��18(��� -   $ MAClabel��$��MAC: ��$
��Left=�$��	85,10,0,0q�$	��Top=�$	��235��
���   �$��18(��� -   $ IPlabel��$
��IP: ��$
��Left=�$��	85,43,0,0q�$	��Top=�$	��210��
���   �$��18(��� 
�������$��1q�$	��270��$��25,130,25,0q�$	��Top=�._�� .+��� -   $ label1��$��防火墙规则列表��$
��Left=�$��	20,10,0,0q�$	��Top=�$	��108��$��14(�$��25��
�������&   System.Windows.Controls.DataGrid  -     Name$ dataGrid��$��
20,50,20,0q�  	GridStyle#���    GridRowHeaderStyle   RowHeaderStyle# [   GridColumnHeaderStyle   ColumnHeaderStyle# [   DataGridRowStyle	   RowStyle#	 [   GridCellStyle
   	CellStyle#
 [    AutoGenerateColumns .  $��1q�$	��Top=�$	��198��   
IsReadOnly .    CanUserReorderColumns .     CanUserSortColumns .      FireWall.DataGridRowHelper   ShowRowIndexProperty . ���� * +   Columns 0  *System.Windows.Controls.DataGridTextColumn  ,  &System.Windows.Controls.DataGridColumn   Header$ 协议��   
IsReadOnly .    Width5  /System.Windows.Controls.DataGridLengthConverter$ 80 1  +System.Windows.Controls.DataGridBoundColumn   Binding �� *
protocol+   ClipboardContentBinding Z�   $ 主机IP地址�� . $	 120  �� *source+ Z�   $ 从机IP地址�� . $	 120  �� *destination+ Z�   $ 线圈起始地址�� . $ 90  �� *coiladdressstart+ Z�   $ 线圈终止地址�� . $ 90  �� *coiladdressend+ Z�   $ 	功能码�� .    MinWidth$ 50Q� �� *func+ Z�   $ 最小转速�� . $ 60Q� �� *	mindata+ Z�   $ 最大转速�� . $ 60Q� �� *	maxdata+ Z� 4  .System.Windows.Controls.DataGridTemplateColumn  $ 是否记录日志�� .  $ 90    CellTemplate �� .R��� {�.   d� 	IsChecked �� *log+  $ 操作�� .  $	 110  �� .R���  �� Orientation$ 
Horizontal=�.+��� -	   $��/image/edit.png��$��20��$��20��$��0,0,40,0q��� -
   $��/image/delete.png��$��20��$��20���� -   $ Closebutton��$��关闭��$��14(�$��643,413,0,0q�$	��Top=�$
��Left=�$��75��$��30��#���  #���  #���  