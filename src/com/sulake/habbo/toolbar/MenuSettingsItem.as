package com.sulake.habbo.toolbar
{
   public class MenuSettingsItem
   {
       
      
      private var var_2164:String;
      
      private var var_2190:Array;
      
      private var var_2189:Boolean;
      
      public function MenuSettingsItem(param1:String, param2:Array = null, param3:Boolean = false)
      {
         super();
         this.var_2164 = param1;
         this.var_2190 = param2;
         this.var_2189 = param3;
      }
      
      public function get menuId() : String
      {
         return this.var_2164;
      }
      
      public function get yieldList() : Array
      {
         return this.var_2190;
      }
      
      public function get lockToIcon() : Boolean
      {
         return this.var_2189;
      }
   }
}
