package com.sulake.habbo.communication.demo
{
   import com.sulake.core.assets.AssetLoaderStruct;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.assets.loaders.AssetLoaderEvent;
   import com.sulake.habbo.communication.IHabboWebLogin;
   import com.sulake.habbo.communication.enum.HabboWeb;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   
   public class SSOTicket extends EventDispatcher
   {
      
      public static const const_339:String = "success";
      
      public static const const_296:String = "failure";
       
      
      private var var_36:URLLoader;
      
      private var var_1365:String;
      
      private var var_1364:IHabboWebLogin;
      
      private var var_2698:String;
      
      private var var_1746:String;
      
      private var var_2502:String;
      
      private var _assets:IAssetLibrary;
      
      public function SSOTicket(param1:IAssetLibrary, param2:IHabboWebLogin, param3:String)
      {
         super();
         this._assets = param1;
         this.var_1364 = param2;
         this.var_1365 = "http://" + param3 + "/client";
         this.var_1364.init();
         this.var_1364.addEventListener(HabboWeb.const_251,this.requestClientURL);
      }
      
      public function get ticket() : String
      {
         return this.var_1746;
      }
      
      public function get shockwaveClientUrl() : String
      {
         return this.var_2502;
      }
      
      private function requestClientURL(param1:Event = null) : void
      {
         var _loc2_:String = this.var_1365;
         if(this._assets.hasAsset(_loc2_))
         {
            Logger.log("[CoreLocalizationManager] reload localization for url: " + this.var_1365);
         }
         var _loc3_:URLRequest = new URLRequest(this.var_1365);
         if(this._assets.hasAsset(_loc2_))
         {
            this._assets.removeAsset(this._assets.getAssetByName(_loc2_));
         }
         var _loc4_:AssetLoaderStruct = this._assets.loadAssetFromFile(_loc2_,_loc3_,"text/plain");
         _loc4_.addEventListener(AssetLoaderEvent.const_30,this.clientURLComplete);
      }
      
      private function clientURLComplete(param1:Event = null) : void
      {
         var event:Event = param1;
         var loaderStruct:AssetLoaderStruct = event.target as AssetLoaderStruct;
         if(loaderStruct == null)
         {
            return;
         }
         var data:String = loaderStruct.assetLoader.content as String;
         if(data.indexOf("account/reauthenticate\"") > -1)
         {
            this.var_1364.requestReAuthenticate();
         }
         else
         {
            try
            {
               this.var_1746 = /\"sso.ticket\" : \"(.*?)\"/.exec(data)[1];
               this.var_2502 = /\"flash.client.url\" : \"(.*?)\"/.exec(data)[1];
               if(this.var_1746.length > 0)
               {
                  dispatchEvent(new Event(const_339));
               }
               else
               {
                  dispatchEvent(new Event(const_296));
               }
            }
            catch(e:Error)
            {
               dispatchEvent(new Event(const_296));
            }
         }
      }
   }
}
