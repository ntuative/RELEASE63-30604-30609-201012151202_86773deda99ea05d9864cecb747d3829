package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserObjectMessageParser implements IMessageParser
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_579:String;
      
      private var var_786:String;
      
      private var var_2329:String;
      
      private var var_1458:String;
      
      private var var_2327:int;
      
      private var var_2326:String;
      
      private var var_2328:int;
      
      private var var_2330:int;
      
      private var var_2018:int;
      
      private var _respectLeft:int;
      
      private var var_653:int;
      
      public function UserObjectMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = int(param1.readString());
         this._name = param1.readString();
         this.var_579 = param1.readString();
         this.var_786 = param1.readString();
         this.var_2329 = param1.readString();
         this.var_1458 = param1.readString();
         this.var_2327 = param1.readInteger();
         this.var_2326 = param1.readString();
         this.var_2328 = param1.readInteger();
         this.var_2330 = param1.readInteger();
         this.var_2018 = param1.readInteger();
         this._respectLeft = param1.readInteger();
         this.var_653 = param1.readInteger();
         return true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get figure() : String
      {
         return this.var_579;
      }
      
      public function get sex() : String
      {
         return this.var_786;
      }
      
      public function get customData() : String
      {
         return this.var_2329;
      }
      
      public function get realName() : String
      {
         return this.var_1458;
      }
      
      public function get tickets() : int
      {
         return this.var_2327;
      }
      
      public function get poolFigure() : String
      {
         return this.var_2326;
      }
      
      public function get photoFilm() : int
      {
         return this.var_2328;
      }
      
      public function get directMail() : int
      {
         return this.var_2330;
      }
      
      public function get respectTotal() : int
      {
         return this.var_2018;
      }
      
      public function get respectLeft() : int
      {
         return this._respectLeft;
      }
      
      public function get petRespectLeft() : int
      {
         return this.var_653;
      }
   }
}
