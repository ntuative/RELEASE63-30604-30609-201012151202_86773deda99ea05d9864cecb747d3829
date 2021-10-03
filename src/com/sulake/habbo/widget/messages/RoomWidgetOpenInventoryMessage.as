package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenInventoryMessage extends RoomWidgetMessage
   {
      
      public static const const_655:String = "RWGOI_MESSAGE_OPEN_INVENTORY";
      
      public static const const_1105:String = "inventory_effects";
      
      public static const const_980:String = "inventory_badges";
      
      public static const const_1266:String = "inventory_clothes";
      
      public static const const_1420:String = "inventory_furniture";
       
      
      private var var_2261:String;
      
      public function RoomWidgetOpenInventoryMessage(param1:String)
      {
         super(const_655);
         this.var_2261 = param1;
      }
      
      public function get inventoryType() : String
      {
         return this.var_2261;
      }
   }
}
