package com.sulake.core.window
{
   import com.sulake.core.localization.ICoreLocalizationManager;
   import com.sulake.core.localization.ILocalizable;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.IUpdateReceiver;
   import com.sulake.core.window.components.DesktopController;
   import com.sulake.core.window.components.IDesktopWindow;
   import com.sulake.core.window.components.SubstituteParentController;
   import com.sulake.core.window.enum.WindowParam;
   import com.sulake.core.window.enum.WindowState;
   import com.sulake.core.window.graphics.IGraphicContextHost;
   import com.sulake.core.window.graphics.IWindowRenderer;
   import com.sulake.core.window.services.IInternalWindowServices;
   import com.sulake.core.window.services.ServiceManager;
   import com.sulake.core.window.utils.EventProcessorState;
   import com.sulake.core.window.utils.IEventProcessor;
   import com.sulake.core.window.utils.IEventQueue;
   import com.sulake.core.window.utils.IMouseCursor;
   import com.sulake.core.window.utils.IWindowParser;
   import com.sulake.core.window.utils.MouseCursorControl;
   import com.sulake.core.window.utils.MouseEventProcessor;
   import com.sulake.core.window.utils.MouseEventQueue;
   import com.sulake.core.window.utils.WindowParser;
   import com.sulake.core.window.utils.tablet.TabletEventProcessor;
   import com.sulake.core.window.utils.tablet.TabletEventQueue;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.geom.Rectangle;
   
   public class WindowContext implements IWindowContext, IDisposable, IUpdateReceiver
   {
      
      public static const const_519:uint = 0;
      
      public static const const_1487:uint = 1;
      
      public static const const_1770:int = 0;
      
      public static const const_1606:int = 1;
      
      public static const const_1608:int = 2;
      
      public static const const_1712:int = 3;
      
      public static const const_1370:int = 4;
      
      public static const const_365:int = 5;
      
      public static var var_1417:IMouseCursor;
      
      public static var var_345:IEventQueue;
      
      private static var var_528:IEventProcessor;
      
      private static var var_1460:uint = const_519;
      
      private static var stage:Stage;
      
      private static var var_147:IWindowRenderer;
       
      
      private var _eventProcessorState:EventProcessorState;
      
      private var var_1981:IWindowContextStateListener;
      
      protected var _localization:ICoreLocalizationManager;
      
      protected var var_170:DisplayObjectContainer;
      
      protected var var_2674:Boolean = true;
      
      protected var var_1157:Error;
      
      protected var var_1879:int = -1;
      
      protected var var_1158:IInternalWindowServices;
      
      protected var var_1419:IWindowParser;
      
      protected var var_2617:IWindowFactory;
      
      protected var var_129:IDesktopWindow;
      
      protected var var_1420:SubstituteParentController;
      
      private var _disposed:Boolean = false;
      
      private var var_510:Boolean = false;
      
      private var var_1982:Boolean = false;
      
      private var _name:String;
      
      public function WindowContext(param1:String, param2:IWindowRenderer, param3:IWindowFactory, param4:ICoreLocalizationManager, param5:DisplayObjectContainer, param6:Rectangle, param7:IWindowContextStateListener)
      {
         super();
         this._name = param1;
         var_147 = param2;
         this._localization = param4;
         this.var_170 = param5;
         this.var_1158 = new ServiceManager(this,param5);
         this.var_2617 = param3;
         this.var_1419 = new WindowParser(this);
         this.var_1981 = param7;
         if(!stage)
         {
            if(this.var_170 is Stage)
            {
               stage = this.var_170 as Stage;
            }
            else if(this.var_170.stage)
            {
               stage = this.var_170.stage;
            }
         }
         Classes.init();
         if(param6 == null)
         {
            param6 = new Rectangle(0,0,800,600);
         }
         this.var_129 = new DesktopController("_CONTEXT_DESKTOP_" + this._name,this,param6);
         this.var_170.addChild(this.var_129.getDisplayObject());
         this.var_170.doubleClickEnabled = true;
         this.var_170.addEventListener(Event.RESIZE,this.stageResizedHandler);
         this._eventProcessorState = new EventProcessorState(var_147,this.var_129,this.var_129,null,this.var_1981);
         inputMode = const_519;
         this.var_1420 = new SubstituteParentController(this);
      }
      
      public static function get inputMode() : uint
      {
         return var_1460;
      }
      
      public static function set inputMode(param1:uint) : void
      {
         var value:uint = param1;
         if(var_345)
         {
            if(var_345 is IDisposable)
            {
               IDisposable(var_345).dispose();
            }
         }
         if(var_528)
         {
            if(var_528 is IDisposable)
            {
               IDisposable(var_528).dispose();
            }
         }
         switch(value)
         {
            case const_519:
               var_345 = new MouseEventQueue(stage);
               var_528 = new MouseEventProcessor();
               try
               {
               }
               catch(e:Error)
               {
               }
               break;
            case const_1487:
               var_345 = new TabletEventQueue(stage);
               var_528 = new TabletEventProcessor();
               try
               {
               }
               catch(e:Error)
               {
               }
               break;
            default:
               inputMode = const_519;
               throw new Error("Unknown input mode " + value);
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            this._disposed = true;
            this.var_170.removeEventListener(Event.RESIZE,this.stageResizedHandler);
            this.var_170.removeChild(IGraphicContextHost(this.var_129).getGraphicContext(true) as DisplayObject);
            this.var_129.destroy();
            this.var_129 = null;
            this.var_1420.destroy();
            this.var_1420 = null;
            if(this.var_1158 is IDisposable)
            {
               IDisposable(this.var_1158).dispose();
            }
            this.var_1158 = null;
            this.var_1419.dispose();
            this.var_1419 = null;
            var_147 = null;
         }
      }
      
      public function getLastError() : Error
      {
         return this.var_1157;
      }
      
      public function getLastErrorCode() : int
      {
         return this.var_1879;
      }
      
      public function handleError(param1:int, param2:Error) : void
      {
         this.var_1157 = param2;
         this.var_1879 = param1;
         if(this.var_2674)
         {
            throw param2;
         }
      }
      
      public function flushError() : void
      {
         this.var_1157 = null;
         this.var_1879 = -1;
      }
      
      public function getWindowServices() : IInternalWindowServices
      {
         return this.var_1158;
      }
      
      public function getWindowParser() : IWindowParser
      {
         return this.var_1419;
      }
      
      public function getWindowFactory() : IWindowFactory
      {
         return this.var_2617;
      }
      
      public function getDesktopWindow() : IDesktopWindow
      {
         return this.var_129;
      }
      
      public function getMouseCursor() : IMouseCursor
      {
         if(var_1417 == null)
         {
            var_1417 = new MouseCursorControl(this.var_170);
         }
         return var_1417;
      }
      
      public function findWindowByName(param1:String) : IWindow
      {
         return this.var_129.findChildByName(param1);
      }
      
      public function registerLocalizationListener(param1:String, param2:IWindow) : void
      {
         this._localization.registerListener(param1,param2 as ILocalizable);
      }
      
      public function removeLocalizationListener(param1:String, param2:IWindow) : void
      {
         this._localization.removeListener(param1,param2 as ILocalizable);
      }
      
      public function create(param1:String, param2:String, param3:uint, param4:uint, param5:uint, param6:Rectangle, param7:Function, param8:IWindow, param9:uint, param10:Array = null, param11:Array = null) : IWindow
      {
         var _loc12_:Class = Classes.getWindowClassByType(param3);
         if(_loc12_ == null)
         {
            this.handleError(WindowContext.const_1370,new Error("Failed to solve implementation for window \"" + param1 + "\"!"));
            return null;
         }
         if(param8 == null)
         {
            if(param5 & 0)
            {
               param8 = this.var_1420;
            }
         }
         var _loc13_:IWindow = new _loc12_(param1,param3,param4,param5,this,param6,param8 != null ? param8 : this.var_129,param7,param10,param11,param9);
         if(param2 && param2.length)
         {
            _loc13_.caption = param2;
         }
         return _loc13_;
      }
      
      public function destroy(param1:IWindow) : Boolean
      {
         if(param1 == this.var_129)
         {
            this.var_129 = null;
         }
         if(param1.state != WindowState.const_542)
         {
            param1.destroy();
         }
         return true;
      }
      
      public function invalidate(param1:IWindow, param2:Rectangle, param3:uint) : void
      {
         if(!this.disposed)
         {
            var_147.addToRenderQueue(WindowController(param1),param2,param3);
         }
      }
      
      public function update(param1:uint) : void
      {
         this.var_510 = true;
         if(this.var_1157)
         {
            throw this.var_1157;
         }
         var_528.process(this._eventProcessorState,var_345);
         this.var_510 = false;
      }
      
      public function render(param1:uint) : void
      {
         this.var_1982 = true;
         var_147.update(param1);
         this.var_1982 = false;
      }
      
      private function stageResizedHandler(param1:Event) : void
      {
         if(this.var_129 != null && !this.var_129.disposed)
         {
            if(this.var_170 is Stage)
            {
               this.var_129.width = Stage(this.var_170).stageWidth;
               this.var_129.height = Stage(this.var_170).stageHeight;
            }
            else
            {
               this.var_129.width = this.var_170.width;
               this.var_129.height = this.var_170.height;
            }
         }
      }
   }
}
