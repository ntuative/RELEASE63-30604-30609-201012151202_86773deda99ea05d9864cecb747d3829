package com.sulake.habbo.communication.messages.parser.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.friendlist.FriendCategoryData;
   import com.sulake.habbo.communication.messages.incoming.friendlist.FriendData;
   
   public class MessengerInitMessageParser implements IMessageParser
   {
       
      
      private var var_2291:int;
      
      private var var_2288:int;
      
      private var var_2292:int;
      
      private var var_2289:int;
      
      private var var_2293:int;
      
      private var var_2290:int;
      
      private var var_91:Array;
      
      private var var_199:Array;
      
      public function MessengerInitMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         this.var_91 = new Array();
         this.var_199 = new Array();
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc4_:int = 0;
         this.var_2291 = param1.readInteger();
         this.var_2288 = param1.readInteger();
         this.var_2292 = param1.readInteger();
         this.var_2289 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc2_)
         {
            this.var_91.push(new FriendCategoryData(param1));
            _loc4_++;
         }
         var _loc3_:int = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            this.var_199.push(new FriendData(param1));
            _loc4_++;
         }
         this.var_2293 = param1.readInteger();
         this.var_2290 = param1.readInteger();
         return true;
      }
      
      public function get userFriendLimit() : int
      {
         return this.var_2291;
      }
      
      public function get normalFriendLimit() : int
      {
         return this.var_2288;
      }
      
      public function get extendedFriendLimit() : int
      {
         return this.var_2292;
      }
      
      public function get friendRequestLimit() : int
      {
         return this.var_2293;
      }
      
      public function get friendRequestCount() : int
      {
         return this.var_2290;
      }
      
      public function get categories() : Array
      {
         return this.var_91;
      }
      
      public function get friends() : Array
      {
         return this.var_199;
      }
      
      public function get evenMoreExtendedFriendLimit() : int
      {
         return this.var_2289;
      }
   }
}
