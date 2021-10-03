package com.sulake.habbo.friendlist.domain
{
   import com.sulake.habbo.communication.messages.incoming.friendlist.HabboSearchResultData;
   import flash.utils.Dictionary;
   
   public class AvatarSearchResults
   {
       
      
      private var var_357:IAvatarSearchDeps;
      
      private var var_199:Array;
      
      private var var_1571:Array;
      
      private var var_1570:Dictionary;
      
      public function AvatarSearchResults(param1:IAvatarSearchDeps)
      {
         this.var_1570 = new Dictionary();
         super();
         this.var_357 = param1;
      }
      
      public function getResult(param1:int) : HabboSearchResultData
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         for each(_loc2_ in this.var_199)
         {
            if(_loc2_.avatarId == param1)
            {
               return _loc2_;
            }
         }
         for each(_loc3_ in this.var_1571)
         {
            if(_loc3_.avatarId == param1)
            {
               return _loc3_;
            }
         }
         return null;
      }
      
      public function searchReceived(param1:Array, param2:Array) : void
      {
         this.var_199 = param1;
         this.var_1571 = param2;
         this.var_357.view.refreshList();
      }
      
      public function get friends() : Array
      {
         return this.var_199;
      }
      
      public function get others() : Array
      {
         return this.var_1571;
      }
      
      public function setFriendRequestSent(param1:int) : void
      {
         this.var_1570[param1] = "yes";
      }
      
      public function isFriendRequestSent(param1:int) : Boolean
      {
         return this.var_1570[param1] != null;
      }
   }
}
