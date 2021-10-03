package com.sulake.habbo.avatar.pets
{
   public class Breed extends PetEditorInfo implements IBreed
   {
       
      
      private var _id:int;
      
      private var var_1989:String = "";
      
      private var var_870:String;
      
      private var var_1193:Boolean;
      
      private var var_1987:Boolean = true;
      
      private var var_1990:int;
      
      private var var_1991:String;
      
      public function Breed(param1:XML)
      {
         super(param1);
         this._id = parseInt(param1.@id);
         this.var_1990 = parseInt(param1.@pattern);
         this.var_870 = String(param1.@gender);
         this.var_1193 = Boolean(parseInt(param1.@colorable));
         this.var_1989 = String(param1.@localizationKey);
         if(param1.@sellable && param1.@sellable == "0")
         {
            this.var_1987 = false;
         }
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get gender() : String
      {
         return this.var_870;
      }
      
      public function get isColorable() : Boolean
      {
         return this.var_1193;
      }
      
      public function get isSellable() : Boolean
      {
         return this.var_1987;
      }
      
      public function get patternId() : int
      {
         return this.var_1990;
      }
      
      public function get avatarFigureString() : String
      {
         return this.var_1991;
      }
      
      public function set avatarFigureString(param1:String) : void
      {
         this.var_1991 = param1;
      }
      
      public function get localizationKey() : String
      {
         return this.var_1989;
      }
   }
}
