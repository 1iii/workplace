   M S B A M L   `   `   `  ���� C  ?FireWall, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:FireWallFireWall      FireWall.RealTimeData   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     a ]DevExpress.Xpf.Core.v15.1, Version=15.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a?dxe5http://schemas.devexpress.com/winfx/2008/xaml/editors  Cdxsch7http://schemas.devexpress.com/winfx/2008/xaml/scheduler  Adxca6http://schemas.devexpress.com/winfx/2008/xaml/carousel  c _DevExpress.Xpf.Gauges.v15.1, Version=15.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a?dxga4http://schemas.devexpress.com/winfx/2008/xaml/gauges  "localclr-namespace:FireWall  a ]DevExpress.Xpf.Grid.v15.1, Version=15.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49af bDevExpress.Xpf.Grid.v15.1.Core, Version=15.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a>dxg2http://schemas.devexpress.com/winfx/2008/xaml/grid   ;dx2http://schemas.devexpress.com/winfx/2008/xaml/core  -     � 	Resources    FireWall.ColorConverter   ColorConverter��%   &	          .���� 
�������$��1q�._�� .+�%  DevExpress.Xpf.Grid.GridControl  -     Name$ RealtimeData��)  #DevExpress.Xpf.Grid.DataControlBase   AutoGenerateColumns$ KeepOld=�$��50,81,50,70q�   
ShowBorder .     AllowLiveDataShaping$
 TrueX�   SelectionMode$	 Row=�   Columns $  DevExpress.Xpf.Grid.GridColumn  $  DevExpress.Xpf.Grid.ColumnBase   	FieldName$ 时间��$  DevExpress.Xpf.Grid.BaseColumn'    HorizontalHeaderContentAlignment$ Center=�	   Width$		 130��
   	SortOrder$
 	Ascending=�   	SortIndex$ 0��   Binding �� *time+   EditSettings 6  0DevExpress.Xpf.Editors.Settings.SpinEditSettings  6  0DevExpress.Xpf.Editors.Settings.BaseEditSettings   DisplayFormat$ yyyy-MM-dd HH:mm:ss��!   HorizontalContentAlignment$ Center=�  $ 主机名称��$ Center=�$		 180�� �� *
hostname+   $ Center=�  $ 源IP地址��$ Center=�$		 130�� �� *SRC+   $ Center=�  $ 目标IP地址��$ Center=�$		 130�� �� *DST+   $ Center=�  $ IP数据包标示��$ Center=�$		 130�� �� *ID+   $ Center=�  $ 传输层协议类型��$ Center=�$		 130�� �� *PROTO+   $ Center=�  $ 源端口号��$ Center=�$		 130�� �� *SPT+   $ Center=�  $ 目标端口号��$ Center=�$		 130�� �� *DPT+   $ Center=�  $ 处理状态��$ Center=�$		 130�� �� *handle_result+   $ Center=�   View #	  DevExpress.Xpf.Grid.TableView	  -   $
��view�� 	  AllowPerPixelScrolling . &
   DevExpress.Xpf.Grid.DataViewBase 
  ScrollingMode$ Smart=� 
  NavigationStyle$	 Row=� 
  ShowTotalSummary .  
  AllowEditing .  &   DevExpress.Xpf.Grid.GridViewBase   ShowGroupPanel .   	  FormatConditions )  #DevExpress.Xpf.Grid.FormatCondition  1  +DevExpress.Xpf.Grid.ExpressionConditionBase   
ApplyToRow .  -  'DevExpress.Xpf.Grid.FormatConditionBase   
Expression$ [处理状态] = 'drop'��   Format. 6  0DevExpress.Xpf.Core.ConditionalFormatting.Format     
Foreground �	#FFCA5100�� $��主机名称��$��14(�$
��Left=�$��30��$��	83,30,0,0q�$	��Top=�$��59��
���   �$��0q�$��Center=�)  #DevExpress.Xpf.Editors.ComboBoxEdit  -     Name$ HostName��*  $DevExpress.Xpf.Editors.PopupBaseEdit   ShowSizeGrip$ FalseY�'  !DevExpress.Xpf.Editors.ButtonEdit   IsTextEditable$ FalseX�$
��Left=�$��30��$	��Top=�$	��170��$��
165,30,0,0q�   ShowCustomItems �� *	IsChecked+  �� ElementName$  CheckedShowCustomItems���� $��处理状态��$��14(�$
��Left=�$��30��$��
398,30,0,0q�$	��Top=�$��59��
���   �$��0q�$��Center=�  -   $ 	StateName��$ FalseY�$ FalseX�$
��Left=�$��30��$	��Top=�$	��140��$��
480,30,0,0q� �� *	IsChecked+$  CheckedShowCustomItems��