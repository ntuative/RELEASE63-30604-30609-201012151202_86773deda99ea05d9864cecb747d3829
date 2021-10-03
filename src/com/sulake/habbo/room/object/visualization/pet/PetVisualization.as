package com.sulake.habbo.room.object.visualization.pet
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.avatar.IAvatarImage;
   import com.sulake.habbo.avatar.IPetImageListener;
   import com.sulake.habbo.avatar.animation.IAnimationLayerData;
   import com.sulake.habbo.avatar.animation.ISpriteDataContainer;
   import com.sulake.habbo.avatar.enum.AvatarAction;
   import com.sulake.habbo.avatar.enum.AvatarSetType;
   import com.sulake.habbo.room.object.RoomObjectVariableEnum;
   import com.sulake.room.object.IRoomObject;
   import com.sulake.room.object.IRoomObjectModel;
   import com.sulake.room.object.visualization.IRoomObjectSprite;
   import com.sulake.room.object.visualization.IRoomObjectVisualizationData;
   import com.sulake.room.object.visualization.RoomObjectSpriteVisualization;
   import com.sulake.room.utils.IRoomGeometry;
   import flash.display.BitmapData;
   import flash.display.BlendMode;
   
   public class PetVisualization extends RoomObjectSpriteVisualization implements IPetImageListener
   {
      
      private static const const_876:int = 2;
      
      private static const const_1135:Array = [0,0,0];
       
      
      private var var_601:PetVisualizationData = null;
      
      private var var_432:Map;
      
      private var var_959:int = 0;
      
      private var var_512:int = 0;
      
      private var var_894:Boolean;
      
      private var var_579:String;
      
      private var var_958:int = 0;
      
      private var _updateTimes:Array;
      
      private var var_599:BitmapDataAsset;
      
      private var var_360:ExperienceData;
      
      private var var_720:Boolean = false;
      
      private var var_1476:Boolean = false;
      
      private const const_1813:int = 3;
      
      private var var_1564:int = -1;
      
      private const const_877:int = 0;
      
      private const const_1538:int = 1;
      
      private const const_1573:int = 2;
      
      private const const_1136:int = 3;
      
      private var var_55:IAvatarImage = null;
      
      private var var_244:String = "";
      
      private var _postureParameter:String = "";
      
      private var var_1801:Boolean = false;
      
      private var var_1391:Boolean = false;
      
      private var var_1800:Boolean = false;
      
      private var var_1128:Boolean = false;
      
      private var var_1477:Boolean = false;
      
      private var var_1208:String = "";
      
      private var var_1209:int = 0;
      
      private var var_2003:int = 0;
      
      private var var_1478:Number = NaN;
      
      private var var_1797:int = -1;
      
      private var var_1803:int = -1;
      
      public function PetVisualization()
      {
         super();
         this._updateTimes = new Array();
         this.var_432 = new Map();
         this.var_894 = false;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_720;
      }
      
      override public function dispose() : void
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         var _loc3_:* = null;
         super.dispose();
         if(this.var_432 != null)
         {
            _loc1_ = this.var_432.getKeys();
            for each(_loc2_ in _loc1_)
            {
               _loc3_ = this.var_432.getValue(_loc2_) as IAvatarImage;
               _loc3_.dispose();
            }
         }
         this.var_432.dispose();
         if(this.var_360)
         {
            this.var_360.dispose();
         }
         this.var_360 = null;
         this.var_601 = null;
         this.var_720 = true;
      }
      
      override public function initialize(param1:IRoomObjectVisualizationData) : Boolean
      {
         this.var_601 = param1 as PetVisualizationData;
         createSprites(this.const_1136);
         this.var_360 = new ExperienceData(this.var_601);
         return true;
      }
      
      private function updateModel(param1:IRoomObjectModel, param2:Number) : Boolean
      {
         var _loc3_:* = null;
         if(param1.getUpdateID() != var_216)
         {
            this.var_1801 = param1.getNumber(RoomObjectVariableEnum.const_521) > 0;
            this.var_1208 = param1.getString(RoomObjectVariableEnum.const_299);
            this.var_244 = param1.getString(RoomObjectVariableEnum.const_428);
            this._postureParameter = param1.getString(RoomObjectVariableEnum.const_687);
            this.var_1478 = param1.getNumber(RoomObjectVariableEnum.const_313);
            this.var_1209 = param1.getNumber(RoomObjectVariableEnum.const_952);
            this.var_2003 = param1.getNumber(RoomObjectVariableEnum.const_958);
            this.validateActions();
            _loc3_ = param1.getString(RoomObjectVariableEnum.const_178);
            if(this.var_579 != _loc3_)
            {
               this.var_579 = _loc3_;
               this.resetAvatarImages();
            }
            var_216 = param1.getUpdateID();
            return true;
         }
         return false;
      }
      
      private function resetAvatarImages() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_432)
         {
            if(_loc1_)
            {
               _loc1_.dispose();
            }
         }
         this.var_432.reset();
         this.var_55 = null;
      }
      
      private function validateActions() : void
      {
         var _loc1_:int = 0;
         this.var_1477 = false;
         switch(this.var_244)
         {
            case AvatarAction.const_418:
            case AvatarAction.const_933:
            case AvatarAction.const_1106:
            case AvatarAction.const_1073:
            case AvatarAction.const_1063:
            case AvatarAction.const_939:
            case AvatarAction.const_713:
            case AvatarAction.const_264:
            case AvatarAction.const_222:
               this.var_1477 = true;
         }
         this.var_1800 = false;
         this.var_1128 = false;
         if(this.var_244 == "lay")
         {
            this.var_1128 = true;
            _loc1_ = int(this._postureParameter);
            if(_loc1_ < 0)
            {
               this.var_1800 = true;
            }
         }
      }
      
      private function updateObject(param1:IRoomObject, param2:IRoomGeometry, param3:Boolean = false) : Boolean
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         if(param3 || var_415 != param1.getUpdateID() || this.var_1564 != param2.updateId)
         {
            _loc4_ = param1.getDirection().x - param2.direction.x;
            _loc4_ = (_loc4_ % 360 + 360) % 360;
            _loc5_ = this.var_1478;
            if(isNaN(this.var_1478))
            {
               _loc5_ = _loc4_;
            }
            else
            {
               _loc5_ -= param2.direction.x;
               _loc5_ = (_loc5_ % 360 + 360) % 360;
            }
            if(_loc4_ != this.var_1797 || param3)
            {
               this.var_1797 = _loc4_;
               _loc4_ -= 112.5;
               _loc4_ = (_loc4_ + 360) % 360;
               this.var_55.setDirectionAngle(AvatarSetType.const_32,_loc4_);
            }
            if(_loc5_ != this.var_1803 || param3)
            {
               this.var_1803 = _loc5_;
               _loc5_ -= 112.5;
               _loc5_ = (_loc5_ + 360) % 360;
               this.var_55.setDirectionAngle(AvatarSetType.const_43,_loc5_);
            }
            var_415 = param1.getUpdateID();
            this.var_1564 = param2.updateId;
            return true;
         }
         return false;
      }
      
      private function getAvatarImage(param1:Number) : IAvatarImage
      {
         var _loc2_:String = "avatarImage" + param1.toString();
         var _loc3_:IAvatarImage = this.var_432.getValue(_loc2_) as IAvatarImage;
         if(_loc3_ == null)
         {
            _loc3_ = this.var_601.getAvatar(this.var_579,param1,this);
            if(_loc3_ != null)
            {
               this.var_432.add(_loc2_,_loc3_);
            }
         }
         return _loc3_;
      }
      
      private function updateShadow(param1:Number) : void
      {
         var _loc2_:IRoomObjectSprite = getSprite(this.const_1538);
         this.var_599 = null;
         _loc2_ = getSprite(this.const_1538);
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(param1 < 48)
         {
            this.var_599 = this.var_55.getAsset("sh_std_sd_1_0_0");
            _loc3_ = -8;
            _loc4_ = -3;
         }
         else
         {
            this.var_599 = this.var_55.getAsset("h_std_sd_1_0_0");
            _loc3_ = -17;
            _loc4_ = -7;
         }
         if(this.var_599)
         {
            _loc2_.asset = this.var_599.content as BitmapData;
            _loc2_.offsetX = _loc3_;
            _loc2_.offsetY = _loc4_;
            _loc2_.alpha = 50;
            _loc2_.relativeDepth = 1;
         }
         else
         {
            _loc2_.asset = null;
         }
      }
      
      override public function update(param1:IRoomGeometry, param2:int, param3:Boolean) : void
      {
         var _loc12_:int = 0;
         var _loc13_:* = null;
         var _loc14_:* = null;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:* = null;
         var _loc18_:* = null;
         var _loc19_:* = null;
         var _loc20_:int = 0;
         var _loc21_:int = 0;
         var _loc22_:int = 0;
         var _loc23_:int = 0;
         var _loc24_:int = 0;
         var _loc25_:* = null;
         var _loc26_:* = null;
         var _loc4_:IRoomObject = object;
         if(_loc4_ == null)
         {
            return;
         }
         if(param1 == null)
         {
            return;
         }
         if(this.var_601 == null)
         {
            return;
         }
         var _loc5_:IRoomObjectModel = _loc4_.getModel();
         if(this.var_1476)
         {
            this.var_1476 = false;
            this.var_959 = 0;
            this.var_958 = 1;
            this.resetAvatarImages();
         }
         var _loc6_:Number = param1.scale;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = this.updateModel(_loc5_,_loc6_);
         if(_loc9_ || _loc6_ != var_254 || this.var_55 == null)
         {
            if(_loc6_ != var_254)
            {
               var_254 = _loc6_;
               _loc7_ = true;
            }
            if(_loc7_ || this.var_55 == null)
            {
               this.var_55 = this.getAvatarImage(_loc6_);
            }
            if(this.var_55 == null)
            {
               return;
            }
            if(_loc7_)
            {
               this.updateShadow(_loc6_);
            }
            _loc8_ = this.updateObject(_loc4_,param1,true);
            this.updateActions(this.var_55);
         }
         else
         {
            _loc8_ = this.updateObject(_loc4_,param1);
         }
         var _loc10_:Boolean = _loc8_ || _loc9_ || _loc7_;
         var _loc11_:Boolean = this.var_894 || this.var_958 > 0 || this.var_1477;
         this.var_360.alpha = 0;
         if(this.var_1209 > 0)
         {
            _loc12_ = param2 - this.var_1209;
            if(_loc12_ < AvatarAction.const_963)
            {
               this.var_360.alpha = int(Math.sin(_loc12_ / 0 * 0) * 255);
               this.var_360.setExperience(this.var_2003);
               this.var_958 = this.const_1813;
            }
            else
            {
               this.var_1209 = 0;
            }
            _loc13_ = getSprite(this.const_1573);
            if(_loc13_ != null)
            {
               if(this.var_360.alpha > 0)
               {
                  _loc13_.asset = this.var_360.image;
                  _loc13_.offsetX = -20;
                  _loc13_.offsetY = -80;
                  _loc13_.alpha = this.var_360.alpha;
                  _loc13_.visible = true;
               }
               else
               {
                  _loc13_.asset = null;
                  _loc13_.visible = false;
               }
            }
         }
         if(_loc10_ || _loc11_)
         {
            increaseUpdateId();
            --this.var_958;
            ++this.var_512;
            --this.var_959;
            if(!(this.var_959 <= 0 || _loc7_))
            {
               return;
            }
            this.var_55.updateAnimationByFrames(1);
            this.var_959 = const_876;
            this.var_894 = this.var_55.isAnimating();
            _loc14_ = this.var_55.getCanvasOffsets();
            if(_loc14_ == null || _loc14_.length < 3)
            {
               _loc14_ = const_1135;
            }
            _loc15_ = 0;
            if(object.getLocation().z > 0)
            {
               _loc15_ = Math.min(_loc6_ / 2.75,0);
            }
            _loc13_ = getSprite(this.const_877);
            if(_loc13_)
            {
               _loc18_ = this.var_55.getImage(AvatarSetType.const_32,false);
               if(_loc18_ != null)
               {
                  _loc13_.asset = _loc18_;
               }
               if(_loc6_ < 48)
               {
                  _loc13_.offsetX = -16 + _loc14_[0];
                  _loc13_.offsetY = -_loc13_.asset.height + 8 + _loc14_[1] + _loc15_;
               }
               else
               {
                  _loc13_.offsetX = -32 + _loc14_[0];
                  _loc13_.offsetY = -_loc13_.asset.height + 16 + _loc14_[1] + _loc15_;
               }
            }
            _loc16_ = this.const_1136;
            for each(_loc17_ in this.var_55.getSprites())
            {
               _loc13_ = getSprite(_loc16_);
               if(_loc13_ != null)
               {
                  _loc19_ = this.var_55.getLayerData(_loc17_);
                  _loc20_ = 0;
                  _loc21_ = _loc17_.getDirectionOffsetX(this.var_55.getDirection());
                  _loc22_ = _loc17_.getDirectionOffsetY(this.var_55.getDirection());
                  _loc23_ = _loc17_.getDirectionOffsetZ(this.var_55.getDirection());
                  _loc24_ = 0;
                  if(_loc17_.hasDirections)
                  {
                     _loc24_ = this.var_55.getDirection();
                  }
                  if(_loc19_ != null)
                  {
                     _loc20_ = _loc19_.animationFrame;
                     _loc21_ += _loc19_.dx;
                     _loc22_ += _loc19_.dy;
                     _loc24_ += _loc19_.directionOffset;
                  }
                  if(_loc6_ < 48)
                  {
                     _loc21_ /= 2;
                     _loc22_ /= 2;
                  }
                  if(_loc24_ < 0)
                  {
                     _loc24_ += 8;
                  }
                  if(_loc24_ > 7)
                  {
                     _loc24_ -= 8;
                  }
                  _loc25_ = this.var_55.getScale() + "_" + _loc17_.member + "_" + _loc24_ + "_" + _loc20_;
                  _loc26_ = this.var_55.getAsset(_loc25_);
                  if(_loc26_ != null)
                  {
                     _loc13_.asset = _loc26_.content as BitmapData;
                     _loc13_.offsetX = -1 * _loc26_.offset.x - _loc6_ / 2 + _loc21_;
                     _loc13_.offsetY = -1 * _loc26_.offset.y + _loc22_;
                     _loc13_.relativeDepth = -0.01 - 0.1 * _loc16_ * _loc23_;
                     if(_loc17_.ink == 33)
                     {
                        _loc13_.blendMode = BlendMode.ADD;
                     }
                     else
                     {
                        _loc13_.blendMode = BlendMode.NORMAL;
                     }
                     _loc16_++;
                  }
               }
            }
         }
      }
      
      private function updateActions(param1:IAvatarImage) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.initActionAppends();
         param1.appendAction(AvatarAction.const_366,this.var_244,this._postureParameter);
         if(this.var_1208 != null && this.var_1208 != "")
         {
            param1.appendAction(AvatarAction.const_298,this.var_1208);
         }
         if(this.var_1801 || this.var_1391)
         {
            param1.appendAction(AvatarAction.const_439);
         }
         param1.endActionAppends();
         var _loc2_:int = param1.getSprites().length + this.const_1136;
         if(_loc2_ != spriteCount)
         {
            createSprites(_loc2_);
         }
      }
      
      public function imageReady() : void
      {
         this.var_1476 = true;
      }
      
      public function petImageReady(param1:String) : void
      {
         this.resetAvatarImages();
      }
   }
}
