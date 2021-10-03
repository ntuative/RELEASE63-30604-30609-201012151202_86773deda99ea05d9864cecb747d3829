package com.sulake.habbo.widget.messages
{
   public class RoomWidgetUserActionMessage extends RoomWidgetMessage
   {
      
      public static const const_744:String = "RWUAM_WHISPER_USER";
      
      public static const const_787:String = "RWUAM_IGNORE_USER";
      
      public static const const_650:String = "RWUAM_UNIGNORE_USER";
      
      public static const const_514:String = "RWUAM_KICK_USER";
      
      public static const const_699:String = "RWUAM_BAN_USER";
      
      public static const const_768:String = "RWUAM_SEND_FRIEND_REQUEST";
      
      public static const const_790:String = "RWUAM_RESPECT_USER";
      
      public static const const_746:String = "RWUAM_GIVE_RIGHTS";
      
      public static const const_812:String = "RWUAM_TAKE_RIGHTS";
      
      public static const const_758:String = "RWUAM_START_TRADING";
      
      public static const const_732:String = "RWUAM_OPEN_HOME_PAGE";
      
      public static const const_518:String = "RWUAM_KICK_BOT";
      
      public static const const_688:String = "RWUAM_REPORT";
      
      public static const const_397:String = "RWUAM_PICKUP_PET";
      
      public static const const_1398:String = "RWUAM_TRAIN_PET";
      
      public static const const_437:String = " RWUAM_RESPECT_PET";
      
      public static const const_349:String = "RWUAM_REQUEST_PET_UPDATE";
       
      
      private var _userId:int = 0;
      
      public function RoomWidgetUserActionMessage(param1:String, param2:int = 0)
      {
         super(param1);
         this._userId = param2;
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
   }
}
