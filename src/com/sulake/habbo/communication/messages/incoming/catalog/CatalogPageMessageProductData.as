package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_78:String = "i";
      
      public static const const_84:String = "s";
      
      public static const const_253:String = "e";
       
      
      private var var_1706:String;
      
      private var var_2604:int;
      
      private var var_1330:String;
      
      private var var_1331:int;
      
      private var var_1705:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1706 = param1.readString();
         this.var_2604 = param1.readInteger();
         this.var_1330 = param1.readString();
         this.var_1331 = param1.readInteger();
         this.var_1705 = param1.readInteger();
      }
      
      public function get productType() : String
      {
         return this.var_1706;
      }
      
      public function get furniClassId() : int
      {
         return this.var_2604;
      }
      
      public function get extraParam() : String
      {
         return this.var_1330;
      }
      
      public function get productCount() : int
      {
         return this.var_1331;
      }
      
      public function get expiration() : int
      {
         return this.var_1705;
      }
   }
}
