package com.sulake.habbo.avatar.wardrobe
{
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IItemListWindow;
   import com.sulake.habbo.avatar.common.ISideContentView;
   
   public class WardrobeView implements ISideContentView
   {
       
      
      private var _window:IWindowContainer;
      
      private var var_62:WardrobeModel;
      
      private var var_841:IItemListWindow;
      
      private var var_1057:IItemListWindow;
      
      public function WardrobeView(param1:WardrobeModel)
      {
         super();
         this.var_62 = param1;
         var _loc2_:XmlAsset = this.var_62.controller.assets.getAssetByName("avatareditor_wardrobe_base") as XmlAsset;
         this._window = this.var_62.controller.windowManager.buildFromXML(_loc2_.content as XML) as IWindowContainer;
         this.var_841 = this._window.findChildByName("hc_slots") as IItemListWindow;
         this.var_1057 = this._window.findChildByName("vip_slots") as IItemListWindow;
         this._window.visible = false;
         this.update();
      }
      
      public function dispose() : void
      {
         this.var_62 = null;
         this.var_841 = null;
         if(this._window)
         {
            this._window.dispose();
            this._window = null;
         }
      }
      
      public function update() : void
      {
         var _loc2_:* = null;
         if(this.var_841)
         {
            this.var_841.removeListItems();
         }
         if(this.var_1057)
         {
            this.var_1057.removeListItems();
         }
         var _loc1_:Array = this.var_62.slots;
         var _loc3_:int = 0;
         while(_loc3_ < _loc1_.length)
         {
            _loc2_ = _loc1_[_loc3_];
            if(_loc3_ < 5)
            {
               if(this.var_841)
               {
                  this.var_841.addListItem(_loc2_.view);
                  _loc2_.view.visible = true;
               }
            }
            else if(this.var_1057)
            {
               this.var_1057.addListItem(_loc2_.view);
               _loc2_.view.visible = true;
            }
            _loc3_++;
         }
      }
      
      public function getWindowContainer() : IWindowContainer
      {
         return this._window;
      }
   }
}
