package com.sulake.habbo.communication.messages.incoming.navigator
{
   public class RoomThumbnailObjectData
   {
       
      
      private var var_1303:int;
      
      private var var_1304:int;
      
      public function RoomThumbnailObjectData()
      {
         super();
      }
      
      public function getCopy() : RoomThumbnailObjectData
      {
         var _loc1_:RoomThumbnailObjectData = new RoomThumbnailObjectData();
         _loc1_.var_1303 = this.var_1303;
         _loc1_.var_1304 = this.var_1304;
         return _loc1_;
      }
      
      public function set pos(param1:int) : void
      {
         this.var_1303 = param1;
      }
      
      public function set imgId(param1:int) : void
      {
         this.var_1304 = param1;
      }
      
      public function get pos() : int
      {
         return this.var_1303;
      }
      
      public function get imgId() : int
      {
         return this.var_1304;
      }
   }
}
