package com.sulake.habbo.communication.messages.incoming.avatar
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class OutfitData
   {
       
      
      private var var_1725:int;
      
      private var var_2160:String;
      
      private var var_870:String;
      
      public function OutfitData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1725 = param1.readInteger();
         this.var_2160 = param1.readString();
         this.var_870 = param1.readString();
      }
      
      public function get slotId() : int
      {
         return this.var_1725;
      }
      
      public function get figureString() : String
      {
         return this.var_2160;
      }
      
      public function get gender() : String
      {
         return this.var_870;
      }
   }
}
