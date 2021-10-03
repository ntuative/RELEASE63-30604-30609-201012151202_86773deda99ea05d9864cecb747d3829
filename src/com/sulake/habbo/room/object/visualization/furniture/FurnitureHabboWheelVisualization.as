package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureHabboWheelVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_827:int = 10;
      
      private static const const_546:int = 20;
      
      private static const const_1140:int = 31;
      
      private static const ANIMATION_ID_ROLL:int = 32;
       
      
      private var var_260:Array;
      
      private var var_721:Boolean = false;
      
      public function FurnitureHabboWheelVisualization()
      {
         this.var_260 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == -1)
         {
            if(!this.var_721)
            {
               this.var_721 = true;
               this.var_260 = new Array();
               this.var_260.push(const_1140);
               this.var_260.push(ANIMATION_ID_ROLL);
               return;
            }
         }
         if(param1 > 0 && param1 <= const_827)
         {
            if(this.var_721)
            {
               this.var_721 = false;
               this.var_260 = new Array();
               this.var_260.push(const_827 + param1);
               this.var_260.push(const_546 + param1);
               this.var_260.push(param1);
               return;
            }
            super.setAnimation(param1);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Array
      {
         if(super.getLastFramePlayed(1) && super.getLastFramePlayed(2) && super.getLastFramePlayed(3))
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
