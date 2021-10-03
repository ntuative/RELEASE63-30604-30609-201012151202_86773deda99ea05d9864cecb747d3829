package com.sulake.core.window.utils
{
   import com.sulake.core.runtime.IDisposable;
   
   public class TextMargins implements IMargins, IDisposable
   {
       
      
      private var var_1081:int;
      
      private var _right:int;
      
      private var var_1083:int;
      
      private var var_1082:int;
      
      private var var_255:Function;
      
      private var _disposed:Boolean = false;
      
      public function TextMargins(param1:int, param2:int, param3:int, param4:int, param5:Function)
      {
         super();
         this.var_1081 = param1;
         this.var_1083 = param2;
         this._right = param3;
         this.var_1082 = param4;
         this.var_255 = param5 != null ? param5 : this.nullCallback;
      }
      
      public function get left() : int
      {
         return this.var_1081;
      }
      
      public function get right() : int
      {
         return this._right;
      }
      
      public function get top() : int
      {
         return this.var_1083;
      }
      
      public function get bottom() : int
      {
         return this.var_1082;
      }
      
      public function set left(param1:int) : void
      {
         this.var_1081 = param1;
         this.var_255(this);
      }
      
      public function set right(param1:int) : void
      {
         this._right = param1;
         this.var_255(this);
      }
      
      public function set top(param1:int) : void
      {
         this.var_1083 = param1;
         this.var_255(this);
      }
      
      public function set bottom(param1:int) : void
      {
         this.var_1082 = param1;
         this.var_255(this);
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get isZeroes() : Boolean
      {
         return this.var_1081 == 0 && this._right == 0 && this.var_1083 == 0 && this.var_1082 == 0;
      }
      
      public function clone(param1:Function) : TextMargins
      {
         return new TextMargins(this.var_1081,this.var_1083,this._right,this.var_1082,param1);
      }
      
      public function dispose() : void
      {
         this.var_255 = null;
         this._disposed = true;
      }
      
      private function nullCallback(param1:IMargins) : void
      {
      }
   }
}
