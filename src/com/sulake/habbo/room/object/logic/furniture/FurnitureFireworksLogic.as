package com.sulake.habbo.room.object.logic.furniture
{
   import com.sulake.habbo.room.object.RoomObjectVariableEnum;
   import com.sulake.room.object.IRoomObjectModelController;
   
   public class FurnitureFireworksLogic extends FurnitureMultiStateLogic
   {
       
      
      public function FurnitureFireworksLogic()
      {
         super();
      }
      
      override public function initialize(param1:XML) : void
      {
         var _loc3_:* = null;
         super.initialize(param1);
         if(param1 == null)
         {
            return;
         }
         var _loc2_:XMLList = param1.particlesystems;
         if(_loc2_.length() == 0)
         {
            return;
         }
         if(object != null)
         {
            _loc3_ = object.getModelController();
            if(_loc3_ != null)
            {
               _loc3_.setString(RoomObjectVariableEnum.const_919,String(_loc2_));
            }
         }
      }
   }
}
