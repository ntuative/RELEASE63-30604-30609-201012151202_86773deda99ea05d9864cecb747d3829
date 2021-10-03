package com.sulake.habbo.communication.messages.incoming.roomsettings
{
   public class RoomSettingsData
   {
      
      public static const const_485:int = 0;
      
      public static const const_170:int = 1;
      
      public static const const_110:int = 2;
      
      public static const const_656:Array = ["open","closed","password"];
       
      
      private var _roomId:int;
      
      private var _name:String;
      
      private var var_1606:String;
      
      private var var_2182:int;
      
      private var var_1189:int;
      
      private var var_2485:int;
      
      private var var_2574:int;
      
      private var var_757:Array;
      
      private var var_2483:Array;
      
      private var var_2573:int;
      
      private var var_2370:Boolean;
      
      private var var_2487:Boolean;
      
      private var var_2484:Boolean;
      
      private var var_2486:Boolean;
      
      public function RoomSettingsData()
      {
         super();
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2370;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         this.var_2370 = param1;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return this.var_2487;
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         this.var_2487 = param1;
      }
      
      public function get allowWalkThrough() : Boolean
      {
         return this.var_2484;
      }
      
      public function set allowWalkThrough(param1:Boolean) : void
      {
         this.var_2484 = param1;
      }
      
      public function get hideWalls() : Boolean
      {
         return this.var_2486;
      }
      
      public function set hideWalls(param1:Boolean) : void
      {
         this.var_2486 = param1;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function set roomId(param1:int) : void
      {
         this._roomId = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get description() : String
      {
         return this.var_1606;
      }
      
      public function set description(param1:String) : void
      {
         this.var_1606 = param1;
      }
      
      public function get doorMode() : int
      {
         return this.var_2182;
      }
      
      public function set doorMode(param1:int) : void
      {
         this.var_2182 = param1;
      }
      
      public function get categoryId() : int
      {
         return this.var_1189;
      }
      
      public function set categoryId(param1:int) : void
      {
         this.var_1189 = param1;
      }
      
      public function get maximumVisitors() : int
      {
         return this.var_2485;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         this.var_2485 = param1;
      }
      
      public function get maximumVisitorsLimit() : int
      {
         return this.var_2574;
      }
      
      public function set maximumVisitorsLimit(param1:int) : void
      {
         this.var_2574 = param1;
      }
      
      public function get tags() : Array
      {
         return this.var_757;
      }
      
      public function set tags(param1:Array) : void
      {
         this.var_757 = param1;
      }
      
      public function get controllers() : Array
      {
         return this.var_2483;
      }
      
      public function set controllers(param1:Array) : void
      {
         this.var_2483 = param1;
      }
      
      public function get controllerCount() : int
      {
         return this.var_2573;
      }
      
      public function set controllerCount(param1:int) : void
      {
         this.var_2573 = param1;
      }
   }
}
