   M S B A M L   `   `   `  ����=  9TJ, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:TJTJ  5          TJ.ShoesListPage   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      "localclr-namespace:TJ     5        N� Title$  ShoesListPage��5	      .��5      �  � RowDefinitions 5   
   �� 5      �� 5      $��50 �6   .+�5   
   &   System.Windows.Controls.DataGrid  -   5          Name$ DataGridshoo��5   L      AutoGenerateColumns .  $��Center=�6b      MaterialDesignDataGrid#��[  6   ��6   �� *Shoo+   Columns 5      4  .System.Windows.Controls.DataGridTemplateColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ Наименование��6)      Width5  /System.Windows.Controls.DataGridLengthConverter$ * 6?      CellTemplate 5      �� 5      .R�5      �� $
��Wrap=�6(   ��6<   �� *	ShoosName+5      5        5      $ Фото��6)    5      �� 5      .R�5      �� $	��100��6@   $	��100��6M   $
��Fill=�6Y   ��6$   �� *
GetPhoto+6Y   5      5        5       $ Тип обуви��6)   $ * 6<    5!      �� 5"      .R�5#      �� $
��Wrap=�6(   ��6<   �� *ShoeType.ShoesType+5$      5&        5'      $ Артикул��6)   $ * 6:    5(      �� 5)      .R�5*      �� $
��Wrap=�6(   ��6<   �� *	Article+5+      5-        5.      $ Размер обуви��6)   $	 100 6?    5/      �� 50      .R�51      �� $
��Wrap=�6(   ��6<   �� *Size.SizeName+52      54        55      $ 
Сезон��6)   $ * 68    56      �� 57      .R�58      �� $
��Wrap=�6(   ��6<   �� *Season.SeasonName+59      5;        5<      $ Цвет��6)   $ * 67    5=      �� 5>      .R�5?      �� $
��Wrap=�6(   ��6<   �� *
Color.Name+5@      5B        5C      $ Материал��6)   $ * 6;    5D      �� 5E      .R�5F      �� $
��Wrap=�6(   ��6<   �� *Material.Name+5G      5I        5J      $ Цена��6)   $ * 67    5K      �� 5L      .R�5M      �� $
��Wrap=�6(   ��6<   �� *Price+5N      5P        5Q      $ Просмотр��6)   $ * 6;    5R      �� 5S      .R�5T      ��  ��Name$ ShoesInfoBtn��6%   -   5        $��Просмотр��5T   ;   6N   5U      5W      5Y      �� 5Z   
   -   5        $ AddShoes��5Z      $!��Добавить обувь��6#   $��2��6<    " MaterialDesignFlatDarkBgButton#��[ 6J   $��Center=�5[      $
��40 0q�6,   $
��10 5q�6:   $
��Left=�6I   $��15(�6d   6r   �� 5\   
   -   5        $ DeteleShoes��5\      $��Удалить��6&   $��2��68   #��[ 6E   $��Center=�5]      $
��40 0q�6,   $
��10 5q�6:   $��Right=�6I   $��15(�6e   6s   5^      5_      