   M S B A M L   `   `   `  ���� C  ?FireWall, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:FireWallFireWall  %    FireWall.PRTConfigurationDetail   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     a ]DevExpress.Xpf.Core.v15.1, Version=15.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a?dxe5http://schemas.devexpress.com/winfx/2008/xaml/editors  "localclr-namespace:FireWall  -     � Title$  PRTConfigurationDetail�� � WindowStyle$
 None=�$	��500��$	��800�� � 
ResizeMode$ NoResize=� � WindowStartupLocation$ CenterScreen=�.���    backgroundbrush1#���   .+��� -    ��Name$ label��$��路由配置��$
��Left=�$��	40,10,0,0q�$	��Top=�$	��136��
���   �$��18(��� -   $ Protocollabel��$��路由类型 ：��$
��Left=�$��
260,60,0,0q�$	��Top=�$��90��
���   �$��14(�$��28��$��Center=�$��Center=�)  #DevExpress.Xpf.Editors.ComboBoxEdit  -     Name$ PRTComboBox��+  %DevExpress.Xpf.Editors.LookUpEditBase   SelectedIndex$ 1��$��372,60,270,0q�$	��Top=�$��25��$	��150��'  !DevExpress.Xpf.Editors.ButtonEdit   IsTextEditable$ FalseX��� 
�������$��1q�$	��312��$��25,130,25,0q�$	��Top=�._�� $��	1,1,-1,-1q�.+�  -   $ ETHComboBox��$ 0��$��274,83,324,0q�$	��Top=�$��25��$	��150��$ FalseX��� -   $ NetInterface��$��网络接口 ：��$��14(�
���   �$��28��$
��Left=�$��
175,80,0,0q�$	��Top=� J� RenderTransformOrigin$ 
0.667,-0.4&��� -   $ destIP��$��目的主机 IP :��$��14(�
���   �$
��Left=�$��172,180,0,0q�$	��Top=�$ 
-0.6,1.929&��� -   	 ��Name$	 destIPStarttextBox_1��$��Right=�$��25��
 �� TextWrapping$
 NoWrap=�$�� ��$��Bottom=�$��28��$��Center=�$��1,1,0,1q�$ 10.929,0.84&�$��0,0,446,102q��� -	   $ destsep1��$��.��$��Right=�$��Bottom=�$��12��$��25��
�������$	��0,1q����	#FFABADB3$��	ExtraBold"�$ 14.875,3.38&�$��0,0,434,102q��� -
   $	 destIPStarttextBox_2��$��Right=�$��25��$
 NoWrap=�$�� ��$��Bottom=�$��28��$��Center=�$	��0,1q�$ 
1.357,0.52&�$��0,0,406,102q��� -   $ destsep2��$��.��$��Right=�$��Bottom=�$��12��$��25��
�������$	��0,1q����	#FFABADB3$��	ExtraBold"�$ 
4.833,0.48&�$��0,0,394,102q��� -   $	 destIPStarttextBox_3��$��Right=�$��25��$
 NoWrap=�$�� ��$��Bottom=�$��28��$��Center=�$	��0,1q�$ 
1.357,0.52&�$��0,0,366,102q��� -   $ destsep3��$��.��$��Right=�$��Bottom=�$��12��$��25��
�������$	��0,1q����	#FFABADB3$��	ExtraBold"�$ 
4.833,0.48&�$��0,0,354,102q��� -   $	 destIPStarttextBox_4��$��Right=�$��25��$
 NoWrap=�$�� ��$��Bottom=�$��28��$��Center=�$��0,1,1,1q�$ 
1.357,0.52&�$��0,0,326,102q��� -   $
 Mask��$��网络掩码 ：��$y�	Collapsed=�$��14(�
���   �$
��Left=�$��458,180,0,0q�$	��Top=��� -   $	 MaskStarttextBox_1��$y�	Collapsed=�$��Right=�$��25��$
 NoWrap=�$�� ��$��Bottom=�$��28��$��Center=�$��1,1,0,1q�$ 10.929,0.84&�$��0,0,178,101q��� -   $ Masksep1��$��.��$y�	Collapsed=�$��Right=�$��Bottom=�$��12��$��25��
�������$	��0,1q����	#FFABADB3$��	ExtraBold"�$ 14.875,3.38&�$��0,0,166,101q��� -   $	 MaskStarttextBox_2��$y�	Collapsed=�$��Right=�$��25��$
 NoWrap=�$�� ��$��Bottom=�$��28��$��Center=�$	��0,1q�$ 
1.357,0.52&�$��0,0,138,101q��� -   $ Masksep2��$��.��$y�	Collapsed=�$��Right=�$��Bottom=�$��12��$��25��
�������$	��0,1q����	#FFABADB3$��	ExtraBold"�$ 
4.833,0.48&�$��0,0,126,101q��� -   $	 MaskStarttextBox_3��$y�	Collapsed=�$��Right=�$��25��$
 NoWrap=�$�� ��$��Bottom=�$��28��$��Center=�$	��0,1q�$ 
1.357,0.52&�$��
0,0,98,101q��� -   $ Masksep3��$��.��$y�	Collapsed=�$��Right=�$��Bottom=�$��12��$��25��
�������$	��0,1q����	#FFABADB3$��	ExtraBold"�$ 
4.833,0.48&�$��
0,0,86,101q��� -   $	 MaskStarttextBox_4��$y�	Collapsed=�$��Right=�$��25��$
 NoWrap=�$�� ��$��Bottom=�$��28��$��Center=�$��0,1,1,1q�$ 
1.357,0.52&�$��
0,0,58,101q��� -   $ GateIP��$��网关 IP ：��$��14(�
���   �$
��Left=�$��175,130,0,0q�$	��Top=��� -   $	 GateStarttextBox_1��$��Right=�$��25��$
 NoWrap=�$�� ��$��Bottom=�$��28��$��Center=�$��1,1,0,1q�$ 10.929,0.84&�$��0,0,446,152q��� -   $ Gatesep1��$��.��$��Right=�$��Bottom=�$��12��$��25��
�������$	��0,1q����	#FFABADB3$��	ExtraBold"�$ 14.875,3.38&�$��0,0,434,152q��� -   $	 GateStarttextBox_2��$��Right=�$��25��$
 NoWrap=�$�� ��$��Bottom=�$��28��$��Center=�$	��0,1q�$ 
1.357,0.52&�$��0,0,406,152q��� -   $ Gatesep2��$��.��$��Right=�$��Bottom=�$��12��$��25��
�������$	��0,1q����	#FFABADB3$��	ExtraBold"�$ 
4.833,0.48&�$��0,0,394,152q��� -   $	 GateStarttextBox_3��$��Right=�$��25��$
 NoWrap=�$�� ��$��Bottom=�$��28��$��Center=�$	��0,1q�$ 
1.357,0.52&�$��0,0,366,152q��� -   $ Gatesep3��$��.��$��Right=�$��Bottom=�$��12��$��25��
�������$	��0,1q����	#FFABADB3$��	ExtraBold"�$ 
4.833,0.48&�$��0,0,354,152q��� -   $	 GateStarttextBox_4��$��Right=�$��25��$
 NoWrap=�$�� ��$��Bottom=�$��28��$��Center=�$��0,1,1,1q�$ 
1.357,0.52&�$��0,0,326,152q��� -    ��Name$ AddPRTbutton��$��添  加��$��25��  MainButtonStyle#���    buttongroundbrush#���  
���   �$
��Left=�$��545,464,0,0q�$	��Top=�$��75���� -    $ button1��$��返  回��$��25��#���  #���  
���   �$
��Left=�$��675,464,0,0q�$	��Top=�$��75���� -!    ��Name$ logcheckBox��$��记录日志�� d� 	IsChecked$
 TrueY�$��14(�$
��Left=�$��
375,95,0,0q�$	��Top=�$��30��$��Center=�$��Center=�
���   �