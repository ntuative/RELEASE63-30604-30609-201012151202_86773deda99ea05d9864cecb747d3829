package com.sulake.core.window.services
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindowContext;
   import flash.display.DisplayObject;
   
   public class ServiceManager implements IInternalWindowServices, IDisposable
   {
       
      
      private var var_2654:uint;
      
      private var var_131:DisplayObject;
      
      private var _disposed:Boolean = false;
      
      private var var_238:IWindowContext;
      
      private var var_1015:IMouseDraggingService;
      
      private var var_1016:IMouseScalingService;
      
      private var var_1019:IMouseListenerService;
      
      private var var_1018:IFocusManagerService;
      
      private var var_1020:IToolTipAgentService;
      
      private var var_1017:IGestureAgentService;
      
      public function ServiceManager(param1:IWindowContext, param2:DisplayObject)
      {
         super();
         this.var_2654 = 0;
         this.var_131 = param2;
         this.var_238 = param1;
         this.var_1015 = new WindowMouseDragger(param2);
         this.var_1016 = new WindowMouseScaler(param2);
         this.var_1019 = new WindowMouseListener(param2);
         this.var_1018 = new FocusManager(param2);
         this.var_1020 = new WindowToolTipAgent(param2);
         this.var_1017 = new GestureAgentService();
      }
      
      public function dispose() : void
      {
         if(this.var_1015 != null)
         {
            this.var_1015.dispose();
            this.var_1015 = null;
         }
         if(this.var_1016 != null)
         {
            this.var_1016.dispose();
            this.var_1016 = null;
         }
         if(this.var_1019 != null)
         {
            this.var_1019.dispose();
            this.var_1019 = null;
         }
         if(this.var_1018 != null)
         {
            this.var_1018.dispose();
            this.var_1018 = null;
         }
         if(this.var_1020 != null)
         {
            this.var_1020.dispose();
            this.var_1020 = null;
         }
         if(this.var_1017 != null)
         {
            this.var_1017.dispose();
            this.var_1017 = null;
         }
         this.var_131 = null;
         this.var_238 = null;
         this._disposed = true;
      }
      
      public function getMouseDraggingService() : IMouseDraggingService
      {
         return this.var_1015;
      }
      
      public function getMouseScalingService() : IMouseScalingService
      {
         return this.var_1016;
      }
      
      public function getMouseListenerService() : IMouseListenerService
      {
         return this.var_1019;
      }
      
      public function getFocusManagerService() : IFocusManagerService
      {
         return this.var_1018;
      }
      
      public function getToolTipAgentService() : IToolTipAgentService
      {
         return this.var_1020;
      }
      
      public function getGestureAgentService() : IGestureAgentService
      {
         return this.var_1017;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
   }
}
