   M S B A M L   `   `   `  ���� C  ?FireWall, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:FireWallFireWall  %    FireWall.NATConfigurationDetail   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     a ]DevExpress.Xpf.Core.v15.1, Version=15.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a?dxe5http://schemas.devexpress.com/winfx/2008/xaml/editors  "localclr-namespace:FireWall  -     � Title$  NATConfigurationDetail�� � WindowStyle$
 None=�$	��500��$	��800�� � 
ResizeMode$ NoResize=� � WindowStartupLocation$ CenterScreen=�.��� .+��� -    ��Name$ label��$��	NAT配置��$
��Left=�$��	40,10,0,0q�$	��Top=�$	��136��
���   �$��18(��� -   $ NATlabel��$��映射类型 ：��$
��Left=�$��
260,60,0,0q�$	��Top=�$��90��
���   �$��14(�$��28��$��Center=�$��Center=�)  #DevExpress.Xpf.Editors.ComboBoxEdit  -     Name$ NATComboBox��+  %DevExpress.Xpf.Editors.LookUpEditBase   SelectedIndex$ 0��$��372,60,270,0q�$	��Top=�$��25��$	��150��'  !DevExpress.Xpf.Editors.ButtonEdit   IsTextEditable$ FalseX��� 
�������$��1q�$	��312��$��25,130,25,0q�$	��Top=�._�� $��	1,1,-1,-1q�.+�  -   $ ETHComboBox��$ 0��$��274,31,324,0q�$y�	Collapsed=�$	��Top=�$��25��$	��150��$ FalseX��� -   $ iface��$��网络接口 ：��$y�	Collapsed=�
���   �$��14(�$
��Left=�$��175,30,0,256q�$��Center=�$��28���� -   $ dstIP��$��目的 IP ：��$��14(�
���   �$
��Left=�$��
175,80,0,0q�$	��Top=� J� RenderTransformOrigin$ 0.559,-1.536&��� -   	 ��Name$	 srcStarttextBox_1��$��Right=�$��25��
 �� TextWrapping$
 NoWrap=�$�� ��$��Bottom=�$��28��$��Center=�$��1,1,0,1q�$ 10.929,0.84&�$��0,0,446,202q��� -	   $ srcsep1��$��.��$��Right=�$��Bottom=�$��12��$��25��
�������$	��0,1q����	#FFABADB3$��	ExtraBold"�$ 14.875,3.38&�$��0,0,434,202q��� -
   $	 srcStarttextBox_2��$��Right=�$��25��$
 NoWrap=�$�� ��$��Bottom=�$��28��$��Center=�$	��0,1q�$ 
1.357,0.52&�$��0,0,406,202q��� -   $ srcsep2��$��.��$��Right=�$��Bottom=�$��12��$��25��
�������$	��0,1q����	#FFABADB3$��	ExtraBold"�$ 
4.833,0.48&�$��0,0,394,202q��� -   $	 srcStarttextBox_3��$��Right=�$��25��$
 NoWrap=�$�� ��$��Bottom=�$��28��$��Center=�$	��0,1q�$ 
1.357,0.52&�$��0,0,366,202q��� -   $ srcsep3��$��.��$��Right=�$��Bottom=�$��12��$��25��
�������$	��0,1q����	#FFABADB3$��	ExtraBold"�$ 
4.833,0.48&�$��0,0,354,202q��� -   $	 srcStarttextBox_4��$��Right=�$��25��$
 NoWrap=�$�� ��$��Bottom=�$��28��$��Center=�$��0,1,1,1q�$ 
1.357,0.52&�$��0,0,326,202q��� -   $ NATIP��$��映射目的 IP ：��$��14(�
���   �$
��Left=�$��175,130,0,0q�$	��Top=��� -   $	 dstStarttextBox_1��$��Right=�$��25��$
 NoWrap=�$�� ��$��Bottom=�$��28��$��Center=�$��1,1,0,1q�$ 10.929,0.84&�$��0,0,446,152q��� -   $ dstsep1��$��.��$��Right=�$��Bottom=�$��12��$��25��
�������$	��0,1q����	#FFABADB3$��	ExtraBold"�$ 14.875,3.38&�$��0,0,434,152q��� -   $	 dstStarttextBox_2��$��Right=�$��25��$
 NoWrap=�$�� ��$��Bottom=�$��28��$��Center=�$	��0,1q�$ 
1.357,0.52&�$��0,0,406,152q��� -   $ dstsep2��$��.��$��Right=�$��Bottom=�$��12��$��25��
�������$	��0,1q����	#FFABADB3$��	ExtraBold"�$ 
4.833,0.48&�$��0,0,394,152q��� -   $	 dstStarttextBox_3��$��Right=�$��25��$
 NoWrap=�$�� ��$��Bottom=�$��28��$��Center=�$	��0,1q�$ 
1.357,0.52&�$��0,0,366,152q��� -   $ dstsep3��$��.��$��Right=�$��Bottom=�$��12��$��25��
�������$	��0,1q����	#FFABADB3$��	ExtraBold"�$ 
4.833,0.48&�$��0,0,354,152q��� -   $	 dstStarttextBox_4��$��Right=�$��25��$
 NoWrap=�$�� ��$��Bottom=�$��28��$��Center=�$��0,1,1,1q�$ 
1.357,0.52&�$��0,0,326,152q��� -   $ 
orig_dport��$��目的端口 ：��$��14(�
���   �$
��Left=�$��175,180,0,0q�$	��Top=�$	��247���� -   $	 orig_dportBox��$
��Left=�$��25��$��302,183,0,0q�$

 Wrap=�$�� ��$	��Top=�$��80���� -   $ 	nat_dport��$��14(�
���   �$��映射目的端口 ：��$
��Left=�$��175,230,0,0q�$	��Top=��� -   $	 nat_dportBox��$
��Left=�$��25��$��302,230,0,0q�$

 Wrap=�$�� ��$	��Top=�$��80���� -    ��Name$ AddPRTbutton��$��添  加��$��25��   MainButtonStyle#���     buttongroundbrush#���  
���   �$
��Left=�$��545,464,0,0q�$	��Top=�$��75���� -   $ button1��$��返  回��$��25��#���   #���  
���   �$
��Left=�$��675,464,0,0q�$	��Top=�$��75���� -    ��Name$ logcheckBox��$��记录日志�� d� 	IsChecked$
 TrueY�$��14(�$
��Left=�$��
375,95,0,0q�$	��Top=�$��30��$��Center=�$��Center=�
���   �