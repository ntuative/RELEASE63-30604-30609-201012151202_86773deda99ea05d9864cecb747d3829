package com.sulake.habbo.sound.object
{
   import com.sulake.habbo.sound.IHabboSound;
   import flash.events.Event;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class HabboSound implements IHabboSound
   {
       
      
      private var var_1022:Sound = null;
      
      private var _soundChannel:SoundChannel = null;
      
      private var var_426:Number;
      
      private var var_1269:Boolean;
      
      public function HabboSound(param1:Sound)
      {
         super();
         this.var_1022 = param1;
         this.var_1022.addEventListener(Event.COMPLETE,this.onComplete);
         this.var_426 = 1;
         this.var_1269 = false;
      }
      
      public function play() : Boolean
      {
         this.var_1269 = false;
         this._soundChannel = this.var_1022.play(0);
         this.volume = this.var_426;
         return true;
      }
      
      public function stop() : Boolean
      {
         this._soundChannel.stop();
         return true;
      }
      
      public function get volume() : Number
      {
         return this.var_426;
      }
      
      public function set volume(param1:Number) : void
      {
         this.var_426 = param1;
         if(this._soundChannel != null)
         {
            this._soundChannel.soundTransform = new SoundTransform(this.var_426);
         }
      }
      
      public function get position() : Number
      {
         return this._soundChannel.position;
      }
      
      public function set position(param1:Number) : void
      {
      }
      
      public function get length() : Number
      {
         return this.var_1022.length;
      }
      
      public function get ready() : Boolean
      {
         return !this.var_1022.isBuffering;
      }
      
      public function get finished() : Boolean
      {
         return !this.var_1269;
      }
      
      private function onComplete(param1:Event) : void
      {
         this.var_1269 = true;
      }
   }
}
