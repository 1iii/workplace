   M S B A M L   `   `   `  ���� C  ?FireWall, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:FireWallFireWall  $    FireWall.APCConfigurationApply   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     (localclr-namespace:FireWall     a ]DevExpress.Xpf.Core.v15.1, Version=15.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a?dxe5http://schemas.devexpress.com/winfx/2008/xaml/editors  -     � Title$  APCConfigurationApply��$	��450��$	��970�� � WindowStyle$
 None=� � 
ResizeMode$ NoResize=� � WindowStartupLocation$ CenterScreen=�.��� .+��� -    ��Name$ 
FWAPClabel��$��	防火墙��$
��Left=�$��	15,10,0,0q�$	��Top=�$��70��
���   �$��18(��� -   $ MACAPClabel��$��MAC: ��$
��Left=�$��	85,10,0,0q�$	��Top=�$	��235��
���   �$��18(��� -   $ 
APCIPlabel��$
��IP: ��$
��Left=�$��	85,43,0,0q�$	��Top=�$	��210��
���   �$��18(��� 
�������$��1q�$	��270��$��25,124,25,0q�$	��Top=�._�� $��	1,-1,-1,1q�.+��� -   $ APCRuleslabel1��$'��!应用层协议控制规则列表��$
��Left=�$��	20,10,0,0q�$	��Top=�$	��166��$��14(�$��30��
���   �&   System.Windows.Controls.DataGrid  -     Name$ APCdataGrid��$��
20,45,20,0q�   	GridStyle#���     GridRowHeaderStyle   RowHeaderStyle# [   GridColumnHeaderStyle   ColumnHeaderStyle# [   DataGridRowStyle   RowStyle# [   GridCellStyle	   	CellStyle#	 [ 
   AutoGenerateColumns
 .  $��1q�$	��Top=�$	��198��   
IsReadOnly .    CanUserReorderColumns .     CanUserSortColumns .      FireWall.DataGridRowHelper   ShowRowIndexProperty . ���� * +   Columns 0  *System.Windows.Controls.DataGridTextColumn  ,  &System.Windows.Controls.DataGridColumn   Header$ 应用层协议��   
IsReadOnly .    Width5  /System.Windows.Controls.DataGridLengthConverter$ * 1  +System.Windows.Controls.DataGridBoundColumn   Binding �� *
protocol+   ClipboardContentBinding Z�   $ 状态�� . $ *  �� *status+ Z� 4  .System.Windows.Controls.DataGridTemplateColumn  $ 是否记录日志�� .  $ *    CellTemplate �� .R��� {�.   d� 	IsChecked �� *log+  $ 操作�� .  $	 110  �� .R���  �� Orientation$ 
Horizontal=�.+��� -   $��/image/edit.png��$��20��$��20��$��0,0,40,0q��� -    ��Name$ Closebutton��$��关闭��$��14(�$��643,413,0,0q�$	��Top=�$
��Left=�$��75��$��30��  MainButtonStyle#���    buttongroundbrush#���    	FontBrush#���  