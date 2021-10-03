package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowType;
   import flash.utils.Dictionary;
   
   public class TypeCodeTable extends WindowType
   {
       
      
      public function TypeCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["background"] = const_762;
         param1["bitmap"] = const_590;
         param1["border"] = const_737;
         param1["border_notify"] = const_1430;
         param1["button"] = const_476;
         param1["button_thick"] = const_801;
         param1["button_icon"] = const_1434;
         param1["button_group_left"] = const_754;
         param1["button_group_center"] = const_796;
         param1["button_group_right"] = const_674;
         param1["canvas"] = const_640;
         param1["checkbox"] = const_568;
         param1["closebutton"] = const_1083;
         param1["container"] = const_375;
         param1["container_button"] = const_712;
         param1["display_object_wrapper"] = const_668;
         param1["dropmenu"] = const_460;
         param1["dropmenu_item"] = const_415;
         param1["frame"] = const_333;
         param1["frame_notify"] = const_1344;
         param1["header"] = const_810;
         param1["icon"] = const_913;
         param1["itemgrid"] = const_956;
         param1["itemgrid_horizontal"] = const_441;
         param1["itemgrid_vertical"] = const_681;
         param1["itemlist"] = const_1096;
         param1["itemlist_horizontal"] = const_344;
         param1["itemlist_vertical"] = const_371;
         param1["maximizebox"] = WINDOW_TYPE_MAXIMIZEBOX;
         param1["menu"] = const_1499;
         param1["menu_item"] = const_1285;
         param1["submenu"] = const_929;
         param1["minimizebox"] = const_1470;
         param1["notify"] = const_1259;
         param1["null"] = const_644;
         param1["password"] = const_719;
         param1["radiobutton"] = const_563;
         param1["region"] = const_740;
         param1["restorebox"] = const_1389;
         param1["scaler"] = const_735;
         param1["scaler_horizontal"] = const_1427;
         param1["scaler_vertical"] = const_1288;
         param1["scrollbar_horizontal"] = const_419;
         param1["scrollbar_vertical"] = const_625;
         param1["scrollbar_slider_button_up"] = const_1109;
         param1["scrollbar_slider_button_down"] = const_999;
         param1["scrollbar_slider_button_left"] = const_1050;
         param1["scrollbar_slider_button_right"] = const_905;
         param1["scrollbar_slider_bar_horizontal"] = const_896;
         param1["scrollbar_slider_bar_vertical"] = const_928;
         param1["scrollbar_slider_track_horizontal"] = const_1100;
         param1["scrollbar_slider_track_vertical"] = const_1030;
         param1["scrollable_itemlist"] = const_1452;
         param1["scrollable_itemlist_vertical"] = const_427;
         param1["scrollable_itemlist_horizontal"] = const_910;
         param1["selector"] = const_653;
         param1["selector_list"] = const_764;
         param1["submenu"] = const_929;
         param1["tab_button"] = const_647;
         param1["tab_container_button"] = const_922;
         param1["tab_context"] = const_318;
         param1["tab_content"] = const_942;
         param1["tab_selector"] = const_592;
         param1["text"] = const_685;
         param1["input"] = const_770;
         param1["toolbar"] = const_1252;
         param1["tooltip"] = const_367;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
