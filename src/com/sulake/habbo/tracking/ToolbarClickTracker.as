package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class ToolbarClickTracker
   {
       
      
      private var var_1178:IHabboTracking;
      
      private var var_1767:Boolean = false;
      
      private var var_2376:int = 0;
      
      private var var_1676:int = 0;
      
      public function ToolbarClickTracker(param1:IHabboTracking)
      {
         super();
         this.var_1178 = param1;
      }
      
      public function dispose() : void
      {
         this.var_1178 = null;
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_1767 = Boolean(parseInt(param1.getKey("toolbar.tracking.enabled","1")));
         this.var_2376 = parseInt(param1.getKey("toolbar.tracking.max.events","100"));
      }
      
      public function track(param1:String) : void
      {
         if(!this.var_1767)
         {
            return;
         }
         ++this.var_1676;
         if(this.var_1676 <= this.var_2376)
         {
            this.var_1178.track("toolbar",param1);
         }
      }
   }
}
