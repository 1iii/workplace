   M S B A M L   `   `   `  ����C  ?FireWall, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:FireWallFireWall  5   	   $    FireWall.CNCConfigurationApply   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   (localclr-namespace:FireWall     5   	   a ]DevExpress.Xpf.Grid.v15.1, Version=15.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49af bDevExpress.Xpf.Grid.v15.1.Core, Version=15.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a>dxg2http://schemas.devexpress.com/winfx/2008/xaml/grid   5   	   -   5          � Title$  CNCConfigurationApply��5	   	   $	��450��6'   $	��970��64    � WindowStyle$
 None=�6@    � 
ResizeMode$ NoResize=�6S    � WindowStartupLocation$ CenterScreen=�6i   .��5
      �    backgroundbrush1#���   6    � ColumnDefinitions 5   
   �� 5      $	��27* �6   .+�5   
   �� -   5         ��Name$ NewCNCRulebutton��5      $��添加规则��6+   $��14(�6:   $��323,65,570,0q�6H   $	��Top=�6^   $��30��6�   $��75��6�     MainButtonStyle#���  6�     buttongroundbrush#���  6�     	FontBrush#���  6  $��1��60  �� 5   
   -   5        $ CNCApplybutton��5      $��应用��6)   $��14(�66   $��423,65,300,0q�6D   $	��Top=�6Z   $y�	Collapsed=�6r   $��30��6�   $��75��6�   #���  6�   ���	#FF17BD17#���  6�   �� 5   
   -   5         ��Name$ 
FWCNClabel��5      $��	防火墙��6$   $
��Left=�62   $��	15,10,0,0q�6M   $	��Top=�6`   $��70��6x   
���   �$��18(�6�   $��2��6�   �� 5   
   -   5        $ MACCNClabel��5      $��MAC: ��6%   $
��Left=�65   $��	85,10,0,0q�6P   $	��Top=�6c   $	��235��6{   
���   �$��18(�6�   �� 5   
   -   5        $ 
CNCIPlabel��5      $
��IP: ��6$   $
��Left=�63   $��	85,43,0,0q�6N   $	��Top=�6a   $	��210��6y   
���   �$��18(�6�   �� 5   
   
�������$��1q�6&   $	��270��6:   $��25,130,25,0q�6G   $	��Top=�6\   $��2��6t   ._�5      � .+�5      �� -   5        $ CNCRuleslabel1��5      $#��IP连接数控制规则列表��60   $
��Left=�6F   $��	20,10,0,0q�6a   $	��Top=�6t   $	��166��6�   $��14(�6�   $��25��6�   
���   �6�   &   System.Windows.Controls.DataGrid  5      -   5          Name$ CNCdataGrid��5      $��
20,50,20,0q�60     	GridStyle#���  6D     GridRowHeaderStyle   RowHeaderStyle# [ 6h     GridColumnHeaderStyle	   ColumnHeaderStyle#	 [ 6�     DataGridRowStyle
   RowStyle#
 [ 6�     GridCellStyle   	CellStyle# [ 6     AutoGenerateColumns .  $��1q�6h  $	��Top=�6|  $	��198��6�     
IsReadOnly .    CanUserReorderColumns .     CanUserSortColumns .      FireWall.DataGridRowHelper   ShowRowIndexProperty . ��6M  �� * +   Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ 源IP地址��6j      
IsReadOnly .    Width5  /System.Windows.Controls.DataGridLengthConverter$ * 6�   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6-   �� *srcIP+   ClipboardContentBinding 6G   Z� 6�     5      $ 	源端口��6j    . $ * 6�    6-   �� *sport+ 6G   Z� 6�     5      $ 目的IP地址��6j    . $ * 6�    6-   �� *dstIP+ 6G   Z� 6�     5      $ 目的端口��6j    . $ * 6�    6-   �� *dport+ 6G   Z� 6�     5      $ 最大并发回话数��6n    . $ * 6�    6-   �� *	connlimit+ 6K   Z� 6�   4  .System.Windows.Controls.DataGridTemplateColumn  5      $ 是否记录日志��62    .  $ * 6U      CellTemplate 5      �� 5    "   .R�5!   &   �� {�.   d� 	IsChecked 6/   �� *log+6I   5"   #   5$        5%      $ 操作��61    .  $ * 6P    5&      �� 5'   "   .R�5(   &   ��  �� Orientation$ 
Horizontal=�61   .+�5)   *   �� -	   5        $��/image/edit.png��5)   0   $��20��6I   $��20��6T   $��0,0,40,0q�6�   �� 5*   *   -
   5        $��/image/delete.png��5*   0   $��20��6K   $��20��6V   6b   5+   '   5,   #   5.      50      51      52      �� 53   
   -   5        $ Closebutton��53      $��关闭��6&   $��14(�63   $��643,413,0,0q�6A   $	��Top=�6V   $
��Left=�6�   $��75��6�   $��30��6�   #���  6�   #���  6�   #���  6  54      55      