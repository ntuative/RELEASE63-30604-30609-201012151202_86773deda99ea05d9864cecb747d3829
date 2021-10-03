package com.sulake.habbo.inventory.purse
{
   public class Purse
   {
       
      
      private var var_1842:int = 0;
      
      private var var_1841:int = 0;
      
      private var var_2558:int = 0;
      
      private var var_2559:Boolean = false;
      
      private var var_2271:Boolean = false;
      
      public function Purse()
      {
         super();
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_1842 = Math.max(0,param1);
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_1841 = Math.max(0,param1);
      }
      
      public function set clubPastPeriods(param1:int) : void
      {
         this.var_2558 = Math.max(0,param1);
      }
      
      public function set clubHasEverBeenMember(param1:Boolean) : void
      {
         this.var_2559 = param1;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2271 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_1842;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_1841;
      }
      
      public function get clubPastPeriods() : int
      {
         return this.var_2558;
      }
      
      public function get clubHasEverBeenMember() : Boolean
      {
         return this.var_2559;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2271;
      }
   }
}
