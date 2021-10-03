package com.sulake.habbo.room.object.visualization.avatar
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.avatar.IAvatarImage;
   import com.sulake.habbo.avatar.IAvatarImageListener;
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
   
   public class AvatarVisualization extends RoomObjectSpriteVisualization implements IAvatarImageListener
   {
      
      private static const const_875:String = "avatar";
      
      private static const const_558:Number = -0.01;
      
      private static const const_557:Number = -0.409;
      
      private static const const_876:int = 2;
      
      private static const const_1135:Array = [0,0,0];
      
      private static const const_1245:int = 3;
       
      
      private var var_601:AvatarVisualizationData = null;
      
      private var var_432:Map;
      
      private var var_496:Map;
      
      private var var_959:int = 0;
      
      private var var_894:Boolean;
      
      private var var_579:String;
      
      private var var_870:String;
      
      private var var_958:int = 0;
      
      private var var_599:BitmapDataAsset;
      
      private var var_903:BitmapDataAsset;
      
      private var var_1478:int = -1;
      
      private var var_1797:int = -1;
      
      private var var_1803:int = -1;
      
      private const const_877:int = 0;
      
      private const const_1538:int = 1;
      
      private const const_1573:int = 2;
      
      private const const_1572:int = 3;
      
      private const const_1136:int = 4;
      
      private var var_1564:int = -1;
      
      private var var_244:String = "";
      
      private var _postureParameter:String = "";
      
      private var var_1802:Boolean = false;
      
      private var var_1798:Boolean = false;
      
      private var var_1801:Boolean = false;
      
      private var var_1391:Boolean = false;
      
      private var var_810:Boolean = false;
      
      private var var_1208:int = 0;
      
      private var var_1389:int = 0;
      
      private var var_2124:int = 0;
      
      private var var_729:int = 0;
      
      private var var_728:int = 0;
      
      private var var_600:int = 0;
      
      private var var_1390:int = 0;
      
      private var var_1128:Boolean = false;
      
      private var var_1800:Boolean = false;
      
      private var var_1127:int = 0;
      
      private var var_727:int = 0;
      
      private var var_1799:Boolean = false;
      
      private var var_1126:int = 0;
      
      private var var_55:IAvatarImage = null;
      
      private var var_720:Boolean;
      
      public function AvatarVisualization()
      {
         super();
         this.var_432 = new Map();
         this.var_496 = new Map();
         this.var_894 = false;
      }
      
      override public function dispose() : void
      {
         if(this.var_432 != null)
         {
            this.resetImages();
            this.var_432.dispose();
            this.var_496.dispose();
            this.var_432 = null;
         }
         this.var_601 = null;
         this.var_599 = null;
         this.var_903 = null;
         super.dispose();
         this.var_720 = true;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_720;
      }
      
      override public function initialize(param1:IRoomObjectVisualizationData) : Boolean
      {
         this.var_601 = param1 as AvatarVisualizationData;
         createSprites(this.const_1136);
         return true;
      }
      
      private function updateModel(param1:IRoomObjectModel, param2:Number, param3:Boolean) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:* = false;
         var _loc6_:int = 0;
         var _loc7_:* = null;
         var _loc8_:* = null;
         if(param1.getUpdateID() != var_216)
         {
            _loc4_ = false;
            _loc5_ = false;
            _loc6_ = 0;
            _loc7_ = "";
            _loc5_ = Boolean(param1.getNumber(RoomObjectVariableEnum.const_201) > 0 && param3);
            if(_loc5_ != this.var_1802)
            {
               this.var_1802 = _loc5_;
               _loc4_ = true;
            }
            _loc5_ = param1.getNumber(RoomObjectVariableEnum.const_232) > 0;
            if(_loc5_ != this.var_1798)
            {
               this.var_1798 = _loc5_;
               _loc4_ = true;
            }
            _loc5_ = param1.getNumber(RoomObjectVariableEnum.const_521) > 0;
            if(_loc5_ != this.var_1801)
            {
               this.var_1801 = _loc5_;
               _loc4_ = true;
            }
            _loc5_ = Boolean(param1.getNumber(RoomObjectVariableEnum.const_570) > 0 && param3);
            if(_loc5_ != this.var_1391)
            {
               this.var_1391 = _loc5_;
               _loc4_ = true;
            }
            _loc5_ = param1.getNumber(RoomObjectVariableEnum.const_1033) > 0;
            if(_loc5_ != this.var_810)
            {
               this.var_810 = _loc5_;
               _loc4_ = true;
               this.updateTypingBubble(param2);
            }
            _loc6_ = param1.getNumber(RoomObjectVariableEnum.const_299);
            if(_loc6_ != this.var_1208)
            {
               this.var_1208 = _loc6_;
               _loc4_ = true;
            }
            _loc7_ = param1.getString(RoomObjectVariableEnum.const_428);
            if(_loc7_ != this.var_244)
            {
               this.var_244 = _loc7_;
               _loc4_ = true;
            }
            _loc7_ = param1.getString(RoomObjectVariableEnum.const_687);
            if(_loc7_ != this._postureParameter)
            {
               this._postureParameter = _loc7_;
               _loc4_ = true;
            }
            _loc6_ = param1.getNumber(RoomObjectVariableEnum.const_1004);
            if(_loc6_ != this.var_1389)
            {
               this.var_1389 = _loc6_;
               _loc4_ = true;
            }
            _loc6_ = param1.getNumber(RoomObjectVariableEnum.const_482);
            if(_loc6_ != this.var_729)
            {
               this.var_729 = _loc6_;
               _loc4_ = true;
            }
            _loc6_ = param1.getNumber(RoomObjectVariableEnum.const_417);
            if(_loc6_ != this.var_728)
            {
               this.var_728 = _loc6_;
               _loc4_ = true;
            }
            _loc6_ = param1.getNumber(RoomObjectVariableEnum.const_335);
            if(_loc6_ != this.var_600)
            {
               this.var_600 = _loc6_;
               _loc4_ = true;
            }
            _loc6_ = param1.getNumber(RoomObjectVariableEnum.const_313);
            if(_loc6_ != this.var_1478)
            {
               this.var_1478 = _loc6_;
               _loc4_ = true;
            }
            if(this.var_728 > 0 && param1.getNumber(RoomObjectVariableEnum.const_335) > 0)
            {
               if(this.var_600 != this.var_728)
               {
                  this.var_600 = this.var_728;
                  _loc4_ = true;
               }
            }
            else if(this.var_600 != 0)
            {
               this.var_600 = 0;
               _loc4_ = true;
            }
            _loc6_ = param1.getNumber(RoomObjectVariableEnum.const_631);
            if(_loc6_ != this.var_1127)
            {
               this.var_1127 = _loc6_;
               _loc4_ = true;
               this.updateNumberBubble(param2);
            }
            this.validateActions(param2);
            _loc7_ = param1.getString(RoomObjectVariableEnum.const_937);
            if(_loc7_ != this.var_870)
            {
               this.var_870 = _loc7_;
               _loc4_ = true;
            }
            _loc8_ = param1.getString(RoomObjectVariableEnum.const_178);
            if(this.updateFigure(_loc8_))
            {
               _loc4_ = true;
            }
            var_216 = param1.getUpdateID();
            return _loc4_;
         }
         return false;
      }
      
      private function updateFigure(param1:String) : Boolean
      {
         if(this.var_579 != param1)
         {
            this.var_579 = param1;
            this.resetImages();
            return true;
         }
         return false;
      }
      
      private function resetImages() : void
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         for each(_loc1_ in this.var_432)
         {
            if(_loc1_)
            {
               _loc1_.dispose();
            }
         }
         for each(_loc1_ in this.var_496)
         {
            if(_loc1_)
            {
               _loc1_.dispose();
            }
         }
         this.var_432.reset();
         this.var_496.reset();
         this.var_55 = null;
         _loc2_ = getSprite(this.const_877);
         if(_loc2_ != null)
         {
            _loc2_.asset = null;
            _loc2_.alpha = 255;
         }
      }
      
      private function validateActions(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(param1 < 48)
         {
            this.var_1391 = false;
         }
         if(this.var_244 == "sit" || this.var_244 == "lay")
         {
            this.var_1390 = param1 / 2;
         }
         else
         {
            this.var_1390 = 0;
         }
         this.var_1800 = false;
         this.var_1128 = false;
         if(this.var_244 == "lay")
         {
            this.var_1128 = true;
            _loc2_ = int(this._postureParameter);
            if(_loc2_ < 0)
            {
               this.var_1800 = true;
            }
         }
      }
      
      private function getAvatarImage(param1:Number, param2:int) : IAvatarImage
      {
         var _loc3_:* = null;
         var _loc4_:String = "avatarImage" + param1.toString();
         if(param2 == 0)
         {
            _loc3_ = this.var_432.getValue(_loc4_) as IAvatarImage;
         }
         else
         {
            _loc4_ += "-" + param2;
            _loc3_ = this.var_496.getValue(_loc4_) as IAvatarImage;
         }
         if(_loc3_ == null)
         {
            _loc3_ = this.var_601.getAvatar(this.var_579,param1,this.var_870,this);
            if(_loc3_ != null)
            {
               if(param2 == 0)
               {
                  this.var_432.add(_loc4_,_loc3_);
               }
               else
               {
                  if(this.var_496.length >= const_1245)
                  {
                     this.var_496.remove(this.var_496.getKeys().shift());
                  }
                  this.var_496.add(_loc4_,_loc3_);
               }
            }
         }
         return _loc3_;
      }
      
      private function updateObject(param1:IRoomObject, param2:IRoomGeometry, param3:Boolean, param4:Boolean = false) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         if(param4 || var_415 != param1.getUpdateID() || this.var_1564 != param2.updateId)
         {
            _loc5_ = param3;
            _loc6_ = param1.getDirection().x - param2.direction.x;
            _loc6_ = (_loc6_ % 360 + 360) % 360;
            _loc7_ = this.var_1478;
            if(this.var_244 == "float")
            {
               _loc7_ = _loc6_;
            }
            else
            {
               _loc7_ -= param2.direction.x;
            }
            _loc7_ = (_loc7_ % 360 + 360) % 360;
            if(_loc6_ != this.var_1797 || param4)
            {
               _loc5_ = true;
               this.var_1797 = _loc6_;
               _loc6_ -= 112.5;
               _loc6_ = (_loc6_ + 360) % 360;
               this.var_55.setDirectionAngle(AvatarSetType.const_32,_loc6_);
            }
            if(_loc7_ != this.var_1803 || param4)
            {
               _loc5_ = true;
               this.var_1803 = _loc7_;
               if(this.var_1803 != this.var_1797)
               {
                  _loc7_ -= 112.5;
                  _loc7_ = (_loc7_ + 360) % 360;
                  this.var_55.setDirectionAngle(AvatarSetType.const_43,_loc7_);
               }
            }
            var_415 = param1.getUpdateID();
            this.var_1564 = param2.updateId;
            return _loc5_;
         }
         return false;
      }
      
      private function updateShadow(param1:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc2_:IRoomObjectSprite = getSprite(this.const_1538);
         this.var_599 = null;
         if(this.var_244 == "mv" || this.var_244 == "std")
         {
            _loc2_.visible = true;
            if(this.var_599 == null || param1 != var_254)
            {
               _loc3_ = 0;
               _loc4_ = 0;
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
               if(this.var_599 != null)
               {
                  _loc2_.asset = this.var_599.content as BitmapData;
                  _loc2_.offsetX = _loc3_;
                  _loc2_.offsetY = _loc4_;
                  _loc2_.alpha = 50;
                  _loc2_.relativeDepth = 1;
               }
               else
               {
                  _loc2_.visible = false;
               }
            }
         }
         else
         {
            this.var_599 = null;
            _loc2_.visible = false;
         }
      }
      
      private function updateTypingBubble(param1:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         this.var_903 = null;
         var _loc2_:IRoomObjectSprite = getSprite(this.const_1573);
         if(this.var_810)
         {
            _loc2_.visible = true;
            _loc5_ = 64;
            if(param1 < 48)
            {
               this.var_903 = this.var_601.getAvatarRendererAsset("user_typing_small_png") as BitmapDataAsset;
               _loc3_ = 3;
               _loc4_ = -42;
               _loc5_ = 32;
            }
            else
            {
               this.var_903 = this.var_601.getAvatarRendererAsset("user_typing_png") as BitmapDataAsset;
               _loc3_ = 14;
               _loc4_ = -83;
            }
            if(this.var_244 == "sit")
            {
               _loc4_ += _loc5_ / 2;
            }
            else if(this.var_244 == "lay")
            {
               _loc4_ += _loc5_;
            }
            if(this.var_903 != null)
            {
               _loc2_.asset = this.var_903.content as BitmapData;
               _loc2_.offsetX = _loc3_;
               _loc2_.offsetY = _loc4_;
               _loc2_.relativeDepth = -0.02;
            }
         }
         else
         {
            _loc2_.visible = false;
         }
      }
      
      private function updateNumberBubble(param1:Number) : void
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc2_:* = null;
         var _loc3_:IRoomObjectSprite = getSprite(this.const_1572);
         if(this.var_1127 > 0)
         {
            _loc6_ = 64;
            if(param1 < 48)
            {
               _loc2_ = this.var_601.getAvatarRendererAsset("number_" + this.var_1127 + "_small_png") as BitmapDataAsset;
               _loc4_ = -6;
               _loc5_ = -52;
               _loc6_ = 32;
            }
            else
            {
               _loc2_ = this.var_601.getAvatarRendererAsset("number_" + this.var_1127 + "_png") as BitmapDataAsset;
               _loc4_ = -8;
               _loc5_ = -105;
            }
            if(this.var_244 == "sit")
            {
               _loc5_ += _loc6_ / 2;
            }
            else if(this.var_244 == "lay")
            {
               _loc5_ += _loc6_;
            }
            if(_loc2_ != null)
            {
               _loc3_.visible = true;
               _loc3_.asset = _loc2_.content as BitmapData;
               _loc3_.offsetX = _loc4_;
               _loc3_.offsetY = _loc5_;
               _loc3_.relativeDepth = -0.01;
               this.var_727 = 1;
               this.var_1799 = true;
               this.var_1126 = 0;
               _loc3_.alpha = 0;
            }
            else
            {
               _loc3_.visible = false;
            }
         }
         else if(_loc3_.visible)
         {
            this.var_727 = -1;
         }
      }
      
      private function animateNumberBubble(param1:int) : Boolean
      {
         var _loc5_:int = 0;
         var _loc2_:IRoomObjectSprite = getSprite(this.const_1572);
         var _loc3_:int = _loc2_.alpha;
         var _loc4_:Boolean = false;
         if(this.var_1799)
         {
            ++this.var_1126;
            if(this.var_1126 < 10)
            {
               return false;
            }
            if(this.var_727 < 0)
            {
               if(param1 < 48)
               {
                  _loc2_.offsetY -= 2;
               }
               else
               {
                  _loc2_.offsetY -= 4;
               }
            }
            else
            {
               _loc5_ = 4;
               if(param1 < 48)
               {
                  _loc5_ = 8;
               }
               if(this.var_1126 % _loc5_ == 0)
               {
                  --_loc2_.offsetY;
                  _loc4_ = true;
               }
            }
         }
         if(this.var_727 > 0)
         {
            if(_loc3_ < 255)
            {
               _loc3_ += 32;
            }
            if(_loc3_ >= 255)
            {
               _loc3_ = 255;
               this.var_727 = 0;
            }
            _loc2_.alpha = _loc3_;
            return true;
         }
         if(this.var_727 < 0)
         {
            if(_loc3_ >= 0)
            {
               _loc3_ -= 32;
            }
            if(_loc3_ <= 0)
            {
               this.var_727 = 0;
               this.var_1799 = false;
               _loc3_ = 0;
               _loc2_.visible = false;
            }
            _loc2_.alpha = _loc3_;
            return true;
         }
         return _loc4_;
      }
      
      override public function update(param1:IRoomGeometry, param2:int, param3:Boolean) : void
      {
         var _loc15_:* = null;
         var _loc16_:* = null;
         var _loc17_:* = null;
         var _loc18_:int = 0;
         var _loc19_:* = null;
         var _loc20_:* = null;
         var _loc21_:* = null;
         var _loc22_:int = 0;
         var _loc23_:int = 0;
         var _loc24_:* = null;
         var _loc25_:int = 0;
         var _loc26_:int = 0;
         var _loc27_:int = 0;
         var _loc28_:int = 0;
         var _loc29_:int = 0;
         var _loc30_:* = null;
         var _loc31_:* = null;
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
         var _loc6_:Number = param1.scale;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = false;
         var _loc10_:int = this.var_729;
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = this.updateModel(_loc5_,_loc6_,param3);
         if(this.animateNumberBubble(_loc6_))
         {
            increaseUpdateId();
         }
         if(_loc12_ || _loc6_ != var_254 || this.var_55 == null)
         {
            if(_loc6_ != var_254)
            {
               _loc8_ = true;
               this.validateActions(_loc6_);
            }
            if(_loc10_ != this.var_729)
            {
               _loc11_ = true;
            }
            if(_loc8_ || this.var_55 == null || _loc11_)
            {
               this.var_55 = this.getAvatarImage(_loc6_,this.var_729);
               if(this.var_55 == null)
               {
                  return;
               }
               _loc7_ = true;
               _loc15_ = getSprite(this.const_877);
               if(_loc15_ && this.var_55 && this.var_55.isPlaceholder())
               {
                  _loc15_.alpha = 150;
               }
               else if(_loc15_)
               {
                  _loc15_.alpha = 255;
               }
            }
            if(this.var_55 == null)
            {
               return;
            }
            this.updateShadow(_loc6_);
            if(_loc8_)
            {
               this.updateTypingBubble(_loc6_);
               this.updateNumberBubble(_loc6_);
            }
            _loc9_ = this.updateObject(_loc4_,param1,param3,true);
            this.updateActions(this.var_55);
            var_254 = _loc6_;
         }
         else
         {
            _loc9_ = this.updateObject(_loc4_,param1,param3);
         }
         var _loc13_:Boolean = _loc9_ || _loc12_ || _loc8_;
         var _loc14_:Boolean = (this.var_894 || this.var_958 > 0) && param3;
         if(_loc13_)
         {
            this.var_958 = const_876;
         }
         if(_loc13_ || _loc14_)
         {
            increaseUpdateId();
            --this.var_958;
            --this.var_959;
            if(!(this.var_959 <= 0 || _loc8_ || _loc12_ || _loc7_))
            {
               return;
            }
            this.var_55.updateAnimationByFrames(1);
            this.var_959 = const_876;
            _loc17_ = this.var_55.getCanvasOffsets();
            if(_loc17_ == null || _loc17_.length < 3)
            {
               _loc17_ = const_1135;
            }
            _loc16_ = getSprite(this.const_877);
            if(_loc16_ != null)
            {
               _loc20_ = this.var_55.getImage(AvatarSetType.const_32,false);
               if(_loc20_ != null)
               {
                  _loc16_.asset = _loc20_;
               }
               if(_loc16_.asset)
               {
                  _loc16_.offsetX = -1 * _loc6_ / 2 + _loc17_[0];
                  _loc16_.offsetY = -_loc16_.asset.height + _loc6_ / 4 + _loc17_[1] + this.var_1390;
               }
               if(this.var_1128)
               {
                  if(this.var_1800)
                  {
                     _loc16_.relativeDepth = -0.5;
                  }
                  else
                  {
                     _loc16_.relativeDepth = const_557 + _loc17_[2];
                  }
               }
               else
               {
                  _loc16_.relativeDepth = const_558 + _loc17_[2];
               }
            }
            _loc16_ = getSprite(this.const_1573);
            if(_loc16_ != null && _loc16_.visible)
            {
               if(!this.var_1128)
               {
                  _loc16_.relativeDepth = const_558 - 0.01 + _loc17_[2];
               }
               else
               {
                  _loc16_.relativeDepth = const_557 - 0.01 + _loc17_[2];
               }
            }
            this.var_894 = this.var_55.isAnimating();
            _loc18_ = this.const_1136;
            for each(_loc19_ in this.var_55.getSprites())
            {
               if(_loc19_.id == const_875)
               {
                  _loc16_ = getSprite(this.const_877);
                  _loc21_ = this.var_55.getLayerData(_loc19_);
                  _loc22_ = _loc19_.getDirectionOffsetX(this.var_55.getDirection());
                  _loc23_ = _loc19_.getDirectionOffsetY(this.var_55.getDirection());
                  if(_loc21_ != null)
                  {
                     _loc22_ += _loc21_.dx;
                     _loc23_ += _loc21_.dy;
                  }
                  if(_loc6_ < 48)
                  {
                     _loc22_ /= 2;
                     _loc23_ /= 2;
                  }
                  _loc16_.offsetX += _loc22_;
                  _loc16_.offsetY += _loc23_;
               }
               else
               {
                  _loc16_ = getSprite(_loc18_);
                  if(_loc16_ != null)
                  {
                     _loc16_.capturesMouse = false;
                     _loc16_.visible = true;
                     _loc24_ = this.var_55.getLayerData(_loc19_);
                     _loc25_ = 0;
                     _loc26_ = _loc19_.getDirectionOffsetX(this.var_55.getDirection());
                     _loc27_ = _loc19_.getDirectionOffsetY(this.var_55.getDirection());
                     _loc28_ = _loc19_.getDirectionOffsetZ(this.var_55.getDirection());
                     _loc29_ = 0;
                     if(_loc19_.hasDirections)
                     {
                        _loc29_ = this.var_55.getDirection();
                     }
                     if(_loc24_ != null)
                     {
                        _loc25_ = _loc24_.animationFrame;
                        _loc26_ += _loc24_.dx;
                        _loc27_ += _loc24_.dy;
                        _loc29_ += _loc24_.directionOffset;
                     }
                     if(_loc6_ < 48)
                     {
                        _loc26_ /= 2;
                        _loc27_ /= 2;
                     }
                     if(_loc29_ < 0)
                     {
                        _loc29_ += 8;
                     }
                     else if(_loc29_ > 7)
                     {
                        _loc29_ -= 8;
                     }
                     _loc30_ = this.var_55.getScale() + "_" + _loc19_.member + "_" + _loc29_ + "_" + _loc25_;
                     _loc31_ = this.var_55.getAsset(_loc30_);
                     if(_loc31_ == null)
                     {
                        continue;
                     }
                     _loc16_.asset = _loc31_.content as BitmapData;
                     _loc16_.offsetX = -_loc31_.offset.x - _loc6_ / 2 + _loc26_;
                     _loc16_.offsetY = -_loc31_.offset.y + _loc27_ + this.var_1390;
                     if(this.var_1128)
                     {
                        _loc16_.relativeDepth = const_557 - 0.001 * spriteCount * _loc28_;
                     }
                     else
                     {
                        _loc16_.relativeDepth = const_558 - 0.001 * spriteCount * _loc28_;
                     }
                     if(_loc19_.ink == 33)
                     {
                        _loc16_.blendMode = BlendMode.ADD;
                     }
                     else
                     {
                        _loc16_.blendMode = BlendMode.NORMAL;
                     }
                  }
                  _loc18_++;
               }
            }
         }
      }
      
      private function updateActions(param1:IAvatarImage) : void
      {
         var _loc3_:* = null;
         if(param1 == null)
         {
            return;
         }
         param1.initActionAppends();
         param1.appendAction(AvatarAction.const_366,this.var_244,this._postureParameter);
         if(this.var_1208 > 0)
         {
            param1.appendAction(AvatarAction.const_298,AvatarAction.const_1401[this.var_1208]);
         }
         if(this.var_1389 > 0)
         {
            param1.appendAction(AvatarAction.const_722,this.var_1389);
         }
         if(this.var_2124 > 0)
         {
            param1.appendAction(AvatarAction.const_672,this.var_2124);
         }
         if(this.var_728 > 0)
         {
            param1.appendAction(AvatarAction.const_580,this.var_728);
         }
         if(this.var_600 > 0)
         {
            param1.appendAction(AvatarAction.const_565,this.var_600);
         }
         if(this.var_1802)
         {
            param1.appendAction(AvatarAction.const_264);
         }
         if(this.var_1801 || this.var_1391)
         {
            param1.appendAction(AvatarAction.const_439);
         }
         if(this.var_1798)
         {
            param1.appendAction(AvatarAction.const_222);
         }
         if(this.var_729 > 0)
         {
            param1.appendAction(AvatarAction.const_302,this.var_729);
         }
         param1.endActionAppends();
         this.var_894 = param1.isAnimating();
         var _loc2_:int = this.const_1136;
         for each(_loc3_ in this.var_55.getSprites())
         {
            if(_loc3_.id != const_875)
            {
               _loc2_++;
            }
         }
         if(_loc2_ != spriteCount)
         {
            createSprites(_loc2_);
         }
      }
      
      public function avatarImageReady(param1:String) : void
      {
         this.resetImages();
      }
   }
}
