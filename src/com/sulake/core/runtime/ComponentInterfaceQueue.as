package com.sulake.core.runtime
{
   class ComponentInterfaceQueue implements IDisposable
   {
       
      
      private var var_1529:IID;
      
      private var var_720:Boolean;
      
      private var var_994:Array;
      
      function ComponentInterfaceQueue(param1:IID)
      {
         super();
         this.var_1529 = param1;
         this.var_994 = new Array();
         this.var_720 = false;
      }
      
      public function get identifier() : IID
      {
         return this.var_1529;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_720;
      }
      
      public function get receivers() : Array
      {
         return this.var_994;
      }
      
      public function dispose() : void
      {
         if(!this.var_720)
         {
            this.var_720 = true;
            this.var_1529 = null;
            while(this.var_994.length > 0)
            {
               this.var_994.pop();
            }
            this.var_994 = null;
         }
      }
   }
}
