   M S B A M L   `   `   `  ���� C  ?FireWall, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:FireWallFireWall  %    FireWall.CNCConfigurationDetail   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     a ]DevExpress.Xpf.Core.v15.1, Version=15.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a?dxe5http://schemas.devexpress.com/winfx/2008/xaml/editors  "localclr-namespace:FireWall  -     � Title$  CNCConfigurationDetail�� � WindowStyle$
 None=�$	��500��$	��800�� � 
ResizeMode$ NoResize=� � WindowStartupLocation$ CenterScreen=�.��� .+��� -    ��Name$ label��$��IP连接数控制��$
��Left=�$��	30,32,0,0q�$	��Top=�$	��136��
���   �$��18(��� 
�������$��1q�$	��320��$��
30,85,20,0q�$	��Top=�._�� $��	-1,-1,1,1q�.+��� -   $ srcIP��$��
源 IP ：��$��14(�
���   �$
��Left=�$��
175,34,0,0q�$	��Top=� J� RenderTransformOrigin$ 0.559,-1.536&��� -    ��Name$ srcStarttextBox_1��$��Right=�$��25�� �� TextWrapping$ NoWrap=�$�� ��$��Bottom=�$��28��$��Center=�$��1,1,0,1q�$ 10.929,0.84&�$��0,0,446,256q��� -   $ srcsep1��$��.��$��Right=�$��Bottom=�$��12��$��25��
�������$	��0,1q����	#FFABADB3$��	ExtraBold"�$ 14.875,3.38&�$��0,0,434,256q��� -   $ srcStarttextBox_2��$��Right=�$��25��$ NoWrap=�$�� ��$��Bottom=�$��28��$��Center=�$	��0,1q�$ 
1.357,0.52&�$��0,0,406,256q��� -   $ srcsep2��$��.��$��Right=�$��Bottom=�$��12��$��25��
�������$	��0,1q����	#FFABADB3$��	ExtraBold"�$ 
4.833,0.48&�$��0,0,394,256q��� -   $ srcStarttextBox_3��$��Right=�$��25��$ NoWrap=�$�� ��$��Bottom=�$��28��$��Center=�$	��0,1q�$ 
1.357,0.52&�$��0,0,366,256q��� -	   $ srcsep3��$��.��$��Right=�$��Bottom=�$��12��$��25��
�������$	��0,1q����	#FFABADB3$��	ExtraBold"�$ 
4.833,0.48&�$��0,0,354,256q��� -
   $ srcStarttextBox_4��$��Right=�$��25��$ NoWrap=�$�� ��$��Bottom=�$��28��$��Center=�$��0,1,1,1q�$ 
1.357,0.52&�$��0,0,326,256q��� -   $ dstIP��$��目的 IP ：��$��14(�
���   �$
��Left=�$��
175,90,0,0q�$	��Top=��� -   $ dstStarttextBox_1��$��Right=�$��25��$ NoWrap=�$�� ��$��Bottom=�$��28��$��Center=�$��1,1,0,1q�$ 10.929,0.84&�$��0,0,446,203q��� -   $ dstsep1��$��.��$��Right=�$��Bottom=�$��12��$��25��
�������$	��0,1q����	#FFABADB3$��	ExtraBold"�$ 14.875,3.38&�$��0,0,434,203q��� -   $ dstStarttextBox_2��$��Right=�$��25��$ NoWrap=�$�� ��$��Bottom=�$��28��$��Center=�$	��0,1q�$ 
1.357,0.52&�$��0,0,406,203q��� -   $ dstsep2��$��.��$��Right=�$��Bottom=�$��12��$��25��
�������$	��0,1q����	#FFABADB3$��	ExtraBold"�$ 
4.833,0.48&�$��0,0,394,203q��� -   $ dstStarttextBox_3��$��Right=�$��25��$ NoWrap=�$�� ��$��Bottom=�$��28��$��Center=�$	��0,1q�$ 
1.357,0.52&�$��0,0,366,203q��� -   $ dstsep3��$��.��$��Right=�$��Bottom=�$��12��$��25��
�������$	��0,1q����	#FFABADB3$��	ExtraBold"�$ 
4.833,0.48&�$��0,0,354,203q��� -   $ dstStarttextBox_4��$��Right=�$��25��$ NoWrap=�$�� ��$��Bottom=�$��28��$��Center=�$��0,1,1,1q�$ 
1.357,0.52&�$��0,0,326,203q��� -   $ sport��$��源端口 ：��$��14(�
���   �$
��Left=�$��175,140,0,0q�$	��Top=��� -   $ sportBox��$
��Left=�$��25��$��274,143,0,0q�$
 Wrap=�$�� ��$	��Top=�$��80���� -   $ dport��$��14(�
���   �$��目的端口 ：��$
��Left=�$��175,190,0,0q�$	��Top=��� -   $ dportBox��$
��Left=�$��25��$��274,193,0,0q�$
 Wrap=�$�� ��$	��Top=�$��80���� -   $ 	connlimit��$��最大连接数 :��$��14(�
���   �$
��Left=�$��175,240,0,0q�$	��Top=��� -   $ connBox��$��0��$
��Left=�$��25��$��274,240,0,0q�$
 Wrap=�$	��Top=�$��80���� -    ��Name$ logcheckBox��$��记录日志��	 d� 	IsChecked$
	 TrueY�$��14(�$
��Left=�$��382,238,0,0q�$	��Top=�$��30��$��Center=�$��Center=�
���   ��� -   
 ��Name$
 AddCNCbutton��$��添  加��$��25��   MainButtonStyle#���     buttongroundbrush#���  
���   �$
��Left=�$��540,435,0,0q�$	��Top=�$��75���� -   $
 button1��$��返  回��$��25��#���   #���  
���   �$
��Left=�$��670,435,0,0q�$	��Top=�$��75��