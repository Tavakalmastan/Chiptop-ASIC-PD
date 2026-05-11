Innovus Legacy --> dbGet dbSet 
# Innovs stylus --> get_db db_set 
## Objects : insts ports layers site_row 
# Attributes : Insts : height width location physical_status 

# top : all things design 
llength [dbGet top.terms.name ]
llength [dbGet top.insts.name]
dbGet top.fPlan.coreBox

# To get all macros : 48 
 dbGet [dbGet top.insts.cell.baseClass block -p2].name

# To get all cells except macros 
dbGet [dbGet top.insts.cell.baseClass core -p2].name

# To get all sequential in design 
dbGet [dbGet top.insts.cell.isSequential 1 -p2].name

# select : For selected in gui
dbGet selected.stepX 
dbGet selected.stepY

# head : All input files 
dbGet [dbGet head.layers.type routing -p1].name
dbGet [dbGet head.layers.name Metal1 -p1].pitchX
dbGet [dbGet head.layers.name Metal1 -p1].minWidth
dbGet [dbGet head.layers.name Metal1 -p1].minSpacing
dbGet head.libCells.name *ANT*
