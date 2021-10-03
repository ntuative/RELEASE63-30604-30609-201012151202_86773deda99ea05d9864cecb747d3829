package com.sulake.habbo.communication.messages.parser.roomsettings
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class RoomSettingsSaveErrorMessageParser implements IMessageParser
   {
      
      public static const const_1707:int = 1;
      
      public static const const_1612:int = 2;
      
      public static const const_1758:int = 3;
      
      public static const const_1592:int = 4;
      
      public static const const_1293:int = 5;
      
      public static const const_1715:int = 6;
      
      public static const const_1449:int = 7;
      
      public static const const_1517:int = 8;
      
      public static const const_1580:int = 9;
      
      public static const const_1433:int = 10;
      
      public static const const_1440:int = 11;
      
      public static const const_1336:int = 12;
       
      
      private var _roomId:int;
      
      private var var_1466:int;
      
      private var var_2513:String;
      
      public function RoomSettingsSaveErrorMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._roomId = param1.readInteger();
         this.var_1466 = param1.readInteger();
         this.var_2513 = param1.readString();
         return true;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get errorCode() : int
      {
         return this.var_1466;
      }
      
      public function get info() : String
      {
         return this.var_2513;
      }
   }
}
