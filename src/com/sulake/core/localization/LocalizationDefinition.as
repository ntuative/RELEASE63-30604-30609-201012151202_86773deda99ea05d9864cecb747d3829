package com.sulake.core.localization
{
   public class LocalizationDefinition implements ILocalizationDefinition
   {
       
      
      private var var_1738:String;
      
      private var var_1737:String;
      
      private var var_1736:String;
      
      private var _name:String;
      
      private var var_931:String;
      
      public function LocalizationDefinition(param1:String, param2:String, param3:String)
      {
         super();
         var _loc4_:Array = param1.split("_");
         this.var_1738 = _loc4_[0];
         var _loc5_:Array = String(_loc4_[1]).split(".");
         this.var_1737 = _loc5_[0];
         this.var_1736 = _loc5_[1];
         this._name = param2;
         this.var_931 = param3;
      }
      
      public function get id() : String
      {
         return this.var_1738 + "_" + this.var_1737 + "." + this.var_1736;
      }
      
      public function get languageCode() : String
      {
         return this.var_1738;
      }
      
      public function get countryCode() : String
      {
         return this.var_1737;
      }
      
      public function get encoding() : String
      {
         return this.var_1736;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get url() : String
      {
         return this.var_931;
      }
   }
}
