package com.sulake.habbo.toolbar
{
   public class ToolbarIconBouncer
   {
       
      
      private var var_2463:Number;
      
      private var var_1409:Number;
      
      private var var_876:Number;
      
      private var var_877:Number = 0;
      
      public function ToolbarIconBouncer(param1:Number, param2:Number)
      {
         super();
         this.var_2463 = param1;
         this.var_1409 = param2;
      }
      
      public function reset(param1:int) : void
      {
         this.var_876 = param1;
         this.var_877 = 0;
      }
      
      public function update() : void
      {
         this.var_876 += this.var_1409;
         this.var_877 += this.var_876;
         if(this.var_877 > 0)
         {
            this.var_877 = 0;
            this.var_876 = this.var_2463 * -1 * this.var_876;
         }
      }
      
      public function get location() : Number
      {
         return this.var_877;
      }
   }
}
