package com.sulake.core.window.utils
{
   import com.sulake.core.window.IWindow;
   
   public class WindowRectLimits implements IRectLimiter
   {
       
      
      private var var_431:int = -2.147483648E9;
      
      private var var_429:int = 2.147483647E9;
      
      private var var_430:int = -2.147483648E9;
      
      private var var_428:int = 2.147483647E9;
      
      private var _target:IWindow;
      
      public function WindowRectLimits(param1:IWindow)
      {
         super();
         this._target = param1;
      }
      
      public function get minWidth() : int
      {
         return this.var_431;
      }
      
      public function get maxWidth() : int
      {
         return this.var_429;
      }
      
      public function get minHeight() : int
      {
         return this.var_430;
      }
      
      public function get maxHeight() : int
      {
         return this.var_428;
      }
      
      public function set minWidth(param1:int) : void
      {
         this.var_431 = param1;
         if(this.var_431 > int.MIN_VALUE && !this._target.disposed && this._target.width < this.var_431)
         {
            this._target.width = this.var_431;
         }
      }
      
      public function set maxWidth(param1:int) : void
      {
         this.var_429 = param1;
         if(this.var_429 < int.MAX_VALUE && !this._target.disposed && this._target.width > this.var_429)
         {
            this._target.width = this.var_429;
         }
      }
      
      public function set minHeight(param1:int) : void
      {
         this.var_430 = param1;
         if(this.var_430 > int.MIN_VALUE && !this._target.disposed && this._target.height < this.var_430)
         {
            this._target.height = this.var_430;
         }
      }
      
      public function set maxHeight(param1:int) : void
      {
         this.var_428 = param1;
         if(this.var_428 < int.MAX_VALUE && !this._target.disposed && this._target.height > this.var_428)
         {
            this._target.height = this.var_428;
         }
      }
      
      public function get isEmpty() : Boolean
      {
         return this.var_431 == int.MIN_VALUE && this.var_429 == int.MAX_VALUE && this.var_430 == int.MIN_VALUE && this.var_428 == int.MAX_VALUE;
      }
      
      public function setEmpty() : void
      {
         this.var_431 = int.MIN_VALUE;
         this.var_429 = int.MAX_VALUE;
         this.var_430 = int.MIN_VALUE;
         this.var_428 = int.MAX_VALUE;
      }
      
      public function clone(param1:IWindow) : WindowRectLimits
      {
         var _loc2_:WindowRectLimits = new WindowRectLimits(param1);
         _loc2_.var_431 = this.var_431;
         _loc2_.var_429 = this.var_429;
         _loc2_.var_430 = this.var_430;
         _loc2_.var_428 = this.var_428;
         return _loc2_;
      }
   }
}
