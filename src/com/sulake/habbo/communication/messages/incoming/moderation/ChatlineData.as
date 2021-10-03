package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChatlineData
   {
       
      
      private var var_2489:int;
      
      private var var_2491:int;
      
      private var var_2490:int;
      
      private var var_2492:String;
      
      private var var_1583:String;
      
      public function ChatlineData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2489 = param1.readInteger();
         this.var_2491 = param1.readInteger();
         this.var_2490 = param1.readInteger();
         this.var_2492 = param1.readString();
         this.var_1583 = param1.readString();
      }
      
      public function get hour() : int
      {
         return this.var_2489;
      }
      
      public function get minute() : int
      {
         return this.var_2491;
      }
      
      public function get chatterId() : int
      {
         return this.var_2490;
      }
      
      public function get chatterName() : String
      {
         return this.var_2492;
      }
      
      public function get msg() : String
      {
         return this.var_1583;
      }
   }
}
