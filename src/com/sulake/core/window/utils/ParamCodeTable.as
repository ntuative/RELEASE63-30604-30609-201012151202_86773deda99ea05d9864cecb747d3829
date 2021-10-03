package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowParam;
   import flash.utils.Dictionary;
   
   public class ParamCodeTable extends WindowParam
   {
       
      
      public function ParamCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["null"] = const_160;
         param1["bound_to_parent_rect"] = const_92;
         param1["child_window"] = const_1089;
         param1["embedded_controller"] = const_1008;
         param1["resize_to_accommodate_children"] = const_64;
         param1["input_event_processor"] = const_28;
         param1["internal_event_handling"] = const_700;
         param1["mouse_dragging_target"] = const_238;
         param1["mouse_dragging_trigger"] = const_372;
         param1["mouse_scaling_target"] = const_265;
         param1["mouse_scaling_trigger"] = const_483;
         param1["horizontal_mouse_scaling_trigger"] = const_199;
         param1["vertical_mouse_scaling_trigger"] = const_229;
         param1["observe_parent_input_events"] = const_1007;
         param1["optimize_region_to_layout_size"] = const_481;
         param1["parent_window"] = const_1071;
         param1["relative_horizontal_scale_center"] = const_179;
         param1["relative_horizontal_scale_fixed"] = const_117;
         param1["relative_horizontal_scale_move"] = const_348;
         param1["relative_horizontal_scale_strech"] = WINDOW_PARAM_RELATIVE_HORIZONTAL_SCALE_STRECH;
         param1["relative_scale_center"] = const_990;
         param1["relative_scale_fixed"] = const_743;
         param1["relative_scale_move"] = const_1065;
         param1["relative_scale_strech"] = const_998;
         param1["relative_vertical_scale_center"] = const_184;
         param1["relative_vertical_scale_fixed"] = const_116;
         param1["relative_vertical_scale_move"] = const_320;
         param1["relative_vertical_scale_strech"] = const_360;
         param1["on_resize_align_left"] = const_786;
         param1["on_resize_align_right"] = const_424;
         param1["on_resize_align_center"] = const_473;
         param1["on_resize_align_top"] = const_736;
         param1["on_resize_align_bottom"] = const_436;
         param1["on_resize_align_middle"] = const_507;
         param1["on_accommodate_align_left"] = const_1062;
         param1["on_accommodate_align_right"] = const_486;
         param1["on_accommodate_align_center"] = const_773;
         param1["on_accommodate_align_top"] = const_897;
         param1["on_accommodate_align_bottom"] = WINDOW_PARAM_ON_ACCOMMODATE_ALIGN_BOTTOM;
         param1["on_accommodate_align_middle"] = const_680;
         param1["route_input_events_to_parent"] = const_464;
         param1["use_parent_graphic_context"] = const_31;
         param1["draggable_with_mouse"] = const_909;
         param1["scalable_with_mouse"] = const_892;
         param1["reflect_horizontal_resize_to_parent"] = const_394;
         param1["reflect_vertical_resize_to_parent"] = const_523;
         param1["reflect_resize_to_parent"] = const_263;
         param1["force_clipping"] = WINDOW_PARAM_FORCE_CLIPPING;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
