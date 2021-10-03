package com.sulake.habbo.catalog.purse
{
   import flash.utils.Dictionary;
   
   public class Purse implements IPurse
   {
      
      public static const const_534:int = 0;
       
      
      private var var_2297:int = 0;
      
      private var var_1413:Dictionary;
      
      private var var_1842:int = 0;
      
      private var var_1841:int = 0;
      
      private var var_2271:Boolean = false;
      
      private var var_2264:int = 0;
      
      private var var_2267:int = 0;
      
      public function Purse()
      {
         this.var_1413 = new Dictionary();
         super();
      }
      
      public function get credits() : int
      {
         return this.var_2297;
      }
      
      public function set credits(param1:int) : void
      {
         this.var_2297 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_1842;
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_1842 = param1;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_1841;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_1841 = param1;
      }
      
      public function get hasClubLeft() : Boolean
      {
         return this.var_1842 > 0 || this.var_1841 > 0;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2271;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2271 = param1;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2264;
      }
      
      public function set pastClubDays(param1:int) : void
      {
         this.var_2264 = param1;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2267;
      }
      
      public function set pastVipDays(param1:int) : void
      {
         this.var_2267 = param1;
      }
      
      public function get activityPoints() : Dictionary
      {
         return this.var_1413;
      }
      
      public function set activityPoints(param1:Dictionary) : void
      {
         this.var_1413 = param1;
      }
      
      public function getActivityPointsForType(param1:int) : int
      {
         return this.var_1413[param1];
      }
   }
}
