package com.sulake.habbo.communication.messages.parser.quest
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.quest.QuestMessageData;
   
   public class QuestListMessageParser implements IMessageParser
   {
       
      
      private var var_1444:String;
      
      private var var_1698:int;
      
      private var var_290:Array;
      
      public function QuestListMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         var _loc1_:* = null;
         this.var_1444 = "";
         this.var_1698 = 1;
         if(this.var_290)
         {
            for each(_loc1_ in this.var_290)
            {
               _loc1_.dispose();
            }
         }
         this.var_290 = [];
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1444 = param1.readString();
         this.var_1698 = 1;
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.var_290.push(new QuestMessageData(param1));
            _loc3_++;
         }
         return true;
      }
      
      public function get quests() : Array
      {
         return this.var_290;
      }
      
      public function get campaignId() : String
      {
         return this.var_1444;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1698;
      }
   }
}
