package com.sulake.core.window.components
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.WindowContext;
   import com.sulake.core.window.WindowController;
   import com.sulake.core.window.enum.MouseCursorType;
   import com.sulake.core.window.enum.WindowParam;
   import com.sulake.core.window.enum.WindowState;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.core.window.utils.PropertyStruct;
   import flash.events.Event;
   import flash.geom.Rectangle;
   
   public class InteractiveController extends WindowController implements IInteractiveWindow
   {
      
      protected static const const_1116:String = "tool_tip_caption";
      
      protected static const const_819:String = "";
      
      protected static const KEY_TOOLTIP_DELAY:String = "tool_tip_delay";
      
      protected static const const_1518:uint = 500;
      
      protected static var var_256:Array;
       
      
      protected var var_2619:uint = 0;
      
      protected var var_409:Array;
      
      protected var var_1423:uint = 500;
      
      protected var var_1170:String = "";
      
      public function InteractiveController(param1:String, param2:uint, param3:uint, param4:uint, param5:WindowContext, param6:Rectangle, param7:IWindow, param8:Function, param9:Array = null, param10:Array = null, param11:uint = 0)
      {
         param4 |= 0;
         this.var_409 = new Array();
         this.var_409[0] = MouseCursorType.const_377;
         this.var_409[1] = MouseCursorType.const_34;
         this.var_409[2] = MouseCursorType.const_377;
         this.var_409[3] = MouseCursorType.const_377;
         this.var_409[4] = MouseCursorType.const_34;
         this.var_409[5] = MouseCursorType.const_34;
         this.var_409[6] = MouseCursorType.const_377;
         if(var_256 == null)
         {
            var_256 = new Array();
            var_256[0] = WindowState.const_97;
            var_256[1] = WindowState.const_77;
            var_256[2] = WindowState.WINDOW_STATE_HOVERING;
            var_256[3] = WindowState.const_66;
            var_256[4] = WindowState.const_47;
            var_256[5] = WindowState.const_83;
            var_256[6] = WindowState.const_67;
         }
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      public static function processInteractiveWindowEvents(param1:IInteractiveWindow, param2:Event) : void
      {
         if(param1.toolTipCaption != const_819)
         {
            if(param2.type == WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER)
            {
               param1.context.getWindowServices().getToolTipAgentService().begin(param1);
            }
            else if(param2.type != WindowMouseEvent.const_187)
            {
               if(param2.type == WindowMouseEvent.const_25)
               {
                  param1.context.getWindowServices().getToolTipAgentService().end(param1);
               }
            }
         }
      }
      
      public static function readInteractiveWindowProperties(param1:IInteractiveWindow, param2:Array) : void
      {
         var _loc3_:* = null;
         for each(_loc3_ in param2)
         {
            switch(_loc3_.key)
            {
               case const_1116:
                  param1.toolTipCaption = _loc3_.value as String;
                  break;
               case KEY_TOOLTIP_DELAY:
                  param1.toolTipDelay = _loc3_.value as uint;
                  break;
               case "mouse_cursor_hovering":
                  param1.setMouseCursorByState(WindowState.WINDOW_STATE_HOVERING,_loc3_.value as uint);
                  break;
               case "mouse_cursor_pressed":
                  param1.setMouseCursorByState(WindowState.const_83,_loc3_.value as uint);
                  break;
               case "mouse_cursor_disabled":
                  param1.setMouseCursorByState(WindowState.const_67,_loc3_.value as uint);
                  break;
            }
         }
      }
      
      public static function writeInteractiveWindowProperties(param1:IInteractiveWindow, param2:Array) : Array
      {
         param2.push(new PropertyStruct(const_1116,param1.toolTipCaption,PropertyStruct.const_87,param1.toolTipCaption != const_819));
         param2.push(new PropertyStruct(KEY_TOOLTIP_DELAY,param1.toolTipDelay,PropertyStruct.const_260,param1.toolTipDelay != const_1518));
         return param2;
      }
      
      public function set mouseCursorType(param1:uint) : void
      {
         this.var_2619 = param1;
      }
      
      public function get mouseCursorType() : uint
      {
         return this.var_2619;
      }
      
      public function set toolTipCaption(param1:String) : void
      {
         this.var_1170 = param1 == null ? const_819 : param1;
      }
      
      public function get toolTipCaption() : String
      {
         return this.var_1170;
      }
      
      public function set toolTipDelay(param1:uint) : void
      {
         this.var_1423 = param1;
      }
      
      public function get toolTipDelay() : uint
      {
         return this.var_1423;
      }
      
      override public function update(param1:WindowController, param2:Event) : Boolean
      {
         if(param1 == this)
         {
            processInteractiveWindowEvents(this,param2);
         }
         return super.update(param1,param2);
      }
      
      public function showToolTip(param1:IToolTipWindow) : void
      {
      }
      
      public function hideToolTip() : void
      {
      }
      
      public function setMouseCursorByState(param1:uint, param2:uint) : void
      {
         var _loc3_:int = var_256.indexOf(param1);
         if(_loc3_ > -1)
         {
            this.var_409[_loc3_] = param2;
         }
      }
      
      public function getMouseCursorByState(param1:uint) : uint
      {
         var _loc2_:int = 0;
         while(_loc2_-- > 0)
         {
            if((param1 & 0) > 0)
            {
               return this.var_409[_loc2_];
            }
         }
         return MouseCursorType.const_34;
      }
      
      override public function get properties() : Array
      {
         return writeInteractiveWindowProperties(this,super.properties);
      }
      
      override public function set properties(param1:Array) : void
      {
         readInteractiveWindowProperties(this,param1);
         super.properties = param1;
      }
   }
}
