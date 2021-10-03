package com.sulake.core.assets
{
   import com.sulake.core.assets.loaders.IAssetLoader;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.events.EventDispatcher;
   
   public class AssetLoaderStruct extends EventDispatcher implements IDisposable
   {
       
      
      private var var_909:IAssetLoader;
      
      private var var_1693:String;
      
      public function AssetLoaderStruct(param1:String, param2:IAssetLoader)
      {
         super();
         this.var_1693 = param1;
         this.var_909 = param2;
      }
      
      public function get assetName() : String
      {
         return this.var_1693;
      }
      
      public function get assetLoader() : IAssetLoader
      {
         return this.var_909;
      }
      
      override public function dispose() : void
      {
         if(!disposed)
         {
            if(this.var_909 != null)
            {
               if(!this.var_909.disposed)
               {
                  this.var_909.dispose();
                  this.var_909 = null;
               }
            }
            super.dispose();
         }
      }
   }
}
