   M S B A M L   `   `   `  ����C  ?FireWall, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:FireWallFireWall  5   	   $    FireWall.APCConfigurationApply   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   (localclr-namespace:FireWall     5   	   a ]DevExpress.Xpf.Core.v15.1, Version=15.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a?dxe5http://schemas.devexpress.com/winfx/2008/xaml/editors  5   	   -   5          � Title$  APCConfigurationApply��5	   	   $	��450��6'   $	��970��64    � WindowStyle$
 None=�6@    � 
ResizeMode$ NoResize=�6S    � WindowStartupLocation$ CenterScreen=�6i   .��5
      � .+�5   
   �� -   5         ��Name$ 
FWAPClabel��5      $��	防火墙��6$   $
��Left=�62   $��	15,10,0,0q�6M   $	��Top=�6`   $��70��6x   
���   �$��18(�6�   �� 5   
   -   5        $ MACAPClabel��5      $��MAC: ��6%   $
��Left=�65   $��	85,10,0,0q�6P   $	��Top=�6c   $	��235��6{   
���   �$��18(�6�   �� 5   
   -   5        $ 
APCIPlabel��5      $
��IP: ��6$   $
��Left=�63   $��	85,43,0,0q�6N   $	��Top=�6a   $	��210��6y   
���   �$��18(�6�   �� 5   
   
�������$��1q�6&   $	��270��6:   $��25,124,25,0q�6G   $	��Top=�6\   ._�5      � $��	1,-1,-1,1q�6   .+�5      �� -   5        $ APCRuleslabel1��5      $'��!应用层协议控制规则列表��60   $
��Left=�6F   $��	20,10,0,0q�6a   $	��Top=�6t   $	��166��6�   $��14(�6�   $��30��6�   
���   �6�   &   System.Windows.Controls.DataGrid  5      -   5          Name$ APCdataGrid��5      $��
20,45,20,0q�60      	GridStyle#���   6D     GridRowHeaderStyle   RowHeaderStyle# [ 6h     GridColumnHeaderStyle   ColumnHeaderStyle# [ 6�     DataGridRowStyle   RowStyle# [ 6�     GridCellStyle	   	CellStyle#	 [ 6  
   AutoGenerateColumns
 .  $��1q�6h  $	��Top=�6|  $	��198��6�     
IsReadOnly .    CanUserReorderColumns .     CanUserSortColumns .      FireWall.DataGridRowHelper   ShowRowIndexProperty . ��6M  �� * +   Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ 应用层协议��6m      
IsReadOnly .    Width5  /System.Windows.Controls.DataGridLengthConverter$ * 6�   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6-   �� *
protocol+   ClipboardContentBinding 6J   Z� 6�     5      $ 状态��6k    . $ * 6�    6-   �� *status+ 6H   Z� 6�   4  .System.Windows.Controls.DataGridTemplateColumn  5      $ 是否记录日志��62    .  $ * 6U      CellTemplate 5      �� 5   "   .R�5   &   �� {�.   d� 	IsChecked 6/   �� *log+6I   5   #   5        5      $ 操作��61    .  $	 110 6P    5      �� 5   "   .R�5   &   ��  �� Orientation$ 
Horizontal=�61   .+�5    *   �� -   5        $��/image/edit.png��5    0   $��20��6I   $��20��6T   $��0,0,40,0q�6�   5!   '   5"   #   5$      5&      5'      5(      �� 5)   
   -   5         ��Name$ Closebutton��5)      $��关闭��6&   $��14(�63   $��643,413,0,0q�6A   $	��Top=�6V   $
��Left=�6�   $��75��6�   $��30��6�     MainButtonStyle#���  6�     buttongroundbrush#���  6�     	FontBrush#���  6  5+      5,      