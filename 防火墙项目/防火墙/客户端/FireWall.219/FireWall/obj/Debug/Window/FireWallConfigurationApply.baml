   M S B A M L   `   `   `  ����C  ?FireWall, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:FireWallFireWall  5   	   )    #FireWall.FireWallConfigurationApply   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   (localclr-namespace:FireWall     5   	   a ]DevExpress.Xpf.Grid.v15.1, Version=15.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49af bDevExpress.Xpf.Grid.v15.1.Core, Version=15.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a>dxg2http://schemas.devexpress.com/winfx/2008/xaml/grid   5   	   -   5          � Title$   FireWallConfigurationApply��5	   	   $	��450��6,   $	��970��69    � WindowStyle$
 None=�6E    � 
ResizeMode$ NoResize=�6X    � WindowStartupLocation$ CenterScreen=�6n   .��5
      �    backgroundbrush1#���   6   .+�5   
   �� -   5         ��Name$ NewRulebutton��5      $��	新规则��6(   $��14(�66   $��300,65,423,0q�6D   $	��Top=�6Z   $��30��6�   $��75��6�     MainButtonStyle#���  6�     buttongroundbrush#���  6�     	FontBrush#���  6   �� 5   
   -   5        $ Applybutton��5      $��应用��6&   $��14(�63   $��423,65,300,0q�6A   $	��Top=�6W   $y�	Collapsed=�6o   $��30��6�   $��75��6�   #���  6�   ���	#FF17BD17#���  6�   �� 5   
   -   5         ��Name$ label��5      $��	防火墙��6   $
��Left=�6-   $��	15,10,0,0q�6H   $	��Top=�6[   $��70��6s   
���   �$��18(�6�   �� 5   
   -   5        $ MAClabel��5      $��MAC: ��6"   $
��Left=�62   $��	85,10,0,0q�6M   $	��Top=�6`   $	��235��6x   
���   �$��18(�6�   �� 5   
   -   5        $ IPlabel��5      $
��IP: ��6!   $
��Left=�60   $��	85,43,0,0q�6K   $	��Top=�6^   $	��210��6v   
���   �$��18(�6�   �� 5   
   
�������$��1q�6&   $	��270��6:   $��25,130,25,0q�6G   $	��Top=�6\   ._�5      � .+�5      �� -   5        $ label1��5      $��防火墙规则列表��6(   $
��Left=�6:   $��	20,10,0,0q�6U   $	��Top=�6h   $	��108��6�   $��14(�6�   $��25��6�   
�������6�   &   System.Windows.Controls.DataGrid  5      -   5          Name$ dataGrid��5      $��
20,50,20,0q�6-     	GridStyle#���  6A     GridRowHeaderStyle   RowHeaderStyle# [ 6e     GridColumnHeaderStyle   ColumnHeaderStyle# [ 6�     DataGridRowStyle	   RowStyle#	 [ 6�     GridCellStyle
   	CellStyle#
 [ 6     AutoGenerateColumns .  $��1q�6e  $	��Top=�6y  $	��198��6�     
IsReadOnly .    CanUserReorderColumns .     CanUserSortColumns .      FireWall.DataGridRowHelper   ShowRowIndexProperty . ��6J  �� * +   Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ 协议��6m      
IsReadOnly .    Width5  /System.Windows.Controls.DataGridLengthConverter$ 80 6�   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6-   �� *
protocol+   ClipboardContentBinding 6J   Z� 6�     5      $ 主机IP地址��6k    . $	 120 6�    6-   �� *source+ 6H   Z� 6�     5      $ 从机IP地址��6p    . $	 120 6�    6-   �� *destination+ 6M   Z� 6�     5      $ 线圈起始地址��6u    . $ 90 6�    6-   �� *coiladdressstart+ 6R   Z� 6�     5      $ 线圈终止地址��6s    . $ 90 6�    6-   �� *coiladdressend+ 6P   Z� 6�     5      $ 	功能码��6i    .    MinWidth$ 50Q�6�    6-   �� *func+ 6F   Z� 6�     5      $ 最小转速��6l    . $ 60Q�6�    6-   �� *	mindata+ 6I   Z� 6�     5      $ 最大转速��6l    . $ 60Q�6�    6-   �� *	maxdata+ 6I   Z� 6�   4  .System.Windows.Controls.DataGridTemplateColumn  5      $ 是否记录日志��62    .  $ 90 6U      CellTemplate 5      �� 5   "   .R�5    &   �� {�.   d� 	IsChecked 6/   �� *log+6I   5!   #   5#        5$      $ 操作��61    .  $	 110 6P    5%      �� 5&   "   .R�5'   &   ��  �� Orientation$ 
Horizontal=�61   .+�5(   *   �� -	   5        $��/image/edit.png��5(   0   $��20��6I   $��20��6T   $��0,0,40,0q�6�   �� 5)   *   -
   5        $��/image/delete.png��5)   0   $��20��6K   $��20��6V   6b   5*   '   5+   #   5-      5/      50      51      �� 52   
   -   5        $ Closebutton��52      $��关闭��6&   $��14(�63   $��643,413,0,0q�6A   $	��Top=�6V   $
��Left=�6�   $��75��6�   $��30��6�   #���  6�   #���  6�   #���  6  53      54      