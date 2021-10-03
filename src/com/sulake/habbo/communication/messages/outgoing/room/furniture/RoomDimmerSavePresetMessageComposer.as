package com.sulake.habbo.communication.messages.outgoing.room.furniture
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RoomDimmerSavePresetMessageComposer implements IMessageComposer
   {
       
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_1969:int;
      
      private var var_1968:int;
      
      private var var_1971:String;
      
      private var var_1967:int;
      
      private var var_1970:Boolean;
      
      public function RoomDimmerSavePresetMessageComposer(param1:int, param2:int, param3:String, param4:int, param5:Boolean, param6:int = 0, param7:int = 0)
      {
         super();
         this._roomId = param6;
         this._roomCategory = param7;
         this.var_1969 = param1;
         this.var_1968 = param2;
         this.var_1971 = param3;
         this.var_1967 = param4;
         this.var_1970 = param5;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_1969,this.var_1968,this.var_1971,this.var_1967,int(this.var_1970)];
      }
      
      public function dispose() : void
      {
      }
   }
}
