
Q
Command: %s
53*	vivadotcl2 
place_design2default:defaultZ4-113h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7a100t2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7a100t2default:defaultZ17-349h px? 
P
Running DRC with %s threads
24*drc2
82default:defaultZ23-27h px? 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px? 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px? 
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
place_design2default:defaultZ4-22h px? 
P
Running DRC with %s threads
24*drc2
82default:defaultZ23-27h px? 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px? 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px? 
U

Starting %s Task
103*constraints2
Placer2default:defaultZ18-103h px? 
}
BMultithreading enabled for place_design using a maximum of %s CPUs12*	placeflow2
82default:defaultZ30-611h px? 
v

Phase %s%s
101*constraints2
1 2default:default2)
Placer Initialization2default:defaultZ18-101h px? 
?

Phase %s%s
101*constraints2
1.1 2default:default29
%Placer Initialization Netlist Sorting2default:defaultZ18-101h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
2605.0512default:default2
0.0002default:default2
39532default:default2
247882default:defaultZ17-722h px? 
[
FPhase 1.1 Placer Initialization Netlist Sorting | Checksum: 106fc2787
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:00.01 ; elapsed = 00:00:00.06 . Memory (MB): peak = 2605.051 ; gain = 0.000 ; free physical = 3953 ; free virtual = 247882default:defaulth px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
2605.0512default:default2
0.0002default:default2
39532default:default2
247882default:defaultZ17-722h px? 
?

Phase %s%s
101*constraints2
1.2 2default:default2F
2IO Placement/ Clock Placement/ Build Placer Device2default:defaultZ18-101h px? 
?
?A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2>
*OneShotUnit/FSM_sequential_curState[2]_i_12default:default2
112default:default2?
?	DetectUnit/inBuf_reg[3]_lopt_replica {FDRE}
	DetectUnit/inBuf_reg[2] {FDRE}
	DetectUnit/inBuf_reg[4] {FDRE}
	DetectUnit/inBuf_reg[3] {FDRE}
	DetectUnit/inBuf_reg[1] {FDRE}
2default:defaultZ30-568h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
g
RPhase 1.2 IO Placement/ Clock Placement/ Build Placer Device | Checksum: aefd9e8f
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:00.77 ; elapsed = 00:00:00.36 . Memory (MB): peak = 2605.051 ; gain = 0.000 ; free physical = 3936 ; free virtual = 247722default:defaulth px? 
}

Phase %s%s
101*constraints2
1.3 2default:default2.
Build Placer Netlist Model2default:defaultZ18-101h px? 
O
:Phase 1.3 Build Placer Netlist Model | Checksum: ce750f7f
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:00.82 ; elapsed = 00:00:00.37 . Memory (MB): peak = 2605.051 ; gain = 0.000 ; free physical = 3936 ; free virtual = 247722default:defaulth px? 
z

Phase %s%s
101*constraints2
1.4 2default:default2+
Constrain Clocks/Macros2default:defaultZ18-101h px? 
L
7Phase 1.4 Constrain Clocks/Macros | Checksum: ce750f7f
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:00.83 ; elapsed = 00:00:00.37 . Memory (MB): peak = 2605.051 ; gain = 0.000 ; free physical = 3936 ; free virtual = 247722default:defaulth px? 
H
3Phase 1 Placer Initialization | Checksum: ce750f7f
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:00.83 ; elapsed = 00:00:00.38 . Memory (MB): peak = 2605.051 ; gain = 0.000 ; free physical = 3935 ; free virtual = 247712default:defaulth px? 
q

Phase %s%s
101*constraints2
2 2default:default2$
Global Placement2default:defaultZ18-101h px? 
p

Phase %s%s
101*constraints2
2.1 2default:default2!
Floorplanning2default:defaultZ18-101h px? 
B
-Phase 2.1 Floorplanning | Checksum: ce750f7f
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:00.83 ; elapsed = 00:00:00.38 . Memory (MB): peak = 2605.051 ; gain = 0.000 ; free physical = 3934 ; free virtual = 247692default:defaulth px? 
x

Phase %s%s
101*constraints2
2.2 2default:default2)
Global Placement Core2default:defaultZ18-101h px? 
h
Eplace_design is not in timing mode. Skip physical synthesis in placer29*	placeflowZ46-29h px? 
J
5Phase 2.2 Global Placement Core | Checksum: d804dcbf
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:03 ; elapsed = 00:00:00.69 . Memory (MB): peak = 2605.051 ; gain = 0.000 ; free physical = 3917 ; free virtual = 247532default:defaulth px? 
C
.Phase 2 Global Placement | Checksum: d804dcbf
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:04 ; elapsed = 00:00:00.69 . Memory (MB): peak = 2605.051 ; gain = 0.000 ; free physical = 3917 ; free virtual = 247532default:defaulth px? 
q

Phase %s%s
101*constraints2
3 2default:default2$
Detail Placement2default:defaultZ18-101h px? 
}

Phase %s%s
101*constraints2
3.1 2default:default2.
Commit Multi Column Macros2default:defaultZ18-101h px? 
O
:Phase 3.1 Commit Multi Column Macros | Checksum: d804dcbf
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:04 ; elapsed = 00:00:00.70 . Memory (MB): peak = 2605.051 ; gain = 0.000 ; free physical = 3917 ; free virtual = 247532default:defaulth px? 


Phase %s%s
101*constraints2
3.2 2default:default20
Commit Most Macros & LUTRAMs2default:defaultZ18-101h px? 
Q
<Phase 3.2 Commit Most Macros & LUTRAMs | Checksum: edf66a0c
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:04 ; elapsed = 00:00:00.71 . Memory (MB): peak = 2605.051 ; gain = 0.000 ; free physical = 3917 ; free virtual = 247522default:defaulth px? 
y

Phase %s%s
101*constraints2
3.3 2default:default2*
Area Swap Optimization2default:defaultZ18-101h px? 
L
7Phase 3.3 Area Swap Optimization | Checksum: 17b78e901
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:04 ; elapsed = 00:00:00.71 . Memory (MB): peak = 2605.051 ; gain = 0.000 ; free physical = 3917 ; free virtual = 247522default:defaulth px? 
?

Phase %s%s
101*constraints2
3.4 2default:default22
Pipeline Register Optimization2default:defaultZ18-101h px? 
T
?Phase 3.4 Pipeline Register Optimization | Checksum: 17b78e901
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:04 ; elapsed = 00:00:00.72 . Memory (MB): peak = 2605.051 ; gain = 0.000 ; free physical = 3917 ; free virtual = 247522default:defaulth px? 


Phase %s%s
101*constraints2
3.5 2default:default20
Small Shape Detail Placement2default:defaultZ18-101h px? 
R
=Phase 3.5 Small Shape Detail Placement | Checksum: 187ba634b
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:04 ; elapsed = 00:00:00.84 . Memory (MB): peak = 2605.051 ; gain = 0.000 ; free physical = 3915 ; free virtual = 247502default:defaulth px? 
u

Phase %s%s
101*constraints2
3.6 2default:default2&
Re-assign LUT pins2default:defaultZ18-101h px? 
H
3Phase 3.6 Re-assign LUT pins | Checksum: 187ba634b
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:04 ; elapsed = 00:00:00.84 . Memory (MB): peak = 2605.051 ; gain = 0.000 ; free physical = 3915 ; free virtual = 247502default:defaulth px? 
?

Phase %s%s
101*constraints2
3.7 2default:default22
Pipeline Register Optimization2default:defaultZ18-101h px? 
T
?Phase 3.7 Pipeline Register Optimization | Checksum: 187ba634b
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:04 ; elapsed = 00:00:00.84 . Memory (MB): peak = 2605.051 ; gain = 0.000 ; free physical = 3915 ; free virtual = 247502default:defaulth px? 
D
/Phase 3 Detail Placement | Checksum: 187ba634b
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:04 ; elapsed = 00:00:00.84 . Memory (MB): peak = 2605.051 ; gain = 0.000 ; free physical = 3915 ; free virtual = 247502default:defaulth px? 
?

Phase %s%s
101*constraints2
4 2default:default2<
(Post Placement Optimization and Clean-Up2default:defaultZ18-101h px? 
{

Phase %s%s
101*constraints2
4.1 2default:default2,
Post Commit Optimization2default:defaultZ18-101h px? 
N
9Phase 4.1 Post Commit Optimization | Checksum: 187ba634b
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:04 ; elapsed = 00:00:00.85 . Memory (MB): peak = 2605.051 ; gain = 0.000 ; free physical = 3915 ; free virtual = 247502default:defaulth px? 
y

Phase %s%s
101*constraints2
4.2 2default:default2*
Post Placement Cleanup2default:defaultZ18-101h px? 
L
7Phase 4.2 Post Placement Cleanup | Checksum: 187ba634b
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:04 ; elapsed = 00:00:00.85 . Memory (MB): peak = 2605.051 ; gain = 0.000 ; free physical = 3916 ; free virtual = 247512default:defaulth px? 
s

Phase %s%s
101*constraints2
4.3 2default:default2$
Placer Reporting2default:defaultZ18-101h px? 
F
1Phase 4.3 Placer Reporting | Checksum: 187ba634b
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:04 ; elapsed = 00:00:00.86 . Memory (MB): peak = 2605.051 ; gain = 0.000 ; free physical = 3916 ; free virtual = 247512default:defaulth px? 
z

Phase %s%s
101*constraints2
4.4 2default:default2+
Final Placement Cleanup2default:defaultZ18-101h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
2605.0512default:default2
0.0002default:default2
39162default:default2
247512default:defaultZ17-722h px? 
M
8Phase 4.4 Final Placement Cleanup | Checksum: 1b75d4381
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:04 ; elapsed = 00:00:00.86 . Memory (MB): peak = 2605.051 ; gain = 0.000 ; free physical = 3916 ; free virtual = 247512default:defaulth px? 
\
GPhase 4 Post Placement Optimization and Clean-Up | Checksum: 1b75d4381
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:04 ; elapsed = 00:00:00.86 . Memory (MB): peak = 2605.051 ; gain = 0.000 ; free physical = 3916 ; free virtual = 247512default:defaulth px? 
=
(Ending Placer Task | Checksum: e57aa2ea
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:04 ; elapsed = 00:00:00.86 . Memory (MB): peak = 2605.051 ; gain = 0.000 ; free physical = 3916 ; free virtual = 247512default:defaulth px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
452default:default2
22default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
place_design2default:defaultZ4-42h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
2605.0512default:default2
0.0002default:default2
39342default:default2
247702default:defaultZ17-722h px? 
H
&Writing timing data to binary archive.266*timingZ38-480h px? 
D
Writing placer database...
1603*designutilsZ20-1893h px? 
=
Writing XDEF routing.
211*designutilsZ20-211h px? 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px? 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2)
Write XDEF Complete: 2default:default2
00:00:00.042default:default2
00:00:00.012default:default2
2605.0512default:default2
0.0002default:default2
39332default:default2
247702default:defaultZ17-722h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2k
W/home/skillet/git/ECE433/lab3/lab3.runs/impl_1/lab3detect10110withSegDisplay_placed.dcp2default:defaultZ17-1381h px? 
x
%s4*runtcl2\
HExecuting : report_io -file lab3detect10110withSegDisplay_io_placed.rpt
2default:defaulth px? 
?
?report_io: Time (s): cpu = 00:00:00.07 ; elapsed = 00:00:00.09 . Memory (MB): peak = 2605.051 ; gain = 0.000 ; free physical = 3924 ; free virtual = 24759
*commonh px? 
?
%s4*runtcl2?
?Executing : report_utilization -file lab3detect10110withSegDisplay_utilization_placed.rpt -pb lab3detect10110withSegDisplay_utilization_placed.pb
2default:defaulth px? 
?
%s4*runtcl2y
eExecuting : report_control_sets -verbose -file lab3detect10110withSegDisplay_control_sets_placed.rpt
2default:defaulth px? 
?
?report_control_sets: Time (s): cpu = 00:00:00.03 ; elapsed = 00:00:00.05 . Memory (MB): peak = 2605.051 ; gain = 0.000 ; free physical = 3929 ; free virtual = 24764
*commonh px? 


End Record