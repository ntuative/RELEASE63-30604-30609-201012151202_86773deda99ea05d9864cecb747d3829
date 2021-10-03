package com.sulake.habbo.room.object.visualization.furniture.data
{
   public class LayerData
   {
      
      public static const const_782:String = "";
      
      public static const const_395:int = 0;
      
      public static const const_510:int = 255;
      
      public static const const_589:Boolean = false;
      
      public static const const_530:int = 0;
      
      public static const const_504:int = 0;
      
      public static const const_536:int = 0;
      
      public static const const_930:int = 1;
      
      public static const const_964:int = 2;
      
      public static const INK_DARKEN:int = 3;
       
      
      private var var_1944:String = "";
      
      private var var_1520:int = 0;
      
      private var var_1958:int = 255;
      
      private var var_2152:Boolean = false;
      
      private var var_2151:int = 0;
      
      private var var_2149:int = 0;
      
      private var var_2150:Number = 0;
      
      public function LayerData()
      {
         super();
      }
      
      public function set tag(param1:String) : void
      {
         this.var_1944 = param1;
      }
      
      public function get tag() : String
      {
         return this.var_1944;
      }
      
      public function set ink(param1:int) : void
      {
         this.var_1520 = param1;
      }
      
      public function get ink() : int
      {
         return this.var_1520;
      }
      
      public function set alpha(param1:int) : void
      {
         this.var_1958 = param1;
      }
      
      public function get alpha() : int
      {
         return this.var_1958;
      }
      
      public function set ignoreMouse(param1:Boolean) : void
      {
         this.var_2152 = param1;
      }
      
      public function get ignoreMouse() : Boolean
      {
         return this.var_2152;
      }
      
      public function set xOffset(param1:int) : void
      {
         this.var_2151 = param1;
      }
      
      public function get xOffset() : int
      {
         return this.var_2151;
      }
      
      public function set yOffset(param1:int) : void
      {
         this.var_2149 = param1;
      }
      
      public function get yOffset() : int
      {
         return this.var_2149;
      }
      
      public function set zOffset(param1:Number) : void
      {
         this.var_2150 = param1;
      }
      
      public function get zOffset() : Number
      {
         return this.var_2150;
      }
      
      public function copyValues(param1:LayerData) : void
      {
         if(param1 != null)
         {
            this.tag = param1.tag;
            this.ink = param1.ink;
            this.alpha = param1.alpha;
            this.ignoreMouse = param1.ignoreMouse;
            this.xOffset = param1.xOffset;
            this.yOffset = param1.yOffset;
            this.zOffset = param1.zOffset;
         }
      }
   }
}
