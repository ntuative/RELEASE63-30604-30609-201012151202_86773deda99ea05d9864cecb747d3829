package com.sulake.habbo.widget.messages
{
   public class RoomWidgetDimmerSavePresetMessage extends RoomWidgetMessage
   {
      
      public static const const_569:String = "RWSDPM_SAVE_PRESET";
       
      
      private var var_1969:int;
      
      private var var_1968:int;
      
      private var _color:uint;
      
      private var var_1066:int;
      
      private var var_2231:Boolean;
      
      public function RoomWidgetDimmerSavePresetMessage(param1:int, param2:int, param3:uint, param4:int, param5:Boolean)
      {
         super(const_569);
         this.var_1969 = param1;
         this.var_1968 = param2;
         this._color = param3;
         this.var_1066 = param4;
         this.var_2231 = param5;
      }
      
      public function get presetNumber() : int
      {
         return this.var_1969;
      }
      
      public function get effectTypeId() : int
      {
         return this.var_1968;
      }
      
      public function get color() : uint
      {
         return this._color;
      }
      
      public function get brightness() : int
      {
         return this.var_1066;
      }
      
      public function get apply() : Boolean
      {
         return this.var_2231;
      }
   }
}
