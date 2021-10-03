package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_2168:int = 0;
      
      private var var_1369:String = "";
      
      private var var_1760:String = "";
      
      private var var_2198:String = "";
      
      private var var_2202:String = "";
      
      private var var_1565:int = 0;
      
      private var var_2199:int = 0;
      
      private var var_2200:int = 0;
      
      private var var_1372:int = 0;
      
      private var var_2201:int = 0;
      
      private var var_1371:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         this.var_2168 = param1;
         this.var_1369 = param2;
         this.var_1760 = param3;
         this.var_2198 = param4;
         this.var_2202 = param5;
         if(param6)
         {
            this.var_1565 = 1;
         }
         else
         {
            this.var_1565 = 0;
         }
         this.var_2199 = param7;
         this.var_2200 = param8;
         this.var_1372 = param9;
         this.var_2201 = param10;
         this.var_1371 = param11;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2168,this.var_1369,this.var_1760,this.var_2198,this.var_2202,this.var_1565,this.var_2199,this.var_2200,this.var_1372,this.var_2201,this.var_1371];
      }
   }
}
