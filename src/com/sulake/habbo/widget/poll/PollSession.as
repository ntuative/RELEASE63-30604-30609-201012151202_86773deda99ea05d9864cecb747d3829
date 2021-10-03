package com.sulake.habbo.widget.poll
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.habbo.window.utils.IAlertDialog;
   import flash.events.Event;
   
   public class PollSession implements IDisposable
   {
       
      
      private var _id:int = -1;
      
      private var _disposed:Boolean = false;
      
      private var var_1244:int = 0;
      
      private var var_1245:Array;
      
      private var var_979:PollWidget;
      
      private var var_223:IPollDialog;
      
      private var var_1542:String = "";
      
      public function PollSession(param1:int, param2:PollWidget)
      {
         super();
         this._id = param1;
         this.var_979 = param2;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get numQuestions() : int
      {
         return this.var_1244;
      }
      
      public function set numQuestions(param1:int) : void
      {
         this.var_1244 = param1;
      }
      
      public function get questionArray() : Array
      {
         return this.var_1245;
      }
      
      public function set questionArray(param1:Array) : void
      {
         this.var_1245 = param1;
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            if(this.var_223)
            {
               this.var_223.dispose();
               this.var_223 = null;
            }
            this.var_979 = null;
            this._disposed = true;
         }
      }
      
      public function showOffer(param1:String) : void
      {
         this.hideOffer();
         this.var_223 = new PollOfferDialog(this._id,param1,this.var_979);
      }
      
      public function hideOffer() : void
      {
         if(this.var_223 is PollOfferDialog)
         {
            if(!this.var_223.disposed)
            {
               this.var_223.dispose();
            }
            this.var_223 = null;
         }
      }
      
      public function showContent(param1:String, param2:String, param3:Array) : void
      {
         this.hideOffer();
         this.hideContent();
         this.var_1542 = param2;
         this.var_223 = new PollContentDialog(this._id,param1,param3,this.var_979);
      }
      
      public function hideContent() : void
      {
         if(this.var_223 is PollContentDialog)
         {
            if(!this.var_223.disposed)
            {
               this.var_223.dispose();
            }
            this.var_223 = null;
         }
      }
      
      public function showThanks() : void
      {
         this.var_979.windowManager.alert("${poll_thanks_title}",this.var_1542,0,function(param1:IAlertDialog, param2:Event):void
         {
            param1.dispose();
         });
      }
   }
}
