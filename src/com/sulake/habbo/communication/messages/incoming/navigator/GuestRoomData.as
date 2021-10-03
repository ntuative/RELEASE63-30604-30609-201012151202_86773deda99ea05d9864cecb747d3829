package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var var_309:int;
      
      private var var_677:Boolean;
      
      private var var_889:String;
      
      private var _ownerName:String;
      
      private var var_2182:int;
      
      private var var_2034:int;
      
      private var var_2371:int;
      
      private var var_1606:String;
      
      private var var_2373:int;
      
      private var var_2179:Boolean;
      
      private var var_736:int;
      
      private var var_1189:int;
      
      private var var_2374:String;
      
      private var var_757:Array;
      
      private var var_2372:RoomThumbnailData;
      
      private var var_2370:Boolean;
      
      private var _disposed:Boolean;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         this.var_757 = new Array();
         super();
         this.var_309 = param1.readInteger();
         this.var_677 = param1.readBoolean();
         this.var_889 = param1.readString();
         this._ownerName = param1.readString();
         this.var_2182 = param1.readInteger();
         this.var_2034 = param1.readInteger();
         this.var_2371 = param1.readInteger();
         this.var_1606 = param1.readString();
         this.var_2373 = param1.readInteger();
         this.var_2179 = param1.readBoolean();
         this.var_736 = param1.readInteger();
         this.var_1189 = param1.readInteger();
         this.var_2374 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            this.var_757.push(_loc4_);
            _loc3_++;
         }
         this.var_2372 = new RoomThumbnailData(param1);
         this.var_2370 = param1.readBoolean();
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_757 = null;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get flatId() : int
      {
         return this.var_309;
      }
      
      public function get event() : Boolean
      {
         return this.var_677;
      }
      
      public function get roomName() : String
      {
         return this.var_889;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get doorMode() : int
      {
         return this.var_2182;
      }
      
      public function get userCount() : int
      {
         return this.var_2034;
      }
      
      public function get maxUserCount() : int
      {
         return this.var_2371;
      }
      
      public function get description() : String
      {
         return this.var_1606;
      }
      
      public function get srchSpecPrm() : int
      {
         return this.var_2373;
      }
      
      public function get allowTrading() : Boolean
      {
         return this.var_2179;
      }
      
      public function get score() : int
      {
         return this.var_736;
      }
      
      public function get categoryId() : int
      {
         return this.var_1189;
      }
      
      public function get eventCreationTime() : String
      {
         return this.var_2374;
      }
      
      public function get tags() : Array
      {
         return this.var_757;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return this.var_2372;
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2370;
      }
   }
}
