package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowEvent extends Event
   {
      
      public static const const_1258:String = "WE_CREATE";
      
      public static const const_1489:String = "WE_CREATED";
      
      public static const const_1400:String = "WE_DESTROY";
      
      public static const const_283:String = "WE_DESTROYED";
      
      public static const const_1364:String = "WE_OPEN";
      
      public static const const_1353:String = "WE_OPENED";
      
      public static const const_1514:String = "WE_CLOSE";
      
      public static const const_1308:String = "WE_CLOSED";
      
      public static const const_1297:String = "WE_FOCUS";
      
      public static const const_166:String = "WE_FOCUSED";
      
      public static const const_1294:String = "WE_UNFOCUS";
      
      public static const const_1465:String = "WE_UNFOCUSED";
      
      public static const const_1374:String = "WE_ACTIVATE";
      
      public static const const_1362:String = "WE_ACTIVATED";
      
      public static const const_1304:String = "WE_DEACTIVATE";
      
      public static const const_981:String = "WE_DEACTIVATED";
      
      public static const const_454:String = "WE_SELECT";
      
      public static const const_57:String = "WE_SELECTED";
      
      public static const const_804:String = "WE_UNSELECT";
      
      public static const const_729:String = "WE_UNSELECTED";
      
      public static const const_1745:String = "WE_ATTACH";
      
      public static const const_1682:String = "WE_ATTACHED";
      
      public static const const_1581:String = "WE_DETACH";
      
      public static const const_1704:String = "WE_DETACHED";
      
      public static const const_1376:String = "WE_LOCK";
      
      public static const const_1403:String = "WE_LOCKED";
      
      public static const const_1464:String = "WE_UNLOCK";
      
      public static const const_1276:String = "WE_UNLOCKED";
      
      public static const const_579:String = "WE_ENABLE";
      
      public static const const_271:String = "WE_ENABLED";
      
      public static const const_689:String = "WE_DISABLE";
      
      public static const const_256:String = "WE_DISABLED";
      
      public static const const_1347:String = "WE_RELOCATE";
      
      public static const const_357:String = "WE_RELOCATED";
      
      public static const const_1421:String = "WE_RESIZE";
      
      public static const const_44:String = "WE_RESIZED";
      
      public static const const_1392:String = "WE_MINIMIZE";
      
      public static const const_1331:String = "WE_MINIMIZED";
      
      public static const const_1354:String = "WE_MAXIMIZE";
      
      public static const const_1352:String = "WE_MAXIMIZED";
      
      public static const const_1496:String = "WE_RESTORE";
      
      public static const const_1339:String = "WE_RESTORED";
      
      public static const const_1752:String = "WE_ARRANGE";
      
      public static const const_1781:String = "WE_ARRANGED";
      
      public static const const_94:String = "WE_UPDATE";
      
      public static const const_1771:String = "WE_UPDATED";
      
      public static const const_1727:String = "WE_CHILD_RELOCATE";
      
      public static const const_403:String = "WE_CHILD_RELOCATED";
      
      public static const const_1664:String = "WE_CHILD_RESIZE";
      
      public static const const_290:String = "WE_CHILD_RESIZED";
      
      public static const const_1802:String = "WE_CHILD_REMOVE";
      
      public static const const_537:String = "WE_CHILD_REMOVED";
      
      public static const const_1748:String = "WE_PARENT_RELOCATE";
      
      public static const const_1746:String = "WE_PARENT_RELOCATED";
      
      public static const const_1671:String = "WE_PARENT_RESIZE";
      
      public static const const_1277:String = "WE_PARENT_RESIZED";
      
      public static const const_185:String = "WE_OK";
      
      public static const const_777:String = "WE_CANCEL";
      
      public static const const_108:String = "WE_CHANGE";
      
      public static const WINDOW_EVENT_MESSAGE:String = "WE_MESSAGE";
      
      public static const const_447:String = "WE_SCROLL";
      
      public static const const_152:String = "";
       
      
      protected var _type:String = "";
      
      protected var _window:IWindow;
      
      protected var var_1888:IWindow;
      
      protected var var_1889:Boolean;
      
      public function WindowEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false, param5:Boolean = false)
      {
         this._type = param1;
         this._window = param2;
         this.var_1888 = param3;
         this.var_1889 = false;
         super(param1,param4,param5);
      }
      
      public function set type(param1:String) : void
      {
         this._type = param1;
      }
      
      override public function get type() : String
      {
         return this._type;
      }
      
      public function get window() : IWindow
      {
         return this._window;
      }
      
      public function get related() : IWindow
      {
         return this.var_1888;
      }
      
      override public function clone() : Event
      {
         return new WindowEvent(this._type,this.window,this.related,bubbles,cancelable);
      }
      
      public function preventWindowOperation() : void
      {
         if(cancelable)
         {
            this.var_1889 = true;
            stopImmediatePropagation();
            return;
         }
         throw new Error("Attempted to prevent window operation that is not canceable!");
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return this.var_1889;
      }
      
      override public function toString() : String
      {
         return formatToString("WindowEvent","type","bubbles","cancelable","window");
      }
   }
}
