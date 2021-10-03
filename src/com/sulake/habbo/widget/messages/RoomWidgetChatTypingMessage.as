package com.sulake.habbo.widget.messages
{
   public class RoomWidgetChatTypingMessage extends RoomWidgetMessage
   {
      
      public static const const_664:String = "RWCTM_TYPING_STATUS";
       
      
      private var var_810:Boolean;
      
      public function RoomWidgetChatTypingMessage(param1:Boolean)
      {
         super(const_664);
         this.var_810 = param1;
      }
      
      public function get isTyping() : Boolean
      {
         return this.var_810;
      }
   }
}
