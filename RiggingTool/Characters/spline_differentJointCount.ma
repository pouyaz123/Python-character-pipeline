//Maya ASCII 2012 scene
//Name: spline_differentJointCount.ma
//Last modified: Tue, Aug 14, 2012 01:37:05 AM
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
createNode transform -n "Spline__instance_1:module_grp" -p "character_grp";
	addAttr -ci true -sn "hierarchicalScale" -ln "hierarchicalScale" -at "float";
lockNode -l 1 -lu 1;
createNode transform -n "Spline__instance_1:HOOK_IN" -p "Spline__instance_1:module_grp";
	setAttr ".s";
	setAttr ".sy";
lockNode -l 1 -lu 1;
createNode transform -n "Spline__instance_1:blueprint_joints_grp" -p "Spline__instance_1:HOOK_IN";
	addAttr -ci true -sn "controlModulesInstalled" -ln "controlModulesInstalled" -min 
		0 -max 1 -at "bool";
	setAttr ".ove" yes;
lockNode -l 1 -lu 1;
createNode joint -n "Spline__instance_1:blueprint_spline_0_joint" -p "Spline__instance_1:blueprint_joints_grp";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 0 90.000000000000014 ;
	setAttr ".ssc" no;
lockNode -l 1 -lu 1;
createNode joint -n "Spline__instance_1:blueprint_spline_1_joint" -p "Spline__instance_1:blueprint_spline_0_joint";
	setAttr ".t" -type "double3" 7.5 1.7763568394002505e-015 1.9721522630525295e-031 ;
	setAttr ".t";
	setAttr ".s";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
lockNode -l 1 -lu 1;
createNode joint -n "Spline__instance_1:blueprint_spline_2_joint" -p "Spline__instance_1:blueprint_spline_1_joint";
	setAttr ".t" -type "double3" 7.5 1.7763568394002505e-015 3.944304526105059e-031 ;
	setAttr ".t";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 0 90.000000000000014 ;
	setAttr ".ssc" no;
lockNode -l 1 -lu 1;
createNode transform -n "Spline__instance_1:creationPose_joints_grp" -p "Spline__instance_1:HOOK_IN";
lockNode -l 1 -lu 1;
createNode joint -n "Spline__instance_1:creationPose_spline_0_joint" -p "Spline__instance_1:creationPose_joints_grp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -9.6085558813499965 0 0 ;
	setAttr ".s";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 0 90.000000000000014 ;
	setAttr ".ssc" no;
lockNode -l 1 -lu 1;
createNode joint -n "Spline__instance_1:creationPose_spline_1_joint" -p "Spline__instance_1:creationPose_spline_0_joint";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 7.5000000000000018 1.7763568394002505e-015 1.9721522630525295e-031 ;
	setAttr ".s";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
lockNode -l 1 -lu 1;
createNode joint -n "Spline__instance_1:creationPose_spline_2_joint" -p "Spline__instance_1:creationPose_spline_1_joint";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 7.5000000000000018 1.7763568394002505e-015 3.944304526105059e-031 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 0 90.000000000000014 ;
	setAttr ".ssc" no;
lockNode -l 1 -lu 1;
createNode transform -n "Spline__instance_1:SETTINGS" -p "Spline__instance_1:module_grp";
	addAttr -ci true -sn "activeModule" -ln "activeModule" -min 0 -max 0 -en "None" 
		-at "enum";
	addAttr -ci true -sn "creationPoseWeight" -ln "creationPoseWeight" -dv 1 -at "float";
	setAttr ".v" no;
lockNode -l 1 -lu 1;
createNode locator -n "Spline__instance_1:SETTINGSShape" -p "Spline__instance_1:SETTINGS";
	setAttr -k off ".v";
lockNode -l 1 -lu 1;
createNode transform -n "Spline__instance_2:module_grp" -p "character_grp";
	addAttr -ci true -sn "hierarchicalScale" -ln "hierarchicalScale" -at "float";
lockNode -l 1 -lu 1;
createNode transform -n "Spline__instance_2:HOOK_IN" -p "Spline__instance_2:module_grp";
	setAttr ".s";
	setAttr ".sy";
lockNode -l 1 -lu 1;
createNode transform -n "Spline__instance_2:blueprint_joints_grp" -p "Spline__instance_2:HOOK_IN";
	addAttr -ci true -sn "controlModulesInstalled" -ln "controlModulesInstalled" -min 
		0 -max 1 -at "bool";
	setAttr ".ove" yes;
lockNode -l 1 -lu 1;
createNode joint -n "Spline__instance_2:blueprint_spline_0_joint" -p "Spline__instance_2:blueprint_joints_grp";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 0 90.000000000000014 ;
	setAttr ".ssc" no;
lockNode -l 1 -lu 1;
createNode joint -n "Spline__instance_2:blueprint_spline_1_joint" -p "Spline__instance_2:blueprint_spline_0_joint";
	setAttr ".t" -type "double3" 5 1.1102230246251569e-015 1.3596310734468915e-031 ;
	setAttr ".t";
	setAttr ".s";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
lockNode -l 1 -lu 1;
createNode joint -n "Spline__instance_2:blueprint_spline_2_joint" -p "Spline__instance_2:blueprint_spline_1_joint";
	setAttr ".t" -type "double3" 5 1.1102230246251565e-015 9.8607613152626498e-032 ;
	setAttr ".t";
	setAttr ".s";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
lockNode -l 1 -lu 1;
createNode joint -n "Spline__instance_2:blueprint_spline_3_joint" -p "Spline__instance_2:blueprint_spline_2_joint";
	setAttr ".t" -type "double3" 5 1.1102230246251569e-015 9.8607613152626476e-032 ;
	setAttr ".t";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 0 90.000000000000014 ;
	setAttr ".ssc" no;
lockNode -l 1 -lu 1;
createNode transform -n "Spline__instance_2:creationPose_joints_grp" -p "Spline__instance_2:HOOK_IN";
lockNode -l 1 -lu 1;
createNode joint -n "Spline__instance_2:creationPose_spline_0_joint" -p "Spline__instance_2:creationPose_joints_grp";
	setAttr ".v" no;
	setAttr ".s";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 0 90.000000000000014 ;
	setAttr ".ssc" no;
lockNode -l 1 -lu 1;
createNode joint -n "Spline__instance_2:creationPose_spline_1_joint" -p "Spline__instance_2:creationPose_spline_0_joint";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 5.0000000000000009 1.1102230246251569e-015 1.3596310734468915e-031 ;
	setAttr ".s";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
lockNode -l 1 -lu 1;
createNode joint -n "Spline__instance_2:creationPose_spline_2_joint" -p "Spline__instance_2:creationPose_spline_1_joint";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 5.0000000000000009 1.1102230246251565e-015 9.8607613152626498e-032 ;
	setAttr ".s";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
lockNode -l 1 -lu 1;
createNode joint -n "Spline__instance_2:creationPose_spline_3_joint" -p "Spline__instance_2:creationPose_spline_2_joint";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 5.0000000000000018 1.1102230246251569e-015 9.8607613152626476e-032 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 0 90.000000000000014 ;
	setAttr ".ssc" no;
lockNode -l 1 -lu 1;
createNode transform -n "Spline__instance_2:SETTINGS" -p "Spline__instance_2:module_grp";
	addAttr -ci true -sn "activeModule" -ln "activeModule" -min 0 -max 0 -en "None" 
		-at "enum";
	addAttr -ci true -sn "creationPoseWeight" -ln "creationPoseWeight" -dv 1 -at "float";
	setAttr ".v" no;
lockNode -l 1 -lu 1;
createNode locator -n "Spline__instance_2:SETTINGSShape" -p "Spline__instance_2:SETTINGS";
	setAttr -k off ".v";
lockNode -l 1 -lu 1;
createNode transform -n "Spline__instance_3:module_grp" -p "character_grp";
	addAttr -ci true -sn "hierarchicalScale" -ln "hierarchicalScale" -at "float";
lockNode -l 1 -lu 1;
createNode transform -n "Spline__instance_3:HOOK_IN" -p "Spline__instance_3:module_grp";
	setAttr ".s";
	setAttr ".sy";
lockNode -l 1 -lu 1;
createNode transform -n "Spline__instance_3:blueprint_joints_grp" -p "Spline__instance_3:HOOK_IN";
	addAttr -ci true -sn "controlModulesInstalled" -ln "controlModulesInstalled" -min 
		0 -max 1 -at "bool";
	setAttr ".ove" yes;
lockNode -l 1 -lu 1;
createNode joint -n "Spline__instance_3:blueprint_spline_0_joint" -p "Spline__instance_3:blueprint_joints_grp";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 0 90.000000000000014 ;
	setAttr ".ssc" no;
lockNode -l 1 -lu 1;
createNode joint -n "Spline__instance_3:blueprint_spline_1_joint" -p "Spline__instance_3:blueprint_spline_0_joint";
	setAttr ".t" -type "double3" 3.75 8.8817841970012523e-016 1.9721522630525295e-031 ;
	setAttr ".t";
	setAttr ".s";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
lockNode -l 1 -lu 1;
createNode joint -n "Spline__instance_3:blueprint_spline_2_joint" -p "Spline__instance_3:blueprint_spline_1_joint";
	setAttr ".t" -type "double3" 3.75 8.8817841970012523e-016 0 ;
	setAttr ".t";
	setAttr ".s";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
lockNode -l 1 -lu 1;
createNode joint -n "Spline__instance_3:blueprint_spline_3_joint" -p "Spline__instance_3:blueprint_spline_2_joint";
	setAttr ".t" -type "double3" 3.75 8.8817841970012523e-016 1.9721522630525295e-031 ;
	setAttr ".t";
	setAttr ".s";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
lockNode -l 1 -lu 1;
createNode joint -n "Spline__instance_3:blueprint_spline_4_joint" -p "Spline__instance_3:blueprint_spline_3_joint";
	setAttr ".t" -type "double3" 3.75 8.8817841970012523e-016 0 ;
	setAttr ".t";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 0 90.000000000000014 ;
	setAttr ".ssc" no;
lockNode -l 1 -lu 1;
createNode transform -n "Spline__instance_3:creationPose_joints_grp" -p "Spline__instance_3:HOOK_IN";
lockNode -l 1 -lu 1;
createNode joint -n "Spline__instance_3:creationPose_spline_0_joint" -p "Spline__instance_3:creationPose_joints_grp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 7.8309953661773548 0 0 ;
	setAttr ".s";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 0 90.000000000000014 ;
	setAttr ".ssc" no;
lockNode -l 1 -lu 1;
createNode joint -n "Spline__instance_3:creationPose_spline_1_joint" -p "Spline__instance_3:creationPose_spline_0_joint";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 3.7500000000000009 8.8817841970012523e-016 1.9721522630525295e-031 ;
	setAttr ".s";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
lockNode -l 1 -lu 1;
createNode joint -n "Spline__instance_3:creationPose_spline_2_joint" -p "Spline__instance_3:creationPose_spline_1_joint";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 3.7500000000000009 8.8817841970012523e-016 0 ;
	setAttr ".s";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
lockNode -l 1 -lu 1;
createNode joint -n "Spline__instance_3:creationPose_spline_3_joint" -p "Spline__instance_3:creationPose_spline_2_joint";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 3.7500000000000018 8.8817841970012523e-016 1.9721522630525295e-031 ;
	setAttr ".s";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
lockNode -l 1 -lu 1;
createNode joint -n "Spline__instance_3:creationPose_spline_4_joint" -p "Spline__instance_3:creationPose_spline_3_joint";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 3.75 8.8817841970012523e-016 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 0 90.000000000000014 ;
	setAttr ".ssc" no;
lockNode -l 1 -lu 1;
createNode transform -n "Spline__instance_3:SETTINGS" -p "Spline__instance_3:module_grp";
	addAttr -ci true -sn "activeModule" -ln "activeModule" -min 0 -max 0 -en "None" 
		-at "enum";
	addAttr -ci true -sn "creationPoseWeight" -ln "creationPoseWeight" -dv 1 -at "float";
	setAttr ".v" no;
lockNode -l 1 -lu 1;
createNode locator -n "Spline__instance_3:SETTINGSShape" -p "Spline__instance_3:SETTINGS";
	setAttr -k off ".v";
lockNode -l 1 -lu 1;
createNode transform -n "Spline__instance_4:module_grp" -p "character_grp";
	addAttr -ci true -sn "hierarchicalScale" -ln "hierarchicalScale" -at "float";
lockNode -l 1 -lu 1;
createNode transform -n "Spline__instance_4:HOOK_IN" -p "Spline__instance_4:module_grp";
	setAttr ".s";
	setAttr ".sy";
lockNode -l 1 -lu 1;
createNode transform -n "Spline__instance_4:blueprint_joints_grp" -p "Spline__instance_4:HOOK_IN";
	addAttr -ci true -sn "controlModulesInstalled" -ln "controlModulesInstalled" -min 
		0 -max 1 -at "bool";
	setAttr ".ove" yes;
lockNode -l 1 -lu 1;
createNode joint -n "Spline__instance_4:blueprint_spline_0_joint" -p "Spline__instance_4:blueprint_joints_grp";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 0 90.000000000000014 ;
	setAttr ".ssc" no;
lockNode -l 1 -lu 1;
createNode joint -n "Spline__instance_4:blueprint_spline_1_joint" -p "Spline__instance_4:blueprint_spline_0_joint";
	setAttr ".t";
	setAttr ".s";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
lockNode -l 1 -lu 1;
createNode joint -n "Spline__instance_4:blueprint_spline_2_joint" -p "Spline__instance_4:blueprint_spline_1_joint";
	setAttr ".t" -type "double3" 3 1.7763568394002505e-015 0 ;
	setAttr ".t";
	setAttr ".s";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
lockNode -l 1 -lu 1;
createNode joint -n "Spline__instance_4:blueprint_spline_3_joint" -p "Spline__instance_4:blueprint_spline_2_joint";
	setAttr ".t" -type "double3" 3 -1.7763568394002505e-015 7.8886090522101181e-031 ;
	setAttr ".t";
	setAttr ".s";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
lockNode -l 1 -lu 1;
createNode joint -n "Spline__instance_4:blueprint_spline_4_joint" -p "Spline__instance_4:blueprint_spline_3_joint";
	setAttr ".t" -type "double3" 3 1.7763568394002505e-015 -7.8886090522101181e-031 ;
	setAttr ".t";
	setAttr ".s";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
lockNode -l 1 -lu 1;
createNode joint -n "Spline__instance_4:blueprint_spline_5_joint" -p "Spline__instance_4:blueprint_spline_4_joint";
	setAttr ".t" -type "double3" 3 -1.7763568394002505e-015 3.944304526105059e-031 ;
	setAttr ".t";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 0 90.000000000000014 ;
	setAttr ".ssc" no;
lockNode -l 1 -lu 1;
createNode transform -n "Spline__instance_4:creationPose_joints_grp" -p "Spline__instance_4:HOOK_IN";
lockNode -l 1 -lu 1;
createNode joint -n "Spline__instance_4:creationPose_spline_0_joint" -p "Spline__instance_4:creationPose_joints_grp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 15.505777517844317 0 0 ;
	setAttr ".s";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 0 90.000000000000014 ;
	setAttr ".ssc" no;
lockNode -l 1 -lu 1;
createNode joint -n "Spline__instance_4:creationPose_spline_1_joint" -p "Spline__instance_4:creationPose_spline_0_joint";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 3.0000000000000009 0 0 ;
	setAttr ".s";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
lockNode -l 1 -lu 1;
createNode joint -n "Spline__instance_4:creationPose_spline_2_joint" -p "Spline__instance_4:creationPose_spline_1_joint";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 3.0000000000000009 1.7763568394002505e-015 0 ;
	setAttr ".s";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
lockNode -l 1 -lu 1;
createNode joint -n "Spline__instance_4:creationPose_spline_3_joint" -p "Spline__instance_4:creationPose_spline_2_joint";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 3.0000000000000018 -1.7763568394002505e-015 7.8886090522101181e-031 ;
	setAttr ".s";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
lockNode -l 1 -lu 1;
createNode joint -n "Spline__instance_4:creationPose_spline_4_joint" -p "Spline__instance_4:creationPose_spline_3_joint";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 3 1.7763568394002505e-015 -7.8886090522101181e-031 ;
	setAttr ".s";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
lockNode -l 1 -lu 1;
createNode joint -n "Spline__instance_4:creationPose_spline_5_joint" -p "Spline__instance_4:creationPose_spline_4_joint";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 3 -1.7763568394002505e-015 3.944304526105059e-031 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 0 90.000000000000014 ;
	setAttr ".ssc" no;
lockNode -l 1 -lu 1;
createNode transform -n "Spline__instance_4:SETTINGS" -p "Spline__instance_4:module_grp";
	addAttr -ci true -sn "activeModule" -ln "activeModule" -min 0 -max 0 -en "None" 
		-at "enum";
	addAttr -ci true -sn "creationPoseWeight" -ln "creationPoseWeight" -dv 1 -at "float";
	setAttr ".v" no;
lockNode -l 1 -lu 1;
createNode locator -n "Spline__instance_4:SETTINGSShape" -p "Spline__instance_4:SETTINGS";
	setAttr -k off ".v";
lockNode -l 1 -lu 1;
createNode container -n "character_container";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr ".isc" yes;
	setAttr -s 9 ".boc";
	setAttr -s 8 ".ish[1:8]" yes yes yes yes yes yes yes yes;
	setAttr ".ctor" -type "string" "cat";
	setAttr ".cdat" -type "string" "2012/08/14 01:37:05";
	setAttr ".aal" -type "attributeAlias" {"animControlVis","borderConnections[0]","instance_1_activeModule"
		,"borderConnections[1]","instance_1_creationPoseWeight","borderConnections[2]","instance_2_activeModule"
		,"borderConnections[3]","instance_2_creationPoseWeight","borderConnections[4]","instance_3_activeModule"
		,"borderConnections[5]","instance_3_creationPoseWeight","borderConnections[6]","instance_4_activeModule"
		,"borderConnections[7]","instance_4_creationPoseWeight","borderConnections[8]"} ;
lockNode -l 1 -lu 1;
createNode container -n "Spline__instance_4:module_container";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr ".isc" yes;
	setAttr -s 2 ".boc";
	setAttr ".ctor" -type "string" "cat";
	setAttr ".cdat" -type "string" "2012/08/14 01:36:09";
	setAttr ".aal" -type "attributeAlias" {"activeModule","borderConnections[0]","creationPoseWeight"
		,"borderConnections[1]"} ;
lockNode -l 1 -lu 1;
createNode hyperLayout -n "hyperLayout21";
	setAttr ".ihi" 0;
	setAttr -s 7 ".hyp";
createNode reverse -n "reverse_moduleMaintenanceVisibility";
	setAttr ".i";
lockNode -l 1 -lu 1;
createNode container -n "Spline__instance_1:module_container";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr ".isc" yes;
	setAttr -s 2 ".boc";
	setAttr ".ctor" -type "string" "cat";
	setAttr ".cdat" -type "string" "2012/08/14 01:36:09";
	setAttr ".aal" -type "attributeAlias" {"activeModule","borderConnections[0]","creationPoseWeight"
		,"borderConnections[1]"} ;
lockNode -l 1 -lu 1;
createNode container -n "Spline__instance_2:module_container";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr ".isc" yes;
	setAttr -s 2 ".boc";
	setAttr ".ctor" -type "string" "cat";
	setAttr ".cdat" -type "string" "2012/08/14 01:36:09";
	setAttr ".aal" -type "attributeAlias" {"activeModule","borderConnections[0]","creationPoseWeight"
		,"borderConnections[1]"} ;
lockNode -l 1 -lu 1;
createNode container -n "Spline__instance_3:module_container";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr ".isc" yes;
	setAttr -s 2 ".boc";
	setAttr ".ctor" -type "string" "cat";
	setAttr ".cdat" -type "string" "2012/08/14 01:36:09";
	setAttr ".aal" -type "attributeAlias" {"activeModule","borderConnections[0]","creationPoseWeight"
		,"borderConnections[1]"} ;
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "moduleVisibilityMultiply";
	setAttr ".i1";
	setAttr ".i2";
lockNode -l 1 -lu 1;
createNode hyperLayout -n "hyperLayout20";
	setAttr ".ihi" 0;
	setAttr -s 5 ".hyp";
createNode container -n "Spline__instance_4:blueprint_container";
	setAttr ".isc" yes;
	setAttr ".ctor" -type "string" "cat";
	setAttr ".cdat" -type "string" "2012/08/14 01:36:09";
lockNode -l 1 -lu 1;
createNode unitConversion -n "unitConversion10";
	setAttr ".cf" 0.017453292519943295;
lockNode -l 1 -lu 1;
createNode unitConversion -n "unitConversion11";
	setAttr ".cf" 0.017453292519943295;
lockNode -l 1 -lu 1;
createNode unitConversion -n "unitConversion12";
	setAttr ".cf" 0.017453292519943295;
lockNode -l 1 -lu 1;
createNode unitConversion -n "unitConversion13";
	setAttr ".cf" 0.017453292519943295;
lockNode -l 1 -lu 1;
createNode unitConversion -n "unitConversion14";
	setAttr ".cf" 0.017453292519943295;
lockNode -l 1 -lu 1;
createNode hyperLayout -n "hyperLayout19";
	setAttr ".ihi" 0;
	setAttr -s 43 ".hyp";
createNode plusMinusAverage -n "Spline__instance_4:blueprint_spline_0_joint_addRotations";
	setAttr ".i3";
	setAttr ".i3";
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "Spline__instance_4:blueprint_spline_0_joint_dummyRotationsMultiply";
lockNode -l 1 -lu 1;
createNode plusMinusAverage -n "Spline__instance_4:blueprint_spline_0_joint_addTranslate";
	setAttr ".i3";
	setAttr ".i3";
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "Spline__instance_4:blueprint_spline_0_joint_original_Translate";
	setAttr ".i1" -type "float3" 15.505777 0 0 ;
	setAttr ".i2";
lockNode -l 1 -lu 1;
createNode plusMinusAverage -n "Spline__instance_4:blueprint_spline_0_joint_addScale";
	setAttr ".i3";
	setAttr ".i3";
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "Spline__instance_4:blueprint_spline_0_joint_original_scale";
	setAttr ".i1" -type "float3" 1 1 1 ;
	setAttr ".i2";
lockNode -l 1 -lu 1;
createNode plusMinusAverage -n "Spline__instance_4:blueprint_spline_1_joint_addRotations";
	setAttr ".i3";
	setAttr ".i3";
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "Spline__instance_4:blueprint_spline_1_joint_dummyRotationsMultiply";
lockNode -l 1 -lu 1;
createNode plusMinusAverage -n "Spline__instance_4:blueprint_spline_1_joint_addTx";
	setAttr ".i1";
	setAttr ".i1";
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "Spline__instance_4:blueprint_spline_1_joint_original_Tx";
	setAttr ".i1" -type "float3" 3 0 0 ;
	setAttr ".i1";
	setAttr -l on ".i1x";
	setAttr ".i2";
lockNode -l 1 -lu 1;
createNode plusMinusAverage -n "Spline__instance_4:blueprint_spline_2_joint_addRotations";
	setAttr ".i3";
	setAttr ".i3";
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "Spline__instance_4:blueprint_spline_2_joint_dummyRotationsMultiply";
lockNode -l 1 -lu 1;
createNode plusMinusAverage -n "Spline__instance_4:blueprint_spline_2_joint_addTx";
	setAttr ".i1";
	setAttr ".i1";
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "Spline__instance_4:blueprint_spline_2_joint_original_Tx";
	setAttr ".i1" -type "float3" 3 0 0 ;
	setAttr ".i1";
	setAttr -l on ".i1x";
	setAttr ".i2";
lockNode -l 1 -lu 1;
createNode plusMinusAverage -n "Spline__instance_4:blueprint_spline_3_joint_addRotations";
	setAttr ".i3";
	setAttr ".i3";
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "Spline__instance_4:blueprint_spline_3_joint_dummyRotationsMultiply";
lockNode -l 1 -lu 1;
createNode plusMinusAverage -n "Spline__instance_4:blueprint_spline_3_joint_addTx";
	setAttr ".i1";
	setAttr ".i1";
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "Spline__instance_4:blueprint_spline_3_joint_original_Tx";
	setAttr ".i1" -type "float3" 3 0 0 ;
	setAttr ".i1";
	setAttr -l on ".i1x";
	setAttr ".i2";
lockNode -l 1 -lu 1;
createNode plusMinusAverage -n "Spline__instance_4:blueprint_spline_4_joint_addRotations";
	setAttr ".i3";
	setAttr ".i3";
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "Spline__instance_4:blueprint_spline_4_joint_dummyRotationsMultiply";
lockNode -l 1 -lu 1;
createNode plusMinusAverage -n "Spline__instance_4:blueprint_spline_4_joint_addTx";
	setAttr ".i1";
	setAttr ".i1";
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "Spline__instance_4:blueprint_spline_4_joint_original_Tx";
	setAttr ".i1" -type "float3" 3 0 0 ;
	setAttr ".i1";
	setAttr -l on ".i1x";
	setAttr ".i2";
lockNode -l 1 -lu 1;
createNode plusMinusAverage -n "Spline__instance_4:blueprint_spline_5_joint_addTx";
	setAttr ".i1";
	setAttr ".i1";
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "Spline__instance_4:blueprint_spline_5_joint_original_Tx";
	setAttr ".i1" -type "float3" 3 0 0 ;
	setAttr ".i1";
	setAttr -l on ".i1x";
	setAttr ".i2";
lockNode -l 1 -lu 1;
createNode hyperLayout -n "hyperLayout14";
	setAttr ".ihi" 0;
	setAttr -s 5 ".hyp";
createNode container -n "Spline__instance_1:blueprint_container";
	setAttr ".isc" yes;
	setAttr ".ctor" -type "string" "cat";
	setAttr ".cdat" -type "string" "2012/08/14 01:36:09";
lockNode -l 1 -lu 1;
createNode plusMinusAverage -n "Spline__instance_1:blueprint_spline_0_joint_addRotations";
	setAttr ".i3";
	setAttr ".i3";
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "Spline__instance_1:blueprint_spline_1_joint_original_Tx";
	setAttr ".i1" -type "float3" 7.5 0 0 ;
	setAttr ".i1";
	setAttr -l on ".i1x";
	setAttr ".i2";
lockNode -l 1 -lu 1;
createNode plusMinusAverage -n "Spline__instance_1:blueprint_spline_2_joint_addTx";
	setAttr ".i1";
	setAttr ".i1";
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "Spline__instance_1:blueprint_spline_2_joint_original_Tx";
	setAttr ".i1" -type "float3" 7.5 0 0 ;
	setAttr ".i1";
	setAttr -l on ".i1x";
	setAttr ".i2";
lockNode -l 1 -lu 1;
createNode unitConversion -n "unitConversion1";
	setAttr ".cf" 0.017453292519943295;
lockNode -l 1 -lu 1;
createNode unitConversion -n "unitConversion2";
	setAttr ".cf" 0.017453292519943295;
lockNode -l 1 -lu 1;
createNode plusMinusAverage -n "Spline__instance_1:blueprint_spline_1_joint_addRotations";
	setAttr ".i3";
	setAttr ".i3";
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "Spline__instance_1:blueprint_spline_0_joint_original_scale";
	setAttr ".i1" -type "float3" 1 1 1 ;
	setAttr ".i2";
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "Spline__instance_1:blueprint_spline_1_joint_dummyRotationsMultiply";
lockNode -l 1 -lu 1;
createNode plusMinusAverage -n "Spline__instance_1:blueprint_spline_1_joint_addTx";
	setAttr ".i1";
	setAttr ".i1";
lockNode -l 1 -lu 1;
createNode plusMinusAverage -n "Spline__instance_1:blueprint_spline_0_joint_addTranslate";
	setAttr ".i3";
	setAttr ".i3";
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "Spline__instance_1:blueprint_spline_0_joint_original_Translate";
	setAttr ".i1" -type "float3" -9.6085558 0 0 ;
	setAttr ".i2";
lockNode -l 1 -lu 1;
createNode plusMinusAverage -n "Spline__instance_1:blueprint_spline_0_joint_addScale";
	setAttr ".i3";
	setAttr ".i3";
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "Spline__instance_1:blueprint_spline_0_joint_dummyRotationsMultiply";
lockNode -l 1 -lu 1;
createNode hyperLayout -n "hyperLayout13";
	setAttr ".ihi" 0;
	setAttr -s 22 ".hyp";
createNode hyperLayout -n "hyperLayout16";
	setAttr ".ihi" 0;
	setAttr -s 5 ".hyp";
createNode container -n "Spline__instance_2:blueprint_container";
	setAttr ".isc" yes;
	setAttr ".ctor" -type "string" "cat";
	setAttr ".cdat" -type "string" "2012/08/14 01:36:09";
lockNode -l 1 -lu 1;
createNode plusMinusAverage -n "Spline__instance_2:blueprint_spline_0_joint_addRotations";
	setAttr ".i3";
	setAttr ".i3";
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "Spline__instance_2:blueprint_spline_0_joint_dummyRotationsMultiply";
lockNode -l 1 -lu 1;
createNode plusMinusAverage -n "Spline__instance_2:blueprint_spline_0_joint_addTranslate";
	setAttr ".i3";
	setAttr ".i3";
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "Spline__instance_2:blueprint_spline_0_joint_original_Translate";
	setAttr ".i2";
lockNode -l 1 -lu 1;
createNode plusMinusAverage -n "Spline__instance_2:blueprint_spline_0_joint_addScale";
	setAttr ".i3";
	setAttr ".i3";
lockNode -l 1 -lu 1;
createNode unitConversion -n "unitConversion3";
	setAttr ".cf" 0.017453292519943295;
lockNode -l 1 -lu 1;
createNode unitConversion -n "unitConversion4";
	setAttr ".cf" 0.017453292519943295;
lockNode -l 1 -lu 1;
createNode unitConversion -n "unitConversion5";
	setAttr ".cf" 0.017453292519943295;
lockNode -l 1 -lu 1;
createNode hyperLayout -n "hyperLayout15";
	setAttr ".ihi" 0;
	setAttr -s 29 ".hyp";
createNode multiplyDivide -n "Spline__instance_2:blueprint_spline_0_joint_original_scale";
	setAttr ".i1" -type "float3" 1 1 1 ;
	setAttr ".i2";
lockNode -l 1 -lu 1;
createNode plusMinusAverage -n "Spline__instance_2:blueprint_spline_1_joint_addRotations";
	setAttr ".i3";
	setAttr ".i3";
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "Spline__instance_2:blueprint_spline_1_joint_dummyRotationsMultiply";
lockNode -l 1 -lu 1;
createNode plusMinusAverage -n "Spline__instance_2:blueprint_spline_1_joint_addTx";
	setAttr ".i1";
	setAttr ".i1";
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "Spline__instance_2:blueprint_spline_1_joint_original_Tx";
	setAttr ".i1" -type "float3" 5 0 0 ;
	setAttr ".i1";
	setAttr -l on ".i1x";
	setAttr ".i2";
lockNode -l 1 -lu 1;
createNode plusMinusAverage -n "Spline__instance_2:blueprint_spline_2_joint_addRotations";
	setAttr ".i3";
	setAttr ".i3";
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "Spline__instance_2:blueprint_spline_2_joint_dummyRotationsMultiply";
lockNode -l 1 -lu 1;
createNode plusMinusAverage -n "Spline__instance_2:blueprint_spline_2_joint_addTx";
	setAttr ".i1";
	setAttr ".i1";
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "Spline__instance_2:blueprint_spline_2_joint_original_Tx";
	setAttr ".i1" -type "float3" 5 0 0 ;
	setAttr ".i1";
	setAttr -l on ".i1x";
	setAttr ".i2";
lockNode -l 1 -lu 1;
createNode plusMinusAverage -n "Spline__instance_2:blueprint_spline_3_joint_addTx";
	setAttr ".i1";
	setAttr ".i1";
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "Spline__instance_2:blueprint_spline_3_joint_original_Tx";
	setAttr ".i1" -type "float3" 5 0 0 ;
	setAttr ".i1";
	setAttr -l on ".i1x";
	setAttr ".i2";
lockNode -l 1 -lu 1;
createNode hyperLayout -n "hyperLayout18";
	setAttr ".ihi" 0;
	setAttr -s 5 ".hyp";
createNode container -n "Spline__instance_3:blueprint_container";
	setAttr ".isc" yes;
	setAttr ".ctor" -type "string" "cat";
	setAttr ".cdat" -type "string" "2012/08/14 01:36:09";
lockNode -l 1 -lu 1;
createNode unitConversion -n "unitConversion6";
	setAttr ".cf" 0.017453292519943295;
lockNode -l 1 -lu 1;
createNode unitConversion -n "unitConversion7";
	setAttr ".cf" 0.017453292519943295;
lockNode -l 1 -lu 1;
createNode unitConversion -n "unitConversion8";
	setAttr ".cf" 0.017453292519943295;
lockNode -l 1 -lu 1;
createNode unitConversion -n "unitConversion9";
	setAttr ".cf" 0.017453292519943295;
lockNode -l 1 -lu 1;
createNode hyperLayout -n "hyperLayout17";
	setAttr ".ihi" 0;
	setAttr -s 36 ".hyp";
createNode plusMinusAverage -n "Spline__instance_3:blueprint_spline_0_joint_addRotations";
	setAttr ".i3";
	setAttr ".i3";
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "Spline__instance_3:blueprint_spline_0_joint_dummyRotationsMultiply";
lockNode -l 1 -lu 1;
createNode plusMinusAverage -n "Spline__instance_3:blueprint_spline_0_joint_addTranslate";
	setAttr ".i3";
	setAttr ".i3";
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "Spline__instance_3:blueprint_spline_0_joint_original_Translate";
	setAttr ".i1" -type "float3" 7.8309956 0 0 ;
	setAttr ".i2";
lockNode -l 1 -lu 1;
createNode plusMinusAverage -n "Spline__instance_3:blueprint_spline_0_joint_addScale";
	setAttr ".i3";
	setAttr ".i3";
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "Spline__instance_3:blueprint_spline_0_joint_original_scale";
	setAttr ".i1" -type "float3" 1 1 1 ;
	setAttr ".i2";
lockNode -l 1 -lu 1;
createNode plusMinusAverage -n "Spline__instance_3:blueprint_spline_1_joint_addRotations";
	setAttr ".i3";
	setAttr ".i3";
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "Spline__instance_3:blueprint_spline_1_joint_dummyRotationsMultiply";
lockNode -l 1 -lu 1;
createNode plusMinusAverage -n "Spline__instance_3:blueprint_spline_1_joint_addTx";
	setAttr ".i1";
	setAttr ".i1";
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "Spline__instance_3:blueprint_spline_1_joint_original_Tx";
	setAttr ".i1" -type "float3" 3.75 0 0 ;
	setAttr ".i1";
	setAttr -l on ".i1x";
	setAttr ".i2";
lockNode -l 1 -lu 1;
createNode plusMinusAverage -n "Spline__instance_3:blueprint_spline_2_joint_addRotations";
	setAttr ".i3";
	setAttr ".i3";
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "Spline__instance_3:blueprint_spline_2_joint_dummyRotationsMultiply";
lockNode -l 1 -lu 1;
createNode plusMinusAverage -n "Spline__instance_3:blueprint_spline_2_joint_addTx";
	setAttr ".i1";
	setAttr ".i1";
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "Spline__instance_3:blueprint_spline_2_joint_original_Tx";
	setAttr ".i1" -type "float3" 3.75 0 0 ;
	setAttr ".i1";
	setAttr -l on ".i1x";
	setAttr ".i2";
lockNode -l 1 -lu 1;
createNode plusMinusAverage -n "Spline__instance_3:blueprint_spline_3_joint_addRotations";
	setAttr ".i3";
	setAttr ".i3";
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "Spline__instance_3:blueprint_spline_3_joint_dummyRotationsMultiply";
lockNode -l 1 -lu 1;
createNode plusMinusAverage -n "Spline__instance_3:blueprint_spline_3_joint_addTx";
	setAttr ".i1";
	setAttr ".i1";
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "Spline__instance_3:blueprint_spline_3_joint_original_Tx";
	setAttr ".i1" -type "float3" 3.75 0 0 ;
	setAttr ".i1";
	setAttr -l on ".i1x";
	setAttr ".i2";
lockNode -l 1 -lu 1;
createNode plusMinusAverage -n "Spline__instance_3:blueprint_spline_4_joint_addTx";
	setAttr ".i1";
	setAttr ".i1";
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "Spline__instance_3:blueprint_spline_4_joint_original_Tx";
	setAttr ".i1" -type "float3" 3.75 0 0 ;
	setAttr ".i1";
	setAttr -l on ".i1x";
	setAttr ".i2";
lockNode -l 1 -lu 1;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultShaderList1;
	setAttr -s 2 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 74 ".u";
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
connectAttr "Spline__instance_1:HOOK_IN.sy" "Spline__instance_1:module_grp.hierarchicalScale"
		 -l on;
connectAttr "character_grp.moduleMaintenanceVisibility" "Spline__instance_1:blueprint_joints_grp.v"
		 -l on;
connectAttr "Spline__instance_1:blueprint_spline_0_joint_addScale.o3" "Spline__instance_1:blueprint_spline_0_joint.s"
		 -l on;
connectAttr "unitConversion1.o" "Spline__instance_1:blueprint_spline_0_joint.r" 
		-l on;
connectAttr "Spline__instance_1:blueprint_spline_0_joint_addTranslate.o3" "Spline__instance_1:blueprint_spline_0_joint.t"
		 -l on;
connectAttr "Spline__instance_1:blueprint_spline_0_joint.s" "Spline__instance_1:blueprint_spline_1_joint.is"
		 -l on;
connectAttr "unitConversion2.o" "Spline__instance_1:blueprint_spline_1_joint.r" 
		-l on;
connectAttr "Spline__instance_1:blueprint_spline_1_joint_addTx.o1" "Spline__instance_1:blueprint_spline_1_joint.tx"
		 -l on;
connectAttr "Spline__instance_1:blueprint_spline_1_joint.s" "Spline__instance_1:blueprint_spline_2_joint.is"
		 -l on;
connectAttr "Spline__instance_1:blueprint_spline_2_joint_addTx.o1" "Spline__instance_1:blueprint_spline_2_joint.tx"
		 -l on;
connectAttr "Spline__instance_1:creationPose_spline_0_joint.s" "Spline__instance_1:creationPose_spline_1_joint.is"
		 -l on;
connectAttr "Spline__instance_1:creationPose_spline_1_joint.s" "Spline__instance_1:creationPose_spline_2_joint.is"
		 -l on;
connectAttr "Spline__instance_2:HOOK_IN.sy" "Spline__instance_2:module_grp.hierarchicalScale"
		 -l on;
connectAttr "character_grp.moduleMaintenanceVisibility" "Spline__instance_2:blueprint_joints_grp.v"
		 -l on;
connectAttr "Spline__instance_2:blueprint_spline_0_joint_addScale.o3" "Spline__instance_2:blueprint_spline_0_joint.s"
		 -l on;
connectAttr "unitConversion3.o" "Spline__instance_2:blueprint_spline_0_joint.r" 
		-l on;
connectAttr "Spline__instance_2:blueprint_spline_0_joint_addTranslate.o3" "Spline__instance_2:blueprint_spline_0_joint.t"
		 -l on;
connectAttr "Spline__instance_2:blueprint_spline_0_joint.s" "Spline__instance_2:blueprint_spline_1_joint.is"
		 -l on;
connectAttr "unitConversion4.o" "Spline__instance_2:blueprint_spline_1_joint.r" 
		-l on;
connectAttr "Spline__instance_2:blueprint_spline_1_joint_addTx.o1" "Spline__instance_2:blueprint_spline_1_joint.tx"
		 -l on;
connectAttr "Spline__instance_2:blueprint_spline_1_joint.s" "Spline__instance_2:blueprint_spline_2_joint.is"
		 -l on;
connectAttr "unitConversion5.o" "Spline__instance_2:blueprint_spline_2_joint.r" 
		-l on;
connectAttr "Spline__instance_2:blueprint_spline_2_joint_addTx.o1" "Spline__instance_2:blueprint_spline_2_joint.tx"
		 -l on;
connectAttr "Spline__instance_2:blueprint_spline_2_joint.s" "Spline__instance_2:blueprint_spline_3_joint.is"
		 -l on;
connectAttr "Spline__instance_2:blueprint_spline_3_joint_addTx.o1" "Spline__instance_2:blueprint_spline_3_joint.tx"
		 -l on;
connectAttr "Spline__instance_2:creationPose_spline_0_joint.s" "Spline__instance_2:creationPose_spline_1_joint.is"
		 -l on;
connectAttr "Spline__instance_2:creationPose_spline_1_joint.s" "Spline__instance_2:creationPose_spline_2_joint.is"
		 -l on;
connectAttr "Spline__instance_2:creationPose_spline_2_joint.s" "Spline__instance_2:creationPose_spline_3_joint.is"
		 -l on;
connectAttr "Spline__instance_3:HOOK_IN.sy" "Spline__instance_3:module_grp.hierarchicalScale"
		 -l on;
connectAttr "character_grp.moduleMaintenanceVisibility" "Spline__instance_3:blueprint_joints_grp.v"
		 -l on;
connectAttr "Spline__instance_3:blueprint_spline_0_joint_addScale.o3" "Spline__instance_3:blueprint_spline_0_joint.s"
		 -l on;
connectAttr "unitConversion6.o" "Spline__instance_3:blueprint_spline_0_joint.r" 
		-l on;
connectAttr "Spline__instance_3:blueprint_spline_0_joint_addTranslate.o3" "Spline__instance_3:blueprint_spline_0_joint.t"
		 -l on;
connectAttr "Spline__instance_3:blueprint_spline_0_joint.s" "Spline__instance_3:blueprint_spline_1_joint.is"
		 -l on;
connectAttr "unitConversion7.o" "Spline__instance_3:blueprint_spline_1_joint.r" 
		-l on;
connectAttr "Spline__instance_3:blueprint_spline_1_joint_addTx.o1" "Spline__instance_3:blueprint_spline_1_joint.tx"
		 -l on;
connectAttr "Spline__instance_3:blueprint_spline_1_joint.s" "Spline__instance_3:blueprint_spline_2_joint.is"
		 -l on;
connectAttr "unitConversion8.o" "Spline__instance_3:blueprint_spline_2_joint.r" 
		-l on;
connectAttr "Spline__instance_3:blueprint_spline_2_joint_addTx.o1" "Spline__instance_3:blueprint_spline_2_joint.tx"
		 -l on;
connectAttr "Spline__instance_3:blueprint_spline_2_joint.s" "Spline__instance_3:blueprint_spline_3_joint.is"
		 -l on;
connectAttr "unitConversion9.o" "Spline__instance_3:blueprint_spline_3_joint.r" 
		-l on;
connectAttr "Spline__instance_3:blueprint_spline_3_joint_addTx.o1" "Spline__instance_3:blueprint_spline_3_joint.tx"
		 -l on;
connectAttr "Spline__instance_3:blueprint_spline_3_joint.s" "Spline__instance_3:blueprint_spline_4_joint.is"
		 -l on;
connectAttr "Spline__instance_3:blueprint_spline_4_joint_addTx.o1" "Spline__instance_3:blueprint_spline_4_joint.tx"
		 -l on;
connectAttr "Spline__instance_3:creationPose_spline_0_joint.s" "Spline__instance_3:creationPose_spline_1_joint.is"
		 -l on;
connectAttr "Spline__instance_3:creationPose_spline_1_joint.s" "Spline__instance_3:creationPose_spline_2_joint.is"
		 -l on;
connectAttr "Spline__instance_3:creationPose_spline_2_joint.s" "Spline__instance_3:creationPose_spline_3_joint.is"
		 -l on;
connectAttr "Spline__instance_3:creationPose_spline_3_joint.s" "Spline__instance_3:creationPose_spline_4_joint.is"
		 -l on;
connectAttr "Spline__instance_4:HOOK_IN.sy" "Spline__instance_4:module_grp.hierarchicalScale"
		 -l on;
connectAttr "character_grp.moduleMaintenanceVisibility" "Spline__instance_4:blueprint_joints_grp.v"
		 -l on;
connectAttr "Spline__instance_4:blueprint_spline_0_joint_addScale.o3" "Spline__instance_4:blueprint_spline_0_joint.s"
		 -l on;
connectAttr "unitConversion10.o" "Spline__instance_4:blueprint_spline_0_joint.r"
		 -l on;
connectAttr "Spline__instance_4:blueprint_spline_0_joint_addTranslate.o3" "Spline__instance_4:blueprint_spline_0_joint.t"
		 -l on;
connectAttr "Spline__instance_4:blueprint_spline_0_joint.s" "Spline__instance_4:blueprint_spline_1_joint.is"
		 -l on;
connectAttr "unitConversion11.o" "Spline__instance_4:blueprint_spline_1_joint.r"
		 -l on;
connectAttr "Spline__instance_4:blueprint_spline_1_joint_addTx.o1" "Spline__instance_4:blueprint_spline_1_joint.tx"
		 -l on;
connectAttr "Spline__instance_4:blueprint_spline_1_joint.s" "Spline__instance_4:blueprint_spline_2_joint.is"
		 -l on;
connectAttr "unitConversion12.o" "Spline__instance_4:blueprint_spline_2_joint.r"
		 -l on;
connectAttr "Spline__instance_4:blueprint_spline_2_joint_addTx.o1" "Spline__instance_4:blueprint_spline_2_joint.tx"
		 -l on;
connectAttr "Spline__instance_4:blueprint_spline_2_joint.s" "Spline__instance_4:blueprint_spline_3_joint.is"
		 -l on;
connectAttr "unitConversion13.o" "Spline__instance_4:blueprint_spline_3_joint.r"
		 -l on;
connectAttr "Spline__instance_4:blueprint_spline_3_joint_addTx.o1" "Spline__instance_4:blueprint_spline_3_joint.tx"
		 -l on;
connectAttr "Spline__instance_4:blueprint_spline_3_joint.s" "Spline__instance_4:blueprint_spline_4_joint.is"
		 -l on;
connectAttr "unitConversion14.o" "Spline__instance_4:blueprint_spline_4_joint.r"
		 -l on;
connectAttr "Spline__instance_4:blueprint_spline_4_joint_addTx.o1" "Spline__instance_4:blueprint_spline_4_joint.tx"
		 -l on;
connectAttr "Spline__instance_4:blueprint_spline_4_joint.s" "Spline__instance_4:blueprint_spline_5_joint.is"
		 -l on;
connectAttr "Spline__instance_4:blueprint_spline_5_joint_addTx.o1" "Spline__instance_4:blueprint_spline_5_joint.tx"
		 -l on;
connectAttr "Spline__instance_4:creationPose_spline_0_joint.s" "Spline__instance_4:creationPose_spline_1_joint.is"
		 -l on;
connectAttr "Spline__instance_4:creationPose_spline_1_joint.s" "Spline__instance_4:creationPose_spline_2_joint.is"
		 -l on;
connectAttr "Spline__instance_4:creationPose_spline_2_joint.s" "Spline__instance_4:creationPose_spline_3_joint.is"
		 -l on;
connectAttr "Spline__instance_4:creationPose_spline_3_joint.s" "Spline__instance_4:creationPose_spline_4_joint.is"
		 -l on;
connectAttr "Spline__instance_4:creationPose_spline_4_joint.s" "Spline__instance_4:creationPose_spline_5_joint.is"
		 -l on;
connectAttr "character_grp.animationControlVisibility" "character_container.boc[0]"
		 -l on;
connectAttr "Spline__instance_1:module_container.boc[0]" "character_container.boc[1]"
		 -l on;
connectAttr "Spline__instance_1:module_container.boc[1]" "character_container.boc[2]"
		 -l on;
connectAttr "Spline__instance_2:module_container.boc[0]" "character_container.boc[3]"
		 -l on;
connectAttr "Spline__instance_2:module_container.boc[1]" "character_container.boc[4]"
		 -l on;
connectAttr "Spline__instance_3:module_container.boc[0]" "character_container.boc[5]"
		 -l on;
connectAttr "Spline__instance_3:module_container.boc[1]" "character_container.boc[6]"
		 -l on;
connectAttr "Spline__instance_4:module_container.boc[0]" "character_container.boc[7]"
		 -l on;
connectAttr "Spline__instance_4:module_container.boc[1]" "character_container.boc[8]"
		 -l on;
connectAttr "hyperLayout21.msg" "character_container.hl" -l on;
connectAttr "Spline__instance_4:SETTINGS.activeModule" "Spline__instance_4:module_container.boc[0]"
		;
connectAttr "Spline__instance_4:SETTINGS.creationPoseWeight" "Spline__instance_4:module_container.boc[1]"
		;
connectAttr "hyperLayout20.msg" "Spline__instance_4:module_container.hl" -l on;
connectAttr "Spline__instance_1:module_container.msg" "hyperLayout21.hyp[0].dn";
connectAttr "Spline__instance_2:module_container.msg" "hyperLayout21.hyp[1].dn";
connectAttr "Spline__instance_3:module_container.msg" "hyperLayout21.hyp[2].dn";
connectAttr "Spline__instance_4:module_container.msg" "hyperLayout21.hyp[3].dn";
connectAttr "character_grp.msg" "hyperLayout21.hyp[4].dn";
connectAttr "reverse_moduleMaintenanceVisibility.msg" "hyperLayout21.hyp[5].dn";
connectAttr "moduleVisibilityMultiply.msg" "hyperLayout21.hyp[6].dn";
connectAttr "character_grp.moduleMaintenanceVisibility" "reverse_moduleMaintenanceVisibility.ix"
		 -l on;
connectAttr "Spline__instance_1:SETTINGS.activeModule" "Spline__instance_1:module_container.boc[0]"
		;
connectAttr "Spline__instance_1:SETTINGS.creationPoseWeight" "Spline__instance_1:module_container.boc[1]"
		;
connectAttr "hyperLayout14.msg" "Spline__instance_1:module_container.hl" -l on;
connectAttr "Spline__instance_2:SETTINGS.activeModule" "Spline__instance_2:module_container.boc[0]"
		;
connectAttr "Spline__instance_2:SETTINGS.creationPoseWeight" "Spline__instance_2:module_container.boc[1]"
		;
connectAttr "hyperLayout16.msg" "Spline__instance_2:module_container.hl" -l on;
connectAttr "Spline__instance_3:SETTINGS.activeModule" "Spline__instance_3:module_container.boc[0]"
		;
connectAttr "Spline__instance_3:SETTINGS.creationPoseWeight" "Spline__instance_3:module_container.boc[1]"
		;
connectAttr "hyperLayout18.msg" "Spline__instance_3:module_container.hl" -l on;
connectAttr "reverse_moduleMaintenanceVisibility.ox" "moduleVisibilityMultiply.i1x"
		 -l on;
connectAttr "character_grp.animationControlVisibility" "moduleVisibilityMultiply.i2x"
		 -l on;
connectAttr "Spline__instance_4:module_grp.msg" "hyperLayout20.hyp[0].dn";
connectAttr "Spline__instance_4:HOOK_IN.msg" "hyperLayout20.hyp[1].dn";
connectAttr "Spline__instance_4:SETTINGS.msg" "hyperLayout20.hyp[2].dn";
connectAttr "Spline__instance_4:blueprint_container.msg" "hyperLayout20.hyp[3].dn"
		;
connectAttr "Spline__instance_4:SETTINGSShape.msg" "hyperLayout20.hyp[4].dn";
connectAttr "hyperLayout19.msg" "Spline__instance_4:blueprint_container.hl" -l on
		;
connectAttr "Spline__instance_4:blueprint_spline_0_joint_addRotations.o3" "unitConversion10.i"
		 -l on;
connectAttr "Spline__instance_4:blueprint_spline_1_joint_addRotations.o3" "unitConversion11.i"
		 -l on;
connectAttr "Spline__instance_4:blueprint_spline_2_joint_addRotations.o3" "unitConversion12.i"
		 -l on;
connectAttr "Spline__instance_4:blueprint_spline_3_joint_addRotations.o3" "unitConversion13.i"
		 -l on;
connectAttr "Spline__instance_4:blueprint_spline_4_joint_addRotations.o3" "unitConversion14.i"
		 -l on;
connectAttr "Spline__instance_4:blueprint_spline_0_joint_addRotations.msg" "hyperLayout19.hyp[0].dn"
		;
connectAttr "Spline__instance_4:blueprint_spline_0_joint_dummyRotationsMultiply.msg" "hyperLayout19.hyp[1].dn"
		;
connectAttr "Spline__instance_4:blueprint_spline_0_joint_addTranslate.msg" "hyperLayout19.hyp[2].dn"
		;
connectAttr "Spline__instance_4:blueprint_spline_0_joint_original_Translate.msg" "hyperLayout19.hyp[3].dn"
		;
connectAttr "Spline__instance_4:blueprint_spline_0_joint_addScale.msg" "hyperLayout19.hyp[4].dn"
		;
connectAttr "Spline__instance_4:blueprint_spline_0_joint_original_scale.msg" "hyperLayout19.hyp[5].dn"
		;
connectAttr "Spline__instance_4:blueprint_spline_1_joint_addRotations.msg" "hyperLayout19.hyp[6].dn"
		;
connectAttr "Spline__instance_4:blueprint_spline_1_joint_dummyRotationsMultiply.msg" "hyperLayout19.hyp[7].dn"
		;
connectAttr "Spline__instance_4:blueprint_spline_1_joint_addTx.msg" "hyperLayout19.hyp[8].dn"
		;
connectAttr "Spline__instance_4:blueprint_spline_1_joint_original_Tx.msg" "hyperLayout19.hyp[9].dn"
		;
connectAttr "Spline__instance_4:blueprint_spline_2_joint_addRotations.msg" "hyperLayout19.hyp[10].dn"
		;
connectAttr "Spline__instance_4:blueprint_spline_2_joint_dummyRotationsMultiply.msg" "hyperLayout19.hyp[11].dn"
		;
connectAttr "Spline__instance_4:blueprint_spline_2_joint_addTx.msg" "hyperLayout19.hyp[12].dn"
		;
connectAttr "Spline__instance_4:blueprint_spline_2_joint_original_Tx.msg" "hyperLayout19.hyp[13].dn"
		;
connectAttr "Spline__instance_4:blueprint_spline_3_joint_addRotations.msg" "hyperLayout19.hyp[14].dn"
		;
connectAttr "Spline__instance_4:blueprint_spline_3_joint_dummyRotationsMultiply.msg" "hyperLayout19.hyp[15].dn"
		;
connectAttr "Spline__instance_4:blueprint_spline_3_joint_addTx.msg" "hyperLayout19.hyp[16].dn"
		;
connectAttr "Spline__instance_4:blueprint_spline_3_joint_original_Tx.msg" "hyperLayout19.hyp[17].dn"
		;
connectAttr "Spline__instance_4:blueprint_spline_4_joint_addRotations.msg" "hyperLayout19.hyp[18].dn"
		;
connectAttr "Spline__instance_4:blueprint_spline_4_joint_dummyRotationsMultiply.msg" "hyperLayout19.hyp[19].dn"
		;
connectAttr "Spline__instance_4:blueprint_spline_4_joint_addTx.msg" "hyperLayout19.hyp[20].dn"
		;
connectAttr "Spline__instance_4:blueprint_spline_4_joint_original_Tx.msg" "hyperLayout19.hyp[21].dn"
		;
connectAttr "Spline__instance_4:blueprint_spline_5_joint_addTx.msg" "hyperLayout19.hyp[22].dn"
		;
connectAttr "Spline__instance_4:blueprint_spline_5_joint_original_Tx.msg" "hyperLayout19.hyp[23].dn"
		;
connectAttr "Spline__instance_4:blueprint_joints_grp.msg" "hyperLayout19.hyp[24].dn"
		;
connectAttr "Spline__instance_4:creationPose_joints_grp.msg" "hyperLayout19.hyp[25].dn"
		;
connectAttr "unitConversion10.msg" "hyperLayout19.hyp[26].dn";
connectAttr "unitConversion11.msg" "hyperLayout19.hyp[27].dn";
connectAttr "unitConversion12.msg" "hyperLayout19.hyp[28].dn";
connectAttr "unitConversion13.msg" "hyperLayout19.hyp[29].dn";
connectAttr "unitConversion14.msg" "hyperLayout19.hyp[30].dn";
connectAttr "Spline__instance_4:blueprint_spline_0_joint.msg" "hyperLayout19.hyp[31].dn"
		;
connectAttr "Spline__instance_4:blueprint_spline_1_joint.msg" "hyperLayout19.hyp[32].dn"
		;
connectAttr "Spline__instance_4:blueprint_spline_2_joint.msg" "hyperLayout19.hyp[33].dn"
		;
connectAttr "Spline__instance_4:blueprint_spline_3_joint.msg" "hyperLayout19.hyp[34].dn"
		;
connectAttr "Spline__instance_4:blueprint_spline_4_joint.msg" "hyperLayout19.hyp[35].dn"
		;
connectAttr "Spline__instance_4:blueprint_spline_5_joint.msg" "hyperLayout19.hyp[36].dn"
		;
connectAttr "Spline__instance_4:creationPose_spline_0_joint.msg" "hyperLayout19.hyp[37].dn"
		;
connectAttr "Spline__instance_4:creationPose_spline_1_joint.msg" "hyperLayout19.hyp[38].dn"
		;
connectAttr "Spline__instance_4:creationPose_spline_2_joint.msg" "hyperLayout19.hyp[39].dn"
		;
connectAttr "Spline__instance_4:creationPose_spline_3_joint.msg" "hyperLayout19.hyp[40].dn"
		;
connectAttr "Spline__instance_4:creationPose_spline_4_joint.msg" "hyperLayout19.hyp[41].dn"
		;
connectAttr "Spline__instance_4:creationPose_spline_5_joint.msg" "hyperLayout19.hyp[42].dn"
		;
connectAttr "Spline__instance_4:blueprint_spline_0_joint_dummyRotationsMultiply.o" "Spline__instance_4:blueprint_spline_0_joint_addRotations.i3[0]"
		 -l on;
connectAttr "Spline__instance_4:blueprint_spline_0_joint_original_Translate.o" "Spline__instance_4:blueprint_spline_0_joint_addTranslate.i3[0]"
		 -l on;
connectAttr "Spline__instance_4:SETTINGS.creationPoseWeight" "Spline__instance_4:blueprint_spline_0_joint_original_Translate.i2x"
		 -l on;
connectAttr "Spline__instance_4:SETTINGS.creationPoseWeight" "Spline__instance_4:blueprint_spline_0_joint_original_Translate.i2y"
		 -l on;
connectAttr "Spline__instance_4:SETTINGS.creationPoseWeight" "Spline__instance_4:blueprint_spline_0_joint_original_Translate.i2z"
		 -l on;
connectAttr "Spline__instance_4:blueprint_spline_0_joint_original_scale.o" "Spline__instance_4:blueprint_spline_0_joint_addScale.i3[0]"
		 -l on;
connectAttr "Spline__instance_4:SETTINGS.creationPoseWeight" "Spline__instance_4:blueprint_spline_0_joint_original_scale.i2x"
		 -l on;
connectAttr "Spline__instance_4:SETTINGS.creationPoseWeight" "Spline__instance_4:blueprint_spline_0_joint_original_scale.i2y"
		 -l on;
connectAttr "Spline__instance_4:SETTINGS.creationPoseWeight" "Spline__instance_4:blueprint_spline_0_joint_original_scale.i2z"
		 -l on;
connectAttr "Spline__instance_4:blueprint_spline_1_joint_dummyRotationsMultiply.o" "Spline__instance_4:blueprint_spline_1_joint_addRotations.i3[0]"
		 -l on;
connectAttr "Spline__instance_4:blueprint_spline_1_joint_original_Tx.ox" "Spline__instance_4:blueprint_spline_1_joint_addTx.i1[0]"
		 -l on;
connectAttr "Spline__instance_4:SETTINGS.creationPoseWeight" "Spline__instance_4:blueprint_spline_1_joint_original_Tx.i2x"
		 -l on;
connectAttr "Spline__instance_4:blueprint_spline_2_joint_dummyRotationsMultiply.o" "Spline__instance_4:blueprint_spline_2_joint_addRotations.i3[0]"
		 -l on;
connectAttr "Spline__instance_4:blueprint_spline_2_joint_original_Tx.ox" "Spline__instance_4:blueprint_spline_2_joint_addTx.i1[0]"
		 -l on;
connectAttr "Spline__instance_4:SETTINGS.creationPoseWeight" "Spline__instance_4:blueprint_spline_2_joint_original_Tx.i2x"
		 -l on;
connectAttr "Spline__instance_4:blueprint_spline_3_joint_dummyRotationsMultiply.o" "Spline__instance_4:blueprint_spline_3_joint_addRotations.i3[0]"
		 -l on;
connectAttr "Spline__instance_4:blueprint_spline_3_joint_original_Tx.ox" "Spline__instance_4:blueprint_spline_3_joint_addTx.i1[0]"
		 -l on;
connectAttr "Spline__instance_4:SETTINGS.creationPoseWeight" "Spline__instance_4:blueprint_spline_3_joint_original_Tx.i2x"
		 -l on;
connectAttr "Spline__instance_4:blueprint_spline_4_joint_dummyRotationsMultiply.o" "Spline__instance_4:blueprint_spline_4_joint_addRotations.i3[0]"
		 -l on;
connectAttr "Spline__instance_4:blueprint_spline_4_joint_original_Tx.ox" "Spline__instance_4:blueprint_spline_4_joint_addTx.i1[0]"
		 -l on;
connectAttr "Spline__instance_4:SETTINGS.creationPoseWeight" "Spline__instance_4:blueprint_spline_4_joint_original_Tx.i2x"
		 -l on;
connectAttr "Spline__instance_4:blueprint_spline_5_joint_original_Tx.ox" "Spline__instance_4:blueprint_spline_5_joint_addTx.i1[0]"
		 -l on;
connectAttr "Spline__instance_4:SETTINGS.creationPoseWeight" "Spline__instance_4:blueprint_spline_5_joint_original_Tx.i2x"
		 -l on;
connectAttr "Spline__instance_1:module_grp.msg" "hyperLayout14.hyp[0].dn";
connectAttr "Spline__instance_1:HOOK_IN.msg" "hyperLayout14.hyp[1].dn";
connectAttr "Spline__instance_1:SETTINGS.msg" "hyperLayout14.hyp[2].dn";
connectAttr "Spline__instance_1:blueprint_container.msg" "hyperLayout14.hyp[3].dn"
		;
connectAttr "Spline__instance_1:SETTINGSShape.msg" "hyperLayout14.hyp[4].dn";
connectAttr "hyperLayout13.msg" "Spline__instance_1:blueprint_container.hl" -l on
		;
connectAttr "Spline__instance_1:blueprint_spline_0_joint_dummyRotationsMultiply.o" "Spline__instance_1:blueprint_spline_0_joint_addRotations.i3[0]"
		 -l on;
connectAttr "Spline__instance_1:SETTINGS.creationPoseWeight" "Spline__instance_1:blueprint_spline_1_joint_original_Tx.i2x"
		 -l on;
connectAttr "Spline__instance_1:blueprint_spline_2_joint_original_Tx.ox" "Spline__instance_1:blueprint_spline_2_joint_addTx.i1[0]"
		 -l on;
connectAttr "Spline__instance_1:SETTINGS.creationPoseWeight" "Spline__instance_1:blueprint_spline_2_joint_original_Tx.i2x"
		 -l on;
connectAttr "Spline__instance_1:blueprint_spline_0_joint_addRotations.o3" "unitConversion1.i"
		 -l on;
connectAttr "Spline__instance_1:blueprint_spline_1_joint_addRotations.o3" "unitConversion2.i"
		 -l on;
connectAttr "Spline__instance_1:blueprint_spline_1_joint_dummyRotationsMultiply.o" "Spline__instance_1:blueprint_spline_1_joint_addRotations.i3[0]"
		 -l on;
connectAttr "Spline__instance_1:SETTINGS.creationPoseWeight" "Spline__instance_1:blueprint_spline_0_joint_original_scale.i2x"
		 -l on;
connectAttr "Spline__instance_1:SETTINGS.creationPoseWeight" "Spline__instance_1:blueprint_spline_0_joint_original_scale.i2y"
		 -l on;
connectAttr "Spline__instance_1:SETTINGS.creationPoseWeight" "Spline__instance_1:blueprint_spline_0_joint_original_scale.i2z"
		 -l on;
connectAttr "Spline__instance_1:blueprint_spline_1_joint_original_Tx.ox" "Spline__instance_1:blueprint_spline_1_joint_addTx.i1[0]"
		 -l on;
connectAttr "Spline__instance_1:blueprint_spline_0_joint_original_Translate.o" "Spline__instance_1:blueprint_spline_0_joint_addTranslate.i3[0]"
		 -l on;
connectAttr "Spline__instance_1:SETTINGS.creationPoseWeight" "Spline__instance_1:blueprint_spline_0_joint_original_Translate.i2x"
		 -l on;
connectAttr "Spline__instance_1:SETTINGS.creationPoseWeight" "Spline__instance_1:blueprint_spline_0_joint_original_Translate.i2y"
		 -l on;
connectAttr "Spline__instance_1:SETTINGS.creationPoseWeight" "Spline__instance_1:blueprint_spline_0_joint_original_Translate.i2z"
		 -l on;
connectAttr "Spline__instance_1:blueprint_spline_0_joint_original_scale.o" "Spline__instance_1:blueprint_spline_0_joint_addScale.i3[0]"
		 -l on;
connectAttr "Spline__instance_1:blueprint_spline_0_joint_addRotations.msg" "hyperLayout13.hyp[0].dn"
		;
connectAttr "Spline__instance_1:blueprint_spline_0_joint_dummyRotationsMultiply.msg" "hyperLayout13.hyp[1].dn"
		;
connectAttr "Spline__instance_1:blueprint_spline_0_joint_addTranslate.msg" "hyperLayout13.hyp[2].dn"
		;
connectAttr "Spline__instance_1:blueprint_spline_0_joint_original_Translate.msg" "hyperLayout13.hyp[3].dn"
		;
connectAttr "Spline__instance_1:blueprint_spline_0_joint_addScale.msg" "hyperLayout13.hyp[4].dn"
		;
connectAttr "Spline__instance_1:blueprint_spline_0_joint_original_scale.msg" "hyperLayout13.hyp[5].dn"
		;
connectAttr "Spline__instance_1:blueprint_spline_1_joint_addRotations.msg" "hyperLayout13.hyp[6].dn"
		;
connectAttr "Spline__instance_1:blueprint_spline_1_joint_dummyRotationsMultiply.msg" "hyperLayout13.hyp[7].dn"
		;
connectAttr "Spline__instance_1:blueprint_spline_1_joint_addTx.msg" "hyperLayout13.hyp[8].dn"
		;
connectAttr "Spline__instance_1:blueprint_spline_1_joint_original_Tx.msg" "hyperLayout13.hyp[9].dn"
		;
connectAttr "Spline__instance_1:blueprint_spline_2_joint_addTx.msg" "hyperLayout13.hyp[10].dn"
		;
connectAttr "Spline__instance_1:blueprint_spline_2_joint_original_Tx.msg" "hyperLayout13.hyp[11].dn"
		;
connectAttr "Spline__instance_1:blueprint_joints_grp.msg" "hyperLayout13.hyp[12].dn"
		;
connectAttr "Spline__instance_1:creationPose_joints_grp.msg" "hyperLayout13.hyp[13].dn"
		;
connectAttr "unitConversion1.msg" "hyperLayout13.hyp[14].dn";
connectAttr "unitConversion2.msg" "hyperLayout13.hyp[15].dn";
connectAttr "Spline__instance_1:blueprint_spline_0_joint.msg" "hyperLayout13.hyp[16].dn"
		;
connectAttr "Spline__instance_1:blueprint_spline_1_joint.msg" "hyperLayout13.hyp[17].dn"
		;
connectAttr "Spline__instance_1:blueprint_spline_2_joint.msg" "hyperLayout13.hyp[18].dn"
		;
connectAttr "Spline__instance_1:creationPose_spline_0_joint.msg" "hyperLayout13.hyp[19].dn"
		;
connectAttr "Spline__instance_1:creationPose_spline_1_joint.msg" "hyperLayout13.hyp[20].dn"
		;
connectAttr "Spline__instance_1:creationPose_spline_2_joint.msg" "hyperLayout13.hyp[21].dn"
		;
connectAttr "Spline__instance_2:module_grp.msg" "hyperLayout16.hyp[0].dn";
connectAttr "Spline__instance_2:HOOK_IN.msg" "hyperLayout16.hyp[1].dn";
connectAttr "Spline__instance_2:SETTINGS.msg" "hyperLayout16.hyp[2].dn";
connectAttr "Spline__instance_2:blueprint_container.msg" "hyperLayout16.hyp[3].dn"
		;
connectAttr "Spline__instance_2:SETTINGSShape.msg" "hyperLayout16.hyp[4].dn";
connectAttr "hyperLayout15.msg" "Spline__instance_2:blueprint_container.hl" -l on
		;
connectAttr "Spline__instance_2:blueprint_spline_0_joint_dummyRotationsMultiply.o" "Spline__instance_2:blueprint_spline_0_joint_addRotations.i3[0]"
		 -l on;
connectAttr "Spline__instance_2:blueprint_spline_0_joint_original_Translate.o" "Spline__instance_2:blueprint_spline_0_joint_addTranslate.i3[0]"
		 -l on;
connectAttr "Spline__instance_2:SETTINGS.creationPoseWeight" "Spline__instance_2:blueprint_spline_0_joint_original_Translate.i2x"
		 -l on;
connectAttr "Spline__instance_2:SETTINGS.creationPoseWeight" "Spline__instance_2:blueprint_spline_0_joint_original_Translate.i2y"
		 -l on;
connectAttr "Spline__instance_2:SETTINGS.creationPoseWeight" "Spline__instance_2:blueprint_spline_0_joint_original_Translate.i2z"
		 -l on;
connectAttr "Spline__instance_2:blueprint_spline_0_joint_original_scale.o" "Spline__instance_2:blueprint_spline_0_joint_addScale.i3[0]"
		 -l on;
connectAttr "Spline__instance_2:blueprint_spline_0_joint_addRotations.o3" "unitConversion3.i"
		 -l on;
connectAttr "Spline__instance_2:blueprint_spline_1_joint_addRotations.o3" "unitConversion4.i"
		 -l on;
connectAttr "Spline__instance_2:blueprint_spline_2_joint_addRotations.o3" "unitConversion5.i"
		 -l on;
connectAttr "Spline__instance_2:blueprint_spline_0_joint_addRotations.msg" "hyperLayout15.hyp[0].dn"
		;
connectAttr "Spline__instance_2:blueprint_spline_0_joint_dummyRotationsMultiply.msg" "hyperLayout15.hyp[1].dn"
		;
connectAttr "Spline__instance_2:blueprint_spline_0_joint_addTranslate.msg" "hyperLayout15.hyp[2].dn"
		;
connectAttr "Spline__instance_2:blueprint_spline_0_joint_original_Translate.msg" "hyperLayout15.hyp[3].dn"
		;
connectAttr "Spline__instance_2:blueprint_spline_0_joint_addScale.msg" "hyperLayout15.hyp[4].dn"
		;
connectAttr "Spline__instance_2:blueprint_spline_0_joint_original_scale.msg" "hyperLayout15.hyp[5].dn"
		;
connectAttr "Spline__instance_2:blueprint_spline_1_joint_addRotations.msg" "hyperLayout15.hyp[6].dn"
		;
connectAttr "Spline__instance_2:blueprint_spline_1_joint_dummyRotationsMultiply.msg" "hyperLayout15.hyp[7].dn"
		;
connectAttr "Spline__instance_2:blueprint_spline_1_joint_addTx.msg" "hyperLayout15.hyp[8].dn"
		;
connectAttr "Spline__instance_2:blueprint_spline_1_joint_original_Tx.msg" "hyperLayout15.hyp[9].dn"
		;
connectAttr "Spline__instance_2:blueprint_spline_2_joint_addRotations.msg" "hyperLayout15.hyp[10].dn"
		;
connectAttr "Spline__instance_2:blueprint_spline_2_joint_dummyRotationsMultiply.msg" "hyperLayout15.hyp[11].dn"
		;
connectAttr "Spline__instance_2:blueprint_spline_2_joint_addTx.msg" "hyperLayout15.hyp[12].dn"
		;
connectAttr "Spline__instance_2:blueprint_spline_2_joint_original_Tx.msg" "hyperLayout15.hyp[13].dn"
		;
connectAttr "Spline__instance_2:blueprint_spline_3_joint_addTx.msg" "hyperLayout15.hyp[14].dn"
		;
connectAttr "Spline__instance_2:blueprint_spline_3_joint_original_Tx.msg" "hyperLayout15.hyp[15].dn"
		;
connectAttr "Spline__instance_2:blueprint_joints_grp.msg" "hyperLayout15.hyp[16].dn"
		;
connectAttr "Spline__instance_2:creationPose_joints_grp.msg" "hyperLayout15.hyp[17].dn"
		;
connectAttr "unitConversion3.msg" "hyperLayout15.hyp[18].dn";
connectAttr "unitConversion4.msg" "hyperLayout15.hyp[19].dn";
connectAttr "unitConversion5.msg" "hyperLayout15.hyp[20].dn";
connectAttr "Spline__instance_2:blueprint_spline_0_joint.msg" "hyperLayout15.hyp[21].dn"
		;
connectAttr "Spline__instance_2:blueprint_spline_1_joint.msg" "hyperLayout15.hyp[22].dn"
		;
connectAttr "Spline__instance_2:blueprint_spline_2_joint.msg" "hyperLayout15.hyp[23].dn"
		;
connectAttr "Spline__instance_2:blueprint_spline_3_joint.msg" "hyperLayout15.hyp[24].dn"
		;
connectAttr "Spline__instance_2:creationPose_spline_0_joint.msg" "hyperLayout15.hyp[25].dn"
		;
connectAttr "Spline__instance_2:creationPose_spline_1_joint.msg" "hyperLayout15.hyp[26].dn"
		;
connectAttr "Spline__instance_2:creationPose_spline_2_joint.msg" "hyperLayout15.hyp[27].dn"
		;
connectAttr "Spline__instance_2:creationPose_spline_3_joint.msg" "hyperLayout15.hyp[28].dn"
		;
connectAttr "Spline__instance_2:SETTINGS.creationPoseWeight" "Spline__instance_2:blueprint_spline_0_joint_original_scale.i2x"
		 -l on;
connectAttr "Spline__instance_2:SETTINGS.creationPoseWeight" "Spline__instance_2:blueprint_spline_0_joint_original_scale.i2y"
		 -l on;
connectAttr "Spline__instance_2:SETTINGS.creationPoseWeight" "Spline__instance_2:blueprint_spline_0_joint_original_scale.i2z"
		 -l on;
connectAttr "Spline__instance_2:blueprint_spline_1_joint_dummyRotationsMultiply.o" "Spline__instance_2:blueprint_spline_1_joint_addRotations.i3[0]"
		 -l on;
connectAttr "Spline__instance_2:blueprint_spline_1_joint_original_Tx.ox" "Spline__instance_2:blueprint_spline_1_joint_addTx.i1[0]"
		 -l on;
connectAttr "Spline__instance_2:SETTINGS.creationPoseWeight" "Spline__instance_2:blueprint_spline_1_joint_original_Tx.i2x"
		 -l on;
connectAttr "Spline__instance_2:blueprint_spline_2_joint_dummyRotationsMultiply.o" "Spline__instance_2:blueprint_spline_2_joint_addRotations.i3[0]"
		 -l on;
connectAttr "Spline__instance_2:blueprint_spline_2_joint_original_Tx.ox" "Spline__instance_2:blueprint_spline_2_joint_addTx.i1[0]"
		 -l on;
connectAttr "Spline__instance_2:SETTINGS.creationPoseWeight" "Spline__instance_2:blueprint_spline_2_joint_original_Tx.i2x"
		 -l on;
connectAttr "Spline__instance_2:blueprint_spline_3_joint_original_Tx.ox" "Spline__instance_2:blueprint_spline_3_joint_addTx.i1[0]"
		 -l on;
connectAttr "Spline__instance_2:SETTINGS.creationPoseWeight" "Spline__instance_2:blueprint_spline_3_joint_original_Tx.i2x"
		 -l on;
connectAttr "Spline__instance_3:module_grp.msg" "hyperLayout18.hyp[0].dn";
connectAttr "Spline__instance_3:HOOK_IN.msg" "hyperLayout18.hyp[1].dn";
connectAttr "Spline__instance_3:SETTINGS.msg" "hyperLayout18.hyp[2].dn";
connectAttr "Spline__instance_3:blueprint_container.msg" "hyperLayout18.hyp[3].dn"
		;
connectAttr "Spline__instance_3:SETTINGSShape.msg" "hyperLayout18.hyp[4].dn";
connectAttr "hyperLayout17.msg" "Spline__instance_3:blueprint_container.hl" -l on
		;
connectAttr "Spline__instance_3:blueprint_spline_0_joint_addRotations.o3" "unitConversion6.i"
		 -l on;
connectAttr "Spline__instance_3:blueprint_spline_1_joint_addRotations.o3" "unitConversion7.i"
		 -l on;
connectAttr "Spline__instance_3:blueprint_spline_2_joint_addRotations.o3" "unitConversion8.i"
		 -l on;
connectAttr "Spline__instance_3:blueprint_spline_3_joint_addRotations.o3" "unitConversion9.i"
		 -l on;
connectAttr "Spline__instance_3:blueprint_spline_0_joint_addRotations.msg" "hyperLayout17.hyp[0].dn"
		;
connectAttr "Spline__instance_3:blueprint_spline_0_joint_dummyRotationsMultiply.msg" "hyperLayout17.hyp[1].dn"
		;
connectAttr "Spline__instance_3:blueprint_spline_0_joint_addTranslate.msg" "hyperLayout17.hyp[2].dn"
		;
connectAttr "Spline__instance_3:blueprint_spline_0_joint_original_Translate.msg" "hyperLayout17.hyp[3].dn"
		;
connectAttr "Spline__instance_3:blueprint_spline_0_joint_addScale.msg" "hyperLayout17.hyp[4].dn"
		;
connectAttr "Spline__instance_3:blueprint_spline_0_joint_original_scale.msg" "hyperLayout17.hyp[5].dn"
		;
connectAttr "Spline__instance_3:blueprint_spline_1_joint_addRotations.msg" "hyperLayout17.hyp[6].dn"
		;
connectAttr "Spline__instance_3:blueprint_spline_1_joint_dummyRotationsMultiply.msg" "hyperLayout17.hyp[7].dn"
		;
connectAttr "Spline__instance_3:blueprint_spline_1_joint_addTx.msg" "hyperLayout17.hyp[8].dn"
		;
connectAttr "Spline__instance_3:blueprint_spline_1_joint_original_Tx.msg" "hyperLayout17.hyp[9].dn"
		;
connectAttr "Spline__instance_3:blueprint_spline_2_joint_addRotations.msg" "hyperLayout17.hyp[10].dn"
		;
connectAttr "Spline__instance_3:blueprint_spline_2_joint_dummyRotationsMultiply.msg" "hyperLayout17.hyp[11].dn"
		;
connectAttr "Spline__instance_3:blueprint_spline_2_joint_addTx.msg" "hyperLayout17.hyp[12].dn"
		;
connectAttr "Spline__instance_3:blueprint_spline_2_joint_original_Tx.msg" "hyperLayout17.hyp[13].dn"
		;
connectAttr "Spline__instance_3:blueprint_spline_3_joint_addRotations.msg" "hyperLayout17.hyp[14].dn"
		;
connectAttr "Spline__instance_3:blueprint_spline_3_joint_dummyRotationsMultiply.msg" "hyperLayout17.hyp[15].dn"
		;
connectAttr "Spline__instance_3:blueprint_spline_3_joint_addTx.msg" "hyperLayout17.hyp[16].dn"
		;
connectAttr "Spline__instance_3:blueprint_spline_3_joint_original_Tx.msg" "hyperLayout17.hyp[17].dn"
		;
connectAttr "Spline__instance_3:blueprint_spline_4_joint_addTx.msg" "hyperLayout17.hyp[18].dn"
		;
connectAttr "Spline__instance_3:blueprint_spline_4_joint_original_Tx.msg" "hyperLayout17.hyp[19].dn"
		;
connectAttr "Spline__instance_3:blueprint_joints_grp.msg" "hyperLayout17.hyp[20].dn"
		;
connectAttr "Spline__instance_3:creationPose_joints_grp.msg" "hyperLayout17.hyp[21].dn"
		;
connectAttr "unitConversion6.msg" "hyperLayout17.hyp[22].dn";
connectAttr "unitConversion7.msg" "hyperLayout17.hyp[23].dn";
connectAttr "unitConversion8.msg" "hyperLayout17.hyp[24].dn";
connectAttr "unitConversion9.msg" "hyperLayout17.hyp[25].dn";
connectAttr "Spline__instance_3:blueprint_spline_0_joint.msg" "hyperLayout17.hyp[26].dn"
		;
connectAttr "Spline__instance_3:blueprint_spline_1_joint.msg" "hyperLayout17.hyp[27].dn"
		;
connectAttr "Spline__instance_3:blueprint_spline_2_joint.msg" "hyperLayout17.hyp[28].dn"
		;
connectAttr "Spline__instance_3:blueprint_spline_3_joint.msg" "hyperLayout17.hyp[29].dn"
		;
connectAttr "Spline__instance_3:blueprint_spline_4_joint.msg" "hyperLayout17.hyp[30].dn"
		;
connectAttr "Spline__instance_3:creationPose_spline_0_joint.msg" "hyperLayout17.hyp[31].dn"
		;
connectAttr "Spline__instance_3:creationPose_spline_1_joint.msg" "hyperLayout17.hyp[32].dn"
		;
connectAttr "Spline__instance_3:creationPose_spline_2_joint.msg" "hyperLayout17.hyp[33].dn"
		;
connectAttr "Spline__instance_3:creationPose_spline_3_joint.msg" "hyperLayout17.hyp[34].dn"
		;
connectAttr "Spline__instance_3:creationPose_spline_4_joint.msg" "hyperLayout17.hyp[35].dn"
		;
connectAttr "Spline__instance_3:blueprint_spline_0_joint_dummyRotationsMultiply.o" "Spline__instance_3:blueprint_spline_0_joint_addRotations.i3[0]"
		 -l on;
connectAttr "Spline__instance_3:blueprint_spline_0_joint_original_Translate.o" "Spline__instance_3:blueprint_spline_0_joint_addTranslate.i3[0]"
		 -l on;
connectAttr "Spline__instance_3:SETTINGS.creationPoseWeight" "Spline__instance_3:blueprint_spline_0_joint_original_Translate.i2x"
		 -l on;
connectAttr "Spline__instance_3:SETTINGS.creationPoseWeight" "Spline__instance_3:blueprint_spline_0_joint_original_Translate.i2y"
		 -l on;
connectAttr "Spline__instance_3:SETTINGS.creationPoseWeight" "Spline__instance_3:blueprint_spline_0_joint_original_Translate.i2z"
		 -l on;
connectAttr "Spline__instance_3:blueprint_spline_0_joint_original_scale.o" "Spline__instance_3:blueprint_spline_0_joint_addScale.i3[0]"
		 -l on;
connectAttr "Spline__instance_3:SETTINGS.creationPoseWeight" "Spline__instance_3:blueprint_spline_0_joint_original_scale.i2x"
		 -l on;
connectAttr "Spline__instance_3:SETTINGS.creationPoseWeight" "Spline__instance_3:blueprint_spline_0_joint_original_scale.i2y"
		 -l on;
connectAttr "Spline__instance_3:SETTINGS.creationPoseWeight" "Spline__instance_3:blueprint_spline_0_joint_original_scale.i2z"
		 -l on;
connectAttr "Spline__instance_3:blueprint_spline_1_joint_dummyRotationsMultiply.o" "Spline__instance_3:blueprint_spline_1_joint_addRotations.i3[0]"
		 -l on;
connectAttr "Spline__instance_3:blueprint_spline_1_joint_original_Tx.ox" "Spline__instance_3:blueprint_spline_1_joint_addTx.i1[0]"
		 -l on;
connectAttr "Spline__instance_3:SETTINGS.creationPoseWeight" "Spline__instance_3:blueprint_spline_1_joint_original_Tx.i2x"
		 -l on;
connectAttr "Spline__instance_3:blueprint_spline_2_joint_dummyRotationsMultiply.o" "Spline__instance_3:blueprint_spline_2_joint_addRotations.i3[0]"
		 -l on;
connectAttr "Spline__instance_3:blueprint_spline_2_joint_original_Tx.ox" "Spline__instance_3:blueprint_spline_2_joint_addTx.i1[0]"
		 -l on;
connectAttr "Spline__instance_3:SETTINGS.creationPoseWeight" "Spline__instance_3:blueprint_spline_2_joint_original_Tx.i2x"
		 -l on;
connectAttr "Spline__instance_3:blueprint_spline_3_joint_dummyRotationsMultiply.o" "Spline__instance_3:blueprint_spline_3_joint_addRotations.i3[0]"
		 -l on;
connectAttr "Spline__instance_3:blueprint_spline_3_joint_original_Tx.ox" "Spline__instance_3:blueprint_spline_3_joint_addTx.i1[0]"
		 -l on;
connectAttr "Spline__instance_3:SETTINGS.creationPoseWeight" "Spline__instance_3:blueprint_spline_3_joint_original_Tx.i2x"
		 -l on;
connectAttr "Spline__instance_3:blueprint_spline_4_joint_original_Tx.ox" "Spline__instance_3:blueprint_spline_4_joint_addTx.i1[0]"
		 -l on;
connectAttr "Spline__instance_3:SETTINGS.creationPoseWeight" "Spline__instance_3:blueprint_spline_4_joint_original_Tx.i2x"
		 -l on;
connectAttr "Spline__instance_1:blueprint_spline_0_joint_addRotations.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Spline__instance_1:blueprint_spline_0_joint_dummyRotationsMultiply.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Spline__instance_1:blueprint_spline_0_joint_addTranslate.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Spline__instance_1:blueprint_spline_0_joint_original_Translate.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Spline__instance_1:blueprint_spline_0_joint_addScale.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Spline__instance_1:blueprint_spline_0_joint_original_scale.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Spline__instance_1:blueprint_spline_1_joint_addRotations.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Spline__instance_1:blueprint_spline_1_joint_dummyRotationsMultiply.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Spline__instance_1:blueprint_spline_1_joint_addTx.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Spline__instance_1:blueprint_spline_1_joint_original_Tx.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Spline__instance_1:blueprint_spline_2_joint_addTx.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Spline__instance_1:blueprint_spline_2_joint_original_Tx.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Spline__instance_2:blueprint_spline_0_joint_addRotations.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Spline__instance_2:blueprint_spline_0_joint_dummyRotationsMultiply.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Spline__instance_2:blueprint_spline_0_joint_addTranslate.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Spline__instance_2:blueprint_spline_0_joint_original_Translate.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Spline__instance_2:blueprint_spline_0_joint_addScale.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Spline__instance_2:blueprint_spline_0_joint_original_scale.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Spline__instance_2:blueprint_spline_1_joint_addRotations.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Spline__instance_2:blueprint_spline_1_joint_dummyRotationsMultiply.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Spline__instance_2:blueprint_spline_1_joint_addTx.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Spline__instance_2:blueprint_spline_1_joint_original_Tx.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Spline__instance_2:blueprint_spline_2_joint_addRotations.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Spline__instance_2:blueprint_spline_2_joint_dummyRotationsMultiply.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Spline__instance_2:blueprint_spline_2_joint_addTx.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Spline__instance_2:blueprint_spline_2_joint_original_Tx.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Spline__instance_2:blueprint_spline_3_joint_addTx.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Spline__instance_2:blueprint_spline_3_joint_original_Tx.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Spline__instance_3:blueprint_spline_0_joint_addRotations.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Spline__instance_3:blueprint_spline_0_joint_dummyRotationsMultiply.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Spline__instance_3:blueprint_spline_0_joint_addTranslate.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Spline__instance_3:blueprint_spline_0_joint_original_Translate.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Spline__instance_3:blueprint_spline_0_joint_addScale.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Spline__instance_3:blueprint_spline_0_joint_original_scale.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Spline__instance_3:blueprint_spline_1_joint_addRotations.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Spline__instance_3:blueprint_spline_1_joint_dummyRotationsMultiply.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Spline__instance_3:blueprint_spline_1_joint_addTx.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Spline__instance_3:blueprint_spline_1_joint_original_Tx.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Spline__instance_3:blueprint_spline_2_joint_addRotations.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Spline__instance_3:blueprint_spline_2_joint_dummyRotationsMultiply.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Spline__instance_3:blueprint_spline_2_joint_addTx.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Spline__instance_3:blueprint_spline_2_joint_original_Tx.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Spline__instance_3:blueprint_spline_3_joint_addRotations.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Spline__instance_3:blueprint_spline_3_joint_dummyRotationsMultiply.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Spline__instance_3:blueprint_spline_3_joint_addTx.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Spline__instance_3:blueprint_spline_3_joint_original_Tx.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Spline__instance_3:blueprint_spline_4_joint_addTx.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Spline__instance_3:blueprint_spline_4_joint_original_Tx.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Spline__instance_4:blueprint_spline_0_joint_addRotations.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Spline__instance_4:blueprint_spline_0_joint_dummyRotationsMultiply.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Spline__instance_4:blueprint_spline_0_joint_addTranslate.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Spline__instance_4:blueprint_spline_0_joint_original_Translate.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Spline__instance_4:blueprint_spline_0_joint_addScale.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Spline__instance_4:blueprint_spline_0_joint_original_scale.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Spline__instance_4:blueprint_spline_1_joint_addRotations.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Spline__instance_4:blueprint_spline_1_joint_dummyRotationsMultiply.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Spline__instance_4:blueprint_spline_1_joint_addTx.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Spline__instance_4:blueprint_spline_1_joint_original_Tx.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Spline__instance_4:blueprint_spline_2_joint_addRotations.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Spline__instance_4:blueprint_spline_2_joint_dummyRotationsMultiply.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Spline__instance_4:blueprint_spline_2_joint_addTx.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Spline__instance_4:blueprint_spline_2_joint_original_Tx.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Spline__instance_4:blueprint_spline_3_joint_addRotations.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Spline__instance_4:blueprint_spline_3_joint_dummyRotationsMultiply.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Spline__instance_4:blueprint_spline_3_joint_addTx.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Spline__instance_4:blueprint_spline_3_joint_original_Tx.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Spline__instance_4:blueprint_spline_4_joint_addRotations.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Spline__instance_4:blueprint_spline_4_joint_dummyRotationsMultiply.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Spline__instance_4:blueprint_spline_4_joint_addTx.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Spline__instance_4:blueprint_spline_4_joint_original_Tx.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Spline__instance_4:blueprint_spline_5_joint_addTx.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Spline__instance_4:blueprint_spline_5_joint_original_Tx.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "reverse_moduleMaintenanceVisibility.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "moduleVisibilityMultiply.msg" ":defaultRenderUtilityList1.u" -na;
// End of spline_differentJointCount.ma
