
Q
Command: %s
53*	vivadotcl2 
place_design2default:defaultZ4-113h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7z0202default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7z0202default:defaultZ17-349h px� 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px� 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px� 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px� 
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
place_design2default:defaultZ4-22h px� 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px� 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px� 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px� 
U

Starting %s Task
103*constraints2
Placer2default:defaultZ18-103h px� 
}
BMultithreading enabled for place_design using a maximum of %s CPUs12*	placeflow2
22default:defaultZ30-611h px� 
v

Phase %s%s
101*constraints2
1 2default:default2)
Placer Initialization2default:defaultZ18-101h px� 
�

Phase %s%s
101*constraints2
1.1 2default:default29
%Placer Initialization Netlist Sorting2default:defaultZ18-101h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0032default:default2
1737.2622default:default2
0.0002default:defaultZ17-268h px� 
Z
EPhase 1.1 Placer Initialization Netlist Sorting | Checksum: 6e95e2d8
*commonh px� 
�

%s
*constraints2s
_Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.010 . Memory (MB): peak = 1737.262 ; gain = 0.0002default:defaulth px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0022default:default2
1737.2622default:default2
0.0002default:defaultZ17-268h px� 
�

Phase %s%s
101*constraints2
1.2 2default:default2F
2IO Placement/ Clock Placement/ Build Placer Device2default:defaultZ18-101h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
h
SPhase 1.2 IO Placement/ Clock Placement/ Build Placer Device | Checksum: 18006ad9d
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:00:02 ; elapsed = 00:00:02 . Memory (MB): peak = 1737.262 ; gain = 0.0002default:defaulth px� 
}

Phase %s%s
101*constraints2
1.3 2default:default2.
Build Placer Netlist Model2default:defaultZ18-101h px� 
P
;Phase 1.3 Build Placer Netlist Model | Checksum: 241a20d20
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:00:05 ; elapsed = 00:00:04 . Memory (MB): peak = 1758.664 ; gain = 21.4022default:defaulth px� 
z

Phase %s%s
101*constraints2
1.4 2default:default2+
Constrain Clocks/Macros2default:defaultZ18-101h px� 
M
8Phase 1.4 Constrain Clocks/Macros | Checksum: 241a20d20
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:00:05 ; elapsed = 00:00:04 . Memory (MB): peak = 1758.664 ; gain = 21.4022default:defaulth px� 
I
4Phase 1 Placer Initialization | Checksum: 241a20d20
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:00:05 ; elapsed = 00:00:04 . Memory (MB): peak = 1758.664 ; gain = 21.4022default:defaulth px� 
q

Phase %s%s
101*constraints2
2 2default:default2$
Global Placement2default:defaultZ18-101h px� 
p

Phase %s%s
101*constraints2
2.1 2default:default2!
Floorplanning2default:defaultZ18-101h px� 
C
.Phase 2.1 Floorplanning | Checksum: 21cb336fa
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:00:06 ; elapsed = 00:00:04 . Memory (MB): peak = 1758.664 ; gain = 21.4022default:defaulth px� 
x

Phase %s%s
101*constraints2
2.2 2default:default2)
Global Placement Core2default:defaultZ18-101h px� 
�

Phase %s%s
101*constraints2
2.2.1 2default:default20
Physical Synthesis In Placer2default:defaultZ18-101h px� 
�
FFound %s LUTNM shape to break, %s LUT instances to create LUTNM shape
553*physynth2
4132default:default2
512default:defaultZ32-1035h px� 
�
YBreak lutnm for timing: one critical %s, two critical %s, total %s, new lutff created %s
561*physynth2
1672default:default2
2462default:default2
4132default:default2
422default:defaultZ32-1044h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
4382default:default2!
nets or cells2default:default2
4132default:default2
cells2default:default2
252default:default2
cells2default:default2
02default:default2
cell2default:defaultZ32-775h px� 
�
=Pass %s. Identified %s candidate %s for fanout optimization.
76*physynth2
12default:default2
22default:default2
nets2default:defaultZ32-76h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2R
MP_ADDER_INST/rFSM_current[2]MP_ADDER_INST/rFSM_current[2]2default:default2
132default:default8Z32-81h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2R
MP_ADDER_INST/rFSM_current[0]MP_ADDER_INST/rFSM_current[0]2default:default2
132default:default8Z32-81h px� 
�
$Optimized %s %s. Created %s new %s.
216*physynth2
22default:default2
nets2default:default2
262default:default2
	instances2default:defaultZ32-232h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
22default:default2!
nets or cells2default:default2
262default:default2
cells2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:012default:default2 
00:00:00.0642default:default2
1758.6642default:default2
0.0002default:defaultZ17-268h px� 
j
FNo candidate cells for DSP register optimization found in the design.
274*physynthZ32-456h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
22default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px� 
i
DNo candidate cells found for Shift Register to Pipeline optimization564*physynthZ32-1123h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px� 
h
DNo candidate cells for SRL register optimization found in the design349*physynthZ32-677h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px� 
i
ENo candidate cells for BRAM register optimization found in the design297*physynthZ32-526h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px� 
j
FNo candidate cells for URAM register optimization found in the design
437*physynthZ32-846h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
22default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px� 
R
.No candidate nets found for HD net replication521*physynthZ32-949h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0032default:default2
1758.6642default:default2
0.0002default:defaultZ17-268h px� 
B
-
Summary of Physical Synthesis Optimizations
*commonh px� 
B
-============================================
*commonh px� 


*commonh px� 


*commonh px� 
�
�-----------------------------------------------------------------------------------------------------------------------------------------------------------
*commonh px� 
�
�|  Optimization                                     |  Added Cells  |  Removed Cells  |  Optimized Cells/Nets  |  Dont Touch  |  Iterations  |  Elapsed   |
-----------------------------------------------------------------------------------------------------------------------------------------------------------
*commonh px� 
�
�|  LUT Combining                                    |          413  |             25  |                   438  |           0  |           1  |  00:00:00  |
|  Very High Fanout                                 |           26  |              0  |                     2  |           0  |           1  |  00:00:02  |
|  DSP Register                                     |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  Shift Register to Pipeline                       |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  Shift Register                                   |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  BRAM Register                                    |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  URAM Register                                    |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  Dynamic/Static Region Interface Net Replication  |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  Total                                            |          439  |             25  |                   440  |           0  |           8  |  00:00:02  |
-----------------------------------------------------------------------------------------------------------------------------------------------------------
*commonh px� 


*commonh px� 


*commonh px� 
T
?Phase 2.2.1 Physical Synthesis In Placer | Checksum: 1bb2eac54
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:00:21 ; elapsed = 00:00:13 . Memory (MB): peak = 1758.664 ; gain = 21.4022default:defaulth px� 
K
6Phase 2.2 Global Placement Core | Checksum: 235bdb40f
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:00:21 ; elapsed = 00:00:13 . Memory (MB): peak = 1758.664 ; gain = 21.4022default:defaulth px� 
D
/Phase 2 Global Placement | Checksum: 235bdb40f
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:00:21 ; elapsed = 00:00:13 . Memory (MB): peak = 1758.664 ; gain = 21.4022default:defaulth px� 
q

Phase %s%s
101*constraints2
3 2default:default2$
Detail Placement2default:defaultZ18-101h px� 
}

Phase %s%s
101*constraints2
3.1 2default:default2.
Commit Multi Column Macros2default:defaultZ18-101h px� 
P
;Phase 3.1 Commit Multi Column Macros | Checksum: 1e6583e65
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:00:22 ; elapsed = 00:00:14 . Memory (MB): peak = 1758.664 ; gain = 21.4022default:defaulth px� 


Phase %s%s
101*constraints2
3.2 2default:default20
Commit Most Macros & LUTRAMs2default:defaultZ18-101h px� 
R
=Phase 3.2 Commit Most Macros & LUTRAMs | Checksum: 182cf0d61
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:00:24 ; elapsed = 00:00:15 . Memory (MB): peak = 1758.664 ; gain = 21.4022default:defaulth px� 
y

Phase %s%s
101*constraints2
3.3 2default:default2*
Area Swap Optimization2default:defaultZ18-101h px� 
L
7Phase 3.3 Area Swap Optimization | Checksum: 200cc09f0
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:00:24 ; elapsed = 00:00:15 . Memory (MB): peak = 1758.664 ; gain = 21.4022default:defaulth px� 
�

Phase %s%s
101*constraints2
3.4 2default:default22
Pipeline Register Optimization2default:defaultZ18-101h px� 
T
?Phase 3.4 Pipeline Register Optimization | Checksum: 1c657780f
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:00:24 ; elapsed = 00:00:15 . Memory (MB): peak = 1758.664 ; gain = 21.4022default:defaulth px� 
t

Phase %s%s
101*constraints2
3.5 2default:default2%
Fast Optimization2default:defaultZ18-101h px� 
G
2Phase 3.5 Fast Optimization | Checksum: 257de388e
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:00:29 ; elapsed = 00:00:19 . Memory (MB): peak = 1758.664 ; gain = 21.4022default:defaulth px� 


Phase %s%s
101*constraints2
3.6 2default:default20
Small Shape Detail Placement2default:defaultZ18-101h px� 
R
=Phase 3.6 Small Shape Detail Placement | Checksum: 29eed265b
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:00:34 ; elapsed = 00:00:24 . Memory (MB): peak = 1758.664 ; gain = 21.4022default:defaulth px� 
u

Phase %s%s
101*constraints2
3.7 2default:default2&
Re-assign LUT pins2default:defaultZ18-101h px� 
H
3Phase 3.7 Re-assign LUT pins | Checksum: 20627b2b8
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:00:35 ; elapsed = 00:00:25 . Memory (MB): peak = 1758.664 ; gain = 21.4022default:defaulth px� 
�

Phase %s%s
101*constraints2
3.8 2default:default22
Pipeline Register Optimization2default:defaultZ18-101h px� 
T
?Phase 3.8 Pipeline Register Optimization | Checksum: 18e9bcf89
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:00:35 ; elapsed = 00:00:25 . Memory (MB): peak = 1758.664 ; gain = 21.4022default:defaulth px� 
t

Phase %s%s
101*constraints2
3.9 2default:default2%
Fast Optimization2default:defaultZ18-101h px� 
G
2Phase 3.9 Fast Optimization | Checksum: 19e042109
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:00:42 ; elapsed = 00:00:32 . Memory (MB): peak = 1758.664 ; gain = 21.4022default:defaulth px� 
D
/Phase 3 Detail Placement | Checksum: 19e042109
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:00:42 ; elapsed = 00:00:32 . Memory (MB): peak = 1758.664 ; gain = 21.4022default:defaulth px� 
�

Phase %s%s
101*constraints2
4 2default:default2<
(Post Placement Optimization and Clean-Up2default:defaultZ18-101h px� 
{

Phase %s%s
101*constraints2
4.1 2default:default2,
Post Commit Optimization2default:defaultZ18-101h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
�

Phase %s%s
101*constraints2
4.1.1 2default:default2/
Post Placement Optimization2default:defaultZ18-101h px� 
V
APost Placement Optimization Initialization | Checksum: 14c5ea97d
*commonh px� 
u

Phase %s%s
101*constraints2
4.1.1.1 2default:default2"
BUFG Insertion2default:defaultZ18-101h px� 
a

Starting %s Task
103*constraints2&
Physical Synthesis2default:defaultZ18-103h px� 
�

Phase %s%s
101*constraints2
1 2default:default25
!Physical Synthesis Initialization2default:defaultZ18-101h px� 
�
EMultithreading enabled for phys_opt_design using a maximum of %s CPUs380*physynth2
22default:defaultZ32-721h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-5.5362default:default2
-266.3532default:defaultZ32-619h px� 
U
@Phase 1 Physical Synthesis Initialization | Checksum: 122391f1d
*commonh px� 
�

%s
*constraints2s
_Time (s): cpu = 00:00:01 ; elapsed = 00:00:00.428 . Memory (MB): peak = 1805.664 ; gain = 0.0002default:defaulth px� 
�
PProcessed net %s, BUFG insertion was skipped due to placement/routing conflicts.32*	placeflow2:
&UART_TX_INST/FSM_onehot_rFSM_reg[6][0]2default:defaultZ46-33h px� 
�
�BUFG insertion identified %s candidate nets. Inserted BUFG: %s, Replicated BUFG Driver: %s, Skipped due to Placement/Routing Conflicts: %s, Skipped due to Timing Degradation: %s, Skipped due to Illegal Netlist: %s.43*	placeflow2
12default:default2
02default:default2
02default:default2
12default:default2
02default:default2
02default:defaultZ46-56h px� 
J
5Ending Physical Synthesis Task | Checksum: 18ad4009d
*commonh px� 
�

%s
*constraints2s
_Time (s): cpu = 00:00:01 ; elapsed = 00:00:00.563 . Memory (MB): peak = 1805.664 ; gain = 0.0002default:defaulth px� 
H
3Phase 4.1.1.1 BUFG Insertion | Checksum: 14c5ea97d
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:00:47 ; elapsed = 00:00:35 . Memory (MB): peak = 1805.664 ; gain = 68.4022default:defaulth px� 
�
hPost Placement Timing Summary WNS=%s. For the most accurate timing information please run report_timing.610*place2
-4.2682default:defaultZ30-746h px� 
S
>Phase 4.1.1 Post Placement Optimization | Checksum: 24ed6b68a
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:00:59 ; elapsed = 00:00:48 . Memory (MB): peak = 1805.664 ; gain = 68.4022default:defaulth px� 
N
9Phase 4.1 Post Commit Optimization | Checksum: 24ed6b68a
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:00:59 ; elapsed = 00:00:48 . Memory (MB): peak = 1805.664 ; gain = 68.4022default:defaulth px� 
y

Phase %s%s
101*constraints2
4.2 2default:default2*
Post Placement Cleanup2default:defaultZ18-101h px� 
L
7Phase 4.2 Post Placement Cleanup | Checksum: 24ed6b68a
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:00:59 ; elapsed = 00:00:48 . Memory (MB): peak = 1805.664 ; gain = 68.4022default:defaulth px� 
s

Phase %s%s
101*constraints2
4.3 2default:default2$
Placer Reporting2default:defaultZ18-101h px� 
F
1Phase 4.3 Placer Reporting | Checksum: 24ed6b68a
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:01:00 ; elapsed = 00:00:48 . Memory (MB): peak = 1805.664 ; gain = 68.4022default:defaulth px� 
z

Phase %s%s
101*constraints2
4.4 2default:default2+
Final Placement Cleanup2default:defaultZ18-101h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0042default:default2
1805.6642default:default2
0.0002default:defaultZ17-268h px� 
M
8Phase 4.4 Final Placement Cleanup | Checksum: 229b4ec2f
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:01:00 ; elapsed = 00:00:48 . Memory (MB): peak = 1805.664 ; gain = 68.4022default:defaulth px� 
\
GPhase 4 Post Placement Optimization and Clean-Up | Checksum: 229b4ec2f
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:01:00 ; elapsed = 00:00:48 . Memory (MB): peak = 1805.664 ; gain = 68.4022default:defaulth px� 
>
)Ending Placer Task | Checksum: 174f79d7d
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:01:00 ; elapsed = 00:00:48 . Memory (MB): peak = 1805.664 ; gain = 68.4022default:defaulth px� 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
712default:default2
02default:default2
02default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
place_design2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
place_design: 2default:default2
00:01:022default:default2
00:00:502default:default2
1805.6642default:default2
68.4022default:defaultZ17-268h px� 
H
&Writing timing data to binary archive.266*timingZ38-480h px� 
D
Writing placer database...
1603*designutilsZ20-1893h px� 
=
Writing XDEF routing.
211*designutilsZ20-211h px� 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px� 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2)
Write XDEF Complete: 2default:default2
00:00:022default:default2 
00:00:00.7932default:default2
1805.6642default:default2
0.0002default:defaultZ17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2}
iC:/Users/User/Desktop/cdd_git/CDD_lab/final_project_cdd/final_project_cdd.runs/impl_1/uart_top_placed.dcp2default:defaultZ17-1381h px� 
c
%s4*runtcl2G
3Executing : report_io -file uart_top_io_placed.rpt
2default:defaulth px� 
�
kreport_io: Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.045 . Memory (MB): peak = 1805.664 ; gain = 0.000
*commonh px� 
�
%s4*runtcl2|
hExecuting : report_utilization -file uart_top_utilization_placed.rpt -pb uart_top_utilization_placed.pb
2default:defaulth px� 
�
%s4*runtcl2d
PExecuting : report_control_sets -verbose -file uart_top_control_sets_placed.rpt
2default:defaulth px� 
�
ureport_control_sets: Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.035 . Memory (MB): peak = 1805.664 ; gain = 0.000
*commonh px� 


End Record