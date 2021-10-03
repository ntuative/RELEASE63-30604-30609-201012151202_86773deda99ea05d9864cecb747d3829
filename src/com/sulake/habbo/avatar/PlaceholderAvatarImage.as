package com.sulake.habbo.avatar
{
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.avatar.alias.AssetAliasCollection;
   import com.sulake.habbo.avatar.cache.AvatarImageCache;
   import com.sulake.habbo.avatar.enum.AvatarAction;
   import flash.display.BitmapData;
   
   public class PlaceholderAvatarImage extends AvatarImage
   {
      
      static var var_683:Map = new Map();
       
      
      public function PlaceholderAvatarImage(param1:AvatarStructure, param2:AssetAliasCollection, param3:AvatarFigureContainer, param4:String)
      {
         super(param1,param2,param3,param4);
      }
      
      override public function dispose() : void
      {
         var _loc1_:* = null;
         if(!var_720)
         {
            _structure = null;
            _assets = null;
            var_247 = null;
            var_252 = null;
            var_579 = null;
            var_509 = null;
            var_287 = null;
            if(!var_1166 && var_39)
            {
               var_39.dispose();
            }
            var_39 = null;
            _loc1_ = getCache();
            if(_loc1_)
            {
               _loc1_.dispose();
               _loc1_ = null;
            }
            var_638 = null;
            var_720 = true;
         }
      }
      
      override protected function getFullImage(param1:String) : BitmapData
      {
         return var_683[param1];
      }
      
      override protected function cacheFullImage(param1:String, param2:BitmapData) : void
      {
         var_683[param1] = param2;
      }
      
      override public function appendAction(param1:String, ... rest) : Boolean
      {
         var _loc3_:* = null;
         if(rest != null && rest.length > 0)
         {
            _loc3_ = rest[0];
         }
         switch(param1)
         {
            case AvatarAction.const_366:
               switch(_loc3_)
               {
                  case AvatarAction.const_703:
                  case AvatarAction.const_418:
                  case AvatarAction.const_315:
                  case AvatarAction.const_708:
                  case AvatarAction.const_334:
                  case AvatarAction.const_697:
                     super.appendAction.apply(null,[param1].concat(rest));
               }
               break;
            case AvatarAction.const_302:
            case AvatarAction.const_722:
            case AvatarAction.const_222:
            case AvatarAction.const_672:
            case AvatarAction.const_580:
            case AvatarAction.const_565:
               super.addActionData.apply(null,[param1].concat(rest));
         }
         return true;
      }
      
      override public function isPlaceholder() : Boolean
      {
         return true;
      }
   }
}
