   M S B A M L   `   `   `  ����=  9TJ, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:TJTJ  5          TJ.ShoesInfoPage   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      "localclr-namespace:TJ     5      _ [MaterialDesignThemes.Wpf, Version=4.8.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5	        N� Title$  ShoesInfoPage��5
      .��5      �  � ColumnDefinitions 5   
   �� 5      �� 5       � RowDefinitions 5   
   �� 5      �� 5      �� 5      �� 5      �� 5      �� 5      �� 5      �� 5      $��2* �6   �� 5      $
��1.5* �6   .+�5   
   �� $)��#Наименование обуви��6   $��0��6.   $��0��6;   $��Center=�6K   $��Center=�6f   �� 5    
   $��Размер обуви��6   $��1��6(   $��0��65   $��Center=�6E   $��Center=�6`   �� 5!   
   $��
Сезон��6   $��2��6!   $��0��6.   $��Center=�6>   $��Center=�6Y   �� 5"   
   $��Цвет��6   $��3��6    $��0��6-   $��Center=�6=   $��Center=�6X   �� 5#   
   $��Материал��6   $��4��6$   $��0��61   $��Center=�6A   $��Center=�6\   �� 5$   
   $��Цена��6   $��5��6    $��0��6-   $��Center=�6=   $��Center=�6X   �� 5%   
   $��Тип обуви��6   $��6��6%   $��0��62   $��Center=�6B   $��Center=�6]   �� 5&   
   -   5         ��Name$ LoadPhotoBtn��5&      $��7��5'      $��0��6   $��Center=�6.   $	��100��6K   $��50��6W   $��Center=�6c    "  MaterialDesignFlatDarkBgButton#��[  6~   .��5(      �� $��\Resources\1.png��6   $
��Fill=�6.   5)      �� 5+   
   $��1��6   $��0��6"    % !MaterialDesignFloatingHintTextBox#��[ 60   $��Center=�5,      $��Center=�64   $	��250��6Q   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$- 'Введите наименование��6]   $��Center=�5-   -   ��6   �� *	ShoosName+6-   �� 5.   
   -   5         ��Name$ SizeCb��5.      $��1��6#   $��1��63   $��Center=�6@   $��Center=�6b   $	��250��6    & "MaterialDesignFloatingHintComboBox#��[ 5/      $# Выберите размер��6O    �� DisplayMemberPath$ SizeName��50   0   $��Center=�6M    �� SelectedItem 6   �� *Size+6M   �� 51   
   -   5        $ SeasonCb��51      $��1��6&   $��2��66   $��Center=�6C   $��Center=�6e   $	��250��6�   #��[ 52      $! Выберите сезон��6P   $ 
SeasonName��53   2   $��Center=�6Q    6   �� *Season+6Q   �� 54   
   -   5        $ ColorCb��54      $��1��6$   $��3��64   $��Center=�6A   $��Center=�6c   $	��250��6�   #��[ 55      $ Выберите цвет��6O   $
 Name��56   1   $��Center=�6J    6   �� *Color+6J   �� 57   
   -   5        $ 
MaterialCb��57      $��1��6'   $��4��67   $��Center=�6D   $��Center=�6f   $	��250��6�   #��[ 58      $' !Выберите материал��6O   $
 Name��59   4   $��Center=�6M    6   �� *
Material+6M   �� 5:   
   $��1��6   $��5��6"   $��Center=�6/   $��Center=�6Q   $	��250��6n   #��[ 5;      $ Введите цену��6M   $��Center=�5<   )   ��6   �� *Price+6)   �� 5=   
   -   5        $��ShooTypesCb��5=      $ 	ShoesType��6&   $��Center=�6D   $��Center=�6f   $	��250��6�   #��[ 5>      $ Выберите тип ��6O   $��6��5?   5   $��1��6B   $��Center=�6R    6   �� *
ShoeType+6R   �� 5@   
   $��1��6   $��7��6    ��6-   �� *
GetPhoto+�� 5A   
   -   5        $ SaveBtn��5A      $��Сохранить��68   #��[  6M   $��12��5B      $��2��6   $��Center=�64   $��Center=�6Q   5C      5D      