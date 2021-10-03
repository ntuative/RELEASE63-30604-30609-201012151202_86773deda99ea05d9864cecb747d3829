package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetPetInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_146:String = "RWPIUE_PET_INFO";
       
      
      private var var_1224:int;
      
      private var var_2170:int;
      
      private var var_2003:int;
      
      private var var_2171:int;
      
      private var _energy:int;
      
      private var var_2169:int;
      
      private var _nutrition:int;
      
      private var var_2172:int;
      
      private var var_653:int;
      
      private var _petRespect:int;
      
      private var var_803:int;
      
      private var _name:String;
      
      private var _id:int;
      
      private var var_39:BitmapData;
      
      private var var_1384:int;
      
      private var var_2446:int;
      
      private var var_2443:Boolean;
      
      private var var_2173:int;
      
      private var _ownerName:String;
      
      private var _canOwnerBeKicked:Boolean;
      
      private var var_2444:int;
      
      public function RoomWidgetPetInfoUpdateEvent(param1:int, param2:int, param3:String, param4:int, param5:BitmapData, param6:Boolean, param7:int, param8:String, param9:int, param10:Boolean = false, param11:Boolean = false)
      {
         super(RoomWidgetPetInfoUpdateEvent.const_146,param10,param11);
         this.var_1384 = param1;
         this.var_2446 = param2;
         this._name = param3;
         this._id = param4;
         this.var_39 = param5;
         this.var_2443 = param6;
         this.var_2173 = param7;
         this._ownerName = param8;
         this.var_2444 = param9;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get image() : BitmapData
      {
         return this.var_39;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get petType() : int
      {
         return this.var_1384;
      }
      
      public function get petRace() : int
      {
         return this.var_2446;
      }
      
      public function get isOwnPet() : Boolean
      {
         return this.var_2443;
      }
      
      public function get ownerId() : int
      {
         return this.var_2173;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get canOwnerBeKicked() : Boolean
      {
         return this._canOwnerBeKicked;
      }
      
      public function get roomIndex() : int
      {
         return this.var_2444;
      }
      
      public function get age() : int
      {
         return this.var_803;
      }
      
      public function get level() : int
      {
         return this.var_1224;
      }
      
      public function get levelMax() : int
      {
         return this.var_2170;
      }
      
      public function get experience() : int
      {
         return this.var_2003;
      }
      
      public function get experienceMax() : int
      {
         return this.var_2171;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get energyMax() : int
      {
         return this.var_2169;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get method_1() : int
      {
         return this.var_2172;
      }
      
      public function get petRespectLeft() : int
      {
         return this.var_653;
      }
      
      public function get petRespect() : int
      {
         return this._petRespect;
      }
      
      public function set level(param1:int) : void
      {
         this.var_1224 = param1;
      }
      
      public function set levelMax(param1:int) : void
      {
         this.var_2170 = param1;
      }
      
      public function set experience(param1:int) : void
      {
         this.var_2003 = param1;
      }
      
      public function set experienceMax(param1:int) : void
      {
         this.var_2171 = param1;
      }
      
      public function set energy(param1:int) : void
      {
         this._energy = param1;
      }
      
      public function set energyMax(param1:int) : void
      {
         this.var_2169 = param1;
      }
      
      public function set nutrition(param1:int) : void
      {
         this._nutrition = param1;
      }
      
      public function set method_1(param1:int) : void
      {
         this.var_2172 = param1;
      }
      
      public function set petRespectLeft(param1:int) : void
      {
         this.var_653 = param1;
      }
      
      public function set canOwnerBeKicked(param1:Boolean) : void
      {
         this._canOwnerBeKicked = param1;
      }
      
      public function set petRespect(param1:int) : void
      {
         this._petRespect = param1;
      }
      
      public function set age(param1:int) : void
      {
         this.var_803 = param1;
      }
   }
}
