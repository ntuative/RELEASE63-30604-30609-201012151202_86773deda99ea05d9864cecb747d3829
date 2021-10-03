package com.sulake.core.assets
{
   import flash.utils.getQualifiedClassName;
   
   public class UnknownAsset implements IAsset
   {
       
      
      private var _disposed:Boolean = false;
      
      private var var_163:Object = null;
      
      private var var_1492:AssetTypeDeclaration;
      
      private var var_931:String;
      
      public function UnknownAsset(param1:AssetTypeDeclaration, param2:String = null)
      {
         super();
         this.var_1492 = param1;
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
         return this.var_1492;
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            this._disposed = true;
            this.var_163 = null;
            this.var_1492 = null;
            this.var_931 = null;
         }
      }
      
      public function setUnknownContent(param1:Object) : void
      {
         this.var_163 = param1;
      }
      
      public function setFromOtherAsset(param1:IAsset) : void
      {
         this.var_163 = param1.content as Object;
      }
      
      public function setParamsDesc(param1:XMLList) : void
      {
      }
      
      public function toString() : String
      {
         return getQualifiedClassName(this) + ": " + this.var_163;
      }
   }
}
