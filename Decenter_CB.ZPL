!surf = 3
!surf_from = 2
!parameter_code = 10
!param_no = 3

!angle = SPRX(surf_from,parameter_code,param_no)
!radians = 2*ACOS(0)*angle/360
!decenter_y = 10*SINE(radians)

arg1$ = "Decenter_CBM.zpl"

ratio = 0
!offset = decenter_y
column = 7
CODE$ = "PP_2"
PRINT decenter_y
SOLVETYPE surf, CODE$, surf_from, ratio, arg1$, column