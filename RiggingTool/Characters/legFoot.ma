//Maya ASCII 2012 scene
//Name: legFoot.ma
//Last modified: Tue, Jul 24, 2012 12:27:58 AM
//Codeset: 1252
requires maya "2012";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2012";
fileInfo "version" "2012 x64";
fileInfo "cutIdentifier" "201109261234-811691";
fileInfo "osv" "Microsoft Windows Vista Home Premium Edition, 64-bit Service Pack 2 (Build 6002)\n";
createNode transform -n "character_grp";
	addAttr -ci true -sn "moduleMaintenanceVisibility" -ln "moduleMaintenanceVisibility" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "animationControlVisibility" -ln "animationControlVisibility" 
		-dv 1 -min 0 -max 1 -at "bool";
	setAttr ".moduleMaintenanceVisibility";
	setAttr -k on ".animationControlVisibility";
lockNode -l 1 -lu 1;
createNode transform -n "LegFoot__instance_1:module_grp" -p "character_grp";
	addAttr -ci true -sn "hierarchicalScale" -ln "hierarchicalScale" -at "float";
lockNode -l 1 -lu 1;
createNode transform -n "LegFoot__instance_1:HOOK_IN" -p "LegFoot__instance_1:module_grp";
	setAttr ".s";
	setAttr ".sy";
lockNode -l 1 -lu 1;
createNode transform -n "LegFoot__instance_1:blueprint_joints_grp" -p "LegFoot__instance_1:HOOK_IN";
	addAttr -ci true -sn "controlModulesInstalled" -ln "controlModulesInstalled" -min 
		0 -max 1 -at "bool";
	setAttr ".ove" yes;
lockNode -l 1 -lu 1;
createNode joint -n "LegFoot__instance_1:blueprint_hip_joint" -p "LegFoot__instance_1:blueprint_joints_grp";
	setAttr ".t";
	setAttr ".ro" 3;
	setAttr ".s";
	setAttr ".rp";
	setAttr ".rpt";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -9.5427290115255827e-005 -14.036330506143484 -89.999999999815543 ;
	setAttr ".jo";
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 0 -50 0 ;
lockNode -l 1 -lu 1;
createNode joint -n "LegFoot__instance_1:blueprint_knee_joint" -p "LegFoot__instance_1:blueprint_hip_joint";
	setAttr ".t" -type "double3" 4.123105525970459 -4.5775608645401075e-016 -1.1102230246251565e-016 ;
	setAttr ".t";
	setAttr ".ro" 3;
	setAttr ".s";
	setAttr ".rp";
	setAttr ".rpt";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 28.072661012324346 0 ;
	setAttr ".jo";
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 0 50 0 ;
lockNode -l 1 -lu 1;
createNode joint -n "LegFoot__instance_1:blueprint_ankle_joint" -p "LegFoot__instance_1:blueprint_knee_joint";
	setAttr ".t" -type "double3" 4.123105525970459 -4.0390553020982084e-016 1.1102230246251565e-015 ;
	setAttr ".t";
	setAttr ".ro";
	setAttr ".s";
	setAttr ".rp";
	setAttr ".rpt";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0.0010996702670390387 -85.601378359144363 -0.0010532592130601966 ;
	setAttr ".jo";
	setAttr ".ssc" no;
lockNode -l 1 -lu 1;
createNode joint -n "LegFoot__instance_1:blueprint_ball_joint" -p "LegFoot__instance_1:blueprint_ankle_joint";
	setAttr ".t" -type "double3" 3.1622786521911621 3.2465589890682515e-006 -2.8823059423643826e-006 ;
	setAttr ".t";
	setAttr ".ro";
	setAttr ".s";
	setAttr ".rp";
	setAttr ".rpt";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.8121948738444009e-006 -18.43495200860583 4.995761912337349e-023 ;
	setAttr ".jo";
	setAttr ".ssc" no;
lockNode -l 1 -lu 1;
createNode joint -n "LegFoot__instance_1:blueprint_toe_joint" -p "LegFoot__instance_1:blueprint_ball_joint";
	setAttr ".t" -type "double3" 3 -1.4982047698788755e-008 7.1054273576010019e-015 ;
	setAttr ".t";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
lockNode -l 1 -lu 1;
createNode transform -n "LegFoot__instance_1:creationPose_joints_grp" -p "LegFoot__instance_1:HOOK_IN";
lockNode -l 1 -lu 1;
createNode joint -n "LegFoot__instance_1:creationPose_hip_joint" -p "LegFoot__instance_1:creationPose_joints_grp";
	setAttr ".v" no;
	setAttr ".ro" 3;
	setAttr ".s";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -9.542729011607543e-005 -14.036330506143484 -89.999999999815543 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 0 -50 0 ;
lockNode -l 1 -lu 1;
createNode joint -n "LegFoot__instance_1:creationPose_knee_joint" -p "LegFoot__instance_1:creationPose_hip_joint";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 4.1231055259704599 -4.5775608645401075e-016 -1.1102230246251565e-016 ;
	setAttr ".ro" 3;
	setAttr ".s";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 28.072661012324346 0 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 0 50 0 ;
lockNode -l 1 -lu 1;
createNode joint -n "LegFoot__instance_1:creationPose_ankle_joint" -p "LegFoot__instance_1:creationPose_knee_joint";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 4.1231055259704572 -4.0390553020982084e-016 1.1102230246251565e-015 ;
	setAttr ".s";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0.0010996702670390344 -85.601378359144363 -0.0010532592130601938 ;
	setAttr ".ssc" no;
lockNode -l 1 -lu 1;
createNode joint -n "LegFoot__instance_1:creationPose_ball_joint" -p "LegFoot__instance_1:creationPose_ankle_joint";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 3.1622786592856942 3.2465589890682515e-006 -2.8823059423643826e-006 ;
	setAttr ".s";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.8121948738444009e-006 -18.43495200860583 4.995761912337349e-023 ;
	setAttr ".ssc" no;
lockNode -l 1 -lu 1;
createNode joint -n "LegFoot__instance_1:creationPose_toe_joint" -p "LegFoot__instance_1:creationPose_ball_joint";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 3.0000000000000009 -1.4982047698788755e-008 7.1054273576010019e-015 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
lockNode -l 1 -lu 1;
createNode transform -n "LegFoot__instance_1:SETTINGS" -p "LegFoot__instance_1:module_grp";
	addAttr -ci true -sn "activeModule" -ln "activeModule" -min 0 -max 0 -en "None" 
		-at "enum";
	addAttr -ci true -sn "creationPoseWeight" -ln "creationPoseWeight" -dv 1 -at "float";
	setAttr ".v" no;
lockNode -l 1 -lu 1;
createNode locator -n "LegFoot__instance_1:SETTINGSShape" -p "LegFoot__instance_1:SETTINGS";
	setAttr -k off ".v";
lockNode -l 1 -lu 1;
createNode transform -n "non_blueprint_grp" -p "character_grp";
	addAttr -ci true -k true -sn "display" -ln "display" -dv 1 -min 0 -max 1 -at "bool";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".rp" -type "double3" -1.1102230246251565e-016 -4.8840496423348547 2.3111009476628697 ;
	setAttr ".sp" -type "double3" -1.1102230246251565e-016 -4.8840496423348547 2.3111009476628697 ;
	setAttr -k on ".display";
lockNode -l 1 -lu 1;
createNode transform -n "blueprint_hip_joint_geoAttach_parentGrp1" -p "non_blueprint_grp";
	setAttr ".t";
	setAttr ".r";
	setAttr ".ro";
	setAttr ".s";
	setAttr ".rp";
	setAttr ".rpt";
lockNode -l 1 -lu 1;
createNode parentConstraint -n "blueprint_hip_joint_geoAttach_parentGrp1_parentConstraint" 
		-p "blueprint_hip_joint_geoAttach_parentGrp1";
	addAttr -ci true -k true -sn "w0" -ln "blueprint_hip_jointW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg";
	setAttr ".lr" -type "double3" -9.542729011607543e-005 -14.036330506143484 -89.999999999815543 ;
	setAttr ".rsrr" -type "double3" -9.542729011607543e-005 -14.036330506143484 -89.999999999815543 ;
	setAttr -k on ".w0";
lockNode -l 1 -lu 1;
createNode scaleConstraint -n "blueprint_hip_joint_geoAttach_parentGrp1_scaleConstraint" 
		-p "blueprint_hip_joint_geoAttach_parentGrp1";
	addAttr -ci true -k true -sn "w0" -ln "blueprint_hip_jointW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg";
	setAttr -k on ".w0";
lockNode -l 1 -lu 1;
createNode transform -n "blueprint_hip_joint_geoAttach_scaleGrp1" -p "blueprint_hip_joint_geoAttach_parentGrp1";
	setAttr ".s";
lockNode -l 1 -lu 1;
createNode transform -n "nurbsCylinder1" -p "blueprint_hip_joint_geoAttach_scaleGrp1";
	setAttr ".t" -type "double3" 2.0780232034541597 -7.3639282257083293e-008 0.044210101486730102 ;
	setAttr ".r" -type "double3" -1.5937817559693508 -9.5427245378357058e-005 89.999999999821043 ;
	setAttr ".s" -type "double3" 1 2.0022726758170255 0.99999999999999989 ;
lockNode -l 1 -lu 1;
createNode nurbsSurface -n "nurbsCylinderShape1" -p "nurbsCylinder1";
	setAttr -k off ".v";
	setAttr ".iog";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		
		44
		0.78361162489122382 -1 -0.78361162489122516
		1.1081941875543879 -1 6.51993661209256e-017
		0.78361162489122427 -1 0.78361162489122416
		3.2112695072372299e-016 -1 1.1081941875543879
		-0.78361162489122405 -1 0.78361162489122438
		-1.1081941875543881 -1 2.7268819640168427e-016
		-0.78361162489122438 -1 -0.78361162489122393
		-5.9521325992805852e-016 -0.99999999999999989 -1.1081941875543879
		0.78361162489122382 -1 -0.78361162489122516
		1.1081941875543879 -1 6.51993661209256e-017
		0.78361162489122427 -1 0.78361162489122416
		0.78361162489122382 -0.33333333333333326 -0.78361162489122504
		1.1081941875543879 -0.33333333333333331 1.0602092609250404e-016
		0.78361162489122427 -0.33333333333333337 0.78361162489122427
		3.2112695072372299e-016 -0.33333333333333337 1.1081941875543879
		-0.78361162489122405 -0.33333333333333337 0.78361162489122449
		-1.1081941875543881 -0.33333333333333331 3.1350975637326271e-016
		-0.78361162489122438 -0.33333333333333326 -0.78361162489122382
		-5.9521325992805852e-016 -0.33333333333333326 -1.1081941875543879
		0.78361162489122382 -0.33333333333333326 -0.78361162489122504
		1.1081941875543879 -0.33333333333333331 1.0602092609250404e-016
		0.78361162489122427 -0.33333333333333337 0.78361162489122427
		0.78361162489122382 0.33333333333333337 -0.78361162489122504
		1.1081941875543879 0.33333333333333331 1.4684248606408248e-016
		0.78361162489122427 0.33333333333333326 0.78361162489122427
		3.2112695072372299e-016 0.33333333333333326 1.1081941875543879
		-0.78361162489122405 0.33333333333333326 0.78361162489122449
		-1.1081941875543881 0.33333333333333331 3.5433131634484119e-016
		-0.78361162489122438 0.33333333333333337 -0.78361162489122382
		-5.9521325992805852e-016 0.33333333333333337 -1.1081941875543879
		0.78361162489122382 0.33333333333333337 -0.78361162489122504
		1.1081941875543879 0.33333333333333331 1.4684248606408248e-016
		0.78361162489122427 0.33333333333333326 0.78361162489122427
		0.78361162489122382 1 -0.78361162489122493
		1.1081941875543879 1 1.8766404603566091e-016
		0.78361162489122427 1 0.78361162489122438
		3.2112695072372299e-016 0.99999999999999989 1.1081941875543879
		-0.78361162489122405 1 0.7836116248912246
		-1.1081941875543881 1 3.9515287631641962e-016
		-0.78361162489122438 1 -0.78361162489122371
		-5.9521325992805852e-016 1 -1.1081941875543879
		0.78361162489122382 1 -0.78361162489122493
		1.1081941875543879 1 1.8766404603566091e-016
		0.78361162489122427 1 0.78361162489122438
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
lockNode -l 1 -lu 1;
createNode transform -n "blueprint_knee_joint_geoAttach_parentGrp1" -p "non_blueprint_grp";
	setAttr ".t";
	setAttr ".r";
	setAttr ".ro";
	setAttr ".s";
	setAttr ".rp";
	setAttr ".rpt";
lockNode -l 1 -lu 1;
createNode parentConstraint -n "blueprint_knee_joint_geoAttach_parentGrp1_parentConstraint" 
		-p "blueprint_knee_joint_geoAttach_parentGrp1";
	addAttr -ci true -k true -sn "w0" -ln "blueprint_knee_jointW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg";
	setAttr ".lr" -type "double3" -9.5427290114436211e-005 14.036330506143463 -90.000046289131717 ;
	setAttr ".rst" -type "double3" 1.287761060677413e-011 -3.9999983842199742 1.0000060522445502 ;
	setAttr ".rsrr" -type "double3" -9.5427290114436211e-005 14.036330506143463 -90.000046289131717 ;
	setAttr -k on ".w0";
lockNode -l 1 -lu 1;
createNode scaleConstraint -n "blueprint_knee_joint_geoAttach_parentGrp1_scaleConstraint" 
		-p "blueprint_knee_joint_geoAttach_parentGrp1";
	addAttr -ci true -k true -sn "w0" -ln "blueprint_knee_jointW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg";
	setAttr -k on ".w0";
lockNode -l 1 -lu 1;
createNode transform -n "blueprint_knee_joint_geoAttach_scaleGrp1" -p "blueprint_knee_joint_geoAttach_parentGrp1";
	setAttr ".s";
lockNode -l 1 -lu 1;
createNode transform -n "nurbsCylinder2" -p "blueprint_knee_joint_geoAttach_scaleGrp1";
	setAttr ".t" -type "double3" 1.8317802926099822 1.4096392502925195e-006 0.017728023846177221 ;
	setAttr ".r" -type "double3" 0.27870474232662967 -8.4200458399217429e-005 90.000044907036937 ;
	setAttr ".s" -type "double3" 0.99999999999999989 2.0022726758170251 1.0000000000000002 ;
lockNode -l 1 -lu 1;
createNode nurbsSurface -n "nurbsCylinderShape2" -p "nurbsCylinder2";
	setAttr -k off ".v";
	setAttr ".iog";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		
		44
		0.78361162489122382 -1 -0.78361162489122516
		1.1081941875543879 -1 6.51993661209256e-017
		0.78361162489122427 -1 0.78361162489122416
		3.2112695072372299e-016 -1 1.1081941875543879
		-0.78361162489122405 -1 0.78361162489122438
		-1.1081941875543881 -1 2.7268819640168427e-016
		-0.78361162489122438 -1 -0.78361162489122393
		-5.9521325992805852e-016 -0.99999999999999989 -1.1081941875543879
		0.78361162489122382 -1 -0.78361162489122516
		1.1081941875543879 -1 6.51993661209256e-017
		0.78361162489122427 -1 0.78361162489122416
		0.78361162489122382 -0.33333333333333326 -0.78361162489122504
		1.1081941875543879 -0.33333333333333331 1.0602092609250404e-016
		0.78361162489122427 -0.33333333333333337 0.78361162489122427
		3.2112695072372299e-016 -0.33333333333333337 1.1081941875543879
		-0.78361162489122405 -0.33333333333333337 0.78361162489122449
		-1.1081941875543881 -0.33333333333333331 3.1350975637326271e-016
		-0.78361162489122438 -0.33333333333333326 -0.78361162489122382
		-5.9521325992805852e-016 -0.33333333333333326 -1.1081941875543879
		0.78361162489122382 -0.33333333333333326 -0.78361162489122504
		1.1081941875543879 -0.33333333333333331 1.0602092609250404e-016
		0.78361162489122427 -0.33333333333333337 0.78361162489122427
		0.78361162489122382 0.33333333333333337 -0.78361162489122504
		1.1081941875543879 0.33333333333333331 1.4684248606408248e-016
		0.78361162489122427 0.33333333333333326 0.78361162489122427
		3.2112695072372299e-016 0.33333333333333326 1.1081941875543879
		-0.78361162489122405 0.33333333333333326 0.78361162489122449
		-1.1081941875543881 0.33333333333333331 3.5433131634484119e-016
		-0.78361162489122438 0.33333333333333337 -0.78361162489122382
		-5.9521325992805852e-016 0.33333333333333337 -1.1081941875543879
		0.78361162489122382 0.33333333333333337 -0.78361162489122504
		1.1081941875543879 0.33333333333333331 1.4684248606408248e-016
		0.78361162489122427 0.33333333333333326 0.78361162489122427
		0.78361162489122382 1 -0.78361162489122493
		1.1081941875543879 1 1.8766404603566091e-016
		0.78361162489122427 1 0.78361162489122438
		3.2112695072372299e-016 0.99999999999999989 1.1081941875543879
		-0.78361162489122405 1 0.7836116248912246
		-1.1081941875543881 1 3.9515287631641962e-016
		-0.78361162489122438 1 -0.78361162489122371
		-5.9521325992805852e-016 1 -1.1081941875543879
		0.78361162489122382 1 -0.78361162489122493
		1.1081941875543879 1 1.8766404603566091e-016
		0.78361162489122427 1 0.78361162489122438
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
lockNode -l 1 -lu 1;
createNode transform -n "blueprint_ankle_joint_geoAttach_parentGrp1" -p "non_blueprint_grp";
	setAttr ".t";
	setAttr ".r";
	setAttr ".ro";
	setAttr ".s";
	setAttr ".rp";
	setAttr ".rpt";
lockNode -l 1 -lu 1;
createNode parentConstraint -n "blueprint_ankle_joint_geoAttach_parentGrp1_parentConstraint" 
		-p "blueprint_ankle_joint_geoAttach_parentGrp1";
	addAttr -ci true -k true -sn "w0" -ln "blueprint_ankle_jointW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg";
	setAttr ".lr" -type "double3" -9.0484143446341952e-007 -71.565047853740012 -90.000000858408356 ;
	setAttr ".rst" -type "double3" -3.231576842628527e-006 -7.9999967684386437 2.2204460492503131e-015 ;
	setAttr ".rsrr" -type "double3" -9.0484143446341952e-007 -71.565047853740012 -90.000000858408356 ;
	setAttr -k on ".w0";
lockNode -l 1 -lu 1;
createNode scaleConstraint -n "blueprint_ankle_joint_geoAttach_parentGrp1_scaleConstraint" 
		-p "blueprint_ankle_joint_geoAttach_parentGrp1";
	addAttr -ci true -k true -sn "w0" -ln "blueprint_ankle_jointW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg";
	setAttr -k on ".w0";
lockNode -l 1 -lu 1;
createNode transform -n "blueprint_ankle_joint_geoAttach_scaleGrp1" -p "blueprint_ankle_joint_geoAttach_parentGrp1";
	setAttr ".s";
lockNode -l 1 -lu 1;
createNode transform -n "nurbsCylinder3" -p "blueprint_ankle_joint_geoAttach_scaleGrp1";
	setAttr ".t" -type "double3" 1.5466478601205393 3.239304998491588e-006 -0.028180616579096984 ;
	setAttr ".r" -type "double3" -0.84293421389139489 -8.1435767144018605e-007 90.00000027145262 ;
	setAttr ".s" -type "double3" 1 1.4500918411149306 1 ;
lockNode -l 1 -lu 1;
createNode nurbsSurface -n "nurbsCylinderShape3" -p "nurbsCylinder3";
	setAttr -k off ".v";
	setAttr ".iog";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		
		44
		0.78361162489122382 -1 -0.78361162489122516
		1.1081941875543879 -1 6.51993661209256e-017
		0.78361162489122427 -1 0.78361162489122416
		3.2112695072372299e-016 -1 1.1081941875543879
		-0.78361162489122405 -1 0.78361162489122438
		-1.1081941875543881 -1 2.7268819640168427e-016
		-0.78361162489122438 -1 -0.78361162489122393
		-5.9521325992805852e-016 -0.99999999999999989 -1.1081941875543879
		0.78361162489122382 -1 -0.78361162489122516
		1.1081941875543879 -1 6.51993661209256e-017
		0.78361162489122427 -1 0.78361162489122416
		0.78361162489122382 -0.33333333333333326 -0.78361162489122504
		1.1081941875543879 -0.33333333333333331 1.0602092609250404e-016
		0.78361162489122427 -0.33333333333333337 0.78361162489122427
		3.2112695072372299e-016 -0.33333333333333337 1.1081941875543879
		-0.78361162489122405 -0.33333333333333337 0.78361162489122449
		-1.1081941875543881 -0.33333333333333331 3.1350975637326271e-016
		-0.78361162489122438 -0.33333333333333326 -0.78361162489122382
		-5.9521325992805852e-016 -0.33333333333333326 -1.1081941875543879
		0.78361162489122382 -0.33333333333333326 -0.78361162489122504
		1.1081941875543879 -0.33333333333333331 1.0602092609250404e-016
		0.78361162489122427 -0.33333333333333337 0.78361162489122427
		0.78361162489122382 0.33333333333333337 -0.78361162489122504
		1.1081941875543879 0.33333333333333331 1.4684248606408248e-016
		0.78361162489122427 0.33333333333333326 0.78361162489122427
		3.2112695072372299e-016 0.33333333333333326 1.1081941875543879
		-0.78361162489122405 0.33333333333333326 0.78361162489122449
		-1.1081941875543881 0.33333333333333331 3.5433131634484119e-016
		-0.78361162489122438 0.33333333333333337 -0.78361162489122382
		-5.9521325992805852e-016 0.33333333333333337 -1.1081941875543879
		0.78361162489122382 0.33333333333333337 -0.78361162489122504
		1.1081941875543879 0.33333333333333331 1.4684248606408248e-016
		0.78361162489122427 0.33333333333333326 0.78361162489122427
		0.78361162489122382 1 -0.78361162489122493
		1.1081941875543879 1 1.8766404603566091e-016
		0.78361162489122427 1 0.78361162489122438
		3.2112695072372299e-016 0.99999999999999989 1.1081941875543879
		-0.78361162489122405 1 0.7836116248912246
		-1.1081941875543881 1 3.9515287631641962e-016
		-0.78361162489122438 1 -0.78361162489122371
		-5.9521325992805852e-016 1 -1.1081941875543879
		0.78361162489122382 1 -0.78361162489122493
		1.1081941875543879 1 1.8766404603566091e-016
		0.78361162489122427 1 0.78361162489122438
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
lockNode -l 1 -lu 1;
createNode transform -n "blueprint_ball_joint_geoAttach_parentGrp1" -p "non_blueprint_grp";
	setAttr ".t";
	setAttr ".r";
	setAttr ".ro";
	setAttr ".s";
	setAttr ".rp";
	setAttr ".rpt";
lockNode -l 1 -lu 1;
createNode parentConstraint -n "blueprint_ball_joint_geoAttach_parentGrp1_parentConstraint" 
		-p "blueprint_ball_joint_geoAttach_parentGrp1";
	addAttr -ci true -k true -sn "w0" -ln "blueprint_ball_jointW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg";
	setAttr ".lr" -type "double3" 1.3238420845759954e-006 -89.999999862345845 -90 ;
	setAttr ".rst" -type "double3" 6.8333959503267053e-016 -8.9999999905489645 2.9999999716468908 ;
	setAttr ".rsrr" -type "double3" 1.3238420845759954e-006 -89.999999862345845 -90 ;
	setAttr -k on ".w0";
lockNode -l 1 -lu 1;
createNode scaleConstraint -n "blueprint_ball_joint_geoAttach_parentGrp1_scaleConstraint" 
		-p "blueprint_ball_joint_geoAttach_parentGrp1";
	addAttr -ci true -k true -sn "w0" -ln "blueprint_ball_jointW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg";
	setAttr -k on ".w0";
lockNode -l 1 -lu 1;
createNode transform -n "blueprint_ball_joint_geoAttach_scaleGrp1" -p "blueprint_ball_joint_geoAttach_parentGrp1";
	setAttr ".s";
lockNode -l 1 -lu 1;
createNode transform -n "nurbsCylinder4" -p "blueprint_ball_joint_geoAttach_scaleGrp1";
	setAttr ".t" -type "double3" 1.4532292654645196 1.55959655905396e-009 0.067499243251866403 ;
	setAttr ".r" -type "double3" 0.94801630313336915 1.3238420969544977e-006 90 ;
	setAttr ".s" -type "double3" 1 1.2366367765363913 1.0000000000000002 ;
lockNode -l 1 -lu 1;
createNode nurbsSurface -n "nurbsCylinderShape4" -p "nurbsCylinder4";
	setAttr -k off ".v";
	setAttr ".iog";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		
		44
		0.78361162489122382 -1 -0.78361162489122516
		1.1081941875543879 -1 6.51993661209256e-017
		0.78361162489122427 -1 0.78361162489122416
		3.2112695072372299e-016 -1 1.1081941875543879
		-0.78361162489122405 -1 0.78361162489122438
		-1.1081941875543881 -1 2.7268819640168427e-016
		-0.78361162489122438 -1 -0.78361162489122393
		-5.9521325992805852e-016 -0.99999999999999989 -1.1081941875543879
		0.78361162489122382 -1 -0.78361162489122516
		1.1081941875543879 -1 6.51993661209256e-017
		0.78361162489122427 -1 0.78361162489122416
		0.78361162489122382 -0.33333333333333326 -0.78361162489122504
		1.1081941875543879 -0.33333333333333331 1.0602092609250404e-016
		0.78361162489122427 -0.33333333333333337 0.78361162489122427
		3.2112695072372299e-016 -0.33333333333333337 1.1081941875543879
		-0.78361162489122405 -0.33333333333333337 0.78361162489122449
		-1.1081941875543881 -0.33333333333333331 3.1350975637326271e-016
		-0.78361162489122438 -0.33333333333333326 -0.78361162489122382
		-5.9521325992805852e-016 -0.33333333333333326 -1.1081941875543879
		0.78361162489122382 -0.33333333333333326 -0.78361162489122504
		1.1081941875543879 -0.33333333333333331 1.0602092609250404e-016
		0.78361162489122427 -0.33333333333333337 0.78361162489122427
		0.78361162489122382 0.33333333333333337 -0.78361162489122504
		1.1081941875543879 0.33333333333333331 1.4684248606408248e-016
		0.78361162489122427 0.33333333333333326 0.78361162489122427
		3.2112695072372299e-016 0.33333333333333326 1.1081941875543879
		-0.78361162489122405 0.33333333333333326 0.78361162489122449
		-1.1081941875543881 0.33333333333333331 3.5433131634484119e-016
		-0.78361162489122438 0.33333333333333337 -0.78361162489122382
		-5.9521325992805852e-016 0.33333333333333337 -1.1081941875543879
		0.78361162489122382 0.33333333333333337 -0.78361162489122504
		1.1081941875543879 0.33333333333333331 1.4684248606408248e-016
		0.78361162489122427 0.33333333333333326 0.78361162489122427
		0.78361162489122382 1 -0.78361162489122493
		1.1081941875543879 1 1.8766404603566091e-016
		0.78361162489122427 1 0.78361162489122438
		3.2112695072372299e-016 0.99999999999999989 1.1081941875543879
		-0.78361162489122405 1 0.7836116248912246
		-1.1081941875543881 1 3.9515287631641962e-016
		-0.78361162489122438 1 -0.78361162489122371
		-5.9521325992805852e-016 1 -1.1081941875543879
		0.78361162489122382 1 -0.78361162489122493
		1.1081941875543879 1 1.8766404603566091e-016
		0.78361162489122427 1 0.78361162489122438
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
lockNode -l 1 -lu 1;
createNode container -n "character_container";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr ".isc" yes;
	setAttr -s 4 ".boc";
	setAttr -s 3 ".ish[1:3]" yes yes yes;
	setAttr ".ctor" -type "string" "cat";
	setAttr ".cdat" -type "string" "2012/07/24 00:27:58";
	setAttr ".aal" -type "attributeAlias" {"animControlVis","borderConnections[0]","instance_1_activeModule"
		,"borderConnections[1]","instance_1_creationPoseWeight","borderConnections[2]","displayNonBlueprintNodes"
		,"borderConnections[3]"} ;
lockNode -l 1 -lu 1;
createNode container -n "non_blueprint_container";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr ".isc" yes;
	setAttr ".ctor" -type "string" "cat";
	setAttr ".cdat" -type "string" "2012/07/24 00:27:58";
	setAttr ".aal" -type "attributeAlias" {"displayNonBlueprintNodes","borderConnections[0]"
		} ;
lockNode -l 1 -lu 1;
createNode reverse -n "reverse_moduleMaintenanceVisibility";
	setAttr ".i";
lockNode -l 1 -lu 1;
createNode hyperLayout -n "hyperLayout3";
	setAttr ".ihi" 0;
	setAttr -s 5 ".hyp";
createNode multiplyDivide -n "moduleVisibilityMultiply";
	setAttr ".i1";
	setAttr ".i2";
lockNode -l 1 -lu 1;
createNode container -n "LegFoot__instance_1:module_container";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr ".isc" yes;
	setAttr -s 2 ".boc";
	setAttr ".ctor" -type "string" "cat";
	setAttr ".cdat" -type "string" "2012/07/24 00:24:55";
	setAttr ".aal" -type "attributeAlias" {"activeModule","borderConnections[0]","creationPoseWeight"
		,"borderConnections[1]"} ;
lockNode -l 1 -lu 1;
createNode hyperLayout -n "hyperLayout4";
	setAttr ".ihi" 0;
	setAttr -s 30 ".hyp";
createNode multiplyDivide -n "blueprint_ball_joint_geoAttach_scaleGrp1_scaleFactor";
	setAttr ".op" 2;
	setAttr ".i1";
	setAttr ".i2" -type "float3" 3 1 1 ;
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "non_blueprint_visibilityMultiply";
	setAttr ".i1";
	setAttr ".i2";
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "blueprint_ankle_joint_geoAttach_scaleGrp1_scaleFactor";
	setAttr ".op" 2;
	setAttr ".i1";
	setAttr ".i2" -type "float3" 3.1622787 1 1 ;
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "blueprint_hip_joint_geoAttach_scaleGrp1_scaleFactor";
	setAttr ".op" 2;
	setAttr ".i1";
	setAttr ".i2" -type "float3" 4.1231055 1 1 ;
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "blueprint_knee_joint_geoAttach_scaleGrp1_scaleFactor";
	setAttr ".op" 2;
	setAttr ".i1";
	setAttr ".i2" -type "float3" 4.1231055 1 1 ;
lockNode -l 1 -lu 1;
createNode unitConversion -n "unitConversion1";
	setAttr ".cf" 0.017453292519943295;
lockNode -l 1 -lu 1;
createNode plusMinusAverage -n "LegFoot__instance_1:blueprint_hip_joint_addRotations";
	setAttr ".i3";
	setAttr ".i3";
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "LegFoot__instance_1:blueprint_hip_joint_dummyRotationsMultiply";
lockNode -l 1 -lu 1;
createNode unitConversion -n "unitConversion2";
	setAttr ".cf" 0.017453292519943295;
lockNode -l 1 -lu 1;
createNode plusMinusAverage -n "LegFoot__instance_1:blueprint_knee_joint_addRotations";
	setAttr ".i3";
	setAttr ".i3";
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "LegFoot__instance_1:blueprint_knee_joint_dummyRotationsMultiply";
lockNode -l 1 -lu 1;
createNode plusMinusAverage -n "LegFoot__instance_1:blueprint_knee_joint_addTx";
	setAttr ".i1";
	setAttr ".i1";
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "LegFoot__instance_1:blueprint_knee_joint_original_Tx";
	setAttr ".i1" -type "float3" 4.1231055 0 0 ;
	setAttr ".i1";
	setAttr -l on ".i1x";
	setAttr ".i2";
lockNode -l 1 -lu 1;
createNode unitConversion -n "unitConversion3";
	setAttr ".cf" 0.017453292519943295;
lockNode -l 1 -lu 1;
createNode plusMinusAverage -n "LegFoot__instance_1:blueprint_ankle_joint_addRotations";
	setAttr ".i3";
	setAttr ".i3";
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "LegFoot__instance_1:blueprint_ankle_joint_dummyRotationsMultiply";
lockNode -l 1 -lu 1;
createNode plusMinusAverage -n "LegFoot__instance_1:blueprint_ankle_joint_addTx";
	setAttr ".i1";
	setAttr ".i1";
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "LegFoot__instance_1:blueprint_ankle_joint_original_Tx";
	setAttr ".i1" -type "float3" 4.1231055 0 0 ;
	setAttr ".i1";
	setAttr -l on ".i1x";
	setAttr ".i2";
lockNode -l 1 -lu 1;
createNode unitConversion -n "unitConversion4";
	setAttr ".cf" 0.017453292519943295;
lockNode -l 1 -lu 1;
createNode plusMinusAverage -n "LegFoot__instance_1:blueprint_ball_joint_addRotations";
	setAttr ".i3";
	setAttr ".i3";
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "LegFoot__instance_1:blueprint_ball_joint_dummyRotationsMultiply";
lockNode -l 1 -lu 1;
createNode plusMinusAverage -n "LegFoot__instance_1:blueprint_ball_joint_addTx";
	setAttr ".i1";
	setAttr ".i1";
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "LegFoot__instance_1:blueprint_ball_joint_original_Tx";
	setAttr ".i1" -type "float3" 3.1622787 0 0 ;
	setAttr ".i1";
	setAttr -l on ".i1x";
	setAttr ".i2";
lockNode -l 1 -lu 1;
createNode plusMinusAverage -n "LegFoot__instance_1:blueprint_toe_joint_addTx";
	setAttr ".i1";
	setAttr ".i1";
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "LegFoot__instance_1:blueprint_toe_joint_original_Tx";
	setAttr ".i1" -type "float3" 3 0 0 ;
	setAttr ".i1";
	setAttr -l on ".i1x";
	setAttr ".i2";
lockNode -l 1 -lu 1;
createNode hyperLayout -n "hyperLayout2";
	setAttr ".ihi" 0;
	setAttr -s 5 ".hyp";
createNode container -n "LegFoot__instance_1:blueprint_container";
	setAttr ".isc" yes;
	setAttr ".ctor" -type "string" "cat";
	setAttr ".cdat" -type "string" "2012/07/24 00:24:55";
lockNode -l 1 -lu 1;
createNode hyperLayout -n "hyperLayout1";
	setAttr ".ihi" 0;
	setAttr -s 32 ".hyp";
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :initialShadingGroup;
	setAttr -s 4 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultShaderList1;
	setAttr -s 2 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 23 ".u";
select -ne :defaultRenderingList1;
select -ne :renderGlobalsList1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".fn" -type "string" "im";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "LegFoot__instance_1:HOOK_IN.sy" "LegFoot__instance_1:module_grp.hierarchicalScale"
		 -l on;
connectAttr "character_grp.moduleMaintenanceVisibility" "LegFoot__instance_1:blueprint_joints_grp.v"
		 -l on;
connectAttr "unitConversion1.o" "LegFoot__instance_1:blueprint_hip_joint.r" -l on
		;
connectAttr "LegFoot__instance_1:blueprint_hip_joint.s" "LegFoot__instance_1:blueprint_knee_joint.is"
		 -l on;
connectAttr "unitConversion2.o" "LegFoot__instance_1:blueprint_knee_joint.r" -l on
		;
connectAttr "LegFoot__instance_1:blueprint_knee_joint_addTx.o1" "LegFoot__instance_1:blueprint_knee_joint.tx"
		 -l on;
connectAttr "LegFoot__instance_1:blueprint_knee_joint.s" "LegFoot__instance_1:blueprint_ankle_joint.is"
		 -l on;
connectAttr "unitConversion3.o" "LegFoot__instance_1:blueprint_ankle_joint.r" -l
		 on;
connectAttr "LegFoot__instance_1:blueprint_ankle_joint_addTx.o1" "LegFoot__instance_1:blueprint_ankle_joint.tx"
		 -l on;
connectAttr "LegFoot__instance_1:blueprint_ankle_joint.s" "LegFoot__instance_1:blueprint_ball_joint.is"
		 -l on;
connectAttr "unitConversion4.o" "LegFoot__instance_1:blueprint_ball_joint.r" -l on
		;
connectAttr "LegFoot__instance_1:blueprint_ball_joint_addTx.o1" "LegFoot__instance_1:blueprint_ball_joint.tx"
		 -l on;
connectAttr "LegFoot__instance_1:blueprint_ball_joint.s" "LegFoot__instance_1:blueprint_toe_joint.is"
		 -l on;
connectAttr "LegFoot__instance_1:blueprint_toe_joint_addTx.o1" "LegFoot__instance_1:blueprint_toe_joint.tx"
		 -l on;
connectAttr "LegFoot__instance_1:creationPose_hip_joint.s" "LegFoot__instance_1:creationPose_knee_joint.is"
		 -l on;
connectAttr "LegFoot__instance_1:creationPose_knee_joint.s" "LegFoot__instance_1:creationPose_ankle_joint.is"
		 -l on;
connectAttr "LegFoot__instance_1:creationPose_ankle_joint.s" "LegFoot__instance_1:creationPose_ball_joint.is"
		 -l on;
connectAttr "LegFoot__instance_1:creationPose_ball_joint.s" "LegFoot__instance_1:creationPose_toe_joint.is"
		 -l on;
connectAttr "non_blueprint_visibilityMultiply.ox" "non_blueprint_grp.v" -l on;
connectAttr "blueprint_hip_joint_geoAttach_parentGrp1_parentConstraint.ctx" "blueprint_hip_joint_geoAttach_parentGrp1.tx"
		 -l on;
connectAttr "blueprint_hip_joint_geoAttach_parentGrp1_parentConstraint.cty" "blueprint_hip_joint_geoAttach_parentGrp1.ty"
		 -l on;
connectAttr "blueprint_hip_joint_geoAttach_parentGrp1_parentConstraint.ctz" "blueprint_hip_joint_geoAttach_parentGrp1.tz"
		 -l on;
connectAttr "blueprint_hip_joint_geoAttach_parentGrp1_parentConstraint.crx" "blueprint_hip_joint_geoAttach_parentGrp1.rx"
		 -l on;
connectAttr "blueprint_hip_joint_geoAttach_parentGrp1_parentConstraint.cry" "blueprint_hip_joint_geoAttach_parentGrp1.ry"
		 -l on;
connectAttr "blueprint_hip_joint_geoAttach_parentGrp1_parentConstraint.crz" "blueprint_hip_joint_geoAttach_parentGrp1.rz"
		 -l on;
connectAttr "blueprint_hip_joint_geoAttach_parentGrp1_scaleConstraint.csx" "blueprint_hip_joint_geoAttach_parentGrp1.sx"
		 -l on;
connectAttr "blueprint_hip_joint_geoAttach_parentGrp1_scaleConstraint.csy" "blueprint_hip_joint_geoAttach_parentGrp1.sy"
		 -l on;
connectAttr "blueprint_hip_joint_geoAttach_parentGrp1_scaleConstraint.csz" "blueprint_hip_joint_geoAttach_parentGrp1.sz"
		 -l on;
connectAttr "blueprint_hip_joint_geoAttach_parentGrp1.ro" "blueprint_hip_joint_geoAttach_parentGrp1_parentConstraint.cro"
		 -l on;
connectAttr "blueprint_hip_joint_geoAttach_parentGrp1.pim" "blueprint_hip_joint_geoAttach_parentGrp1_parentConstraint.cpim"
		 -l on;
connectAttr "blueprint_hip_joint_geoAttach_parentGrp1.rp" "blueprint_hip_joint_geoAttach_parentGrp1_parentConstraint.crp"
		 -l on;
connectAttr "blueprint_hip_joint_geoAttach_parentGrp1.rpt" "blueprint_hip_joint_geoAttach_parentGrp1_parentConstraint.crt"
		 -l on;
connectAttr "LegFoot__instance_1:blueprint_hip_joint.t" "blueprint_hip_joint_geoAttach_parentGrp1_parentConstraint.tg[0].tt"
		 -l on;
connectAttr "LegFoot__instance_1:blueprint_hip_joint.rp" "blueprint_hip_joint_geoAttach_parentGrp1_parentConstraint.tg[0].trp"
		 -l on;
connectAttr "LegFoot__instance_1:blueprint_hip_joint.rpt" "blueprint_hip_joint_geoAttach_parentGrp1_parentConstraint.tg[0].trt"
		 -l on;
connectAttr "LegFoot__instance_1:blueprint_hip_joint.r" "blueprint_hip_joint_geoAttach_parentGrp1_parentConstraint.tg[0].tr"
		 -l on;
connectAttr "LegFoot__instance_1:blueprint_hip_joint.ro" "blueprint_hip_joint_geoAttach_parentGrp1_parentConstraint.tg[0].tro"
		 -l on;
connectAttr "LegFoot__instance_1:blueprint_hip_joint.s" "blueprint_hip_joint_geoAttach_parentGrp1_parentConstraint.tg[0].ts"
		 -l on;
connectAttr "LegFoot__instance_1:blueprint_hip_joint.pm" "blueprint_hip_joint_geoAttach_parentGrp1_parentConstraint.tg[0].tpm"
		 -l on;
connectAttr "LegFoot__instance_1:blueprint_hip_joint.jo" "blueprint_hip_joint_geoAttach_parentGrp1_parentConstraint.tg[0].tjo"
		 -l on;
connectAttr "blueprint_hip_joint_geoAttach_parentGrp1_parentConstraint.w0" "blueprint_hip_joint_geoAttach_parentGrp1_parentConstraint.tg[0].tw"
		 -l on;
connectAttr "blueprint_hip_joint_geoAttach_parentGrp1.pim" "blueprint_hip_joint_geoAttach_parentGrp1_scaleConstraint.cpim"
		 -l on;
connectAttr "LegFoot__instance_1:blueprint_hip_joint.s" "blueprint_hip_joint_geoAttach_parentGrp1_scaleConstraint.tg[0].ts"
		 -l on;
connectAttr "LegFoot__instance_1:blueprint_hip_joint.pm" "blueprint_hip_joint_geoAttach_parentGrp1_scaleConstraint.tg[0].tpm"
		 -l on;
connectAttr "blueprint_hip_joint_geoAttach_parentGrp1_scaleConstraint.w0" "blueprint_hip_joint_geoAttach_parentGrp1_scaleConstraint.tg[0].tw"
		 -l on;
connectAttr "blueprint_hip_joint_geoAttach_scaleGrp1_scaleFactor.ox" "blueprint_hip_joint_geoAttach_scaleGrp1.sx"
		 -l on;
connectAttr "blueprint_knee_joint_geoAttach_parentGrp1_parentConstraint.ctx" "blueprint_knee_joint_geoAttach_parentGrp1.tx"
		 -l on;
connectAttr "blueprint_knee_joint_geoAttach_parentGrp1_parentConstraint.cty" "blueprint_knee_joint_geoAttach_parentGrp1.ty"
		 -l on;
connectAttr "blueprint_knee_joint_geoAttach_parentGrp1_parentConstraint.ctz" "blueprint_knee_joint_geoAttach_parentGrp1.tz"
		 -l on;
connectAttr "blueprint_knee_joint_geoAttach_parentGrp1_parentConstraint.crx" "blueprint_knee_joint_geoAttach_parentGrp1.rx"
		 -l on;
connectAttr "blueprint_knee_joint_geoAttach_parentGrp1_parentConstraint.cry" "blueprint_knee_joint_geoAttach_parentGrp1.ry"
		 -l on;
connectAttr "blueprint_knee_joint_geoAttach_parentGrp1_parentConstraint.crz" "blueprint_knee_joint_geoAttach_parentGrp1.rz"
		 -l on;
connectAttr "blueprint_knee_joint_geoAttach_parentGrp1_scaleConstraint.csx" "blueprint_knee_joint_geoAttach_parentGrp1.sx"
		 -l on;
connectAttr "blueprint_knee_joint_geoAttach_parentGrp1_scaleConstraint.csy" "blueprint_knee_joint_geoAttach_parentGrp1.sy"
		 -l on;
connectAttr "blueprint_knee_joint_geoAttach_parentGrp1_scaleConstraint.csz" "blueprint_knee_joint_geoAttach_parentGrp1.sz"
		 -l on;
connectAttr "blueprint_knee_joint_geoAttach_parentGrp1.ro" "blueprint_knee_joint_geoAttach_parentGrp1_parentConstraint.cro"
		 -l on;
connectAttr "blueprint_knee_joint_geoAttach_parentGrp1.pim" "blueprint_knee_joint_geoAttach_parentGrp1_parentConstraint.cpim"
		 -l on;
connectAttr "blueprint_knee_joint_geoAttach_parentGrp1.rp" "blueprint_knee_joint_geoAttach_parentGrp1_parentConstraint.crp"
		 -l on;
connectAttr "blueprint_knee_joint_geoAttach_parentGrp1.rpt" "blueprint_knee_joint_geoAttach_parentGrp1_parentConstraint.crt"
		 -l on;
connectAttr "LegFoot__instance_1:blueprint_knee_joint.t" "blueprint_knee_joint_geoAttach_parentGrp1_parentConstraint.tg[0].tt"
		 -l on;
connectAttr "LegFoot__instance_1:blueprint_knee_joint.rp" "blueprint_knee_joint_geoAttach_parentGrp1_parentConstraint.tg[0].trp"
		 -l on;
connectAttr "LegFoot__instance_1:blueprint_knee_joint.rpt" "blueprint_knee_joint_geoAttach_parentGrp1_parentConstraint.tg[0].trt"
		 -l on;
connectAttr "LegFoot__instance_1:blueprint_knee_joint.r" "blueprint_knee_joint_geoAttach_parentGrp1_parentConstraint.tg[0].tr"
		 -l on;
connectAttr "LegFoot__instance_1:blueprint_knee_joint.ro" "blueprint_knee_joint_geoAttach_parentGrp1_parentConstraint.tg[0].tro"
		 -l on;
connectAttr "LegFoot__instance_1:blueprint_knee_joint.s" "blueprint_knee_joint_geoAttach_parentGrp1_parentConstraint.tg[0].ts"
		 -l on;
connectAttr "LegFoot__instance_1:blueprint_knee_joint.pm" "blueprint_knee_joint_geoAttach_parentGrp1_parentConstraint.tg[0].tpm"
		 -l on;
connectAttr "LegFoot__instance_1:blueprint_knee_joint.jo" "blueprint_knee_joint_geoAttach_parentGrp1_parentConstraint.tg[0].tjo"
		 -l on;
connectAttr "blueprint_knee_joint_geoAttach_parentGrp1_parentConstraint.w0" "blueprint_knee_joint_geoAttach_parentGrp1_parentConstraint.tg[0].tw"
		 -l on;
connectAttr "blueprint_knee_joint_geoAttach_parentGrp1.pim" "blueprint_knee_joint_geoAttach_parentGrp1_scaleConstraint.cpim"
		 -l on;
connectAttr "LegFoot__instance_1:blueprint_knee_joint.s" "blueprint_knee_joint_geoAttach_parentGrp1_scaleConstraint.tg[0].ts"
		 -l on;
connectAttr "LegFoot__instance_1:blueprint_knee_joint.pm" "blueprint_knee_joint_geoAttach_parentGrp1_scaleConstraint.tg[0].tpm"
		 -l on;
connectAttr "blueprint_knee_joint_geoAttach_parentGrp1_scaleConstraint.w0" "blueprint_knee_joint_geoAttach_parentGrp1_scaleConstraint.tg[0].tw"
		 -l on;
connectAttr "blueprint_knee_joint_geoAttach_scaleGrp1_scaleFactor.ox" "blueprint_knee_joint_geoAttach_scaleGrp1.sx"
		 -l on;
connectAttr "blueprint_ankle_joint_geoAttach_parentGrp1_parentConstraint.ctx" "blueprint_ankle_joint_geoAttach_parentGrp1.tx"
		 -l on;
connectAttr "blueprint_ankle_joint_geoAttach_parentGrp1_parentConstraint.cty" "blueprint_ankle_joint_geoAttach_parentGrp1.ty"
		 -l on;
connectAttr "blueprint_ankle_joint_geoAttach_parentGrp1_parentConstraint.ctz" "blueprint_ankle_joint_geoAttach_parentGrp1.tz"
		 -l on;
connectAttr "blueprint_ankle_joint_geoAttach_parentGrp1_parentConstraint.crx" "blueprint_ankle_joint_geoAttach_parentGrp1.rx"
		 -l on;
connectAttr "blueprint_ankle_joint_geoAttach_parentGrp1_parentConstraint.cry" "blueprint_ankle_joint_geoAttach_parentGrp1.ry"
		 -l on;
connectAttr "blueprint_ankle_joint_geoAttach_parentGrp1_parentConstraint.crz" "blueprint_ankle_joint_geoAttach_parentGrp1.rz"
		 -l on;
connectAttr "blueprint_ankle_joint_geoAttach_parentGrp1_scaleConstraint.csx" "blueprint_ankle_joint_geoAttach_parentGrp1.sx"
		 -l on;
connectAttr "blueprint_ankle_joint_geoAttach_parentGrp1_scaleConstraint.csy" "blueprint_ankle_joint_geoAttach_parentGrp1.sy"
		 -l on;
connectAttr "blueprint_ankle_joint_geoAttach_parentGrp1_scaleConstraint.csz" "blueprint_ankle_joint_geoAttach_parentGrp1.sz"
		 -l on;
connectAttr "blueprint_ankle_joint_geoAttach_parentGrp1.ro" "blueprint_ankle_joint_geoAttach_parentGrp1_parentConstraint.cro"
		 -l on;
connectAttr "blueprint_ankle_joint_geoAttach_parentGrp1.pim" "blueprint_ankle_joint_geoAttach_parentGrp1_parentConstraint.cpim"
		 -l on;
connectAttr "blueprint_ankle_joint_geoAttach_parentGrp1.rp" "blueprint_ankle_joint_geoAttach_parentGrp1_parentConstraint.crp"
		 -l on;
connectAttr "blueprint_ankle_joint_geoAttach_parentGrp1.rpt" "blueprint_ankle_joint_geoAttach_parentGrp1_parentConstraint.crt"
		 -l on;
connectAttr "LegFoot__instance_1:blueprint_ankle_joint.t" "blueprint_ankle_joint_geoAttach_parentGrp1_parentConstraint.tg[0].tt"
		 -l on;
connectAttr "LegFoot__instance_1:blueprint_ankle_joint.rp" "blueprint_ankle_joint_geoAttach_parentGrp1_parentConstraint.tg[0].trp"
		 -l on;
connectAttr "LegFoot__instance_1:blueprint_ankle_joint.rpt" "blueprint_ankle_joint_geoAttach_parentGrp1_parentConstraint.tg[0].trt"
		 -l on;
connectAttr "LegFoot__instance_1:blueprint_ankle_joint.r" "blueprint_ankle_joint_geoAttach_parentGrp1_parentConstraint.tg[0].tr"
		 -l on;
connectAttr "LegFoot__instance_1:blueprint_ankle_joint.ro" "blueprint_ankle_joint_geoAttach_parentGrp1_parentConstraint.tg[0].tro"
		 -l on;
connectAttr "LegFoot__instance_1:blueprint_ankle_joint.s" "blueprint_ankle_joint_geoAttach_parentGrp1_parentConstraint.tg[0].ts"
		 -l on;
connectAttr "LegFoot__instance_1:blueprint_ankle_joint.pm" "blueprint_ankle_joint_geoAttach_parentGrp1_parentConstraint.tg[0].tpm"
		 -l on;
connectAttr "LegFoot__instance_1:blueprint_ankle_joint.jo" "blueprint_ankle_joint_geoAttach_parentGrp1_parentConstraint.tg[0].tjo"
		 -l on;
connectAttr "blueprint_ankle_joint_geoAttach_parentGrp1_parentConstraint.w0" "blueprint_ankle_joint_geoAttach_parentGrp1_parentConstraint.tg[0].tw"
		 -l on;
connectAttr "blueprint_ankle_joint_geoAttach_parentGrp1.pim" "blueprint_ankle_joint_geoAttach_parentGrp1_scaleConstraint.cpim"
		 -l on;
connectAttr "LegFoot__instance_1:blueprint_ankle_joint.s" "blueprint_ankle_joint_geoAttach_parentGrp1_scaleConstraint.tg[0].ts"
		 -l on;
connectAttr "LegFoot__instance_1:blueprint_ankle_joint.pm" "blueprint_ankle_joint_geoAttach_parentGrp1_scaleConstraint.tg[0].tpm"
		 -l on;
connectAttr "blueprint_ankle_joint_geoAttach_parentGrp1_scaleConstraint.w0" "blueprint_ankle_joint_geoAttach_parentGrp1_scaleConstraint.tg[0].tw"
		 -l on;
connectAttr "blueprint_ankle_joint_geoAttach_scaleGrp1_scaleFactor.ox" "blueprint_ankle_joint_geoAttach_scaleGrp1.sx"
		 -l on;
connectAttr "blueprint_ball_joint_geoAttach_parentGrp1_parentConstraint.ctx" "blueprint_ball_joint_geoAttach_parentGrp1.tx"
		 -l on;
connectAttr "blueprint_ball_joint_geoAttach_parentGrp1_parentConstraint.cty" "blueprint_ball_joint_geoAttach_parentGrp1.ty"
		 -l on;
connectAttr "blueprint_ball_joint_geoAttach_parentGrp1_parentConstraint.ctz" "blueprint_ball_joint_geoAttach_parentGrp1.tz"
		 -l on;
connectAttr "blueprint_ball_joint_geoAttach_parentGrp1_parentConstraint.crx" "blueprint_ball_joint_geoAttach_parentGrp1.rx"
		 -l on;
connectAttr "blueprint_ball_joint_geoAttach_parentGrp1_parentConstraint.cry" "blueprint_ball_joint_geoAttach_parentGrp1.ry"
		 -l on;
connectAttr "blueprint_ball_joint_geoAttach_parentGrp1_parentConstraint.crz" "blueprint_ball_joint_geoAttach_parentGrp1.rz"
		 -l on;
connectAttr "blueprint_ball_joint_geoAttach_parentGrp1_scaleConstraint.csx" "blueprint_ball_joint_geoAttach_parentGrp1.sx"
		 -l on;
connectAttr "blueprint_ball_joint_geoAttach_parentGrp1_scaleConstraint.csy" "blueprint_ball_joint_geoAttach_parentGrp1.sy"
		 -l on;
connectAttr "blueprint_ball_joint_geoAttach_parentGrp1_scaleConstraint.csz" "blueprint_ball_joint_geoAttach_parentGrp1.sz"
		 -l on;
connectAttr "blueprint_ball_joint_geoAttach_parentGrp1.ro" "blueprint_ball_joint_geoAttach_parentGrp1_parentConstraint.cro"
		 -l on;
connectAttr "blueprint_ball_joint_geoAttach_parentGrp1.pim" "blueprint_ball_joint_geoAttach_parentGrp1_parentConstraint.cpim"
		 -l on;
connectAttr "blueprint_ball_joint_geoAttach_parentGrp1.rp" "blueprint_ball_joint_geoAttach_parentGrp1_parentConstraint.crp"
		 -l on;
connectAttr "blueprint_ball_joint_geoAttach_parentGrp1.rpt" "blueprint_ball_joint_geoAttach_parentGrp1_parentConstraint.crt"
		 -l on;
connectAttr "LegFoot__instance_1:blueprint_ball_joint.t" "blueprint_ball_joint_geoAttach_parentGrp1_parentConstraint.tg[0].tt"
		 -l on;
connectAttr "LegFoot__instance_1:blueprint_ball_joint.rp" "blueprint_ball_joint_geoAttach_parentGrp1_parentConstraint.tg[0].trp"
		 -l on;
connectAttr "LegFoot__instance_1:blueprint_ball_joint.rpt" "blueprint_ball_joint_geoAttach_parentGrp1_parentConstraint.tg[0].trt"
		 -l on;
connectAttr "LegFoot__instance_1:blueprint_ball_joint.r" "blueprint_ball_joint_geoAttach_parentGrp1_parentConstraint.tg[0].tr"
		 -l on;
connectAttr "LegFoot__instance_1:blueprint_ball_joint.ro" "blueprint_ball_joint_geoAttach_parentGrp1_parentConstraint.tg[0].tro"
		 -l on;
connectAttr "LegFoot__instance_1:blueprint_ball_joint.s" "blueprint_ball_joint_geoAttach_parentGrp1_parentConstraint.tg[0].ts"
		 -l on;
connectAttr "LegFoot__instance_1:blueprint_ball_joint.pm" "blueprint_ball_joint_geoAttach_parentGrp1_parentConstraint.tg[0].tpm"
		 -l on;
connectAttr "LegFoot__instance_1:blueprint_ball_joint.jo" "blueprint_ball_joint_geoAttach_parentGrp1_parentConstraint.tg[0].tjo"
		 -l on;
connectAttr "blueprint_ball_joint_geoAttach_parentGrp1_parentConstraint.w0" "blueprint_ball_joint_geoAttach_parentGrp1_parentConstraint.tg[0].tw"
		 -l on;
connectAttr "blueprint_ball_joint_geoAttach_parentGrp1.pim" "blueprint_ball_joint_geoAttach_parentGrp1_scaleConstraint.cpim"
		 -l on;
connectAttr "LegFoot__instance_1:blueprint_ball_joint.s" "blueprint_ball_joint_geoAttach_parentGrp1_scaleConstraint.tg[0].ts"
		 -l on;
connectAttr "LegFoot__instance_1:blueprint_ball_joint.pm" "blueprint_ball_joint_geoAttach_parentGrp1_scaleConstraint.tg[0].tpm"
		 -l on;
connectAttr "blueprint_ball_joint_geoAttach_parentGrp1_scaleConstraint.w0" "blueprint_ball_joint_geoAttach_parentGrp1_scaleConstraint.tg[0].tw"
		 -l on;
connectAttr "blueprint_ball_joint_geoAttach_scaleGrp1_scaleFactor.ox" "blueprint_ball_joint_geoAttach_scaleGrp1.sx"
		 -l on;
connectAttr "character_grp.animationControlVisibility" "character_container.boc[0]"
		 -l on;
connectAttr "LegFoot__instance_1:module_container.boc[0]" "character_container.boc[1]"
		 -l on;
connectAttr "LegFoot__instance_1:module_container.boc[1]" "character_container.boc[2]"
		 -l on;
connectAttr "non_blueprint_container.boc[0]" "character_container.boc[3]" -l on;
connectAttr "hyperLayout3.msg" "character_container.hl" -l on;
connectAttr "non_blueprint_grp.display" "non_blueprint_container.boc[0]";
connectAttr "hyperLayout4.msg" "non_blueprint_container.hl" -l on;
connectAttr "character_grp.moduleMaintenanceVisibility" "reverse_moduleMaintenanceVisibility.ix"
		 -l on;
connectAttr "LegFoot__instance_1:module_container.msg" "hyperLayout3.hyp[0].dn";
connectAttr "character_grp.msg" "hyperLayout3.hyp[1].dn";
connectAttr "reverse_moduleMaintenanceVisibility.msg" "hyperLayout3.hyp[2].dn";
connectAttr "moduleVisibilityMultiply.msg" "hyperLayout3.hyp[3].dn";
connectAttr "non_blueprint_container.msg" "hyperLayout3.hyp[4].dn";
connectAttr "reverse_moduleMaintenanceVisibility.ox" "moduleVisibilityMultiply.i1x"
		 -l on;
connectAttr "character_grp.animationControlVisibility" "moduleVisibilityMultiply.i2x"
		 -l on;
connectAttr "LegFoot__instance_1:SETTINGS.activeModule" "LegFoot__instance_1:module_container.boc[0]"
		;
connectAttr "LegFoot__instance_1:SETTINGS.creationPoseWeight" "LegFoot__instance_1:module_container.boc[1]"
		;
connectAttr "hyperLayout2.msg" "LegFoot__instance_1:module_container.hl" -l on;
connectAttr "non_blueprint_grp.msg" "hyperLayout4.hyp[0].dn";
connectAttr "blueprint_hip_joint_geoAttach_parentGrp1.msg" "hyperLayout4.hyp[1].dn"
		;
connectAttr "blueprint_hip_joint_geoAttach_parentGrp1_parentConstraint.msg" "hyperLayout4.hyp[2].dn"
		;
connectAttr "blueprint_hip_joint_geoAttach_parentGrp1_scaleConstraint.msg" "hyperLayout4.hyp[3].dn"
		;
connectAttr "blueprint_hip_joint_geoAttach_scaleGrp1.msg" "hyperLayout4.hyp[4].dn"
		;
connectAttr "nurbsCylinder1.msg" "hyperLayout4.hyp[5].dn";
connectAttr "nurbsCylinderShape1.msg" "hyperLayout4.hyp[6].dn";
connectAttr "blueprint_knee_joint_geoAttach_parentGrp1.msg" "hyperLayout4.hyp[7].dn"
		;
connectAttr "blueprint_knee_joint_geoAttach_parentGrp1_parentConstraint.msg" "hyperLayout4.hyp[8].dn"
		;
connectAttr "blueprint_knee_joint_geoAttach_parentGrp1_scaleConstraint.msg" "hyperLayout4.hyp[9].dn"
		;
connectAttr "blueprint_knee_joint_geoAttach_scaleGrp1.msg" "hyperLayout4.hyp[10].dn"
		;
connectAttr "nurbsCylinder2.msg" "hyperLayout4.hyp[11].dn";
connectAttr "nurbsCylinderShape2.msg" "hyperLayout4.hyp[12].dn";
connectAttr "blueprint_ankle_joint_geoAttach_parentGrp1.msg" "hyperLayout4.hyp[13].dn"
		;
connectAttr "blueprint_ankle_joint_geoAttach_parentGrp1_parentConstraint.msg" "hyperLayout4.hyp[14].dn"
		;
connectAttr "blueprint_ankle_joint_geoAttach_parentGrp1_scaleConstraint.msg" "hyperLayout4.hyp[15].dn"
		;
connectAttr "blueprint_ankle_joint_geoAttach_scaleGrp1.msg" "hyperLayout4.hyp[16].dn"
		;
connectAttr "nurbsCylinder3.msg" "hyperLayout4.hyp[17].dn";
connectAttr "nurbsCylinderShape3.msg" "hyperLayout4.hyp[18].dn";
connectAttr "blueprint_ball_joint_geoAttach_parentGrp1.msg" "hyperLayout4.hyp[19].dn"
		;
connectAttr "blueprint_ball_joint_geoAttach_parentGrp1_parentConstraint.msg" "hyperLayout4.hyp[20].dn"
		;
connectAttr "blueprint_ball_joint_geoAttach_parentGrp1_scaleConstraint.msg" "hyperLayout4.hyp[21].dn"
		;
connectAttr "blueprint_ball_joint_geoAttach_scaleGrp1.msg" "hyperLayout4.hyp[22].dn"
		;
connectAttr "nurbsCylinder4.msg" "hyperLayout4.hyp[23].dn";
connectAttr "nurbsCylinderShape4.msg" "hyperLayout4.hyp[24].dn";
connectAttr "blueprint_ball_joint_geoAttach_scaleGrp1_scaleFactor.msg" "hyperLayout4.hyp[25].dn"
		;
connectAttr "non_blueprint_visibilityMultiply.msg" "hyperLayout4.hyp[26].dn";
connectAttr "blueprint_ankle_joint_geoAttach_scaleGrp1_scaleFactor.msg" "hyperLayout4.hyp[27].dn"
		;
connectAttr "blueprint_hip_joint_geoAttach_scaleGrp1_scaleFactor.msg" "hyperLayout4.hyp[28].dn"
		;
connectAttr "blueprint_knee_joint_geoAttach_scaleGrp1_scaleFactor.msg" "hyperLayout4.hyp[29].dn"
		;
connectAttr "LegFoot__instance_1:blueprint_toe_joint.tx" "blueprint_ball_joint_geoAttach_scaleGrp1_scaleFactor.i1x"
		 -l on;
connectAttr "reverse_moduleMaintenanceVisibility.ox" "non_blueprint_visibilityMultiply.i1x"
		 -l on;
connectAttr "non_blueprint_grp.display" "non_blueprint_visibilityMultiply.i2x" -l
		 on;
connectAttr "LegFoot__instance_1:blueprint_ball_joint.tx" "blueprint_ankle_joint_geoAttach_scaleGrp1_scaleFactor.i1x"
		 -l on;
connectAttr "LegFoot__instance_1:blueprint_knee_joint.tx" "blueprint_hip_joint_geoAttach_scaleGrp1_scaleFactor.i1x"
		 -l on;
connectAttr "LegFoot__instance_1:blueprint_ankle_joint.tx" "blueprint_knee_joint_geoAttach_scaleGrp1_scaleFactor.i1x"
		 -l on;
connectAttr "LegFoot__instance_1:blueprint_hip_joint_addRotations.o3" "unitConversion1.i"
		 -l on;
connectAttr "LegFoot__instance_1:blueprint_hip_joint_dummyRotationsMultiply.o" "LegFoot__instance_1:blueprint_hip_joint_addRotations.i3[0]"
		 -l on;
connectAttr "LegFoot__instance_1:blueprint_knee_joint_addRotations.o3" "unitConversion2.i"
		 -l on;
connectAttr "LegFoot__instance_1:blueprint_knee_joint_dummyRotationsMultiply.o" "LegFoot__instance_1:blueprint_knee_joint_addRotations.i3[0]"
		 -l on;
connectAttr "LegFoot__instance_1:blueprint_knee_joint_original_Tx.ox" "LegFoot__instance_1:blueprint_knee_joint_addTx.i1[0]"
		 -l on;
connectAttr "LegFoot__instance_1:SETTINGS.creationPoseWeight" "LegFoot__instance_1:blueprint_knee_joint_original_Tx.i2x"
		 -l on;
connectAttr "LegFoot__instance_1:blueprint_ankle_joint_addRotations.o3" "unitConversion3.i"
		 -l on;
connectAttr "LegFoot__instance_1:blueprint_ankle_joint_dummyRotationsMultiply.o" "LegFoot__instance_1:blueprint_ankle_joint_addRotations.i3[0]"
		 -l on;
connectAttr "LegFoot__instance_1:blueprint_ankle_joint_original_Tx.ox" "LegFoot__instance_1:blueprint_ankle_joint_addTx.i1[0]"
		 -l on;
connectAttr "LegFoot__instance_1:SETTINGS.creationPoseWeight" "LegFoot__instance_1:blueprint_ankle_joint_original_Tx.i2x"
		 -l on;
connectAttr "LegFoot__instance_1:blueprint_ball_joint_addRotations.o3" "unitConversion4.i"
		 -l on;
connectAttr "LegFoot__instance_1:blueprint_ball_joint_dummyRotationsMultiply.o" "LegFoot__instance_1:blueprint_ball_joint_addRotations.i3[0]"
		 -l on;
connectAttr "LegFoot__instance_1:blueprint_ball_joint_original_Tx.ox" "LegFoot__instance_1:blueprint_ball_joint_addTx.i1[0]"
		 -l on;
connectAttr "LegFoot__instance_1:SETTINGS.creationPoseWeight" "LegFoot__instance_1:blueprint_ball_joint_original_Tx.i2x"
		 -l on;
connectAttr "LegFoot__instance_1:blueprint_toe_joint_original_Tx.ox" "LegFoot__instance_1:blueprint_toe_joint_addTx.i1[0]"
		 -l on;
connectAttr "LegFoot__instance_1:SETTINGS.creationPoseWeight" "LegFoot__instance_1:blueprint_toe_joint_original_Tx.i2x"
		 -l on;
connectAttr "LegFoot__instance_1:module_grp.msg" "hyperLayout2.hyp[0].dn";
connectAttr "LegFoot__instance_1:HOOK_IN.msg" "hyperLayout2.hyp[1].dn";
connectAttr "LegFoot__instance_1:SETTINGS.msg" "hyperLayout2.hyp[2].dn";
connectAttr "LegFoot__instance_1:blueprint_container.msg" "hyperLayout2.hyp[3].dn"
		;
connectAttr "LegFoot__instance_1:SETTINGSShape.msg" "hyperLayout2.hyp[4].dn";
connectAttr "hyperLayout1.msg" "LegFoot__instance_1:blueprint_container.hl" -l on
		;
connectAttr "LegFoot__instance_1:blueprint_hip_joint_addRotations.msg" "hyperLayout1.hyp[0].dn"
		;
connectAttr "LegFoot__instance_1:blueprint_hip_joint_dummyRotationsMultiply.msg" "hyperLayout1.hyp[1].dn"
		;
connectAttr "LegFoot__instance_1:blueprint_knee_joint_addRotations.msg" "hyperLayout1.hyp[2].dn"
		;
connectAttr "LegFoot__instance_1:blueprint_knee_joint_dummyRotationsMultiply.msg" "hyperLayout1.hyp[3].dn"
		;
connectAttr "LegFoot__instance_1:blueprint_knee_joint_addTx.msg" "hyperLayout1.hyp[4].dn"
		;
connectAttr "LegFoot__instance_1:blueprint_knee_joint_original_Tx.msg" "hyperLayout1.hyp[5].dn"
		;
connectAttr "LegFoot__instance_1:blueprint_ankle_joint_addRotations.msg" "hyperLayout1.hyp[6].dn"
		;
connectAttr "LegFoot__instance_1:blueprint_ankle_joint_dummyRotationsMultiply.msg" "hyperLayout1.hyp[7].dn"
		;
connectAttr "LegFoot__instance_1:blueprint_ankle_joint_addTx.msg" "hyperLayout1.hyp[8].dn"
		;
connectAttr "LegFoot__instance_1:blueprint_ankle_joint_original_Tx.msg" "hyperLayout1.hyp[9].dn"
		;
connectAttr "LegFoot__instance_1:blueprint_ball_joint_addRotations.msg" "hyperLayout1.hyp[10].dn"
		;
connectAttr "LegFoot__instance_1:blueprint_ball_joint_dummyRotationsMultiply.msg" "hyperLayout1.hyp[11].dn"
		;
connectAttr "LegFoot__instance_1:blueprint_ball_joint_addTx.msg" "hyperLayout1.hyp[12].dn"
		;
connectAttr "LegFoot__instance_1:blueprint_ball_joint_original_Tx.msg" "hyperLayout1.hyp[13].dn"
		;
connectAttr "LegFoot__instance_1:blueprint_toe_joint_addTx.msg" "hyperLayout1.hyp[14].dn"
		;
connectAttr "LegFoot__instance_1:blueprint_toe_joint_original_Tx.msg" "hyperLayout1.hyp[15].dn"
		;
connectAttr "LegFoot__instance_1:blueprint_joints_grp.msg" "hyperLayout1.hyp[16].dn"
		;
connectAttr "LegFoot__instance_1:creationPose_joints_grp.msg" "hyperLayout1.hyp[17].dn"
		;
connectAttr "unitConversion1.msg" "hyperLayout1.hyp[18].dn";
connectAttr "unitConversion2.msg" "hyperLayout1.hyp[19].dn";
connectAttr "unitConversion3.msg" "hyperLayout1.hyp[20].dn";
connectAttr "unitConversion4.msg" "hyperLayout1.hyp[21].dn";
connectAttr "LegFoot__instance_1:blueprint_hip_joint.msg" "hyperLayout1.hyp[22].dn"
		;
connectAttr "LegFoot__instance_1:blueprint_knee_joint.msg" "hyperLayout1.hyp[23].dn"
		;
connectAttr "LegFoot__instance_1:blueprint_ankle_joint.msg" "hyperLayout1.hyp[24].dn"
		;
connectAttr "LegFoot__instance_1:blueprint_ball_joint.msg" "hyperLayout1.hyp[25].dn"
		;
connectAttr "LegFoot__instance_1:blueprint_toe_joint.msg" "hyperLayout1.hyp[26].dn"
		;
connectAttr "LegFoot__instance_1:creationPose_hip_joint.msg" "hyperLayout1.hyp[27].dn"
		;
connectAttr "LegFoot__instance_1:creationPose_knee_joint.msg" "hyperLayout1.hyp[28].dn"
		;
connectAttr "LegFoot__instance_1:creationPose_ankle_joint.msg" "hyperLayout1.hyp[29].dn"
		;
connectAttr "LegFoot__instance_1:creationPose_ball_joint.msg" "hyperLayout1.hyp[30].dn"
		;
connectAttr "LegFoot__instance_1:creationPose_toe_joint.msg" "hyperLayout1.hyp[31].dn"
		;
connectAttr "nurbsCylinderShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "nurbsCylinderShape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "nurbsCylinderShape3.iog" ":initialShadingGroup.dsm" -na;
connectAttr "nurbsCylinderShape4.iog" ":initialShadingGroup.dsm" -na;
connectAttr "LegFoot__instance_1:blueprint_hip_joint_addRotations.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "LegFoot__instance_1:blueprint_hip_joint_dummyRotationsMultiply.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "LegFoot__instance_1:blueprint_knee_joint_addRotations.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "LegFoot__instance_1:blueprint_knee_joint_dummyRotationsMultiply.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "LegFoot__instance_1:blueprint_knee_joint_addTx.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "LegFoot__instance_1:blueprint_knee_joint_original_Tx.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "LegFoot__instance_1:blueprint_ankle_joint_addRotations.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "LegFoot__instance_1:blueprint_ankle_joint_dummyRotationsMultiply.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "LegFoot__instance_1:blueprint_ankle_joint_addTx.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "LegFoot__instance_1:blueprint_ankle_joint_original_Tx.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "LegFoot__instance_1:blueprint_ball_joint_addRotations.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "LegFoot__instance_1:blueprint_ball_joint_dummyRotationsMultiply.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "LegFoot__instance_1:blueprint_ball_joint_addTx.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "LegFoot__instance_1:blueprint_ball_joint_original_Tx.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "LegFoot__instance_1:blueprint_toe_joint_addTx.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "LegFoot__instance_1:blueprint_toe_joint_original_Tx.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "blueprint_hip_joint_geoAttach_scaleGrp1_scaleFactor.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "blueprint_knee_joint_geoAttach_scaleGrp1_scaleFactor.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "blueprint_ankle_joint_geoAttach_scaleGrp1_scaleFactor.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "blueprint_ball_joint_geoAttach_scaleGrp1_scaleFactor.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "reverse_moduleMaintenanceVisibility.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "moduleVisibilityMultiply.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "non_blueprint_visibilityMultiply.msg" ":defaultRenderUtilityList1.u"
		 -na;
// End of legFoot.ma
