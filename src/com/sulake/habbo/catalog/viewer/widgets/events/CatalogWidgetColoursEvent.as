package com.sulake.habbo.catalog.viewer.widgets.events
{
   import flash.events.Event;
   
   public class CatalogWidgetColoursEvent extends Event
   {
       
      
      private var var_1226:Array;
      
      private var var_1957:String;
      
      private var var_1956:String;
      
      private var var_1955:String;
      
      public function CatalogWidgetColoursEvent(param1:Array, param2:String, param3:String, param4:String, param5:Boolean = false, param6:Boolean = false)
      {
         super(WidgetEvent.CWE_COLOUR_ARRAY,param5,param6);
         this.var_1226 = param1;
         this.var_1957 = param2;
         this.var_1956 = param3;
         this.var_1955 = param4;
      }
      
      public function get colours() : Array
      {
         return this.var_1226;
      }
      
      public function get backgroundAssetName() : String
      {
         return this.var_1957;
      }
      
      public function get colourAssetName() : String
      {
         return this.var_1956;
      }
      
      public function get chosenColourAssetName() : String
      {
         return this.var_1955;
      }
   }
}
