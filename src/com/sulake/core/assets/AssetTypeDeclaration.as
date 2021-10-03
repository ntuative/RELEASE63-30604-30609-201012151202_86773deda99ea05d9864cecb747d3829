package com.sulake.core.assets
{
   public class AssetTypeDeclaration
   {
       
      
      private var var_2074:String;
      
      private var var_2075:Class;
      
      private var var_2076:Class;
      
      private var var_1513:Array;
      
      public function AssetTypeDeclaration(param1:String, param2:Class, param3:Class, ... rest)
      {
         super();
         this.var_2074 = param1;
         this.var_2075 = param2;
         this.var_2076 = param3;
         if(rest == null)
         {
            this.var_1513 = new Array();
         }
         else
         {
            this.var_1513 = rest;
         }
      }
      
      public function get mimeType() : String
      {
         return this.var_2074;
      }
      
      public function get assetClass() : Class
      {
         return this.var_2075;
      }
      
      public function get loaderClass() : Class
      {
         return this.var_2076;
      }
      
      public function get fileTypes() : Array
      {
         return this.var_1513;
      }
   }
}
