package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowNotifyEvent extends WindowEvent
   {
      
      public static const const_1412:String = "WN_CRETAE";
      
      public static const const_1457:String = "WN_CREATED";
      
      public static const const_934:String = "WN_DESTROY";
      
      public static const const_1032:String = "WN_DESTROYED";
      
      public static const const_1020:String = "WN_OPEN";
      
      public static const const_891:String = "WN_OPENED";
      
      public static const const_1010:String = "WN_CLOSE";
      
      public static const const_1041:String = "WN_CLOSED";
      
      public static const const_901:String = "WN_FOCUS";
      
      public static const const_1081:String = "WN_FOCUSED";
      
      public static const const_1072:String = "WN_UNFOCUS";
      
      public static const const_907:String = "WN_UNFOCUSED";
      
      public static const const_1066:String = "WN_ACTIVATE";
      
      public static const const_352:String = "WN_ACTVATED";
      
      public static const const_1019:String = "WN_DEACTIVATE";
      
      public static const const_888:String = "WN_DEACTIVATED";
      
      public static const const_399:String = "WN_SELECT";
      
      public static const const_376:String = "WN_SELECTED";
      
      public static const const_716:String = "WN_UNSELECT";
      
      public static const const_564:String = "WN_UNSELECTED";
      
      public static const const_977:String = "WN_LOCK";
      
      public static const const_984:String = "WN_LOCKED";
      
      public static const const_900:String = "WN_UNLOCK";
      
      public static const const_970:String = "WN_UNLOCKED";
      
      public static const const_1023:String = "WN_ENABLE";
      
      public static const const_775:String = "WN_ENABLED";
      
      public static const const_889:String = "WN_DISABLE";
      
      public static const const_624:String = "WN_DISABLED";
      
      public static const const_816:String = "WN_RESIZE";
      
      public static const const_186:String = "WN_RESIZED";
      
      public static const const_1080:String = "WN_RELOCATE";
      
      public static const const_532:String = "WN_RELOCATED";
      
      public static const const_1055:String = "WN_MINIMIZE";
      
      public static const const_1058:String = "WN_MINIMIZED";
      
      public static const const_960:String = "WN_MAXIMIZE";
      
      public static const const_1088:String = "WN_MAXIMIZED";
      
      public static const const_902:String = "WN_RESTORE";
      
      public static const const_988:String = "WN_RESTORED";
      
      public static const const_1602:String = "WN_ARRANGE";
      
      public static const const_1760:String = "WN_ARRANGED";
      
      public static const const_1663:String = "WN_UPDATE";
      
      public static const const_1631:String = "WN_UPDATED";
      
      public static const const_336:String = "WN_CHILD_ADDED";
      
      public static const const_634:String = "WN_CHILD_REMOVED";
      
      public static const WINDOW_NOTIFY_CHILD_RESIZED:String = "WN_CHILD_RESIZED";
      
      public static const const_261:String = "WN_CHILD_RELOCATED";
      
      public static const const_243:String = "WN_CHILD_ACTIVATED";
      
      public static const const_509:String = "WN_PARENT_ADDED";
      
      public static const const_991:String = "WN_PARENT_REMOVED";
      
      public static const const_459:String = "WN_PARENT_RESIZED";
      
      public static const const_974:String = "WN_PARENT_RELOCATED";
      
      public static const const_577:String = "WN_PARENT_ACTIVATED";
      
      public static const const_520:String = "WN_STATE_UPDATED";
      
      public static const const_453:String = "WN_STYLE_UPDATED";
      
      public static const const_430:String = "WN_PARAM_UPDATED";
      
      public static const const_1632:String = "";
       
      
      public function WindowNotifyEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false)
      {
         super(param1,param2,param3,false,param4);
      }
      
      override public function clone() : Event
      {
         return new WindowNotifyEvent(type,_window,var_1888,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("WindowNotifyEvent","type","cancelable");
      }
   }
}
