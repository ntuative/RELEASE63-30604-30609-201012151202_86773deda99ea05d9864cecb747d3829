package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_1443:int;
      
      private var var_1929:int;
      
      private var var_1262:int;
      
      private var var_1928:int;
      
      private var var_103:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1443 = param1.readInteger();
         this.var_1929 = param1.readInteger();
         this.var_1262 = param1.readInteger();
         this.var_1928 = param1.readInteger();
         this.var_103 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + this.var_1443);
      }
      
      public function get callId() : int
      {
         return this.var_1443;
      }
      
      public function get callerUserId() : int
      {
         return this.var_1929;
      }
      
      public function get reportedUserId() : int
      {
         return this.var_1262;
      }
      
      public function get chatRecordId() : int
      {
         return this.var_1928;
      }
      
      public function get room() : RoomChatlogData
      {
         return this.var_103;
      }
   }
}
