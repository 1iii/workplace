   M S B A M L   `   `   `  ���� C  ?FireWall, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:FireWallFireWall  %    FireWall.WHLConfigurationDetail   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     (localclr-namespace:FireWall     -     � Title$  WHLConfigurationDetail�� � WindowStyle$
 None=�$	��500��$	��800�� � 
ResizeMode$ NoResize=� � WindowStartupLocation$ CenterScreen=�.��� .+��� -    ��Name$ label��$��	白名单��$
��Left=�$��	30,32,0,0q�$	��Top=�$	��136��
���   �$��18(��� 
�������$��1q�$	��320��$��
30,85,20,0q�$	��Top=�._�� $��	-1,-1,1,1q�.+��� -   $ srcIP��$��
源 IP ：��$��14(�
���   �$
��Left=�$��
175,80,0,0q�$	��Top=� J� RenderTransformOrigin$ 0.559,-1.536&��� -    ��Name$ srcStarttextBox_1��$��Right=�$��25�� �� TextWrapping$ NoWrap=�$�� ��$��Bottom=�$��28��$��Center=�$��1,1,0,1q�$ 10.929,0.84&�$��0,0,446,202q��� -   $ srcsep1��$��.��$��Right=�$��Bottom=�$��12��$��25��
�������$	��0,1q����	#FFABADB3$��	ExtraBold"�$ 14.875,3.38&�$��0,0,434,202q��� -   $ srcStarttextBox_2��$��Right=�$��25��$ NoWrap=�$�� ��$��Bottom=�$��28��$��Center=�$	��0,1q�$ 
1.357,0.52&�$��0,0,406,202q��� -   $ srcsep2��$��.��$��Right=�$��Bottom=�$��12��$��25��
�������$	��0,1q����	#FFABADB3$��	ExtraBold"�$ 
4.833,0.48&�$��0,0,394,202q��� -   $ srcStarttextBox_3��$��Right=�$��25��$ NoWrap=�$�� ��$��Bottom=�$��28��$��Center=�$	��0,1q�$ 
1.357,0.52&�$��0,0,366,202q��� -	   $ srcsep3��$��.��$��Right=�$��Bottom=�$��12��$��25��
�������$	��0,1q����	#FFABADB3$��	ExtraBold"�$ 
4.833,0.48&�$��0,0,354,202q��� -
   $ srcStarttextBox_4��$��Right=�$��25��$ NoWrap=�$�� ��$��Bottom=�$��28��$��Center=�$��0,1,1,1q�$ 
1.357,0.52&�$��0,0,326,202q��� -   $ dstIP��$��目的 IP ：��$��14(�
���   �$
��Left=�$��175,130,0,0q�$	��Top=��� -   $ dstStarttextBox_1��$��Right=�$��25��$ NoWrap=�$�� ��$��Bottom=�$��28��$��Center=�$��1,1,0,1q�$ 10.929,0.84&�$��0,0,446,152q��� -   $ dstsep1��$��.��$��Right=�$��Bottom=�$��12��$��25��
�������$	��0,1q����	#FFABADB3$��	ExtraBold"�$ 14.875,3.38&�$��0,0,434,152q��� -   $ dstStarttextBox_2��$��Right=�$��25��$ NoWrap=�$�� ��$��Bottom=�$��28��$��Center=�$	��0,1q�$ 
1.357,0.52&�$��0,0,406,152q��� -   $ dstsep2��$��.��$��Right=�$��Bottom=�$��12��$��25��
�������$	��0,1q����	#FFABADB3$��	ExtraBold"�$ 
4.833,0.48&�$��0,0,394,152q��� -   $ dstStarttextBox_3��$��Right=�$��25��$ NoWrap=�$�� ��$��Bottom=�$��28��$��Center=�$	��0,1q�$ 
1.357,0.52&�$��0,0,366,152q��� -   $ dstsep3��$��.��$��Right=�$��Bottom=�$��12��$��25��
�������$	��0,1q����	#FFABADB3$��	ExtraBold"�$ 
4.833,0.48&�$��0,0,354,152q��� -   $ dstStarttextBox_4��$��Right=�$��25��$ NoWrap=�$�� ��$��Bottom=�$��28��$��Center=�$��0,1,1,1q�$ 
1.357,0.52&�$��0,0,326,152q��� -   $ sport��$��源端口 ：��$��14(�
���   �$
��Left=�$��175,180,0,0q�$	��Top=��� -   $ sportBox��$
��Left=�$��25��$��274,185,0,0q�$
 Wrap=�$�� ��$	��Top=�$��80���� -   $ dport��$��14(�
���   �$��目的端口 ：��$
��Left=�$��175,230,0,0q�$	��Top=��� -   $ dportBox��$
��Left=�$��25��$��274,230,0,0q�$
 Wrap=�$�� ��$	��Top=�$��80���� -    ��Name$ logcheckBox��$��记录日志��	 d� 	IsChecked$
	 TrueY�$��14(�$
��Left=�$��180,278,0,0q�$	��Top=�$��30��$��Center=�$��Center=�
���   ��� -   
 ��Name$
 AddCNCbutton��$��添  加��$��25��   MainButtonStyle#���     buttongroundbrush#���  
���   �$
��Left=�$��540,435,0,0q�$	��Top=�$��75���� -   $
 button1��$��返  回��$��25��#���   #���  
���   �$
��Left=�$��670,435,0,0q�$	��Top=�$��75��