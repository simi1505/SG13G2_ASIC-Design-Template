#Edge: BOTTOM
#Edge: RIGHT
place_pin -pin_name counter_value_o[2] -layer Metal2 -location {100 50.82} -force_to_die_boundary
place_pin -pin_name counter_value_o[3] -layer Metal2 -location {100 51.66} -force_to_die_boundary
#Edge: TOP
#Edge: LEFT
place_pin -pin_name clock_i -layer Metal2 -location {0 49.14} -force_to_die_boundary
place_pin -pin_name counter_value_o[0] -layer Metal2 -location {0 50.82} -force_to_die_boundary
place_pin -pin_name counter_value_o[1] -layer Metal2 -location {0 52.5} -force_to_die_boundary
place_pin -pin_name enable_i -layer Metal2 -location {0 51.66} -force_to_die_boundary
place_pin -pin_name reset_n_i -layer Metal2 -location {0 49.98} -force_to_die_boundary
