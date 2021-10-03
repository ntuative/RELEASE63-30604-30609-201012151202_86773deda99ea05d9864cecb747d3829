package com.sulake.habbo.communication.messages.outgoing.room.engine
{
   import com.sulake.core.communication.messages.IMessageComposer;
   import com.sulake.habbo.room.object.RoomObjectCategoryEnum;
   
   public class PlaceObjectMessageComposer implements IMessageComposer
   {
       
      
      private var var_325:int;
      
      private var var_1917:int;
      
      private var var_2582:String;
      
      private var _x:int = 0;
      
      private var var_151:int = 0;
      
      private var var_221:int = 0;
      
      private var _roomId:int;
      
      private var _roomCategory:int;
      
      public function PlaceObjectMessageComposer(param1:int, param2:int, param3:String, param4:int, param5:int, param6:int, param7:int = 0, param8:int = 0)
      {
         super();
         this.var_325 = param1;
         this.var_1917 = param2;
         this.var_2582 = param3;
         this._x = param4;
         this.var_151 = param5;
         this.var_221 = param6;
         this._roomId = param7;
         this._roomCategory = param8;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         switch(this.var_1917)
         {
            case RoomObjectCategoryEnum.OBJECT_CATEGORY_FURNITURE:
               return [this.var_325 + " " + this._x + " " + this.var_151 + " " + this.var_221];
            case RoomObjectCategoryEnum.const_27:
               return [this.var_325 + " " + this.var_2582];
            default:
               return [];
         }
      }
   }
}
