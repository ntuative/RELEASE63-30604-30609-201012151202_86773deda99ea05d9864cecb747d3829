package com.sulake.habbo.room.object.visualization.furniture
{
   import com.sulake.room.object.visualization.IRoomObjectSprite;
   import flash.geom.Vector3D;
   import flash.utils.Dictionary;
   
   public class FurnitureParticleSystemEmitter extends FurnitureParticleSystemParticle
   {
      
      public static const const_1292:String = "cone";
      
      public static const const_1394:String = "plane";
      
      public static const const_1341:String = "sphere";
       
      
      private var _name:String;
      
      private var _roomObjectSpriteId:int = -1;
      
      private var var_738:IRoomObjectSprite;
      
      private var var_1410:Number;
      
      private var _direction:Vector3D;
      
      private var var_921:Number = 0.1;
      
      private var var_1409:Number;
      
      private var var_212:Number;
      
      private var var_1839:String;
      
      private var var_1411:Array;
      
      private var var_342:Array;
      
      private var var_1840:int;
      
      private var var_1838:int;
      
      private var var_1412:int;
      
      private var var_2703:int = 10;
      
      private var var_1267:Boolean = false;
      
      public function FurnitureParticleSystemEmitter(param1:String = "", param2:int = -1, param3:IRoomObjectSprite = null)
      {
         this.var_342 = [];
         super();
         this._name = param1;
         this._roomObjectSpriteId = param2;
         this.var_738 = param3;
         this.var_1411 = [];
      }
      
      override public function dispose() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_342)
         {
            _loc1_.dispose();
         }
         this.var_342 = null;
         if(this.var_738)
         {
            this.var_738.offsetY = 0;
         }
         super.dispose();
      }
      
      public function setup(param1:int, param2:int, param3:Number, param4:Vector3D, param5:Number, param6:Number, param7:String) : void
      {
         this.var_1840 = param1;
         this.var_1838 = param2;
         this.var_1410 = param3;
         this._direction = param4;
         this._direction.normalize();
         this.var_1409 = param5;
         this.var_212 = param6;
         this.var_1839 = param7;
         Logger.log("Max Number of Particles: " + this.var_1840);
         Logger.log("Particles per Frame: " + this.var_1838);
         Logger.log("Force: " + this.var_1410);
         Logger.log("Direction: " + this._direction);
         Logger.log("Gravity: " + this.var_1409);
         Logger.log("Air friction: " + this.var_212);
         Logger.log("Explosion shape: " + this.var_1839);
         this.reset();
      }
      
      public function reset() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_342)
         {
            _loc1_.dispose();
         }
         this.var_342 = [];
         this.var_1412 = 0;
         this.var_1267 = false;
         this.init(0,0,0,this._direction,this.var_1410,this.var_921,20,true);
         if(this.var_738)
         {
            this.var_738.offsetY = 0;
         }
      }
      
      public function configureParticle(param1:int, param2:Boolean, param3:Array) : void
      {
         var _loc4_:Dictionary = new Dictionary();
         _loc4_["lifeTime"] = param1;
         _loc4_["isEmitter"] = param2;
         _loc4_["frames"] = param3;
         this.var_1411.push(_loc4_);
      }
      
      override protected function ignite() : void
      {
         this.var_1267 = true;
      }
      
      private function releaseParticles(param1:FurnitureParticleSystemParticle, param2:Vector3D = null) : void
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:int = 0;
         var _loc8_:* = null;
         if(!param2)
         {
            param2 = new Vector3D();
         }
         var _loc3_:Vector3D = new Vector3D();
         var _loc7_:Boolean = false;
         var _loc9_:int = 0;
         while(_loc9_ < this.var_1838)
         {
            switch(this.var_1839)
            {
               case const_1292:
                  _loc3_.x = !!this.randomBoolean(0.5) ? Number(param2.x + Math.random()) : Number(-(param2.x + Math.random()));
                  _loc3_.y = param2.y + -1 * (Math.random() * 2 + 2);
                  _loc3_.z = !!this.randomBoolean(0.5) ? Number(param2.z + Math.random()) : Number(-(param2.z + Math.random()));
                  break;
               case const_1394:
                  _loc3_.x = !!this.randomBoolean(0.5) ? Number(param2.x + Math.random()) : Number(-(param2.x + Math.random()));
                  _loc3_.y = 0;
                  _loc3_.z = !!this.randomBoolean(0.5) ? Number(param2.z + Math.random()) : Number(-(param2.z + Math.random()));
                  break;
               case const_1341:
                  _loc3_.x = !!this.randomBoolean(0.5) ? Number(Math.random()) : Number(-Math.random());
                  _loc3_.y = !!this.randomBoolean(0.5) ? Number(Math.random()) : Number(-Math.random());
                  _loc3_.z = !!this.randomBoolean(0.5) ? Number(Math.random()) : Number(-Math.random());
                  break;
            }
            _loc3_.normalize();
            _loc4_ = new FurnitureParticleSystemParticle();
            _loc5_ = this.getRandomParticleConfiguration();
            if(_loc5_)
            {
               _loc6_ = Math.floor(Math.random() * _loc5_["lifeTime"] + 10);
               _loc7_ = _loc5_["isEmitter"];
               _loc8_ = _loc5_["frames"];
            }
            else
            {
               _loc6_ = Math.floor(Math.random() * 20 + 10);
               _loc7_ = false;
               _loc8_ = [];
            }
            _loc4_.init(param1.x,param1.y,param1.z,_loc3_,this.var_1410,this.var_921,_loc6_,_loc7_,_loc8_);
            this.var_342.push(_loc4_);
            ++this.var_1412;
            _loc9_++;
         }
      }
      
      private function getRandomParticleConfiguration() : Dictionary
      {
         var _loc1_:int = Math.floor(Math.random() * this.var_1411.length);
         return this.var_1411[_loc1_];
      }
      
      override public function update() : void
      {
         super.update();
         this.accumulateForces();
         this.verlet();
         this.satisfyConstraints();
         if(!isAlive && this.var_1412 < this.var_1840)
         {
            this.releaseParticles(this,this.direction);
         }
      }
      
      public function verlet() : void
      {
         var _loc2_:* = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(isAlive)
         {
            _loc3_ = this.x;
            _loc4_ = this.y;
            _loc5_ = this.z;
            this.x = (2 - this.var_212) * this.x - (1 - this.var_212) * this.lastX;
            this.y = (2 - this.var_212) * this.y - (1 - this.var_212) * this.lastY + this.var_1409 * this.var_921 * this.var_921;
            this.z = (2 - this.var_212) * this.z - (1 - this.var_212) * this.lastZ;
            this.lastX = _loc3_;
            this.lastY = _loc4_;
            this.lastZ = _loc5_;
         }
         var _loc1_:* = [];
         for each(_loc2_ in this.var_342)
         {
            _loc2_.update();
            _loc3_ = _loc2_.x;
            _loc4_ = _loc2_.y;
            _loc5_ = _loc2_.z;
            _loc2_.x = (2 - this.var_212) * _loc2_.x - (1 - this.var_212) * _loc2_.lastX;
            _loc2_.y = (2 - this.var_212) * _loc2_.y - (1 - this.var_212) * _loc2_.lastY + this.var_1409 * this.var_921 * this.var_921;
            _loc2_.z = (2 - this.var_212) * _loc2_.z - (1 - this.var_212) * _loc2_.lastZ;
            _loc2_.lastX = _loc3_;
            _loc2_.lastY = _loc4_;
            _loc2_.lastZ = _loc5_;
            if(_loc2_.y > 10 || !_loc2_.isAlive)
            {
               _loc1_.push(_loc2_);
            }
         }
         for each(_loc2_ in _loc1_)
         {
            if(!_loc2_.isEmitter)
            {
            }
            this.var_342.splice(this.var_342.indexOf(_loc2_),1);
            _loc2_.dispose();
         }
      }
      
      private function satisfyConstraints() : void
      {
      }
      
      private function accumulateForces() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_342)
         {
         }
      }
      
      public function controlsRoomItemSprite(param1:int) : Boolean
      {
         return this.var_738 && this._roomObjectSpriteId == param1;
      }
      
      public function get particles() : Array
      {
         return this.var_342;
      }
      
      public function get hasIgnited() : Boolean
      {
         return this.var_1267;
      }
      
      public function get roomObjectSprite() : IRoomObjectSprite
      {
         return this.var_738;
      }
      
      private function randomBoolean(param1:Number) : Boolean
      {
         return Math.random() < param1;
      }
   }
}
