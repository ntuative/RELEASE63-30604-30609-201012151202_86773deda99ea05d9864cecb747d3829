package com.sulake.core.assets
{
   import flash.display.DisplayObject;
   
   public class DisplayAsset implements IAsset
   {
       
      
      protected var var_931:String;
      
      protected var var_163:DisplayObject;
      
      protected var _disposed:Boolean = false;
      
      protected var var_765:AssetTypeDeclaration;
      
      public function DisplayAsset(param1:AssetTypeDeclaration, param2:String = null)
      {
         super();
         this.var_765 = param1;
         this.var_931 = param2;
      }
      
      public function get url() : String
      {
         return this.var_931;
      }
      
      public function get content() : Object
      {
         return this.var_163;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get declaration() : AssetTypeDeclaration
      {
         return this.var_765;
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            if(this.var_163.loaderInfo != null)
            {
               if(this.var_163.loaderInfo.loader != null)
               {
                  this.var_163.loaderInfo.loader.unload();
               }
            }
            this.var_163 = null;
            this.var_765 = null;
            this._disposed = true;
            this.var_931 = null;
         }
      }
      
      public function setUnknownContent(param1:Object) : void
      {
         if(param1 is DisplayObject)
         {
            this.var_163 = param1 as DisplayObject;
            if(this.var_163 != null)
            {
               return;
            }
            throw new Error("Failed to convert DisplayObject to DisplayAsset!");
         }
         if(param1 is DisplayAsset)
         {
            this.var_163 = DisplayAsset(param1).var_163;
            this.var_765 = DisplayAsset(param1).var_765;
            if(this.var_163 == null)
            {
               throw new Error("Failed to read content from DisplayAsset!");
            }
         }
      }
      
      public function setFromOtherAsset(param1:IAsset) : void
      {
         if(param1 is DisplayAsset)
         {
            this.var_163 = DisplayAsset(param1).var_163;
            this.var_765 = DisplayAsset(param1).var_765;
            return;
         }
         throw new Error("Provided asset should be of type DisplayAsset!");
      }
      
      public function setParamsDesc(param1:XMLList) : void
      {
      }
   }
}
