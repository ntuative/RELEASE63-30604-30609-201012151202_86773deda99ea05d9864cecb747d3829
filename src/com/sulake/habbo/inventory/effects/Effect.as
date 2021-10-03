package com.sulake.habbo.inventory.effects
{
   import com.sulake.habbo.inventory.common.IThumbListDrawableItem;
   import com.sulake.habbo.widget.memenu.IWidgetAvatarEffect;
   import flash.display.BitmapData;
   
   public class Effect implements IWidgetAvatarEffect, IThumbListDrawableItem
   {
       
      
      private var _type:int;
      
      private var var_1710:int;
      
      private var var_855:int = 1;
      
      private var var_1334:int;
      
      private var var_386:Boolean = false;
      
      private var _isSelected:Boolean = false;
      
      private var var_1709:Boolean = false;
      
      private var var_618:BitmapData;
      
      private var var_2425:Date;
      
      public function Effect()
      {
         super();
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get duration() : int
      {
         return this.var_1710;
      }
      
      public function get effectsInInventory() : int
      {
         return this.var_855;
      }
      
      public function get isActive() : Boolean
      {
         return this.var_386;
      }
      
      public function get isInUse() : Boolean
      {
         return this.var_1709;
      }
      
      public function get isSelected() : Boolean
      {
         return this._isSelected;
      }
      
      public function get icon() : BitmapData
      {
         return this.var_618;
      }
      
      public function get iconImage() : BitmapData
      {
         return this.var_618;
      }
      
      public function get secondsLeft() : int
      {
         var _loc1_:int = 0;
         if(this.var_386)
         {
            _loc1_ = this.var_1334 - (new Date().valueOf() - this.var_2425.valueOf()) / 1000;
            _loc1_ = Math.floor(_loc1_);
            if(_loc1_ < 0)
            {
               _loc1_ = 0;
            }
            return _loc1_;
         }
         return this.var_1334;
      }
      
      public function set type(param1:int) : void
      {
         this._type = param1;
      }
      
      public function set duration(param1:int) : void
      {
         this.var_1710 = param1;
      }
      
      public function set secondsLeft(param1:int) : void
      {
         this.var_1334 = param1;
      }
      
      public function set isSelected(param1:Boolean) : void
      {
         this._isSelected = param1;
      }
      
      public function set isInUse(param1:Boolean) : void
      {
         this.var_1709 = param1;
      }
      
      public function set iconImage(param1:BitmapData) : void
      {
         this.var_618 = param1;
      }
      
      public function set effectsInInventory(param1:int) : void
      {
         this.var_855 = param1;
      }
      
      public function set isActive(param1:Boolean) : void
      {
         if(param1 && !this.var_386)
         {
            this.var_2425 = new Date();
         }
         this.var_386 = param1;
      }
      
      public function setOneEffectExpired() : void
      {
         --this.var_855;
         if(this.var_855 < 0)
         {
            this.var_855 = 0;
         }
         this.var_1334 = this.var_1710;
         this.var_386 = false;
         this.var_1709 = false;
      }
   }
}
