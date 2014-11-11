//Maya ASCII 2012 scene
//Name: testArm.ma
//Last modified: Wed, May 23, 2012 12:51:00 AM
//Codeset: 1252
requires maya "2012";
requires "stereoCamera" "10.0";
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
createNode transform -n "HingeJoint__instance_1:module_grp" -p "character_grp";
	addAttr -ci true -sn "hierarchicalScale" -ln "hierarchicalScale" -at "float";
lockNode -l 1 -lu 1;
createNode transform -n "HingeJoint__instance_1:HOOK_IN" -p "HingeJoint__instance_1:module_grp";
	setAttr ".s";
	setAttr ".sy";
lockNode -l 1 -lu 1;
createNode transform -n "HingeJoint__instance_1:blueprint_joints_grp" -p "HingeJoint__instance_1:HOOK_IN";
	addAttr -ci true -sn "controlModulesInstalled" -ln "controlModulesInstalled" -min 
		0 -max 1 -at "bool";
	setAttr ".ove" yes;
lockNode -l 1 -lu 1;
createNode joint -n "HingeJoint__instance_1:blueprint_root_joint" -p "HingeJoint__instance_1:blueprint_joints_grp";
	setAttr ".t";
	setAttr ".ro";
	setAttr ".s";
	setAttr ".rp";
	setAttr ".rpt";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 179.9999998004611 14.036423091218621 0 ;
	setAttr ".jo";
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 0 -50 0 ;
lockNode -l 1 -lu 1;
createNode joint -n "HingeJoint__instance_1:blueprint_hinge_joint" -p "HingeJoint__instance_1:blueprint_root_joint";
	setAttr ".t" -type "double3" 4.123105525970459 0 5.5511151231257827e-016 ;
	setAttr ".t";
	setAttr ".ro";
	setAttr ".s";
	setAttr ".rp";
	setAttr ".rpt";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 28.072846182437303 0 ;
	setAttr ".jo";
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 0 50 0 ;
lockNode -l 1 -lu 1;
createNode joint -n "HingeJoint__instance_1:blueprint_end_joint" -p "HingeJoint__instance_1:blueprint_hinge_joint";
	setAttr ".t" -type "double3" 4.123105525970459 3.4578755056242158e-025 8.8817841970012523e-016 ;
	setAttr ".t";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
lockNode -l 1 -lu 1;
createNode transform -n "HingeJoint__instance_1:creationPose_joints_grp" -p "HingeJoint__instance_1:HOOK_IN";
lockNode -l 1 -lu 1;
createNode joint -n "HingeJoint__instance_1:creationPose_root_joint" -p "HingeJoint__instance_1:creationPose_joints_grp";
	setAttr ".v" no;
	setAttr ".s";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 179.9999998004611 14.036423091218621 0 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 0 -50 0 ;
lockNode -l 1 -lu 1;
createNode joint -n "HingeJoint__instance_1:creationPose_hinge_joint" -p "HingeJoint__instance_1:creationPose_root_joint";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 4.123105525970459 0 5.5511151231257827e-016 ;
	setAttr ".s";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 28.072846182437303 0 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 0 50 0 ;
lockNode -l 1 -lu 1;
createNode joint -n "HingeJoint__instance_1:creationPose_end_joint" -p "HingeJoint__instance_1:creationPose_hinge_joint";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 4.123105525970459 3.4578755056242158e-025 8.8817841970012523e-016 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
lockNode -l 1 -lu 1;
createNode transform -n "HingeJoint__instance_1:SETTINGS" -p "HingeJoint__instance_1:module_grp";
	addAttr -ci true -sn "activeModule" -ln "activeModule" -min 0 -max 0 -en "None" 
		-at "enum";
	addAttr -ci true -sn "creationPoseWeight" -ln "creationPoseWeight" -dv 1 -at "float";
	setAttr ".v" no;
lockNode -l 1 -lu 1;
createNode locator -n "HingeJoint__instance_1:SETTINGSShape" -p "HingeJoint__instance_1:SETTINGS";
	setAttr -k off ".v";
lockNode -l 1 -lu 1;
createNode transform -n "non_blueprint_grp" -p "character_grp";
	addAttr -ci true -k true -sn "display" -ln "display" -dv 1 -min 0 -max 1 -at "bool";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".rp" -type "double3" 4.1117036057050642 0.027023124285108668 -0.50455231248255994 ;
	setAttr ".sp" -type "double3" 4.1117036057050642 0.027023124285108668 -0.50455231248255994 ;
	setAttr -k on ".display";
lockNode -l 1 -lu 1;
createNode transform -n "blueprint_root_joint_geoAttach_parentGrp1" -p "non_blueprint_grp";
	setAttr ".t";
	setAttr ".r";
	setAttr ".ro";
	setAttr ".s";
	setAttr ".rp";
	setAttr ".rpt";
lockNode -l 1 -lu 1;
createNode parentConstraint -n "blueprint_root_joint_geoAttach_parentGrp1_parentConstraint" 
		-p "blueprint_root_joint_geoAttach_parentGrp1";
	addAttr -ci true -k true -sn "w0" -ln "blueprint_root_jointW0" -dv 1 -min 0 -at "double";
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
	setAttr ".lr" -type "double3" 179.9999998004611 14.036423091218621 0 ;
	setAttr ".rsrr" -type "double3" 179.9999998004611 14.036423091218621 0 ;
	setAttr -k on ".w0";
lockNode -l 1 -lu 1;
createNode scaleConstraint -n "blueprint_root_joint_geoAttach_parentGrp1_scaleConstraint" 
		-p "blueprint_root_joint_geoAttach_parentGrp1";
	addAttr -ci true -k true -sn "w0" -ln "blueprint_root_jointW0" -dv 1 -min 0 -at "double";
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
createNode transform -n "blueprint_root_joint_geoAttach_scaleGrp1" -p "blueprint_root_joint_geoAttach_parentGrp1";
	setAttr ".s";
lockNode -l 1 -lu 1;
createNode transform -n "nurbsCylinder1" -p "blueprint_root_joint_geoAttach_scaleGrp1";
	setAttr ".t" -type "double3" 2.1032366316227487 -0.027023124503709445 0.062769134742980626 ;
	setAttr ".t";
	setAttr ".tx";
	setAttr ".ty";
	setAttr ".tz";
	setAttr ".r" -type "double3" 1.7559576796645269 -13.236904913554143 -91.138310693107442 ;
	setAttr ".r";
	setAttr ".rx";
	setAttr ".ry";
	setAttr ".rz";
	setAttr ".ro";
	setAttr ".s" -type "double3" 1 2.1525267637299663 0.99999999999999989 ;
	setAttr ".rp";
	setAttr ".rpt";
lockNode -l 1 -lu 1;
createNode nurbsSurface -n "nurbsCylinderShape1" -p "nurbsCylinder1";
	setAttr -k off ".v";
	setAttr ".iog";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".tw" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
lockNode -l 1 -lu 1;
createNode transform -n "blueprint_hinge_joint_geoAttach_parentGrp1" -p "non_blueprint_grp";
	setAttr ".t";
	setAttr ".r";
	setAttr ".ro";
	setAttr ".s";
	setAttr ".rp";
	setAttr ".rpt";
lockNode -l 1 -lu 1;
createNode parentConstraint -n "blueprint_hinge_joint_geoAttach_parentGrp1_parentConstraint" 
		-p "blueprint_hinge_joint_geoAttach_parentGrp1";
	addAttr -ci true -k true -sn "w0" -ln "blueprint_hinge_jointW0" -dv 1 -min 0 -at "double";
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
	setAttr ".lr" -type "double3" 179.9999998004611 -14.036423091218682 9.679179675359154e-008 ;
	setAttr ".rst" -type "double3" 3.9999967682905728 -1.9332373295414649e-024 -1.0000125158982316 ;
	setAttr ".rsrr" -type "double3" 179.9999998004611 -14.036423091218682 9.679179675359154e-008 ;
	setAttr -k on ".w0";
lockNode -l 1 -lu 1;
createNode scaleConstraint -n "blueprint_hinge_joint_geoAttach_parentGrp1_scaleConstraint" 
		-p "blueprint_hinge_joint_geoAttach_parentGrp1";
	addAttr -ci true -k true -sn "w0" -ln "blueprint_hinge_jointW0" -dv 1 -min 0 -at "double";
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
createNode transform -n "blueprint_hinge_joint_geoAttach_scaleGrp1" -p "blueprint_hinge_joint_geoAttach_parentGrp1";
	setAttr ".s";
lockNode -l 1 -lu 1;
createNode transform -n "nurbsCylinder2" -p "blueprint_hinge_joint_geoAttach_scaleGrp1";
	setAttr ".t" -type "double3" 2.2178868591439014 -0.027023124437542897 0.043770014116012002 ;
	setAttr ".t";
	setAttr ".tx";
	setAttr ".ty";
	setAttr ".tz";
	setAttr ".r" -type "double3" -3.7006516616874889 -13.284406374778454 -89.885768816719917 ;
	setAttr ".r";
	setAttr ".rx";
	setAttr ".ry";
	setAttr ".rz";
	setAttr ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 2.1525267637299663 1 ;
	setAttr ".rp";
	setAttr ".rpt";
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
createNode container -n "character_container";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr ".isc" yes;
	setAttr -s 4 ".boc";
	setAttr -s 3 ".ish[1:3]" yes yes yes;
	setAttr ".ctor" -type "string" "cat";
	setAttr ".cdat" -type "string" "2012/05/23 00:51:00";
	setAttr ".aal" -type "attributeAlias" {"animControlVis","borderConnections[0]","instance_1_activeModule"
		,"borderConnections[1]","instance_1_creationPoseWeight","borderConnections[2]","displayNonBlueprintNodes"
		,"borderConnections[3]"} ;
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "moduleVisibilityMultiply";
	setAttr ".i1";
	setAttr ".i2";
lockNode -l 1 -lu 1;
createNode reverse -n "reverse_moduleMaintenanceVisibility";
	setAttr ".i";
lockNode -l 1 -lu 1;
createNode hyperLayout -n "hyperLayout3";
	setAttr ".ihi" 0;
	setAttr -s 5 ".hyp";
createNode container -n "HingeJoint__instance_1:module_container";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr ".isc" yes;
	setAttr -s 2 ".boc";
	setAttr ".ctor" -type "string" "cat";
	setAttr ".cdat" -type "string" "2012/05/23 00:43:59";
	setAttr ".aal" -type "attributeAlias" {"activeModule","borderConnections[0]","creationPoseWeight"
		,"borderConnections[1]"} ;
lockNode -l 1 -lu 1;
createNode container -n "non_blueprint_container";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr ".isc" yes;
	setAttr ".ctor" -type "string" "cat";
	setAttr ".cdat" -type "string" "2012/05/23 00:51:00";
	setAttr ".aal" -type "attributeAlias" {"displayNonBlueprintNodes","borderConnections[0]"
		} ;
lockNode -l 1 -lu 1;
createNode hyperLayout -n "hyperLayout2";
	setAttr ".ihi" 0;
	setAttr -s 5 ".hyp";
createNode container -n "HingeJoint__instance_1:blueprint_container";
	setAttr ".isc" yes;
	setAttr ".ctor" -type "string" "cat";
	setAttr ".cdat" -type "string" "2012/05/23 00:43:59";
lockNode -l 1 -lu 1;
createNode hyperLayout -n "hyperLayout1";
	setAttr ".ihi" 0;
	setAttr -s 18 ".hyp";
createNode plusMinusAverage -n "HingeJoint__instance_1:blueprint_hinge_joint_addTx";
	setAttr ".i1";
	setAttr ".i1";
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "HingeJoint__instance_1:blueprint_hinge_joint_dummyRotationsMultiply";
lockNode -l 1 -lu 1;
createNode plusMinusAverage -n "HingeJoint__instance_1:blueprint_root_joint_addRotations";
	setAttr ".i3";
	setAttr ".i3";
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "HingeJoint__instance_1:blueprint_root_joint_dummyRotationsMultiply";
lockNode -l 1 -lu 1;
createNode plusMinusAverage -n "HingeJoint__instance_1:blueprint_hinge_joint_addRotations";
	setAttr ".i3";
	setAttr ".i3";
lockNode -l 1 -lu 1;
createNode plusMinusAverage -n "HingeJoint__instance_1:blueprint_end_joint_addTx";
	setAttr ".i1";
	setAttr ".i1";
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "HingeJoint__instance_1:blueprint_hinge_joint_original_Tx";
	setAttr ".i1" -type "float3" 4.1231055 0 0 ;
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
createNode multiplyDivide -n "HingeJoint__instance_1:blueprint_end_joint_original_Tx";
	setAttr ".i1" -type "float3" 4.1231055 0 0 ;
	setAttr ".i1";
	setAttr -l on ".i1x";
	setAttr ".i2";
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "blueprint_hinge_joint_geoAttach_scaleGrp1_scaleFactor";
	setAttr ".op" 2;
	setAttr ".i1";
	setAttr ".i2" -type "float3" 4.1231055 1 1 ;
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "non_blueprint_visibilityMultiply";
	setAttr ".i1";
	setAttr ".i2";
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "blueprint_root_joint_geoAttach_scaleGrp1_scaleFactor";
	setAttr ".op" 2;
	setAttr ".i1";
	setAttr ".i2" -type "float3" 4.1231055 1 1 ;
lockNode -l 1 -lu 1;
createNode makeNurbCylinder -n "makeNurbCylinder1";
	setAttr ".ax" -type "double3" 0 1 0 ;
lockNode -l 1 -lu 1;
createNode hyperLayout -n "hyperLayout4";
	setAttr ".ihi" 0;
	setAttr -s 17 ".hyp";
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :initialShadingGroup;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultShaderList1;
	setAttr -s 2 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 13 ".u";
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
connectAttr "HingeJoint__instance_1:HOOK_IN.sy" "HingeJoint__instance_1:module_grp.hierarchicalScale"
		 -l on;
connectAttr "character_grp.moduleMaintenanceVisibility" "HingeJoint__instance_1:blueprint_joints_grp.v"
		 -l on;
connectAttr "unitConversion1.o" "HingeJoint__instance_1:blueprint_root_joint.r" 
		-l on;
connectAttr "HingeJoint__instance_1:blueprint_root_joint.s" "HingeJoint__instance_1:blueprint_hinge_joint.is"
		 -l on;
connectAttr "unitConversion2.o" "HingeJoint__instance_1:blueprint_hinge_joint.r"
		 -l on;
connectAttr "HingeJoint__instance_1:blueprint_hinge_joint_addTx.o1" "HingeJoint__instance_1:blueprint_hinge_joint.tx"
		 -l on;
connectAttr "HingeJoint__instance_1:blueprint_hinge_joint.s" "HingeJoint__instance_1:blueprint_end_joint.is"
		 -l on;
connectAttr "HingeJoint__instance_1:blueprint_end_joint_addTx.o1" "HingeJoint__instance_1:blueprint_end_joint.tx"
		 -l on;
connectAttr "HingeJoint__instance_1:creationPose_root_joint.s" "HingeJoint__instance_1:creationPose_hinge_joint.is"
		 -l on;
connectAttr "HingeJoint__instance_1:creationPose_hinge_joint.s" "HingeJoint__instance_1:creationPose_end_joint.is"
		 -l on;
connectAttr "non_blueprint_visibilityMultiply.ox" "non_blueprint_grp.v" -l on;
connectAttr "blueprint_root_joint_geoAttach_parentGrp1_parentConstraint.ctx" "blueprint_root_joint_geoAttach_parentGrp1.tx"
		 -l on;
connectAttr "blueprint_root_joint_geoAttach_parentGrp1_parentConstraint.cty" "blueprint_root_joint_geoAttach_parentGrp1.ty"
		 -l on;
connectAttr "blueprint_root_joint_geoAttach_parentGrp1_parentConstraint.ctz" "blueprint_root_joint_geoAttach_parentGrp1.tz"
		 -l on;
connectAttr "blueprint_root_joint_geoAttach_parentGrp1_parentConstraint.crx" "blueprint_root_joint_geoAttach_parentGrp1.rx"
		 -l on;
connectAttr "blueprint_root_joint_geoAttach_parentGrp1_parentConstraint.cry" "blueprint_root_joint_geoAttach_parentGrp1.ry"
		 -l on;
connectAttr "blueprint_root_joint_geoAttach_parentGrp1_parentConstraint.crz" "blueprint_root_joint_geoAttach_parentGrp1.rz"
		 -l on;
connectAttr "blueprint_root_joint_geoAttach_parentGrp1_scaleConstraint.csx" "blueprint_root_joint_geoAttach_parentGrp1.sx"
		 -l on;
connectAttr "blueprint_root_joint_geoAttach_parentGrp1_scaleConstraint.csy" "blueprint_root_joint_geoAttach_parentGrp1.sy"
		 -l on;
connectAttr "blueprint_root_joint_geoAttach_parentGrp1_scaleConstraint.csz" "blueprint_root_joint_geoAttach_parentGrp1.sz"
		 -l on;
connectAttr "blueprint_root_joint_geoAttach_parentGrp1.ro" "blueprint_root_joint_geoAttach_parentGrp1_parentConstraint.cro"
		 -l on;
connectAttr "blueprint_root_joint_geoAttach_parentGrp1.pim" "blueprint_root_joint_geoAttach_parentGrp1_parentConstraint.cpim"
		 -l on;
connectAttr "blueprint_root_joint_geoAttach_parentGrp1.rp" "blueprint_root_joint_geoAttach_parentGrp1_parentConstraint.crp"
		 -l on;
connectAttr "blueprint_root_joint_geoAttach_parentGrp1.rpt" "blueprint_root_joint_geoAttach_parentGrp1_parentConstraint.crt"
		 -l on;
connectAttr "HingeJoint__instance_1:blueprint_root_joint.t" "blueprint_root_joint_geoAttach_parentGrp1_parentConstraint.tg[0].tt"
		 -l on;
connectAttr "HingeJoint__instance_1:blueprint_root_joint.rp" "blueprint_root_joint_geoAttach_parentGrp1_parentConstraint.tg[0].trp"
		 -l on;
connectAttr "HingeJoint__instance_1:blueprint_root_joint.rpt" "blueprint_root_joint_geoAttach_parentGrp1_parentConstraint.tg[0].trt"
		 -l on;
connectAttr "HingeJoint__instance_1:blueprint_root_joint.r" "blueprint_root_joint_geoAttach_parentGrp1_parentConstraint.tg[0].tr"
		 -l on;
connectAttr "HingeJoint__instance_1:blueprint_root_joint.ro" "blueprint_root_joint_geoAttach_parentGrp1_parentConstraint.tg[0].tro"
		 -l on;
connectAttr "HingeJoint__instance_1:blueprint_root_joint.s" "blueprint_root_joint_geoAttach_parentGrp1_parentConstraint.tg[0].ts"
		 -l on;
connectAttr "HingeJoint__instance_1:blueprint_root_joint.pm" "blueprint_root_joint_geoAttach_parentGrp1_parentConstraint.tg[0].tpm"
		 -l on;
connectAttr "HingeJoint__instance_1:blueprint_root_joint.jo" "blueprint_root_joint_geoAttach_parentGrp1_parentConstraint.tg[0].tjo"
		 -l on;
connectAttr "blueprint_root_joint_geoAttach_parentGrp1_parentConstraint.w0" "blueprint_root_joint_geoAttach_parentGrp1_parentConstraint.tg[0].tw"
		 -l on;
connectAttr "blueprint_root_joint_geoAttach_parentGrp1.pim" "blueprint_root_joint_geoAttach_parentGrp1_scaleConstraint.cpim"
		 -l on;
connectAttr "HingeJoint__instance_1:blueprint_root_joint.s" "blueprint_root_joint_geoAttach_parentGrp1_scaleConstraint.tg[0].ts"
		 -l on;
connectAttr "HingeJoint__instance_1:blueprint_root_joint.pm" "blueprint_root_joint_geoAttach_parentGrp1_scaleConstraint.tg[0].tpm"
		 -l on;
connectAttr "blueprint_root_joint_geoAttach_parentGrp1_scaleConstraint.w0" "blueprint_root_joint_geoAttach_parentGrp1_scaleConstraint.tg[0].tw"
		 -l on;
connectAttr "blueprint_root_joint_geoAttach_scaleGrp1_scaleFactor.ox" "blueprint_root_joint_geoAttach_scaleGrp1.sx"
		 -l on;
connectAttr "makeNurbCylinder1.os" "nurbsCylinderShape1.cr" -l on;
connectAttr "blueprint_hinge_joint_geoAttach_parentGrp1_parentConstraint.ctx" "blueprint_hinge_joint_geoAttach_parentGrp1.tx"
		 -l on;
connectAttr "blueprint_hinge_joint_geoAttach_parentGrp1_parentConstraint.cty" "blueprint_hinge_joint_geoAttach_parentGrp1.ty"
		 -l on;
connectAttr "blueprint_hinge_joint_geoAttach_parentGrp1_parentConstraint.ctz" "blueprint_hinge_joint_geoAttach_parentGrp1.tz"
		 -l on;
connectAttr "blueprint_hinge_joint_geoAttach_parentGrp1_parentConstraint.crx" "blueprint_hinge_joint_geoAttach_parentGrp1.rx"
		 -l on;
connectAttr "blueprint_hinge_joint_geoAttach_parentGrp1_parentConstraint.cry" "blueprint_hinge_joint_geoAttach_parentGrp1.ry"
		 -l on;
connectAttr "blueprint_hinge_joint_geoAttach_parentGrp1_parentConstraint.crz" "blueprint_hinge_joint_geoAttach_parentGrp1.rz"
		 -l on;
connectAttr "blueprint_hinge_joint_geoAttach_parentGrp1_scaleConstraint.csx" "blueprint_hinge_joint_geoAttach_parentGrp1.sx"
		 -l on;
connectAttr "blueprint_hinge_joint_geoAttach_parentGrp1_scaleConstraint.csy" "blueprint_hinge_joint_geoAttach_parentGrp1.sy"
		 -l on;
connectAttr "blueprint_hinge_joint_geoAttach_parentGrp1_scaleConstraint.csz" "blueprint_hinge_joint_geoAttach_parentGrp1.sz"
		 -l on;
connectAttr "blueprint_hinge_joint_geoAttach_parentGrp1.ro" "blueprint_hinge_joint_geoAttach_parentGrp1_parentConstraint.cro"
		 -l on;
connectAttr "blueprint_hinge_joint_geoAttach_parentGrp1.pim" "blueprint_hinge_joint_geoAttach_parentGrp1_parentConstraint.cpim"
		 -l on;
connectAttr "blueprint_hinge_joint_geoAttach_parentGrp1.rp" "blueprint_hinge_joint_geoAttach_parentGrp1_parentConstraint.crp"
		 -l on;
connectAttr "blueprint_hinge_joint_geoAttach_parentGrp1.rpt" "blueprint_hinge_joint_geoAttach_parentGrp1_parentConstraint.crt"
		 -l on;
connectAttr "HingeJoint__instance_1:blueprint_hinge_joint.t" "blueprint_hinge_joint_geoAttach_parentGrp1_parentConstraint.tg[0].tt"
		 -l on;
connectAttr "HingeJoint__instance_1:blueprint_hinge_joint.rp" "blueprint_hinge_joint_geoAttach_parentGrp1_parentConstraint.tg[0].trp"
		 -l on;
connectAttr "HingeJoint__instance_1:blueprint_hinge_joint.rpt" "blueprint_hinge_joint_geoAttach_parentGrp1_parentConstraint.tg[0].trt"
		 -l on;
connectAttr "HingeJoint__instance_1:blueprint_hinge_joint.r" "blueprint_hinge_joint_geoAttach_parentGrp1_parentConstraint.tg[0].tr"
		 -l on;
connectAttr "HingeJoint__instance_1:blueprint_hinge_joint.ro" "blueprint_hinge_joint_geoAttach_parentGrp1_parentConstraint.tg[0].tro"
		 -l on;
connectAttr "HingeJoint__instance_1:blueprint_hinge_joint.s" "blueprint_hinge_joint_geoAttach_parentGrp1_parentConstraint.tg[0].ts"
		 -l on;
connectAttr "HingeJoint__instance_1:blueprint_hinge_joint.pm" "blueprint_hinge_joint_geoAttach_parentGrp1_parentConstraint.tg[0].tpm"
		 -l on;
connectAttr "HingeJoint__instance_1:blueprint_hinge_joint.jo" "blueprint_hinge_joint_geoAttach_parentGrp1_parentConstraint.tg[0].tjo"
		 -l on;
connectAttr "blueprint_hinge_joint_geoAttach_parentGrp1_parentConstraint.w0" "blueprint_hinge_joint_geoAttach_parentGrp1_parentConstraint.tg[0].tw"
		 -l on;
connectAttr "blueprint_hinge_joint_geoAttach_parentGrp1.pim" "blueprint_hinge_joint_geoAttach_parentGrp1_scaleConstraint.cpim"
		 -l on;
connectAttr "HingeJoint__instance_1:blueprint_hinge_joint.s" "blueprint_hinge_joint_geoAttach_parentGrp1_scaleConstraint.tg[0].ts"
		 -l on;
connectAttr "HingeJoint__instance_1:blueprint_hinge_joint.pm" "blueprint_hinge_joint_geoAttach_parentGrp1_scaleConstraint.tg[0].tpm"
		 -l on;
connectAttr "blueprint_hinge_joint_geoAttach_parentGrp1_scaleConstraint.w0" "blueprint_hinge_joint_geoAttach_parentGrp1_scaleConstraint.tg[0].tw"
		 -l on;
connectAttr "blueprint_hinge_joint_geoAttach_scaleGrp1_scaleFactor.ox" "blueprint_hinge_joint_geoAttach_scaleGrp1.sx"
		 -l on;
connectAttr "character_grp.animationControlVisibility" "character_container.boc[0]"
		 -l on;
connectAttr "HingeJoint__instance_1:module_container.boc[0]" "character_container.boc[1]"
		 -l on;
connectAttr "HingeJoint__instance_1:module_container.boc[1]" "character_container.boc[2]"
		 -l on;
connectAttr "non_blueprint_container.boc[0]" "character_container.boc[3]" -l on;
connectAttr "hyperLayout3.msg" "character_container.hl" -l on;
connectAttr "reverse_moduleMaintenanceVisibility.ox" "moduleVisibilityMultiply.i1x"
		 -l on;
connectAttr "character_grp.animationControlVisibility" "moduleVisibilityMultiply.i2x"
		 -l on;
connectAttr "character_grp.moduleMaintenanceVisibility" "reverse_moduleMaintenanceVisibility.ix"
		 -l on;
connectAttr "HingeJoint__instance_1:module_container.msg" "hyperLayout3.hyp[0].dn"
		;
connectAttr "character_grp.msg" "hyperLayout3.hyp[1].dn";
connectAttr "reverse_moduleMaintenanceVisibility.msg" "hyperLayout3.hyp[2].dn";
connectAttr "moduleVisibilityMultiply.msg" "hyperLayout3.hyp[3].dn";
connectAttr "non_blueprint_container.msg" "hyperLayout3.hyp[4].dn";
connectAttr "HingeJoint__instance_1:SETTINGS.activeModule" "HingeJoint__instance_1:module_container.boc[0]"
		;
connectAttr "HingeJoint__instance_1:SETTINGS.creationPoseWeight" "HingeJoint__instance_1:module_container.boc[1]"
		;
connectAttr "hyperLayout2.msg" "HingeJoint__instance_1:module_container.hl" -l on
		;
connectAttr "non_blueprint_grp.display" "non_blueprint_container.boc[0]";
connectAttr "hyperLayout4.msg" "non_blueprint_container.hl" -l on;
connectAttr "HingeJoint__instance_1:module_grp.msg" "hyperLayout2.hyp[0].dn";
connectAttr "HingeJoint__instance_1:HOOK_IN.msg" "hyperLayout2.hyp[1].dn";
connectAttr "HingeJoint__instance_1:SETTINGS.msg" "hyperLayout2.hyp[2].dn";
connectAttr "HingeJoint__instance_1:blueprint_container.msg" "hyperLayout2.hyp[3].dn"
		;
connectAttr "HingeJoint__instance_1:SETTINGSShape.msg" "hyperLayout2.hyp[4].dn";
connectAttr "hyperLayout1.msg" "HingeJoint__instance_1:blueprint_container.hl" -l
		 on;
connectAttr "HingeJoint__instance_1:blueprint_root_joint_addRotations.msg" "hyperLayout1.hyp[0].dn"
		;
connectAttr "HingeJoint__instance_1:blueprint_root_joint_dummyRotationsMultiply.msg" "hyperLayout1.hyp[1].dn"
		;
connectAttr "HingeJoint__instance_1:blueprint_hinge_joint_addRotations.msg" "hyperLayout1.hyp[2].dn"
		;
connectAttr "HingeJoint__instance_1:blueprint_hinge_joint_dummyRotationsMultiply.msg" "hyperLayout1.hyp[3].dn"
		;
connectAttr "HingeJoint__instance_1:blueprint_hinge_joint_addTx.msg" "hyperLayout1.hyp[4].dn"
		;
connectAttr "HingeJoint__instance_1:blueprint_hinge_joint_original_Tx.msg" "hyperLayout1.hyp[5].dn"
		;
connectAttr "HingeJoint__instance_1:blueprint_end_joint_addTx.msg" "hyperLayout1.hyp[6].dn"
		;
connectAttr "HingeJoint__instance_1:blueprint_end_joint_original_Tx.msg" "hyperLayout1.hyp[7].dn"
		;
connectAttr "HingeJoint__instance_1:blueprint_joints_grp.msg" "hyperLayout1.hyp[8].dn"
		;
connectAttr "HingeJoint__instance_1:creationPose_joints_grp.msg" "hyperLayout1.hyp[9].dn"
		;
connectAttr "unitConversion1.msg" "hyperLayout1.hyp[10].dn";
connectAttr "unitConversion2.msg" "hyperLayout1.hyp[11].dn";
connectAttr "HingeJoint__instance_1:blueprint_root_joint.msg" "hyperLayout1.hyp[12].dn"
		;
connectAttr "HingeJoint__instance_1:blueprint_hinge_joint.msg" "hyperLayout1.hyp[13].dn"
		;
connectAttr "HingeJoint__instance_1:blueprint_end_joint.msg" "hyperLayout1.hyp[14].dn"
		;
connectAttr "HingeJoint__instance_1:creationPose_root_joint.msg" "hyperLayout1.hyp[15].dn"
		;
connectAttr "HingeJoint__instance_1:creationPose_hinge_joint.msg" "hyperLayout1.hyp[16].dn"
		;
connectAttr "HingeJoint__instance_1:creationPose_end_joint.msg" "hyperLayout1.hyp[17].dn"
		;
connectAttr "HingeJoint__instance_1:blueprint_hinge_joint_original_Tx.ox" "HingeJoint__instance_1:blueprint_hinge_joint_addTx.i1[0]"
		 -l on;
connectAttr "HingeJoint__instance_1:blueprint_root_joint_dummyRotationsMultiply.o" "HingeJoint__instance_1:blueprint_root_joint_addRotations.i3[0]"
		 -l on;
connectAttr "HingeJoint__instance_1:blueprint_hinge_joint_dummyRotationsMultiply.o" "HingeJoint__instance_1:blueprint_hinge_joint_addRotations.i3[0]"
		 -l on;
connectAttr "HingeJoint__instance_1:blueprint_end_joint_original_Tx.ox" "HingeJoint__instance_1:blueprint_end_joint_addTx.i1[0]"
		 -l on;
connectAttr "HingeJoint__instance_1:SETTINGS.creationPoseWeight" "HingeJoint__instance_1:blueprint_hinge_joint_original_Tx.i2x"
		 -l on;
connectAttr "HingeJoint__instance_1:blueprint_root_joint_addRotations.o3" "unitConversion1.i"
		 -l on;
connectAttr "HingeJoint__instance_1:blueprint_hinge_joint_addRotations.o3" "unitConversion2.i"
		 -l on;
connectAttr "HingeJoint__instance_1:SETTINGS.creationPoseWeight" "HingeJoint__instance_1:blueprint_end_joint_original_Tx.i2x"
		 -l on;
connectAttr "HingeJoint__instance_1:blueprint_end_joint.tx" "blueprint_hinge_joint_geoAttach_scaleGrp1_scaleFactor.i1x"
		 -l on;
connectAttr "reverse_moduleMaintenanceVisibility.ox" "non_blueprint_visibilityMultiply.i1x"
		 -l on;
connectAttr "non_blueprint_grp.display" "non_blueprint_visibilityMultiply.i2x" -l
		 on;
connectAttr "HingeJoint__instance_1:blueprint_hinge_joint.tx" "blueprint_root_joint_geoAttach_scaleGrp1_scaleFactor.i1x"
		 -l on;
connectAttr "non_blueprint_grp.msg" "hyperLayout4.hyp[0].dn";
connectAttr "blueprint_root_joint_geoAttach_parentGrp1.msg" "hyperLayout4.hyp[1].dn"
		;
connectAttr "blueprint_root_joint_geoAttach_parentGrp1_parentConstraint.msg" "hyperLayout4.hyp[2].dn"
		;
connectAttr "blueprint_root_joint_geoAttach_parentGrp1_scaleConstraint.msg" "hyperLayout4.hyp[3].dn"
		;
connectAttr "blueprint_root_joint_geoAttach_scaleGrp1.msg" "hyperLayout4.hyp[4].dn"
		;
connectAttr "nurbsCylinder1.msg" "hyperLayout4.hyp[5].dn";
connectAttr "nurbsCylinderShape1.msg" "hyperLayout4.hyp[6].dn";
connectAttr "blueprint_hinge_joint_geoAttach_parentGrp1.msg" "hyperLayout4.hyp[7].dn"
		;
connectAttr "blueprint_hinge_joint_geoAttach_parentGrp1_parentConstraint.msg" "hyperLayout4.hyp[8].dn"
		;
connectAttr "blueprint_hinge_joint_geoAttach_parentGrp1_scaleConstraint.msg" "hyperLayout4.hyp[9].dn"
		;
connectAttr "blueprint_hinge_joint_geoAttach_scaleGrp1.msg" "hyperLayout4.hyp[10].dn"
		;
connectAttr "nurbsCylinder2.msg" "hyperLayout4.hyp[11].dn";
connectAttr "nurbsCylinderShape2.msg" "hyperLayout4.hyp[12].dn";
connectAttr "blueprint_hinge_joint_geoAttach_scaleGrp1_scaleFactor.msg" "hyperLayout4.hyp[13].dn"
		;
connectAttr "non_blueprint_visibilityMultiply.msg" "hyperLayout4.hyp[14].dn";
connectAttr "blueprint_root_joint_geoAttach_scaleGrp1_scaleFactor.msg" "hyperLayout4.hyp[15].dn"
		;
connectAttr "makeNurbCylinder1.msg" "hyperLayout4.hyp[16].dn";
connectAttr "nurbsCylinderShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "nurbsCylinderShape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "HingeJoint__instance_1:blueprint_root_joint_addRotations.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "HingeJoint__instance_1:blueprint_root_joint_dummyRotationsMultiply.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "HingeJoint__instance_1:blueprint_hinge_joint_addRotations.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "HingeJoint__instance_1:blueprint_hinge_joint_dummyRotationsMultiply.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "HingeJoint__instance_1:blueprint_hinge_joint_addTx.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "HingeJoint__instance_1:blueprint_hinge_joint_original_Tx.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "HingeJoint__instance_1:blueprint_end_joint_addTx.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "HingeJoint__instance_1:blueprint_end_joint_original_Tx.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "blueprint_root_joint_geoAttach_scaleGrp1_scaleFactor.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "blueprint_hinge_joint_geoAttach_scaleGrp1_scaleFactor.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "reverse_moduleMaintenanceVisibility.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "moduleVisibilityMultiply.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "non_blueprint_visibilityMultiply.msg" ":defaultRenderUtilityList1.u"
		 -na;
// End of testArm.ma
