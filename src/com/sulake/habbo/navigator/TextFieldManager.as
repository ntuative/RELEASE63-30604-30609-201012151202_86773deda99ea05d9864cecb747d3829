package com.sulake.habbo.navigator
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowKeyboardEvent;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.ui.Keyboard;
   
   public class TextFieldManager
   {
       
      
      private var _navigator:HabboNavigator;
      
      private var var_67:ITextFieldWindow;
      
      private var var_559:Boolean;
      
      private var var_1203:String = "";
      
      private var var_1600:int;
      
      private var var_1601:Function;
      
      private var var_2255:String = "";
      
      private var var_122:IWindowContainer;
      
      private var var_2256:Boolean;
      
      private var _orgTextBackgroundColor:uint;
      
      private var var_2254:uint;
      
      public function TextFieldManager(param1:HabboNavigator, param2:ITextFieldWindow, param3:int = 1000, param4:Function = null, param5:String = null)
      {
         super();
         this._navigator = param1;
         this.var_67 = param2;
         this.var_1600 = param3;
         this.var_1601 = param4;
         if(param5 != null)
         {
            this.var_559 = true;
            this.var_1203 = param5;
            this.var_67.text = param5;
         }
         Util.setProcDirectly(this.var_67,this.onInputClick);
         this.var_67.addEventListener(WindowKeyboardEvent.const_143,this.checkEnterPress);
         this.var_67.addEventListener(WindowEvent.const_108,this.checkMaxLen);
         this.var_2256 = this.var_67.textBackground;
         this._orgTextBackgroundColor = this.var_67.textBackgroundColor;
         this.var_2254 = this.var_67.textColor;
      }
      
      public function checkMandatory(param1:String) : Boolean
      {
         if(!this.isInputValid())
         {
            this.displayError(param1);
            return false;
         }
         this.restoreBackground();
         return true;
      }
      
      public function restoreBackground() : void
      {
         this.var_67.textBackground = this.var_2256;
         this.var_67.textBackgroundColor = this._orgTextBackgroundColor;
         this.var_67.textColor = this.var_2254;
      }
      
      public function displayError(param1:String) : void
      {
         this.var_67.textBackground = true;
         this.var_67.textBackgroundColor = 4294021019;
         this.var_67.textColor = 4278190080;
         if(this.var_122 == null)
         {
            this.var_122 = IWindowContainer(this._navigator.getXmlWindow("nav_error_popup"));
            this._navigator.refreshButton(this.var_122,"popup_arrow_down",true,null,0);
            IWindowContainer(this.var_67.parent).addChild(this.var_122);
         }
         var _loc2_:ITextWindow = ITextWindow(this.var_122.findChildByName("error_text"));
         _loc2_.text = param1;
         _loc2_.width = _loc2_.textWidth + 5;
         this.var_122.findChildByName("border").width = _loc2_.width + 15;
         this.var_122.width = _loc2_.width + 15;
         var _loc3_:Point = new Point();
         this.var_67.getLocalPosition(_loc3_);
         this.var_122.x = _loc3_.x;
         this.var_122.y = _loc3_.y - this.var_122.height + 3;
         var _loc4_:IWindow = this.var_122.findChildByName("popup_arrow_down");
         _loc4_.x = this.var_122.width / 2 - _loc4_.width / 2;
         this.var_122.x += (this.var_67.width - this.var_122.width) / 2;
         this.var_122.visible = true;
      }
      
      public function goBackToInitialState() : void
      {
         this.clearErrors();
         if(this.var_1203 != null)
         {
            this.var_67.text = this.var_1203;
            this.var_559 = true;
         }
         else
         {
            this.var_67.text = "";
            this.var_559 = false;
         }
      }
      
      public function getText() : String
      {
         if(this.var_559)
         {
            return this.var_2255;
         }
         return this.var_67.text;
      }
      
      public function setText(param1:String) : void
      {
         this.var_559 = false;
         this.var_67.text = param1;
      }
      
      public function clearErrors() : void
      {
         this.restoreBackground();
         if(this.var_122 != null)
         {
            this.var_122.visible = false;
         }
      }
      
      public function get input() : ITextFieldWindow
      {
         return this.var_67;
      }
      
      private function isInputValid() : Boolean
      {
         return !this.var_559 && Util.trim(this.getText()).length > 2;
      }
      
      private function onInputClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowEvent.const_166)
         {
            return;
         }
         if(!this.var_559)
         {
            return;
         }
         this.var_67.text = this.var_2255;
         this.var_559 = false;
         this.restoreBackground();
      }
      
      private function checkEnterPress(param1:Event) : void
      {
         var _loc2_:IWindow = IWindow(param1.target);
         if(!(param1 is WindowKeyboardEvent))
         {
            return;
         }
         var _loc3_:WindowKeyboardEvent = WindowKeyboardEvent(param1);
         if(_loc3_.charCode == Keyboard.ENTER)
         {
            if(this.var_1601 != null)
            {
               this.var_1601();
            }
         }
      }
      
      private function checkMaxLen(param1:Event) : void
      {
         var _loc2_:String = this.var_67.text;
         if(_loc2_.length > this.var_1600)
         {
            this.var_67.text = _loc2_.substring(0,this.var_1600);
         }
      }
   }
}
