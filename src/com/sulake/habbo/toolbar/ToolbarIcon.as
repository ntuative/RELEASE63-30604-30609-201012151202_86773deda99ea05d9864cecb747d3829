package com.sulake.habbo.toolbar
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.IRegionWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.toolbar.events.HabboToolbarEvent;
   import com.sulake.habbo.window.IHabboWindowManager;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.Timer;
   
   public class ToolbarIcon
   {
       
      
      private var _windowManager:IHabboWindowManager;
      
      private var _assetLibrary:IAssetLibrary;
      
      private var var_435:ToolbarIconGroup;
      
      private var var_642:String;
      
      private var var_1216:String;
      
      private var var_2647:String;
      
      private var var_1062:Number;
      
      private var var_643:Array;
      
      private var var_968:Array;
      
      private var _region:IRegionWindow;
      
      private var _icon:IBitmapWrapperWindow;
      
      private var var_295:ITextWindow;
      
      private var _events:IEventDispatcher;
      
      private var _bitmapData:BitmapData;
      
      private var var_1493:Array;
      
      private var var_972:Array;
      
      private var var_1215:String = "-1";
      
      private var var_969:String = "-1";
      
      private var var_261:ToolbarBarMenuAnimator;
      
      private var var_970:ToolbarIconBouncer;
      
      private var var_533:ToolbarIconAnimator;
      
      private var var_971:Boolean = false;
      
      private var _state:String = "-1";
      
      private var _x:Number = 0;
      
      private var var_151:Number = 0;
      
      private var var_787:Timer;
      
      private var var_1214:Timer;
      
      private var var_2027:int;
      
      private var var_2028:int;
      
      public function ToolbarIcon(param1:ToolbarIconGroup, param2:IHabboWindowManager, param3:IAssetLibrary, param4:String, param5:IEventDispatcher, param6:ToolbarBarMenuAnimator)
      {
         this.var_643 = new Array();
         this.var_968 = new Array();
         this.var_970 = new ToolbarIconBouncer(0.8,1);
         super();
         this.var_435 = param1;
         this._windowManager = param2;
         this._assetLibrary = param3;
         this.var_642 = param4;
         this._events = param5;
         this.var_261 = param6;
         this.var_1214 = new Timer(40,40);
         this.var_1214.addEventListener(TimerEvent.TIMER,this.updateBouncer);
         var _loc7_:XmlAsset = this._assetLibrary.getAssetByName("toolbar_icon_xml") as XmlAsset;
         this._region = param2.buildFromXML(_loc7_.content as XML) as IRegionWindow;
         this._region.procedure = this.onMouseEvent;
         this._region.visible = false;
         this._icon = this._region.findChildByName("icon") as IBitmapWrapperWindow;
         this._icon.addEventListener(WindowEvent.const_44,this.onWindowResized);
         this.var_295 = this._region.findChildByName("label") as ITextWindow;
      }
      
      public function dispose() : void
      {
         if(this._icon != null)
         {
            this._icon.dispose();
            this._icon = null;
         }
         if(this.var_295 != null)
         {
            this.var_295.dispose();
            this.var_295 = null;
         }
         if(this._region != null)
         {
            this._region.dispose();
            this._region = null;
         }
         this.var_643 = null;
         this.var_968 = null;
         this.exists = false;
         this._windowManager = null;
         this._events = null;
         this.var_261 = null;
         this.var_533 = null;
         this._bitmapData = null;
      }
      
      public function get iconId() : String
      {
         return this.var_642;
      }
      
      public function get group() : ToolbarIconGroup
      {
         return this.var_435;
      }
      
      public function set exists(param1:Boolean) : void
      {
         this.var_971 = param1;
         if(this._region != null)
         {
            this._region.visible = this.var_971;
         }
      }
      
      public function defineFromXML(param1:XML) : void
      {
         var _loc3_:int = 0;
         var _loc4_:* = null;
         var _loc5_:* = null;
         this.var_1493 = new Array();
         this.var_972 = new Array();
         this.var_1216 = param1.@id;
         this.var_2027 = int(param1.@window_offset_from_icon);
         this.var_2028 = int(param1.@window_margin);
         this.var_2647 = param1.@label;
         var _loc2_:XMLList = param1.elements("state");
         if(_loc2_.length() > 0)
         {
            if(param1.attribute("state_over").length() > 0)
            {
               this.var_1215 = param1.@state_over;
            }
            if(param1.attribute("state_default").length() > 0)
            {
               this.var_969 = param1.@state_default;
            }
            _loc3_ = 0;
            while(_loc3_ < _loc2_.length())
            {
               _loc4_ = _loc2_[_loc3_];
               _loc5_ = new StateItem(_loc4_,param1.@id.toLowerCase());
               this.var_972.push(_loc5_.id);
               this.var_1493.push(_loc5_);
               if(_loc3_ == 0)
               {
                  if(this.var_1215 == "-1")
                  {
                     this.var_1215 = _loc5_.id;
                  }
                  if(this.var_969 == "-1")
                  {
                     this.var_969 = _loc5_.id;
                  }
               }
               _loc3_++;
            }
         }
         this._state = this.var_969;
      }
      
      public function setIconBitmapData(param1:BitmapData = null) : void
      {
         this.exists = true;
         this._bitmapData = param1;
         this.setLabel();
         this.setAnimator();
      }
      
      public function setIcon(param1:Boolean = true) : void
      {
         this.setLabel();
         this.exists = param1;
         this.setAnimator();
      }
      
      private function setAnimator() : void
      {
         if(this.var_787 != null)
         {
            this.var_787.stop();
            this.var_787 = null;
         }
         var _loc1_:StateItem = this.getCurrentStateObject();
         if(_loc1_ != null && this.var_971)
         {
            if(_loc1_.frames == null)
            {
               return;
            }
            this.var_533 = new ToolbarIconAnimator(_loc1_,this._assetLibrary,this._icon,this._x,this.var_151,this._bitmapData);
            if(this.var_533.frameCount > 0)
            {
               this.var_787 = new Timer(_loc1_.timer);
               this.var_787.addEventListener(TimerEvent.TIMER,this.updateAnimator);
               this.var_787.start();
            }
            if(_loc1_.bounce)
            {
               this.var_970.reset(-7);
               this.var_1214.reset();
               this.var_1214.start();
            }
         }
         else
         {
            this.var_533 = null;
            this._icon.bitmap = null;
         }
      }
      
      public function dockMenu(param1:String, param2:Array = null, param3:Boolean = false) : void
      {
         var _loc4_:* = null;
         if(this.var_643.indexOf(param1) < 0)
         {
            this.var_643.push(param1);
            _loc4_ = new MenuSettingsItem(param1,param2,param3);
            this.var_968.push(_loc4_);
         }
      }
      
      public function docksMenu(param1:String) : Boolean
      {
         return this.var_643.indexOf(param1) > -1;
      }
      
      public function menuLockedToIcon(param1:String) : Boolean
      {
         if(!this.docksMenu(param1))
         {
            return false;
         }
         var _loc2_:MenuSettingsItem = this.var_968[this.var_643.indexOf(param1)];
         return _loc2_.lockToIcon;
      }
      
      public function animateWindowIn(param1:String, param2:IWindowContainer, param3:Number, param4:String, param5:Point) : void
      {
         if(this.var_261 != null)
         {
            this.var_261.animateWindowIn(this,param1,param2,this.var_642,param3,param4,this.getMenuYieldList(param1));
         }
      }
      
      public function animateWindowOut(param1:String, param2:IWindowContainer, param3:String) : void
      {
         if(this.var_261 != null)
         {
            this.var_261.animateWindowOut(this,param1,param2,param3);
         }
      }
      
      public function positionWindow(param1:String, param2:IWindowContainer, param3:Number, param4:String) : void
      {
         if(this.var_261 != null)
         {
            this.var_261.positionWindow(this,param1,param2,this.var_642,param3,this.getMenuYieldList(param1));
         }
      }
      
      public function hideWindow(param1:String, param2:IWindowContainer, param3:Number, param4:String) : void
      {
         if(this.var_261 != null)
         {
            this.var_261.hideWindow(param1,param2,this.var_642,param3);
         }
      }
      
      private function getCurrentStateObject() : StateItem
      {
         return this.getStateObject(this._state);
      }
      
      private function getStateObject(param1:String) : StateItem
      {
         return this.var_1493[this.var_972.indexOf(param1)];
      }
      
      private function getMenuYieldList(param1:String) : Array
      {
         if(!this.docksMenu(param1))
         {
            return null;
         }
         var _loc2_:MenuSettingsItem = this.var_968[this.var_643.indexOf(param1)];
         return _loc2_.yieldList;
      }
      
      public function changePosition(param1:Number) : void
      {
         this.var_1062 = param1;
         this.updateRegion();
      }
      
      public function set state(param1:String) : void
      {
         this._state = param1;
         this.exists = true;
         this.setAnimator();
         this.setTooltip();
         this.setLabel();
      }
      
      private function setTooltip() : void
      {
         if(this._region == null)
         {
            return;
         }
         var _loc1_:StateItem = this.getCurrentStateObject();
         if(_loc1_ != null && _loc1_.tooltip != null)
         {
            this._region.toolTipCaption = "${toolbar.icon.tooltip." + _loc1_.tooltip + "}";
         }
         else
         {
            this._region.toolTipCaption = "${toolbar.icon.tooltip." + this.var_1216.toLowerCase() + "}";
         }
         this._region.toolTipDelay = 100;
      }
      
      private function setLabel() : void
      {
         var _loc1_:StateItem = this.getCurrentStateObject();
         if(_loc1_ != null && _loc1_.label != null)
         {
            this.var_295.caption = "${toolbar.icon.label." + _loc1_.label + "}";
         }
         else
         {
            this.var_295.caption = "${toolbar.icon.label." + this.var_1216.toLowerCase() + "}";
         }
         this.updateRegion();
      }
      
      public function get window() : IWindow
      {
         return this._region;
      }
      
      public function get exists() : Boolean
      {
         return this.var_971;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function get y() : Number
      {
         return this.var_151;
      }
      
      public function get windowOffsetFromIcon() : Number
      {
         return this.var_2027;
      }
      
      public function get windowMargin() : Number
      {
         return this.var_2028 + this.var_435.windowMargin;
      }
      
      private function updateAnimator(param1:Event) : void
      {
         if(this.var_533 != null && this._icon != null)
         {
            this.var_533.update(this._icon);
            if(this.var_533.hasNextState())
            {
               this.state = this.var_533.nextState;
            }
         }
      }
      
      private function updateBouncer(param1:Event) : void
      {
         if(this.var_970 != null && this._icon != null)
         {
            this.var_970.update();
            this._icon.y = this.var_970.location;
         }
      }
      
      private function onMouseEvent(param1:WindowEvent, param2:IWindow) : void
      {
         var _loc4_:* = null;
         if(!this.var_971)
         {
            return;
         }
         var _loc3_:StateItem = this.getCurrentStateObject();
         switch(param1.type)
         {
            case WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK:
               if(this.var_261)
               {
                  this.var_261.repositionWindow(this.var_642,true);
               }
               if(this._events != null)
               {
                  _loc4_ = new HabboToolbarEvent(HabboToolbarEvent.const_38);
                  _loc4_.iconId = this.var_642;
                  _loc4_.iconName = this.var_1216;
                  this._events.dispatchEvent(_loc4_);
               }
               break;
            case WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER:
               if(this.var_972.length > 0)
               {
                  if(_loc3_.hasStateOver)
                  {
                     this.state = _loc3_.stateOver;
                  }
                  else
                  {
                     this.state = this.var_1215;
                  }
               }
               break;
            case WindowMouseEvent.const_25:
               if(this.var_972.length > 0)
               {
                  if(_loc3_.hasDefaultState)
                  {
                     this.state = _loc3_.defaultState;
                  }
                  else
                  {
                     this.state = this.var_969;
                  }
               }
         }
      }
      
      private function updateRegion() : void
      {
         if(this._region == null || this._icon == null)
         {
            return;
         }
         this.var_295.y = this._icon.height;
         this._region.width = Math.max(this._icon.width,this.var_295.width);
         this._region.height = this._icon.height + this.var_295.height;
         this._icon.x = (this._region.width - this._icon.width) / 2;
         this.var_295.x = (this._region.width - this.var_295.width) / 2;
         var _loc1_:Boolean = this.var_435.orientation == "LEFT" || this.var_435.orientation == "RIGHT";
         if(_loc1_)
         {
            this._x = (this.var_435.toolbarUsableWidth - this._region.width) / 2;
            this.var_151 = this.var_1062 + (this.var_435.iconSize - this._region.height) / 2;
         }
         else
         {
            this._x = this.var_1062 + (this.var_435.iconSize - this._region.width) / 2;
            this.var_151 = (this.var_435.toolbarUsableWidth - this._region.height) / 2;
         }
         this._region.x = this._x;
         this._region.y = this.var_151;
      }
      
      private function onWindowResized(param1:WindowEvent) : void
      {
         this.updateRegion();
      }
   }
}
