package com.sulake.habbo.room.object.visualization.furniture
{
   import com.sulake.habbo.room.object.RoomObjectVariableEnum;
   import com.sulake.room.object.IRoomObject;
   import com.sulake.room.object.IRoomObjectModel;
   import com.sulake.room.object.visualization.IRoomObjectSprite;
   import com.sulake.room.object.visualization.utils.IGraphicAsset;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   import flash.utils.Dictionary;
   
   public class FurnitureFireworksVisualization extends AnimatedFurnitureVisualization
   {
       
      
      private var var_172:Boolean = false;
      
      private var var_1021:Dictionary;
      
      private var var_179:FurnitureParticleSystemEmitter;
      
      private var _particleCanvas:IRoomObjectSprite;
      
      private var var_1268:int = -1;
      
      private var var_1267:Boolean = false;
      
      public function FurnitureFireworksVisualization()
      {
         this.var_1021 = new Dictionary();
         super();
      }
      
      override public function dispose() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_1021)
         {
            _loc1_.dispose();
         }
         this.var_1021 = null;
         super.dispose();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(this.var_172)
         {
            if(this._particleCanvas)
            {
               this._particleCanvas.asset.fillRect(this._particleCanvas.asset.rect,4278190080);
            }
            if(this.var_179)
            {
               this.var_179.reset();
            }
            this.var_179 = this.var_1021[param1];
            this.var_1267 = false;
         }
         super.setAnimation(param1);
      }
      
      override protected function updateSprites(param1:int, param2:Boolean, param3:Array) : void
      {
         super.updateSprites(param1,param2,param3);
         if(this.var_179)
         {
            if(!this.var_1267 && this.var_179.hasIgnited)
            {
               Logger.log("Kaboom!");
               this.var_1267 = true;
            }
            if(this.var_1267 && this.var_179.roomObjectSprite)
            {
               this.var_179.roomObjectSprite.visible = false;
            }
         }
      }
      
      override protected function updateAnimation(param1:Number) : Array
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         if(!this.var_172 && spriteCount > 0)
         {
            this.var_172 = this.readDefinition(param1);
         }
         var _loc3_:* = 0;
         if(this.var_179)
         {
            this.var_179.update();
            if(this._particleCanvas && !this.var_179.isAlive)
            {
               this._particleCanvas.asset.fillRect(this._particleCanvas.asset.rect,4278190080);
               for each(_loc9_ in this.var_179.particles)
               {
                  _loc3_ = Number(_loc9_.y - this.var_179.y);
                  _loc4_ = 160 + (_loc9_.x - _loc9_.z) * 10 / 10;
                  _loc5_ = 60 + (_loc3_ + (_loc9_.x + _loc9_.z) / 2) * 10 / 10;
                  _loc7_ = _loc9_.getAsset();
                  if(_loc7_)
                  {
                     _loc8_ = _loc7_.asset.content as BitmapData;
                     this._particleCanvas.asset.copyPixels(_loc8_,_loc8_.rect,new Point(_loc4_,_loc5_));
                  }
                  else
                  {
                     _loc6_ = new Rectangle(_loc4_,_loc5_,2,2);
                     this._particleCanvas.asset.fillRect(_loc6_,4294967295);
                  }
               }
            }
            return super.updateAnimation(param1);
         }
         return null;
      }
      
      override protected function getSpriteYOffset(param1:int, param2:int, param3:int) : int
      {
         if(this.var_179 && (this.var_179.controlsRoomItemSprite(param1) || param1 == this.var_1268))
         {
            return this.var_179.y;
         }
         return super.getSpriteYOffset(param1,param2,param3);
      }
      
      private function readDefinition(param1:Number) : Boolean
      {
         var obj:IRoomObject = null;
         var particleSystemsData:XML = null;
         var sprite:IRoomObjectSprite = null;
         var emitterData:XML = null;
         var id:int = 0;
         var name:String = null;
         var roomObjectSpriteId:int = 0;
         var emitter:FurnitureParticleSystemEmitter = null;
         var maxNumOfParticles:int = 0;
         var particlesPerFrame:int = 0;
         var force:Number = NaN;
         var direction:Number = NaN;
         var gravity:Number = NaN;
         var airFriction:Number = NaN;
         var shape:String = null;
         var lifeTime:int = 0;
         var isEmitter:Boolean = false;
         var frames:Array = null;
         var frameAsset:IGraphicAsset = null;
         var particleData:XML = null;
         var frameData:XML = null;
         var scale:Number = param1;
         obj = object;
         if(obj == null)
         {
            return false;
         }
         var model:IRoomObjectModel = obj.getModel();
         if(model == null)
         {
            return false;
         }
         var definitionString:String = model.getString(RoomObjectVariableEnum.const_919);
         if(definitionString.length == 0)
         {
            Logger.log("No Particle System Data Found.");
            return false;
         }
         particleSystemsData = XML(definitionString);
         Logger.log("ParticleSystems:\n" + definitionString);
         var particleSystemData:XML = particleSystemsData.particlesystem.(@size == scale)[0];
         if(!particleSystemData)
         {
            return false;
         }
         if(particleSystemData.hasOwnProperty("@canvas_id"))
         {
            this.var_1268 = parseInt(particleSystemData.@canvas_id);
            this._particleCanvas = getSprite(this.var_1268);
            Logger.log("Canvas: " + this.var_1268 + "  " + this._particleCanvas);
            if(this._particleCanvas)
            {
               this._particleCanvas.capturesMouse = false;
               this._particleCanvas.visible = true;
            }
         }
         for each(emitterData in particleSystemData.emitter)
         {
            id = parseInt(emitterData.@id);
            name = emitterData.@name;
            roomObjectSpriteId = parseInt(emitterData.@sprite_id);
            sprite = getSprite(roomObjectSpriteId);
            Logger.log("Emitter: " + [name,sprite,sprite.instanceId,sprite.updateId,roomObjectSpriteId]);
            emitter = new FurnitureParticleSystemEmitter(name,roomObjectSpriteId,sprite);
            this.var_1021[id] = emitter;
            maxNumOfParticles = parseInt(emitterData.@max_num_particles);
            particlesPerFrame = parseInt(emitterData.@particles_per_frame);
            force = Number(emitterData.simulation.@force);
            direction = Number(emitterData.simulation.@direction);
            gravity = Number(emitterData.simulation.@gravity);
            airFriction = Number(emitterData.simulation.@airfriction);
            shape = emitterData.simulation.@shape;
            for each(particleData in emitterData.particles.particle)
            {
               lifeTime = parseInt(particleData.@lifetime);
               isEmitter = particleData.@is_emitter == "false" ? false : true;
               frames = [];
               for each(frameData in particleData.frame)
               {
                  frameAsset = assetCollection.getAsset(frameData.@name);
                  frames.push(frameAsset);
               }
               emitter.configureParticle(lifeTime,isEmitter,frames);
            }
            emitter.setup(maxNumOfParticles,particlesPerFrame,force,new Vector3D(0,direction,0),gravity,airFriction,shape);
         }
         this.var_172 = true;
         return true;
      }
   }
}
