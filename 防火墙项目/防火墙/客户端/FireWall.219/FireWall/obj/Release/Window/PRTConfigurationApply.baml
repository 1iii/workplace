   M S B A M L   `   `   `  ���� C  ?FireWall, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:FireWallFireWall  $    FireWall.PRTConfigurationApply   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     (localclr-namespace:FireWall     a ]DevExpress.Xpf.Grid.v15.1, Version=15.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49af bDevExpress.Xpf.Grid.v15.1.Core, Version=15.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a>dxg2http://schemas.devexpress.com/winfx/2008/xaml/grid   -     � Title$  PRTConfigurationApply��$	��450��$	��970�� � WindowStyle$
 None=� � 
ResizeMode$ NoResize=� � WindowStartupLocation$ CenterScreen=�.���  � RowDefinitions �� $
��131* ��� $
��462* � � ColumnDefinitions �� $
��657* �.+��� -    ��Name$ 
FWPRTlabel��$��	防火墙��$
��Left=�$��	15,10,0,0q�$	��Top=�$��70��
���   �$��18(��� -   $ MACPRTlabel��$��MAC: ��$
��Left=�$��	85,10,0,0q�$	��Top=�$	��235��
���   �$��18(��� -   $ 
PRTIPlabel��$
��IP: ��$
��Left=�$��	85,43,0,0q�$	��Top=�$	��210��
���   �$��18(��� -    ��Name$ PRTApplybutton��$��应用��$��14(�$��423,65,300,0q�$	��Top=�$y�	Collapsed=�$��30��$��75��   MainButtonStyle#���   ���	#FF17BD17  	FontBrush#���  �� -   $ NewPRT��$��添加路由��$��14(�$��323,65,570,0q�$	��Top=�$��30��$��75��#���     buttongroundbrush#���  #���  �� 
�������$��1q�$	��270��$��25,130,25,0q�$	��Top=�$��2��._�� .+��� -   $ PRTRuleslabel1��$��路由规则列表��$
��Left=�$��	20,10,0,0q�$	��Top=�$	��108��$��14(�$��25��
���   �&   System.Windows.Controls.DataGrid  -     Name$ PRTdataGrid��$��
20,50,20,0q�  	GridStyle#���    GridRowHeaderStyle	   RowHeaderStyle#	 [   GridColumnHeaderStyle
   ColumnHeaderStyle#
 [   DataGridRowStyle   RowStyle# [   GridCellStyle   	CellStyle# [    AutoGenerateColumns .  $��1q�$	��Top=�$	��198��   
IsReadOnly .    CanUserReorderColumns .     CanUserSortColumns .      FireWall.DataGridRowHelper   ShowRowIndexProperty . ���� * +   Columns 0  *System.Windows.Controls.DataGridTextColumn  ,  &System.Windows.Controls.DataGridColumn   Header$ 路由类型��   
IsReadOnly .    Width5  /System.Windows.Controls.DataGridLengthConverter$ * 1  +System.Windows.Controls.DataGridBoundColumn   Binding �� *
route_type+   ClipboardContentBinding Z�   $ 主机IP�� . $ *  �� *	host_IP+ Z�   $ 目的网络IP�� . $ *  �� *dstIP+ Z�   $ 网络掩码�� . $	 110  �� *	netmask+ Z�   $ 网络接口�� . $ *  �� *ETH+ Z�   $ 网关地址�� . $ *  �� *	Gateway+ Z� 4  .System.Windows.Controls.DataGridTemplateColumn  $ 是否记录日志�� .  $ *    CellTemplate �� .R��� {�.   d� 	IsChecked �� *log+  $ 操作�� .  $ *  �� .R���  �� Orientation$ 
Horizontal=�.+��� -	   $��/image/edit.png��$��20��$��20��$��0,0,40,0q��� -
   $��/image/delete.png��$��20��$��20���� -   $ Closebutton��$��关闭��$��14(�$��715,311,0,0q�$	��Top=�$
��Left=�$��75��$��30��#���   #���  #���  $��1��