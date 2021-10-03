package com.sulake.core.assets.loaders
{
   import flash.events.Event;
   
   public class AssetLoaderEvent extends Event
   {
      
      public static const const_30:String = "AssetLoaderEventComplete";
      
      public static const const_1016:String = "AssetLoaderEventProgress";
      
      public static const const_1095:String = "AssetLoaderEventUnload";
      
      public static const const_1049:String = "AssetLoaderEventStatus";
      
      public static const const_42:String = "AssetLoaderEventError";
      
      public static const const_975:String = "AssetLoaderEventOpen";
       
      
      private var _status:int;
      
      public function AssetLoaderEvent(param1:String, param2:int)
      {
         this._status = param2;
         super(param1,false,false);
      }
      
      public function get status() : int
      {
         return this._status;
      }
      
      override public function clone() : Event
      {
         return new AssetLoaderEvent(type,this._status);
      }
   }
}
