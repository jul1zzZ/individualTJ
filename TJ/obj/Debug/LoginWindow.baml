   M S B A M L   `   `   `  ����=  9TJ, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:TJTJ  5   	       TJ.LoginWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   "localclr-namespace:TJ     5   	   _ [MaterialDesignThemes.Wpf, Version=4.8.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	     � Title$  LoginWindow��5	   	   $	��450��6   $	��800��6*    � 
ResizeMode$ NoResize=�66   .��5
      �  � RowDefinitions 5   
   �� 5      $��80 �6   �� 5      �� 5      $��60 �6   .+�5   
   � $��1��6   $
��20 0q�6    5      �� 5      �� 5      .+�5      �� -   5         ��Name$ LoginTb��5   J   $��0��6-   $��1��6:    %  !MaterialDesignFloatingHintTextBox#��[  5      )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Введите логин��6Q   $	��450��6�   $��Center=�6�   $��15(�6�   ��5      �� *Login+5   �   G� 5      -   5         G�Name$ 
PasswordPb��5      $��1��6.   $��1��6;   $! Введите пароль��5       # MaterialDesignRevealPasswordBox#��[ 6J   $��30��6�   $	��450��6�   $��Center=�6�   $��15(�6�   5      � 5   
   ���#81858a6   � 5   
   ���#81858a$��2��6$   �� 5   
   -   5         ��Name$ SavePasswordCheckBox��5       d� 	IsChecked$ FalseY�61   $��2��6C   $��1��5       $��40��6#   $��40��6/   $��Center=�6:   $��Right=�6U     MaterialDesignCheckBox#��[ 6q   �� 5!   
   $��Запомнить��6   $��2��6%   $��1��62   $	��Top=�5"      $��Right=�6,   $��42 20q�6H   
�������6W   �� 5#   
   $��TJ COLLECTION��6   $��Center=�6*   $��Center=�5$      
�������$��70(�6D   �� 5%   
   -   5         ��Name$ LoginBtn��5%      $��
Войти��6#   $��2��64   $��Center=�5&       " MaterialDesignFlatDarkBgButton#��[ 6.   
����������#81858a���#81858a6�   5'      5(      