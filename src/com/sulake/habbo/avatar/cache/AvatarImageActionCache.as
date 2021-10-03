package com.sulake.habbo.avatar.cache
{
   import com.sulake.core.utils.Map;
   import flash.utils.getTimer;
   
   public class AvatarImageActionCache
   {
       
      
      private var var_247:Map;
      
      private var var_1993:int;
      
      public function AvatarImageActionCache()
      {
         super();
         this.var_247 = new Map();
         this.setLastAccessTime(getTimer());
      }
      
      public function dispose() : void
      {
         this.debugInfo("[dispose]");
         if(this.var_247 == null)
         {
            return;
         }
         this.var_247.dispose();
      }
      
      public function getDirectionCache(param1:int) : AvatarImageDirectionCache
      {
         var _loc2_:String = param1.toString();
         return this.var_247.getValue(_loc2_) as AvatarImageDirectionCache;
      }
      
      public function updateDirectionCache(param1:int, param2:AvatarImageDirectionCache) : void
      {
         var _loc3_:String = param1.toString();
         this.var_247.add(_loc3_,param2);
      }
      
      public function setLastAccessTime(param1:int) : void
      {
         this.var_1993 = param1;
      }
      
      public function getLastAccessTime() : int
      {
         return this.var_1993;
      }
      
      private function debugInfo(param1:String) : void
      {
      }
   }
}
