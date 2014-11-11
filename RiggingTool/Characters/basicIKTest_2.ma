//Maya ASCII 2012 scene
//Name: basicIKTest_2.ma
//Last modified: Tue, May 22, 2012 12:59:24 AM
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
createNode transform -n "RootTransform__instance_1:module_grp" -p "character_grp";
	addAttr -ci true -sn "hierarchicalScale" -ln "hierarchicalScale" -at "float";
lockNode -l 1 -lu 1;
createNode transform -n "RootTransform__instance_1:HOOK_IN" -p "RootTransform__instance_1:module_grp";
	setAttr ".s";
	setAttr ".sy";
lockNode -l 1 -lu 1;
createNode transform -n "RootTransform__instance_1:blueprint_joints_grp" -p "RootTransform__instance_1:HOOK_IN";
	addAttr -ci true -sn "controlModulesInstalled" -ln "controlModulesInstalled" -min 
		0 -max 1 -at "bool";
	setAttr ".ove" yes;
lockNode -l 1 -lu 1;
createNode joint -n "RootTransform__instance_1:blueprint_joint" -p "RootTransform__instance_1:blueprint_joints_grp";
	setAttr ".ro";
	setAttr ".rp";
	setAttr ".rpt";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo";
	setAttr ".ssc" no;
	setAttr ".radi" 1.5;
lockNode -l 1 -lu 1;
createNode transform -n "RootTransform__instance_1:creationPose_joints_grp" -p "RootTransform__instance_1:HOOK_IN";
lockNode -l 1 -lu 1;
createNode joint -n "RootTransform__instance_1:creationPose_joint" -p "RootTransform__instance_1:creationPose_joints_grp";
	setAttr ".v" no;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".radi" 1.5;
lockNode -l 1 -lu 1;
createNode transform -n "RootTransform__instance_1:SETTINGS" -p "RootTransform__instance_1:module_grp";
	addAttr -ci true -sn "activeModule" -ln "activeModule" -min 0 -max 0 -en "None" 
		-at "enum";
	addAttr -ci true -sn "creationPoseWeight" -ln "creationPoseWeight" -dv 1 -at "float";
	setAttr ".v" no;
lockNode -l 1 -lu 1;
createNode locator -n "RootTransform__instance_1:SETTINGSShape" -p "RootTransform__instance_1:SETTINGS";
	setAttr -k off ".v";
lockNode -l 1 -lu 1;
createNode transform -n "SingleJointSegment__instance_2:module_grp" -p "character_grp";
	addAttr -ci true -sn "hierarchicalScale" -ln "hierarchicalScale" -at "float";
lockNode -l 1 -lu 1;
createNode transform -n "SingleJointSegment__instance_2:HOOK_IN" -p "SingleJointSegment__instance_2:module_grp";
	setAttr ".t";
	setAttr ".r";
	setAttr ".ro";
	setAttr ".s";
	setAttr ".rp";
	setAttr ".rpt";
lockNode -l 1 -lu 1;
createNode transform -n "SingleJointSegment__instance_2:blueprint_joints_grp" -p
		 "SingleJointSegment__instance_2:HOOK_IN";
	addAttr -ci true -sn "controlModulesInstalled" -ln "controlModulesInstalled" -min 
		0 -max 1 -at "bool";
	setAttr ".ove" yes;
lockNode -l 1 -lu 1;
createNode joint -n "SingleJointSegment__instance_2:blueprint_root_joint" -p "SingleJointSegment__instance_2:blueprint_joints_grp";
	setAttr ".t" -type "double3" 0 6.2522910551868121 0 ;
	setAttr ".t";
	setAttr ".ro";
	setAttr ".s";
	setAttr ".rp";
	setAttr ".rpt";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo";
	setAttr ".ssc" no;
lockNode -l 1 -lu 1;
createNode joint -n "SingleJointSegment__instance_2:blueprint_end_joint" -p "SingleJointSegment__instance_2:blueprint_root_joint";
	setAttr ".t";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
lockNode -l 1 -lu 1;
createNode transform -n "SingleJointSegment__instance_2:creationPose_joints_grp" 
		-p "SingleJointSegment__instance_2:HOOK_IN";
lockNode -l 1 -lu 1;
createNode joint -n "SingleJointSegment__instance_2:creationPose_root_joint" -p "SingleJointSegment__instance_2:creationPose_joints_grp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 6.2522910551868121 0 ;
	setAttr ".s";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
lockNode -l 1 -lu 1;
createNode joint -n "SingleJointSegment__instance_2:creationPose_end_joint" -p "SingleJointSegment__instance_2:creationPose_root_joint";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 4 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
lockNode -l 1 -lu 1;
createNode parentConstraint -n "SingleJointSegment__instance_2:hook_parent_constraint" 
		-p "SingleJointSegment__instance_2:HOOK_IN";
	addAttr -ci true -k true -sn "w0" -ln "blueprint_jointW0" -dv 1 -min 0 -at "double";
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
createNode scaleConstraint -n "SingleJointSegment__instance_2:hook_scale_constraint" 
		-p "SingleJointSegment__instance_2:HOOK_IN";
	addAttr -ci true -k true -sn "w0" -ln "blueprint_jointW0" -dv 1 -min 0 -at "double";
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
createNode transform -n "SingleJointSegment__instance_2:SETTINGS" -p "SingleJointSegment__instance_2:module_grp";
	addAttr -ci true -sn "activeModule" -ln "activeModule" -min 0 -max 0 -en "None" 
		-at "enum";
	addAttr -ci true -sn "creationPoseWeight" -ln "creationPoseWeight" -dv 1 -at "float";
	setAttr ".v" no;
lockNode -l 1 -lu 1;
createNode locator -n "SingleJointSegment__instance_2:SETTINGSShape" -p "SingleJointSegment__instance_2:SETTINGS";
	setAttr -k off ".v";
lockNode -l 1 -lu 1;
createNode transform -n "non_blueprint_grp" -p "character_grp";
	addAttr -ci true -k true -sn "display" -ln "display" -dv 1 -min 0 -max 1 -at "bool";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".rp" -type "double3" 1.9986829618413848 6.4173595465754527 0 ;
	setAttr ".sp" -type "double3" 1.9986829618413848 6.4173595465754527 0 ;
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
	setAttr ".rst" -type "double3" 0 6.2522910551868121 0 ;
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
	setAttr ".t" -type "double3" 0.76982596247783641 0.16506849138863977 0 ;
	setAttr ".r" -type "double3" 0 0 89.999999999999986 ;
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
		0.7836116248912256 -3.4577139987270957 -0.78361162489122516
		1.1081941875543897 -3.4577139987270957 6.51993661209256e-017
		0.78361162489122604 -3.4577139987270957 0.78361162489122416
		2.0974837901239742e-015 -3.4577139987270957 1.1081941875543879
		-0.78361162489122227 -3.4577139987270957 0.78361162489122438
		-1.1081941875543864 -3.4577139987270957 2.7268819640168427e-016
		-0.7836116248912226 -3.4577139987270957 -0.78361162489122393
		1.1811435794721923e-015 -3.4577139987270957 -1.1081941875543879
		0.7836116248912256 -3.4577139987270957 -0.78361162489122516
		1.1081941875543897 -3.4577139987270957 6.51993661209256e-017
		0.78361162489122604 -3.4577139987270957 0.78361162489122416
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
	setAttr -s 6 ".boc";
	setAttr -s 5 ".ish[1:5]" yes yes yes yes yes;
	setAttr ".ctor" -type "string" "cat";
	setAttr ".cdat" -type "string" "2012/05/22 00:59:24";
	setAttr ".aal" -type "attributeAlias" {"animControlVis","borderConnections[0]","instance_1_activeModule"
		,"borderConnections[1]","instance_1_creationPoseWeight","borderConnections[2]","instance_2_activeModule"
		,"borderConnections[3]","instance_2_creationPoseWeight","borderConnections[4]","displayNonBlueprintNodes"
		,"borderConnections[5]"} ;
lockNode -l 1 -lu 1;
createNode container -n "SingleJointSegment__instance_2:module_container";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr ".isc" yes;
	setAttr -s 2 ".boc";
	setAttr ".ctor" -type "string" "cat";
	setAttr ".cdat" -type "string" "2012/05/22 00:57:39";
	setAttr ".aal" -type "attributeAlias" {"activeModule","borderConnections[0]","creationPoseWeight"
		,"borderConnections[1]"} ;
lockNode -l 1 -lu 1;
createNode container -n "RootTransform__instance_1:module_container";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr ".isc" yes;
	setAttr -s 2 ".boc";
	setAttr ".ctor" -type "string" "cat";
	setAttr ".cdat" -type "string" "2012/05/22 00:57:39";
	setAttr ".aal" -type "attributeAlias" {"activeModule","borderConnections[0]","creationPoseWeight"
		,"borderConnections[1]"} ;
lockNode -l 1 -lu 1;
createNode hyperLayout -n "hyperLayout9";
	setAttr ".ihi" 0;
	setAttr -s 6 ".hyp";
createNode reverse -n "reverse_moduleMaintenanceVisibility";
	setAttr ".i";
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "moduleVisibilityMultiply";
	setAttr ".i1";
	setAttr ".i2";
lockNode -l 1 -lu 1;
createNode container -n "non_blueprint_container";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr ".isc" yes;
	setAttr ".ctor" -type "string" "cat";
	setAttr ".cdat" -type "string" "2012/05/22 00:59:24";
	setAttr ".aal" -type "attributeAlias" {"displayNonBlueprintNodes","borderConnections[0]"
		} ;
lockNode -l 1 -lu 1;
createNode container -n "SingleJointSegment__instance_2:blueprint_container";
	setAttr ".isc" yes;
	setAttr ".ctor" -type "string" "cat";
	setAttr ".cdat" -type "string" "2012/05/22 00:57:39";
lockNode -l 1 -lu 1;
createNode hyperLayout -n "hyperLayout8";
	setAttr ".ihi" 0;
	setAttr -s 7 ".hyp";
createNode unitConversion -n "unitConversion1";
	setAttr ".cf" 0.017453292519943295;
lockNode -l 1 -lu 1;
createNode plusMinusAverage -n "RootTransform__instance_1:blueprint_joint_addRotations";
	setAttr ".i3";
	setAttr ".i3";
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "RootTransform__instance_1:blueprint_joint_dummyRotationsMultiply";
lockNode -l 1 -lu 1;
createNode plusMinusAverage -n "RootTransform__instance_1:blueprint_joint_addTranslate";
	setAttr ".i3";
	setAttr ".i3";
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "RootTransform__instance_1:blueprint_joint_original_Translate";
	setAttr ".i2";
lockNode -l 1 -lu 1;
createNode plusMinusAverage -n "RootTransform__instance_1:blueprint_joint_addScale";
	setAttr ".i3";
	setAttr ".i3";
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "RootTransform__instance_1:blueprint_joint_original_scale";
	setAttr ".i1" -type "float3" 1 1 1 ;
	setAttr ".i2";
lockNode -l 1 -lu 1;
createNode unitConversion -n "unitConversion2";
	setAttr ".cf" 0.017453292519943295;
lockNode -l 1 -lu 1;
createNode hyperLayout -n "hyperLayout7";
	setAttr ".ihi" 0;
	setAttr -s 11 ".hyp";
createNode multiplyDivide -n "SingleJointSegment__instance_2:blueprint_end_joint_original_Tx";
	setAttr ".i1" -type "float3" 4 0 0 ;
	setAttr ".i1";
	setAttr -l on ".i1x";
	setAttr ".i2";
lockNode -l 1 -lu 1;
createNode plusMinusAverage -n "SingleJointSegment__instance_2:blueprint_end_joint_addTx";
	setAttr ".i1";
	setAttr ".i1";
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "SingleJointSegment__instance_2:blueprint_root_joint_dummyRotationsMultiply";
lockNode -l 1 -lu 1;
createNode plusMinusAverage -n "SingleJointSegment__instance_2:blueprint_root_joint_addRotations";
	setAttr ".i3";
	setAttr ".i3";
lockNode -l 1 -lu 1;
createNode container -n "RootTransform__instance_1:blueprint_container";
	setAttr ".isc" yes;
	setAttr ".ctor" -type "string" "cat";
	setAttr ".cdat" -type "string" "2012/05/22 00:57:39";
lockNode -l 1 -lu 1;
createNode hyperLayout -n "hyperLayout6";
	setAttr ".ihi" 0;
	setAttr -s 5 ".hyp";
createNode hyperLayout -n "hyperLayout5";
	setAttr ".ihi" 0;
	setAttr -s 11 ".hyp";
createNode multiplyDivide -n "non_blueprint_visibilityMultiply";
	setAttr ".i1";
	setAttr ".i2";
lockNode -l 1 -lu 1;
createNode hyperLayout -n "hyperLayout10";
	setAttr ".ihi" 0;
	setAttr -s 9 ".hyp";
createNode multiplyDivide -n "blueprint_root_joint_geoAttach_scaleGrp1_scaleFactor";
	setAttr ".op" 2;
	setAttr ".i1";
	setAttr ".i2" -type "float3" 4 1 1 ;
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
	setAttr -s 14 ".u";
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
connectAttr "RootTransform__instance_1:HOOK_IN.sy" "RootTransform__instance_1:module_grp.hierarchicalScale"
		 -l on;
connectAttr "character_grp.moduleMaintenanceVisibility" "RootTransform__instance_1:blueprint_joints_grp.v"
		 -l on;
connectAttr "unitConversion1.o" "RootTransform__instance_1:blueprint_joint.r" -l
		 on;
connectAttr "RootTransform__instance_1:blueprint_joint_addTranslate.o3" "RootTransform__instance_1:blueprint_joint.t"
		 -l on;
connectAttr "RootTransform__instance_1:blueprint_joint_addScale.o3" "RootTransform__instance_1:blueprint_joint.s"
		 -l on;
connectAttr "SingleJointSegment__instance_2:HOOK_IN.sy" "SingleJointSegment__instance_2:module_grp.hierarchicalScale"
		 -l on;
connectAttr "SingleJointSegment__instance_2:hook_scale_constraint.csy" "SingleJointSegment__instance_2:HOOK_IN.sy"
		 -l on;
connectAttr "SingleJointSegment__instance_2:hook_scale_constraint.csx" "SingleJointSegment__instance_2:HOOK_IN.sx"
		 -l on;
connectAttr "SingleJointSegment__instance_2:hook_scale_constraint.csz" "SingleJointSegment__instance_2:HOOK_IN.sz"
		 -l on;
connectAttr "SingleJointSegment__instance_2:hook_parent_constraint.ctx" "SingleJointSegment__instance_2:HOOK_IN.tx"
		 -l on;
connectAttr "SingleJointSegment__instance_2:hook_parent_constraint.cty" "SingleJointSegment__instance_2:HOOK_IN.ty"
		 -l on;
connectAttr "SingleJointSegment__instance_2:hook_parent_constraint.ctz" "SingleJointSegment__instance_2:HOOK_IN.tz"
		 -l on;
connectAttr "SingleJointSegment__instance_2:hook_parent_constraint.crx" "SingleJointSegment__instance_2:HOOK_IN.rx"
		 -l on;
connectAttr "SingleJointSegment__instance_2:hook_parent_constraint.cry" "SingleJointSegment__instance_2:HOOK_IN.ry"
		 -l on;
connectAttr "SingleJointSegment__instance_2:hook_parent_constraint.crz" "SingleJointSegment__instance_2:HOOK_IN.rz"
		 -l on;
connectAttr "character_grp.moduleMaintenanceVisibility" "SingleJointSegment__instance_2:blueprint_joints_grp.v"
		 -l on;
connectAttr "unitConversion2.o" "SingleJointSegment__instance_2:blueprint_root_joint.r"
		 -l on;
connectAttr "SingleJointSegment__instance_2:blueprint_root_joint.s" "SingleJointSegment__instance_2:blueprint_end_joint.is"
		 -l on;
connectAttr "SingleJointSegment__instance_2:blueprint_end_joint_addTx.o1" "SingleJointSegment__instance_2:blueprint_end_joint.tx"
		 -l on;
connectAttr "SingleJointSegment__instance_2:creationPose_root_joint.s" "SingleJointSegment__instance_2:creationPose_end_joint.is"
		 -l on;
connectAttr "SingleJointSegment__instance_2:HOOK_IN.ro" "SingleJointSegment__instance_2:hook_parent_constraint.cro"
		 -l on;
connectAttr "SingleJointSegment__instance_2:HOOK_IN.pim" "SingleJointSegment__instance_2:hook_parent_constraint.cpim"
		 -l on;
connectAttr "SingleJointSegment__instance_2:HOOK_IN.rp" "SingleJointSegment__instance_2:hook_parent_constraint.crp"
		 -l on;
connectAttr "SingleJointSegment__instance_2:HOOK_IN.rpt" "SingleJointSegment__instance_2:hook_parent_constraint.crt"
		 -l on;
connectAttr "RootTransform__instance_1:blueprint_joint.t" "SingleJointSegment__instance_2:hook_parent_constraint.tg[0].tt"
		 -l on;
connectAttr "RootTransform__instance_1:blueprint_joint.rp" "SingleJointSegment__instance_2:hook_parent_constraint.tg[0].trp"
		 -l on;
connectAttr "RootTransform__instance_1:blueprint_joint.rpt" "SingleJointSegment__instance_2:hook_parent_constraint.tg[0].trt"
		 -l on;
connectAttr "RootTransform__instance_1:blueprint_joint.r" "SingleJointSegment__instance_2:hook_parent_constraint.tg[0].tr"
		 -l on;
connectAttr "RootTransform__instance_1:blueprint_joint.ro" "SingleJointSegment__instance_2:hook_parent_constraint.tg[0].tro"
		 -l on;
connectAttr "RootTransform__instance_1:blueprint_joint.s" "SingleJointSegment__instance_2:hook_parent_constraint.tg[0].ts"
		 -l on;
connectAttr "RootTransform__instance_1:blueprint_joint.pm" "SingleJointSegment__instance_2:hook_parent_constraint.tg[0].tpm"
		 -l on;
connectAttr "RootTransform__instance_1:blueprint_joint.jo" "SingleJointSegment__instance_2:hook_parent_constraint.tg[0].tjo"
		 -l on;
connectAttr "SingleJointSegment__instance_2:hook_parent_constraint.w0" "SingleJointSegment__instance_2:hook_parent_constraint.tg[0].tw"
		 -l on;
connectAttr "SingleJointSegment__instance_2:HOOK_IN.pim" "SingleJointSegment__instance_2:hook_scale_constraint.cpim"
		 -l on;
connectAttr "RootTransform__instance_1:blueprint_joint.s" "SingleJointSegment__instance_2:hook_scale_constraint.tg[0].ts"
		 -l on;
connectAttr "RootTransform__instance_1:blueprint_joint.pm" "SingleJointSegment__instance_2:hook_scale_constraint.tg[0].tpm"
		 -l on;
connectAttr "SingleJointSegment__instance_2:hook_scale_constraint.w0" "SingleJointSegment__instance_2:hook_scale_constraint.tg[0].tw"
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
connectAttr "SingleJointSegment__instance_2:blueprint_root_joint.t" "blueprint_root_joint_geoAttach_parentGrp1_parentConstraint.tg[0].tt"
		 -l on;
connectAttr "SingleJointSegment__instance_2:blueprint_root_joint.rp" "blueprint_root_joint_geoAttach_parentGrp1_parentConstraint.tg[0].trp"
		 -l on;
connectAttr "SingleJointSegment__instance_2:blueprint_root_joint.rpt" "blueprint_root_joint_geoAttach_parentGrp1_parentConstraint.tg[0].trt"
		 -l on;
connectAttr "SingleJointSegment__instance_2:blueprint_root_joint.r" "blueprint_root_joint_geoAttach_parentGrp1_parentConstraint.tg[0].tr"
		 -l on;
connectAttr "SingleJointSegment__instance_2:blueprint_root_joint.ro" "blueprint_root_joint_geoAttach_parentGrp1_parentConstraint.tg[0].tro"
		 -l on;
connectAttr "SingleJointSegment__instance_2:blueprint_root_joint.s" "blueprint_root_joint_geoAttach_parentGrp1_parentConstraint.tg[0].ts"
		 -l on;
connectAttr "SingleJointSegment__instance_2:blueprint_root_joint.pm" "blueprint_root_joint_geoAttach_parentGrp1_parentConstraint.tg[0].tpm"
		 -l on;
connectAttr "SingleJointSegment__instance_2:blueprint_root_joint.jo" "blueprint_root_joint_geoAttach_parentGrp1_parentConstraint.tg[0].tjo"
		 -l on;
connectAttr "blueprint_root_joint_geoAttach_parentGrp1_parentConstraint.w0" "blueprint_root_joint_geoAttach_parentGrp1_parentConstraint.tg[0].tw"
		 -l on;
connectAttr "blueprint_root_joint_geoAttach_parentGrp1.pim" "blueprint_root_joint_geoAttach_parentGrp1_scaleConstraint.cpim"
		 -l on;
connectAttr "SingleJointSegment__instance_2:blueprint_root_joint.s" "blueprint_root_joint_geoAttach_parentGrp1_scaleConstraint.tg[0].ts"
		 -l on;
connectAttr "SingleJointSegment__instance_2:blueprint_root_joint.pm" "blueprint_root_joint_geoAttach_parentGrp1_scaleConstraint.tg[0].tpm"
		 -l on;
connectAttr "blueprint_root_joint_geoAttach_parentGrp1_scaleConstraint.w0" "blueprint_root_joint_geoAttach_parentGrp1_scaleConstraint.tg[0].tw"
		 -l on;
connectAttr "blueprint_root_joint_geoAttach_scaleGrp1_scaleFactor.ox" "blueprint_root_joint_geoAttach_scaleGrp1.sx"
		 -l on;
connectAttr "character_grp.animationControlVisibility" "character_container.boc[0]"
		 -l on;
connectAttr "RootTransform__instance_1:module_container.boc[0]" "character_container.boc[1]"
		 -l on;
connectAttr "RootTransform__instance_1:module_container.boc[1]" "character_container.boc[2]"
		 -l on;
connectAttr "SingleJointSegment__instance_2:module_container.boc[0]" "character_container.boc[3]"
		 -l on;
connectAttr "SingleJointSegment__instance_2:module_container.boc[1]" "character_container.boc[4]"
		 -l on;
connectAttr "non_blueprint_container.boc[0]" "character_container.boc[5]" -l on;
connectAttr "hyperLayout9.msg" "character_container.hl" -l on;
connectAttr "SingleJointSegment__instance_2:SETTINGS.activeModule" "SingleJointSegment__instance_2:module_container.boc[0]"
		;
connectAttr "SingleJointSegment__instance_2:SETTINGS.creationPoseWeight" "SingleJointSegment__instance_2:module_container.boc[1]"
		;
connectAttr "hyperLayout8.msg" "SingleJointSegment__instance_2:module_container.hl"
		 -l on;
connectAttr "RootTransform__instance_1:SETTINGS.activeModule" "RootTransform__instance_1:module_container.boc[0]"
		;
connectAttr "RootTransform__instance_1:SETTINGS.creationPoseWeight" "RootTransform__instance_1:module_container.boc[1]"
		;
connectAttr "hyperLayout6.msg" "RootTransform__instance_1:module_container.hl" -l
		 on;
connectAttr "RootTransform__instance_1:module_container.msg" "hyperLayout9.hyp[0].dn"
		;
connectAttr "SingleJointSegment__instance_2:module_container.msg" "hyperLayout9.hyp[1].dn"
		;
connectAttr "character_grp.msg" "hyperLayout9.hyp[2].dn";
connectAttr "reverse_moduleMaintenanceVisibility.msg" "hyperLayout9.hyp[3].dn";
connectAttr "moduleVisibilityMultiply.msg" "hyperLayout9.hyp[4].dn";
connectAttr "non_blueprint_container.msg" "hyperLayout9.hyp[5].dn";
connectAttr "character_grp.moduleMaintenanceVisibility" "reverse_moduleMaintenanceVisibility.ix"
		 -l on;
connectAttr "reverse_moduleMaintenanceVisibility.ox" "moduleVisibilityMultiply.i1x"
		 -l on;
connectAttr "character_grp.animationControlVisibility" "moduleVisibilityMultiply.i2x"
		 -l on;
connectAttr "non_blueprint_grp.display" "non_blueprint_container.boc[0]";
connectAttr "hyperLayout10.msg" "non_blueprint_container.hl" -l on;
connectAttr "hyperLayout7.msg" "SingleJointSegment__instance_2:blueprint_container.hl"
		 -l on;
connectAttr "SingleJointSegment__instance_2:module_grp.msg" "hyperLayout8.hyp[0].dn"
		;
connectAttr "SingleJointSegment__instance_2:HOOK_IN.msg" "hyperLayout8.hyp[1].dn"
		;
connectAttr "SingleJointSegment__instance_2:SETTINGS.msg" "hyperLayout8.hyp[2].dn"
		;
connectAttr "SingleJointSegment__instance_2:blueprint_container.msg" "hyperLayout8.hyp[3].dn"
		;
connectAttr "SingleJointSegment__instance_2:SETTINGSShape.msg" "hyperLayout8.hyp[4].dn"
		;
connectAttr "SingleJointSegment__instance_2:hook_parent_constraint.msg" "hyperLayout8.hyp[5].dn"
		;
connectAttr "SingleJointSegment__instance_2:hook_scale_constraint.msg" "hyperLayout8.hyp[6].dn"
		;
connectAttr "RootTransform__instance_1:blueprint_joint_addRotations.o3" "unitConversion1.i"
		 -l on;
connectAttr "RootTransform__instance_1:blueprint_joint_dummyRotationsMultiply.o" "RootTransform__instance_1:blueprint_joint_addRotations.i3[0]"
		 -l on;
connectAttr "RootTransform__instance_1:blueprint_joint_original_Translate.o" "RootTransform__instance_1:blueprint_joint_addTranslate.i3[0]"
		 -l on;
connectAttr "RootTransform__instance_1:SETTINGS.creationPoseWeight" "RootTransform__instance_1:blueprint_joint_original_Translate.i2x"
		 -l on;
connectAttr "RootTransform__instance_1:SETTINGS.creationPoseWeight" "RootTransform__instance_1:blueprint_joint_original_Translate.i2y"
		 -l on;
connectAttr "RootTransform__instance_1:SETTINGS.creationPoseWeight" "RootTransform__instance_1:blueprint_joint_original_Translate.i2z"
		 -l on;
connectAttr "RootTransform__instance_1:blueprint_joint_original_scale.o" "RootTransform__instance_1:blueprint_joint_addScale.i3[0]"
		 -l on;
connectAttr "RootTransform__instance_1:SETTINGS.creationPoseWeight" "RootTransform__instance_1:blueprint_joint_original_scale.i2x"
		 -l on;
connectAttr "RootTransform__instance_1:SETTINGS.creationPoseWeight" "RootTransform__instance_1:blueprint_joint_original_scale.i2y"
		 -l on;
connectAttr "RootTransform__instance_1:SETTINGS.creationPoseWeight" "RootTransform__instance_1:blueprint_joint_original_scale.i2z"
		 -l on;
connectAttr "SingleJointSegment__instance_2:blueprint_root_joint_addRotations.o3" "unitConversion2.i"
		 -l on;
connectAttr "SingleJointSegment__instance_2:blueprint_root_joint_addRotations.msg" "hyperLayout7.hyp[0].dn"
		;
connectAttr "SingleJointSegment__instance_2:blueprint_root_joint_dummyRotationsMultiply.msg" "hyperLayout7.hyp[1].dn"
		;
connectAttr "SingleJointSegment__instance_2:blueprint_end_joint_addTx.msg" "hyperLayout7.hyp[2].dn"
		;
connectAttr "SingleJointSegment__instance_2:blueprint_end_joint_original_Tx.msg" "hyperLayout7.hyp[3].dn"
		;
connectAttr "SingleJointSegment__instance_2:blueprint_joints_grp.msg" "hyperLayout7.hyp[4].dn"
		;
connectAttr "SingleJointSegment__instance_2:creationPose_joints_grp.msg" "hyperLayout7.hyp[5].dn"
		;
connectAttr "unitConversion2.msg" "hyperLayout7.hyp[6].dn";
connectAttr "SingleJointSegment__instance_2:blueprint_root_joint.msg" "hyperLayout7.hyp[7].dn"
		;
connectAttr "SingleJointSegment__instance_2:blueprint_end_joint.msg" "hyperLayout7.hyp[8].dn"
		;
connectAttr "SingleJointSegment__instance_2:creationPose_root_joint.msg" "hyperLayout7.hyp[9].dn"
		;
connectAttr "SingleJointSegment__instance_2:creationPose_end_joint.msg" "hyperLayout7.hyp[10].dn"
		;
connectAttr "SingleJointSegment__instance_2:SETTINGS.creationPoseWeight" "SingleJointSegment__instance_2:blueprint_end_joint_original_Tx.i2x"
		 -l on;
connectAttr "SingleJointSegment__instance_2:blueprint_end_joint_original_Tx.ox" "SingleJointSegment__instance_2:blueprint_end_joint_addTx.i1[0]"
		 -l on;
connectAttr "SingleJointSegment__instance_2:blueprint_root_joint_dummyRotationsMultiply.o" "SingleJointSegment__instance_2:blueprint_root_joint_addRotations.i3[0]"
		 -l on;
connectAttr "hyperLayout5.msg" "RootTransform__instance_1:blueprint_container.hl"
		 -l on;
connectAttr "RootTransform__instance_1:module_grp.msg" "hyperLayout6.hyp[0].dn";
connectAttr "RootTransform__instance_1:HOOK_IN.msg" "hyperLayout6.hyp[1].dn";
connectAttr "RootTransform__instance_1:SETTINGS.msg" "hyperLayout6.hyp[2].dn";
connectAttr "RootTransform__instance_1:blueprint_container.msg" "hyperLayout6.hyp[3].dn"
		;
connectAttr "RootTransform__instance_1:SETTINGSShape.msg" "hyperLayout6.hyp[4].dn"
		;
connectAttr "RootTransform__instance_1:blueprint_joint_addRotations.msg" "hyperLayout5.hyp[0].dn"
		;
connectAttr "RootTransform__instance_1:blueprint_joint_dummyRotationsMultiply.msg" "hyperLayout5.hyp[1].dn"
		;
connectAttr "RootTransform__instance_1:blueprint_joint_addTranslate.msg" "hyperLayout5.hyp[2].dn"
		;
connectAttr "RootTransform__instance_1:blueprint_joint_original_Translate.msg" "hyperLayout5.hyp[3].dn"
		;
connectAttr "RootTransform__instance_1:blueprint_joint_addScale.msg" "hyperLayout5.hyp[4].dn"
		;
connectAttr "RootTransform__instance_1:blueprint_joint_original_scale.msg" "hyperLayout5.hyp[5].dn"
		;
connectAttr "RootTransform__instance_1:blueprint_joints_grp.msg" "hyperLayout5.hyp[6].dn"
		;
connectAttr "RootTransform__instance_1:creationPose_joints_grp.msg" "hyperLayout5.hyp[7].dn"
		;
connectAttr "unitConversion1.msg" "hyperLayout5.hyp[8].dn";
connectAttr "RootTransform__instance_1:blueprint_joint.msg" "hyperLayout5.hyp[9].dn"
		;
connectAttr "RootTransform__instance_1:creationPose_joint.msg" "hyperLayout5.hyp[10].dn"
		;
connectAttr "reverse_moduleMaintenanceVisibility.ox" "non_blueprint_visibilityMultiply.i1x"
		 -l on;
connectAttr "non_blueprint_grp.display" "non_blueprint_visibilityMultiply.i2x" -l
		 on;
connectAttr "non_blueprint_grp.msg" "hyperLayout10.hyp[0].dn";
connectAttr "blueprint_root_joint_geoAttach_parentGrp1.msg" "hyperLayout10.hyp[1].dn"
		;
connectAttr "blueprint_root_joint_geoAttach_parentGrp1_parentConstraint.msg" "hyperLayout10.hyp[2].dn"
		;
connectAttr "blueprint_root_joint_geoAttach_parentGrp1_scaleConstraint.msg" "hyperLayout10.hyp[3].dn"
		;
connectAttr "blueprint_root_joint_geoAttach_scaleGrp1.msg" "hyperLayout10.hyp[4].dn"
		;
connectAttr "nurbsCylinder1.msg" "hyperLayout10.hyp[5].dn";
connectAttr "nurbsCylinderShape1.msg" "hyperLayout10.hyp[6].dn";
connectAttr "non_blueprint_visibilityMultiply.msg" "hyperLayout10.hyp[7].dn";
connectAttr "blueprint_root_joint_geoAttach_scaleGrp1_scaleFactor.msg" "hyperLayout10.hyp[8].dn"
		;
connectAttr "SingleJointSegment__instance_2:blueprint_end_joint.tx" "blueprint_root_joint_geoAttach_scaleGrp1_scaleFactor.i1x"
		 -l on;
connectAttr "nurbsCylinderShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "RootTransform__instance_1:blueprint_joint_addRotations.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "RootTransform__instance_1:blueprint_joint_dummyRotationsMultiply.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "RootTransform__instance_1:blueprint_joint_addTranslate.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "RootTransform__instance_1:blueprint_joint_original_Translate.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "RootTransform__instance_1:blueprint_joint_addScale.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "RootTransform__instance_1:blueprint_joint_original_scale.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "SingleJointSegment__instance_2:blueprint_root_joint_addRotations.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "SingleJointSegment__instance_2:blueprint_root_joint_dummyRotationsMultiply.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "SingleJointSegment__instance_2:blueprint_end_joint_addTx.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "SingleJointSegment__instance_2:blueprint_end_joint_original_Tx.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "blueprint_root_joint_geoAttach_scaleGrp1_scaleFactor.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "reverse_moduleMaintenanceVisibility.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "moduleVisibilityMultiply.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "non_blueprint_visibilityMultiply.msg" ":defaultRenderUtilityList1.u"
		 -na;
// End of basicIKTest_2.ma
