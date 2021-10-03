package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureQueueTileVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const ANIMATION_ID_ROLL:int = 3;
      
      private static const const_1232:int = 2;
      
      private static const const_1233:int = 1;
      
      private static const ANIMATION_DURATION:int = 15;
       
      
      private var var_260:Array;
      
      private var var_1122:int;
      
      public function FurnitureQueueTileVisualization()
      {
         this.var_260 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == const_1232)
         {
            this.var_260 = new Array();
            this.var_260.push(const_1233);
            this.var_1122 = ANIMATION_DURATION;
         }
         super.setAnimation(param1);
      }
      
      override protected function updateAnimation(param1:Number) : Array
      {
         if(this.var_1122 > 0)
         {
            --this.var_1122;
         }
         if(this.var_1122 == 0)
         {
            if(this.var_260.length > 0)
            {
               super.setAnimation(this.var_260.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
