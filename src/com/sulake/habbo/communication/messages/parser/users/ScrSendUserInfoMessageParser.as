package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ScrSendUserInfoMessageParser implements IMessageParser
   {
      
      public static const const_1742:int = 1;
      
      public static const const_1395:int = 2;
       
      
      private var var_843:String;
      
      private var var_2263:int;
      
      private var var_2266:int;
      
      private var var_2269:int;
      
      private var var_2262:int;
      
      private var var_2265:Boolean;
      
      private var var_2271:Boolean;
      
      private var var_2264:int;
      
      private var var_2267:int;
      
      private var var_2270:Boolean;
      
      private var var_2272:int;
      
      private var var_2268:int;
      
      public function ScrSendUserInfoMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_843 = param1.readString();
         this.var_2263 = param1.readInteger();
         this.var_2266 = param1.readInteger();
         this.var_2269 = param1.readInteger();
         this.var_2262 = param1.readInteger();
         this.var_2265 = param1.readBoolean();
         this.var_2271 = param1.readBoolean();
         this.var_2264 = param1.readInteger();
         this.var_2267 = param1.readInteger();
         this.var_2270 = param1.readBoolean();
         this.var_2272 = param1.readInteger();
         this.var_2268 = param1.readInteger();
         return true;
      }
      
      public function get productName() : String
      {
         return this.var_843;
      }
      
      public function get daysToPeriodEnd() : int
      {
         return this.var_2263;
      }
      
      public function get memberPeriods() : int
      {
         return this.var_2266;
      }
      
      public function get periodsSubscribedAhead() : int
      {
         return this.var_2269;
      }
      
      public function get responseType() : int
      {
         return this.var_2262;
      }
      
      public function get hasEverBeenMember() : Boolean
      {
         return this.var_2265;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2271;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2264;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2267;
      }
      
      public function get isShowBasicPromo() : Boolean
      {
         return this.var_2270;
      }
      
      public function get basicNormalPrice() : int
      {
         return this.var_2272;
      }
      
      public function get basicPromoPrice() : int
      {
         return this.var_2268;
      }
   }
}
