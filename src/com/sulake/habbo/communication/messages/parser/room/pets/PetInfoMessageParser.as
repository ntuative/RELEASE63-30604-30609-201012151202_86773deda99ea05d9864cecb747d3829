package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1589:int;
      
      private var _name:String;
      
      private var var_1224:int;
      
      private var var_2248:int;
      
      private var var_2003:int;
      
      private var _energy:int;
      
      private var _nutrition:int;
      
      private var var_579:String;
      
      private var var_2250:int;
      
      private var var_2247:int;
      
      private var var_2249:int;
      
      private var var_2165:int;
      
      private var var_2173:int;
      
      private var _ownerName:String;
      
      private var var_803:int;
      
      public function PetInfoMessageParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_1589;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get level() : int
      {
         return this.var_1224;
      }
      
      public function get maxLevel() : int
      {
         return this.var_2248;
      }
      
      public function get experience() : int
      {
         return this.var_2003;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get figure() : String
      {
         return this.var_579;
      }
      
      public function get experienceRequiredToLevel() : int
      {
         return this.var_2250;
      }
      
      public function get maxEnergy() : int
      {
         return this.var_2247;
      }
      
      public function get maxNutrition() : int
      {
         return this.var_2249;
      }
      
      public function get respect() : int
      {
         return this.var_2165;
      }
      
      public function get ownerId() : int
      {
         return this.var_2173;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get age() : int
      {
         return this.var_803;
      }
      
      public function flush() : Boolean
      {
         this.var_1589 = -1;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this.var_1589 = param1.readInteger();
         this._name = param1.readString();
         this.var_1224 = param1.readInteger();
         this.var_2248 = param1.readInteger();
         this.var_2003 = param1.readInteger();
         this.var_2250 = param1.readInteger();
         this._energy = param1.readInteger();
         this.var_2247 = param1.readInteger();
         this._nutrition = param1.readInteger();
         this.var_2249 = param1.readInteger();
         this.var_579 = param1.readString();
         this.var_2165 = param1.readInteger();
         this.var_2173 = param1.readInteger();
         this.var_803 = param1.readInteger();
         this._ownerName = param1.readString();
         return true;
      }
   }
}
