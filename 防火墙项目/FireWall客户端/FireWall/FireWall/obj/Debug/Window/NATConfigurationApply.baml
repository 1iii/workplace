   M S B A M L   `   `   `  ����C  ?FireWall, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:FireWallFireWall  5   	   $    FireWall.NATConfigurationApply   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   a ]DevExpress.Xpf.Grid.v15.1, Version=15.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49af bDevExpress.Xpf.Grid.v15.1.Core, Version=15.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a>dxg2http://schemas.devexpress.com/winfx/2008/xaml/grid   5   	   $localclr-namespace:FireWall   5   	   a ]DevExpress.Xpf.Core.v15.1, Version=15.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a?dxe5http://schemas.devexpress.com/winfx/2008/xaml/editors  5   	   -   5          � Title$  NATConfigurationApply��5
   	   $	��450��6'   $	��970��64    � WindowStyle$
 None=�6@    � 
ResizeMode$ NoResize=�6S    � WindowStartupLocation$ CenterScreen=�6i   .��5      �  � ColumnDefinitions 5   
   �� 5      $
��247* �6   .+�5   
   �� -   5         ��Name$ NATApplybutton��5      $��应用��6)   $��14(�66   $��445,65,446,0q�6D   $	��Top=�6Z   $y�	Collapsed=�6r   $��30��6�   $��75��6�      MainButtonStyle#���   6�   ���	#FF17BD17  	FontBrush#���  6�   $��1��6'  �� 5   
   -   5         ��Name$ 
NATFWlabel��5      $��	防火墙��6$   $
��Left=�62   $��	15,10,0,0q�6M   $	��Top=�6`   $��70��6x   
���   �$��18(�6�   $��2��6�   �� 5   
   -   5        $ NATMAClabel��5      $��MAC: ��6%   $
��Left=�65   $��	85,10,0,0q�6P   $	��Top=�6c   $	��235��6{   
���   �$��18(�6�   �� 5   
   -   5        $ 
NATIPlabel��5      $
��IP: ��6$   $
��Left=�63   $��	85,43,0,0q�6N   $	��Top=�6a   $	��210��6y   
���   �$��18(�6�   �� 5   
   -   5        $ NewNATRulebutton��5      $��	添加NAT��6+   $��14(�6;   $��323,65,570,0q�6I   $	��Top=�6_   $��30��6�   $��75��6�   #���   6�     buttongroundbrush#���  6�   #���  6  $��1��61  �� 5   
   
�������$��1q�6&   $	��270��6:   $��25,130,25,0q�6G   $	��Top=�6\   $��2��6t   ._�5      � .+�5      &   System.Windows.Controls.DataGrid  -   5          Name$ DNATdataGrid��5      $��
20,50,20,0q�62     	GridStyle#���  6F     GridRowHeaderStyle   RowHeaderStyle# [ 6j     GridColumnHeaderStyle	   ColumnHeaderStyle#	 [ 6�     DataGridRowStyle
   RowStyle#
 [ 6�     GridCellStyle   	CellStyle# [ 6     AutoGenerateColumns .  $��1q�6j  $	��Top=�6~  $	��198��6�     
IsReadOnly .    CanUserReorderColumns .     CanUserSortColumns .      FireWall.DataGridRowHelper   ShowRowIndexProperty . ��6O  �� * +   Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ 源IP地址��6q      
IsReadOnly .    Width5  /System.Windows.Controls.DataGridLengthConverter$ * 6�   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6-   �� *origin_dstIP+   ClipboardContentBinding 6N   Z� 6�     5      $ 	源端口��6q    . $ * 6�    6-   �� *origin_dport+ 6N   Z� 6�     5      $ 映射IP地址��6k    . $ * 6�    6-   �� *map_IP+ 6H   Z� 6�     5      $ 映射端口��6m    . $ * 6�    6-   �� *
map_port+ 6J   Z� 6�   4  .System.Windows.Controls.DataGridTemplateColumn  5      $ 是否记录日志��62    .  $ * 6U      CellTemplate 5      �� 5   "   .R�5   &   �� {�.   d� 	IsChecked 6/   �� *log+6I   5    #   5"        5#      $ 操作��61    .  $ * 6P    5$      �� 5%   "   .R�5&   &   ��  �� Orientation$ 
Horizontal=�61   .+�5'   *   �� -   5        $��/image/edit.png��5'   0   $��20��6I   $��20��6T   $��0,0,40,0q�6�   �� 5(   *   -	   5        $��/image/delete.png��5(   0   $��20��6K   $��20��6V   6b   5)   '   5*   #   5,      5.        5/      -
   5        $ SNATdataGrid��5/      $y�	Collapsed=�61   $��
20,50,20,0q�6H   #���  6\   # [ 6�   #	 [ 6�   #
 [ 6�   # [ 6   .  $��1q�6�  $	��Top=�6�  $	��198��6�   .  .   .   . ��6e  �� * + 50        51      $ 源设备IP地址��6q    . $ * 6�    6-   �� *origin_devIP+ 6N   Z� 6�     52      $ 网口��6l    . $ * 6�    6-   �� *	EthName+ 6I   Z� 6�     53      $ 网口IP地址��6j    . $ * 6�    6-   �� *EthIP+ 6G   Z� 6�     54      $ 映射IP地址��6j    . $ * 6�    6-   �� *NATIP+ 6G   Z� 6�     55      $ 是否记录日志��62    .  $ * 6U    56      �� 57   "   .R�58   &   �� {�.   6/   �� *log+6I   59   #   5;        5<      $ 操作��61    .  $ * 6P    5=      �� 5>   "   .R�5?   &   �� $ 
Horizontal=�61   .+�5@   *   �� -   5        $��/image/edit.png��5@   0   $��20��6I   $��20��6T   $��0,0,40,0q�6�   �� 5A   *   -   5        $��/image/delete.png��5A   0   $��20��6K   $��20��6V   6b   5B   '   5C   #   5E      5G      )  #DevExpress.Xpf.Editors.ComboBoxEdit  5H      -   5          Name$ NATComboBox��5H   #   '	  !DevExpress.Xpf.Editors.ButtonEdit 	  IsTextEditable$ FalseX�68   +
  %DevExpress.Xpf.Editors.LookUpEditBase 
  SelectedIndex$ 0��6�   $
��Left=�6�   $��
120,15,0,0q�6�   $	��Top=�6�   $��89��6�   $��30��6�   �� 5I      -   5        $ label��5I      $��NAT类型 ：��6'   $��14(�69   $
��Left=�6G   $��	20,15,0,0q�6b   $	��Top=�6u    J� RenderTransformOrigin$ 
0.254,-0.4&�6�   $��30��6�   $��95��6�   5J      5K      �� 5L   
   -   5        $ Closebutton��5L      $��关闭��6&   $��14(�63   $��643,413,0,0q�6A   $	��Top=�6V   $
��Left=�6�   $��75��6�   $��30��6�   #���   6�   #���  6�   #���  6  5N      5O      