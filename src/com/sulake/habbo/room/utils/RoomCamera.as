package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomCamera
   {
      
      private static const const_848:int = 3;
       
      
      private var var_2283:int = -1;
      
      private var var_2287:int = -2;
      
      private var var_306:Vector3d = null;
      
      private var var_376:Vector3d = null;
      
      private var var_2280:Boolean = false;
      
      private var var_2281:Boolean = false;
      
      private var var_2279:Boolean = false;
      
      private var var_2285:Boolean = false;
      
      private var var_2286:int = 0;
      
      private var var_2278:int = 0;
      
      private var var_2282:int = 0;
      
      private var var_2284:int = 0;
      
      private var var_1276:int = 0;
      
      public function RoomCamera()
      {
         super();
      }
      
      public function get location() : IVector3d
      {
         return this.var_376;
      }
      
      public function get targetId() : int
      {
         return this.var_2283;
      }
      
      public function get targetCategory() : int
      {
         return this.var_2287;
      }
      
      public function get limitedLocationX() : Boolean
      {
         return this.var_2280;
      }
      
      public function get limitedLocationY() : Boolean
      {
         return this.var_2281;
      }
      
      public function get centeredLocX() : Boolean
      {
         return this.var_2279;
      }
      
      public function get centeredLocY() : Boolean
      {
         return this.var_2285;
      }
      
      public function get screenWd() : int
      {
         return this.var_2286;
      }
      
      public function get screenHt() : int
      {
         return this.var_2278;
      }
      
      public function get roomWd() : int
      {
         return this.var_2282;
      }
      
      public function get roomHt() : int
      {
         return this.var_2284;
      }
      
      public function set targetId(param1:int) : void
      {
         this.var_2283 = param1;
      }
      
      public function set targetCategory(param1:int) : void
      {
         this.var_2287 = param1;
      }
      
      public function set limitedLocationX(param1:Boolean) : void
      {
         this.var_2280 = param1;
      }
      
      public function set limitedLocationY(param1:Boolean) : void
      {
         this.var_2281 = param1;
      }
      
      public function set centeredLocX(param1:Boolean) : void
      {
         this.var_2279 = param1;
      }
      
      public function set centeredLocY(param1:Boolean) : void
      {
         this.var_2285 = param1;
      }
      
      public function set screenWd(param1:int) : void
      {
         this.var_2286 = param1;
      }
      
      public function set screenHt(param1:int) : void
      {
         this.var_2278 = param1;
      }
      
      public function set roomWd(param1:int) : void
      {
         this.var_2282 = param1;
      }
      
      public function set roomHt(param1:int) : void
      {
         this.var_2284 = param1;
      }
      
      public function set target(param1:IVector3d) : void
      {
         if(this.var_306 == null)
         {
            this.var_306 = new Vector3d();
         }
         if(this.var_306.x != param1.x || this.var_306.y != param1.y || this.var_306.z != param1.z)
         {
            this.var_306.assign(param1);
            this.var_1276 = 0;
         }
      }
      
      public function dispose() : void
      {
         this.var_306 = null;
         this.var_376 = null;
      }
      
      public function initializeLocation(param1:IVector3d) : void
      {
         if(this.var_376 != null)
         {
            return;
         }
         this.var_376 = new Vector3d();
         this.var_376.assign(param1);
      }
      
      public function update(param1:uint, param2:Number, param3:Number) : void
      {
         var _loc4_:* = null;
         if(this.var_306 != null && this.var_376 != null)
         {
            ++this.var_1276;
            _loc4_ = Vector3d.dif(this.var_306,this.var_376);
            if(_loc4_.length <= param2)
            {
               this.var_376 = this.var_306;
               this.var_306 = null;
            }
            else
            {
               _loc4_.div(_loc4_.length);
               if(_loc4_.length < param2 * (const_848 + 1))
               {
                  _loc4_.mul(param2);
               }
               else if(this.var_1276 <= const_848)
               {
                  _loc4_.mul(param2);
               }
               else
               {
                  _loc4_.mul(param3);
               }
               this.var_376 = Vector3d.sum(this.var_376,_loc4_);
            }
         }
      }
   }
}
