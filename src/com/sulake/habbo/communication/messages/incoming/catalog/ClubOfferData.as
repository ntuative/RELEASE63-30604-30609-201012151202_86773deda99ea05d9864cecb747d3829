package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubOfferData
   {
       
      
      private var _offerId:int;
      
      private var var_1474:String;
      
      private var var_1475:int;
      
      private var var_2000:Boolean;
      
      private var var_2002:Boolean;
      
      private var var_1995:int;
      
      private var var_1998:int;
      
      private var var_1997:int;
      
      private var var_1996:int;
      
      private var var_2001:int;
      
      public function ClubOfferData(param1:IMessageDataWrapper)
      {
         super();
         this._offerId = param1.readInteger();
         this.var_1474 = param1.readString();
         this.var_1475 = param1.readInteger();
         this.var_2000 = param1.readBoolean();
         this.var_2002 = param1.readBoolean();
         this.var_1995 = param1.readInteger();
         this.var_1998 = param1.readInteger();
         this.var_1997 = param1.readInteger();
         this.var_1996 = param1.readInteger();
         this.var_2001 = param1.readInteger();
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get productCode() : String
      {
         return this.var_1474;
      }
      
      public function get price() : int
      {
         return this.var_1475;
      }
      
      public function get upgrade() : Boolean
      {
         return this.var_2000;
      }
      
      public function get vip() : Boolean
      {
         return this.var_2002;
      }
      
      public function get periods() : int
      {
         return this.var_1995;
      }
      
      public function get daysLeftAfterPurchase() : int
      {
         return this.var_1998;
      }
      
      public function get year() : int
      {
         return this.var_1997;
      }
      
      public function get month() : int
      {
         return this.var_1996;
      }
      
      public function get day() : int
      {
         return this.var_2001;
      }
   }
}
