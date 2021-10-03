package com.sulake.habbo.avatar.structure.parts
{
   public class PartDefinition
   {
       
      
      private var var_2237:String;
      
      private var var_1585:String;
      
      private var var_2238:String;
      
      private var var_1587:Boolean;
      
      private var var_1586:int = -1;
      
      public function PartDefinition(param1:XML)
      {
         super();
         this.var_2237 = String(param1["set-type"]);
         this.var_1585 = String(param1["flipped-set-type"]);
         this.var_2238 = String(param1["remove-set-type"]);
         this.var_1587 = false;
      }
      
      public function hasStaticId() : Boolean
      {
         return this.var_1586 >= 0;
      }
      
      public function get staticId() : int
      {
         return this.var_1586;
      }
      
      public function set staticId(param1:int) : void
      {
         this.var_1586 = param1;
      }
      
      public function get setType() : String
      {
         return this.var_2237;
      }
      
      public function get flippedSetType() : String
      {
         return this.var_1585;
      }
      
      public function get removeSetType() : String
      {
         return this.var_2238;
      }
      
      public function get appendToFigure() : Boolean
      {
         return this.var_1587;
      }
      
      public function set appendToFigure(param1:Boolean) : void
      {
         this.var_1587 = param1;
      }
      
      public function set flippedSetType(param1:String) : void
      {
         this.var_1585 = param1;
      }
   }
}
