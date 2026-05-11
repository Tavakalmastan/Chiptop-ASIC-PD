# Legacy - from begining (dbGet dbSet) 
	# eval_common_ui : Converts stylus to legacy commands 
	# innovus  
# Stylus (common_ui) - recently (set_db get_db) 
	# eval_legacy  : Converts legacy to stylus 
	# innovus -stylus

# Import design 
	# 1) Read netlist 
	# 2) Read lef file 
	# 3) Read UPF or Mention power and group net name 
	# 4) Read the MCMM or view file  
		# Library set 
			# slow: slow.lib (ss_lv_125c) - setup 
			# fast: fast.lib (ff_hv_m40c) - hold 
		# RC corners  : 
			# rc_max : max_tlu+ 
			# rc_min : min_tlu+  
		# corners 
			# slow_rcmax - slow + rc_max 
			# fast_rcmin - fast + rc_min 
		# modes 
			# func : func.sdc 
		# scenarios (views) : 
			# func_worst :  func + 	slow_rcmax
			# func_best : func + fast_rcmin 
			###### test_worst : test + slow_rcmax
			###### test_best : test + fast_rcmin 
		# setup_view : func_worst  test_worst
		# hold_view : func_best test_best
