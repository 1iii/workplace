   M S B A M L   `   `   `  ����C  ?FireWall, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:FireWallFireWall  5   	   $    FireWall.PRTConfigurationApply   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   (localclr-namespace:FireWall     5   	   a ]DevExpress.Xpf.Grid.v15.1, Version=15.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49af bDevExpress.Xpf.Grid.v15.1.Core, Version=15.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a>dxg2http://schemas.devexpress.com/winfx/2008/xaml/grid   5   	   -   5          � Title$  PRTConfigurationApply��5	   	   $	��450��6'   $	��970��64    � WindowStyle$
 None=�6@    � 
ResizeMode$ NoResize=�6S    � WindowStartupLocation$ CenterScreen=�6i   .��5
      �  � RowDefinitions 5   
   �� 5      $
��131* �6   �� 5      $
��462* �6    � ColumnDefinitions 5   
   �� 5      $
��657* �6   .+�5   
   �� -   5         ��Name$ 
FWPRTlabel��5      $��	防火墙��6$   $
��Left=�62   $��	15,10,0,0q�6M   $	��Top=�6`   $��70��6x   
���   �$��18(�6�   �� 5   
   -   5        $ MACPRTlabel��5      $��MAC: ��6%   $
��Left=�65   $��	85,10,0,0q�6P   $	��Top=�6c   $	��235��6{   
���   �$��18(�6�   �� 5   
   -   5        $ 
PRTIPlabel��5      $
��IP: ��6$   $
��Left=�63   $��	85,43,0,0q�6N   $	��Top=�6a   $	��210��6y   
���   �$��18(�6�   �� 5   
   -   5         ��Name$ PRTApplybutton��5      $��应用��6)   $��14(�66   $��423,65,300,0q�6D   $	��Top=�6Z   $y�	Collapsed=�6r   $��30��6�   $��75��6�      MainButtonStyle#���   6�   ���	#FF17BD17  	FontBrush#���  6�   �� 5   
   -   5        $ NewPRT��5      $��添加路由��6!   $��14(�60   $��323,65,570,0q�6>   $	��Top=�6T   $��30��6�   $��75��6�   #���   6�     buttongroundbrush#���  6�   #���  6�   �� 5   
   
�������$��1q�6&   $	��270��6:   $��25,130,25,0q�6G   $	��Top=�6\   $��2��6t   ._�5      � .+�5      �� -   5        $ PRTRuleslabel1��5      $��路由规则列表��60   $
��Left=�6A   $��	20,10,0,0q�6\   $	��Top=�6o   $	��108��6�   $��14(�6�   $��25��6�   
���   �6�   &   System.Windows.Controls.DataGrid  5      -   5          Name$ PRTdataGrid��5      $��
20,50,20,0q�60     	GridStyle#���  6D     GridRowHeaderStyle	   RowHeaderStyle#	 [ 6h     GridColumnHeaderStyle
   ColumnHeaderStyle#
 [ 6�     DataGridRowStyle   RowStyle# [ 6�     GridCellStyle   	CellStyle# [ 6     AutoGenerateColumns .  $��1q�6h  $	��Top=�6|  $	��198��6�     
IsReadOnly .    CanUserReorderColumns .     CanUserSortColumns .      FireWall.DataGridRowHelper   ShowRowIndexProperty . ��6M  �� * +   Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ 路由类型��6o      
IsReadOnly .    Width5  /System.Windows.Controls.DataGridLengthConverter$ * 6�   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6-   �� *
route_type+   ClipboardContentBinding 6L   Z� 6�     5      $ 主机IP��6l    . $ * 6�    6-   �� *	host_IP+ 6I   Z� 6�     5       $ 目的网络IP��6j    . $ * 6�    6-   �� *dstIP+ 6G   Z� 6�     5!      $ 网络掩码��6l    . $	 110 6�    6-   �� *	netmask+ 6I   Z� 6�     5"      $ 网络接口��6h    . $ * 6�    6-   �� *ETH+ 6E   Z� 6�     5#      $ 网关地址��6l    . $ * 6�    6-   �� *	Gateway+ 6I   Z� 6�   4  .System.Windows.Controls.DataGridTemplateColumn  5$      $ 是否记录日志��62    .  $ * 6U      CellTemplate 5%      �� 5&   "   .R�5'   &   �� {�.   d� 	IsChecked 6/   �� *log+6I   5(   #   5*        5+      $ 操作��61    .  $ * 6P    5,      �� 5-   "   .R�5.   &   ��  �� Orientation$ 
Horizontal=�61   .+�5/   *   �� -	   5        $��/image/edit.png��5/   0   $��20��6I   $��20��6T   $��0,0,40,0q�6�   �� 50   *   -
   5        $��/image/delete.png��50   0   $��20��6K   $��20��6V   6b   51   '   52   #   54      56      57      58      �� 59   
   -   5        $ Closebutton��59      $��关闭��6&   $��14(�63   $��715,311,0,0q�6A   $	��Top=�6V   $
��Left=�6�   $��75��6�   $��30��6�   #���   6�   #���  6�   #���  6  $��1��6>  5;      5<      