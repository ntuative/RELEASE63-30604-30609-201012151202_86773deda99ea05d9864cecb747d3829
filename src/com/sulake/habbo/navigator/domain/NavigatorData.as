package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.communication.messages.incoming.navigator.FlatCategory;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomSearchResultData;
   import com.sulake.habbo.communication.messages.incoming.navigator.MsgWithRequestId;
   import com.sulake.habbo.communication.messages.incoming.navigator.OfficialRoomsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PopularRoomTagsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.parser.navigator.FavouritesMessageParser;
   import com.sulake.habbo.communication.messages.parser.room.engine.RoomEntryInfoMessageParser;
   import com.sulake.habbo.navigator.HabboNavigator;
   import flash.utils.Dictionary;
   
   public class NavigatorData
   {
      
      private static const const_1575:int = 10;
       
      
      private var _navigator:HabboNavigator;
      
      private var var_184:MsgWithRequestId;
      
      private var var_604:RoomEventData;
      
      private var var_2571:Boolean;
      
      private var var_2565:Boolean;
      
      private var _currentRoomOwner:Boolean;
      
      private var var_2218:int;
      
      private var var_246:GuestRoomData;
      
      private var var_906:PublicRoomShortData;
      
      private var var_2566:int;
      
      private var var_2567:Boolean;
      
      private var var_2562:int;
      
      private var var_2569:Boolean;
      
      private var var_1811:int;
      
      private var var_2561:Boolean;
      
      private var var_1184:Array;
      
      private var var_1393:Array;
      
      private var var_2568:int;
      
      private var var_1392:int;
      
      private var _favouriteIds:Dictionary;
      
      private var var_1130:Boolean;
      
      private var var_2570:int;
      
      private var var_2563:Boolean;
      
      private var var_2564:int = 0;
      
      public function NavigatorData(param1:HabboNavigator)
      {
         this.var_1184 = new Array();
         this.var_1393 = new Array();
         this._favouriteIds = new Dictionary();
         super();
         this._navigator = param1;
      }
      
      public function get canAddFavourite() : Boolean
      {
         return this.var_246 != null && !this._currentRoomOwner;
      }
      
      public function get canEditRoomSettings() : Boolean
      {
         return this.var_246 != null && this._currentRoomOwner;
      }
      
      public function onRoomEnter(param1:RoomEntryInfoMessageParser) : void
      {
         this.var_906 = null;
         this.var_246 = null;
         this._currentRoomOwner = false;
         if(param1.guestRoom)
         {
            this._currentRoomOwner = param1.owner;
         }
         else
         {
            this.var_906 = param1.publicSpace;
            this.var_604 = null;
         }
      }
      
      public function onRoomExit() : void
      {
         if(this.var_604 != null)
         {
            this.var_604.dispose();
            this.var_604 = null;
         }
         if(this.var_906 != null)
         {
            this.var_906.dispose();
            this.var_906 = null;
         }
         if(this.var_246 != null)
         {
            this.var_246.dispose();
            this.var_246 = null;
         }
         this._currentRoomOwner = false;
      }
      
      public function set enteredRoom(param1:GuestRoomData) : void
      {
         if(this.var_246 != null)
         {
            this.var_246.dispose();
         }
         this.var_246 = param1;
      }
      
      public function set roomEventData(param1:RoomEventData) : void
      {
         if(this.var_604 != null)
         {
            this.var_604.dispose();
         }
         this.var_604 = param1;
      }
      
      public function get popularTagsArrived() : Boolean
      {
         return this.var_184 != null && this.var_184 as PopularRoomTagsData != null;
      }
      
      public function get guestRoomSearchArrived() : Boolean
      {
         return this.var_184 != null && this.var_184 as GuestRoomSearchResultData != null;
      }
      
      public function get officialRoomsArrived() : Boolean
      {
         return this.var_184 != null && this.var_184 as OfficialRoomsData != null;
      }
      
      public function set guestRoomSearchResults(param1:GuestRoomSearchResultData) : void
      {
         this.disposeCurrentMsg();
         this.var_184 = param1;
         this.var_1130 = false;
      }
      
      public function set popularTags(param1:PopularRoomTagsData) : void
      {
         this.disposeCurrentMsg();
         this.var_184 = param1;
         this.var_1130 = false;
      }
      
      public function set officialRooms(param1:OfficialRoomsData) : void
      {
         this.disposeCurrentMsg();
         this.var_184 = param1;
         this.var_1130 = false;
      }
      
      private function disposeCurrentMsg() : void
      {
         if(this.var_184 == null)
         {
            return;
         }
         this.var_184.dispose();
         this.var_184 = null;
      }
      
      public function get guestRoomSearchResults() : GuestRoomSearchResultData
      {
         return this.var_184 as GuestRoomSearchResultData;
      }
      
      public function get popularTags() : PopularRoomTagsData
      {
         return this.var_184 as PopularRoomTagsData;
      }
      
      public function get officialRooms() : OfficialRoomsData
      {
         return this.var_184 as OfficialRoomsData;
      }
      
      public function get roomEventData() : RoomEventData
      {
         return this.var_604;
      }
      
      public function get avatarId() : int
      {
         return this.var_2218;
      }
      
      public function get eventMod() : Boolean
      {
         return this.var_2571;
      }
      
      public function get roomPicker() : Boolean
      {
         return this.var_2565;
      }
      
      public function get currentRoomOwner() : Boolean
      {
         return this._currentRoomOwner;
      }
      
      public function get enteredGuestRoom() : GuestRoomData
      {
         return this.var_246;
      }
      
      public function get enteredPublicSpace() : PublicRoomShortData
      {
         return this.var_906;
      }
      
      public function get hcMember() : Boolean
      {
         return this.var_2567;
      }
      
      public function get createdFlatId() : int
      {
         return this.var_2562;
      }
      
      public function get homeRoomId() : int
      {
         return this.var_1811;
      }
      
      public function get hotRoomPopupOpen() : Boolean
      {
         return this.var_2569;
      }
      
      public function get currentRoomRating() : int
      {
         return this.var_2570;
      }
      
      public function get publicSpaceNodeId() : int
      {
         return this.var_2566;
      }
      
      public function get settingsReceived() : Boolean
      {
         return this.var_2561;
      }
      
      public function get adIndex() : int
      {
         return this.var_2564;
      }
      
      public function get currentRoomIsStaffPick() : Boolean
      {
         return this.var_2563;
      }
      
      public function set avatarId(param1:int) : void
      {
         this.var_2218 = param1;
      }
      
      public function set createdFlatId(param1:int) : void
      {
         this.var_2562 = param1;
      }
      
      public function set hcMember(param1:Boolean) : void
      {
         this.var_2567 = param1;
      }
      
      public function set eventMod(param1:Boolean) : void
      {
         this.var_2571 = param1;
      }
      
      public function set roomPicker(param1:Boolean) : void
      {
         this.var_2565 = param1;
      }
      
      public function set hotRoomPopupOpen(param1:Boolean) : void
      {
         this.var_2569 = param1;
      }
      
      public function set homeRoomId(param1:int) : void
      {
         this.var_1811 = param1;
      }
      
      public function set currentRoomRating(param1:int) : void
      {
         this.var_2570 = param1;
      }
      
      public function set publicSpaceNodeId(param1:int) : void
      {
         this.var_2566 = param1;
      }
      
      public function set settingsReceived(param1:Boolean) : void
      {
         this.var_2561 = param1;
      }
      
      public function set adIndex(param1:int) : void
      {
         this.var_2564 = param1;
      }
      
      public function set currentRoomIsStaffPick(param1:Boolean) : void
      {
         this.var_2563 = param1;
      }
      
      public function set categories(param1:Array) : void
      {
         var _loc2_:* = null;
         this.var_1184 = param1;
         this.var_1393 = new Array();
         for each(_loc2_ in this.var_1184)
         {
            if(_loc2_.visible)
            {
               this.var_1393.push(_loc2_);
            }
         }
      }
      
      public function get allCategories() : Array
      {
         return this.var_1184;
      }
      
      public function get visibleCategories() : Array
      {
         return this.var_1393;
      }
      
      public function onFavourites(param1:FavouritesMessageParser) : void
      {
         var _loc2_:int = 0;
         this.var_2568 = param1.limit;
         this.var_1392 = param1.favouriteRoomIds.length;
         this._favouriteIds = new Dictionary();
         for each(_loc2_ in param1.favouriteRoomIds)
         {
            this._favouriteIds[_loc2_] = "yes";
         }
      }
      
      public function favouriteChanged(param1:int, param2:Boolean) : void
      {
         this._favouriteIds[param1] = !!param2 ? "yes" : null;
         this.var_1392 += !!param2 ? 1 : -1;
      }
      
      public function isCurrentRoomFavourite() : Boolean
      {
         var _loc1_:int = this.var_246.flatId;
         return this._favouriteIds[_loc1_] != null;
      }
      
      public function isCurrentRoomHome() : Boolean
      {
         if(this.var_246 == null)
         {
            return false;
         }
         var _loc1_:int = this.var_246.flatId;
         return this.var_1811 == _loc1_;
      }
      
      public function isRoomFavourite(param1:int) : Boolean
      {
         return this._favouriteIds[param1] != null;
      }
      
      public function isFavouritesFull() : Boolean
      {
         return this.var_1392 >= this.var_2568;
      }
      
      public function startLoading() : void
      {
         this.var_1130 = true;
      }
      
      public function isLoading() : Boolean
      {
         return this.var_1130;
      }
   }
}
