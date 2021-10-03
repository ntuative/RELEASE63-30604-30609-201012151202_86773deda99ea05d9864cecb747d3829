package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class LatencyPingReportMessageComposer implements IMessageComposer
   {
       
      
      private var var_2140:int;
      
      private var var_2139:int;
      
      private var var_2138:int;
      
      public function LatencyPingReportMessageComposer(param1:int, param2:int, param3:int)
      {
         super();
         this.var_2140 = param1;
         this.var_2139 = param2;
         this.var_2138 = param3;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2140,this.var_2139,this.var_2138];
      }
      
      public function dispose() : void
      {
      }
   }
}
