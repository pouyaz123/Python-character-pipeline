//Maya ASCII 2012 scene
//Name: rootTransformTest.ma
//Last modified: Wed, Jun 13, 2012 01:22:31 AM
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
createNode transform -n "Spline__instance_2:module_grp" -p "character_grp";
	addAttr -ci true -sn "hierarchicalScale" -ln "hierarchicalScale" -at "float";
lockNode -l 1 -lu 1;
createNode transform -n "Spline__instance_2:HOOK_IN" -p "Spline__instance_2:module_grp";
	setAttr ".t";
	setAttr ".r";
	setAttr ".ro";
	setAttr ".s";
	setAttr ".rp";
	setAttr ".rpt";
lockNode -l 1 -lu 1;
createNode transform -n "Spline__instance_2:blueprint_joints_grp" -p "Spline__instance_2:HOOK_IN";
	addAttr -ci true -sn "controlModulesInstalled" -ln "controlModulesInstalled" -min 
		0 -max 1 -at "bool";
	setAttr ".ove" yes;
lockNode -l 1 -lu 1;
createNode joint -n "Spline__instance_2:blueprint_spline_0_joint" -p "Spline__instance_2:blueprint_joints_grp";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 0 90.000000000000014 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -2.2204460492503131e-016 1 0 0 1 2.2204460492503131e-016 1.2246467991473532e-016 0
		 1.2246467991473532e-016 2.4651903288156619e-032 -1 0 0 4.0581321716308594 0 1;
	setAttr ".liw";
lockNode -l 1 -lu 1;
createNode joint -n "Spline__instance_2:blueprint_spline_1_joint" -p "Spline__instance_2:blueprint_spline_0_joint";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 3.75 8.326672684688678e-016 1.0197233050851693e-031 ;
	setAttr ".t";
	setAttr ".s";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -2.2204460492503131e-016 1 0 0 1 2.2204460492503131e-016 1.2246467991473532e-016 0
		 1.2246467991473532e-016 2.4651903288156619e-032 -1 0 3.944304526105059e-031 7.8081321716308594 -4.3790577010150533e-047 1;
	setAttr ".liw";
lockNode -l 1 -lu 1;
createNode joint -n "Spline__instance_2:blueprint_spline_2_joint" -p "Spline__instance_2:blueprint_spline_1_joint";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 3.75 8.326672684688678e-016 1.9721522630525291e-031 ;
	setAttr ".t";
	setAttr ".s";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -2.2204460492503131e-016 1 0 0 1 2.2204460492503131e-016 1.2246467991473532e-016 0
		 1.2246467991473532e-016 2.4651903288156619e-032 -1 0 7.8886090522101181e-031 11.558132171630859 -9.5242895796736069e-032 1;
	setAttr ".liw";
lockNode -l 1 -lu 1;
createNode joint -n "Spline__instance_2:blueprint_spline_3_joint" -p "Spline__instance_2:blueprint_spline_2_joint";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 3.75 8.3266726846886701e-016 9.8607613152626563e-032 ;
	setAttr ".t";
	setAttr ".s";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -2.2204460492503131e-016 1 0 0 1 2.2204460492503131e-016 1.2246467991473532e-016 0
		 1.2246467991473532e-016 2.4651903288156619e-032 -1 0 3.944304526105059e-031 15.308132171630859 -9.1878178440845859e-032 1;
	setAttr ".liw";
lockNode -l 1 -lu 1;
createNode joint -n "Spline__instance_2:blueprint_spline_4_joint" -p "Spline__instance_2:blueprint_spline_3_joint";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 3.75 8.3266726846886741e-016 2.9582283945787934e-031 ;
	setAttr ".t";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 0 90.000000000000014 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 1 0 1.2246467991473532e-016 0 1.4997597826618576e-032 1 -1.224646799147353e-016 0
		 -1.2246467991473532e-016 1.224646799147353e-016 1 0 3.944304526105059e-031 19.058132171630859 -2.8572868739020836e-031 1;
	setAttr ".liw";
lockNode -l 1 -lu 1;
createNode transform -n "Spline__instance_2:creationPose_joints_grp" -p "Spline__instance_2:HOOK_IN";
lockNode -l 1 -lu 1;
createNode joint -n "Spline__instance_2:creationPose_spline_0_joint" -p "Spline__instance_2:creationPose_joints_grp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 4.0581322405432712 0 ;
	setAttr ".s";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 0 90.000000000000014 ;
	setAttr ".ssc" no;
lockNode -l 1 -lu 1;
createNode joint -n "Spline__instance_2:creationPose_spline_1_joint" -p "Spline__instance_2:creationPose_spline_0_joint";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 3.7500000000000009 8.326672684688678e-016 1.0197233050851693e-031 ;
	setAttr ".s";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
lockNode -l 1 -lu 1;
createNode joint -n "Spline__instance_2:creationPose_spline_2_joint" -p "Spline__instance_2:creationPose_spline_1_joint";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 3.7500000000000009 8.326672684688678e-016 1.9721522630525291e-031 ;
	setAttr ".s";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
lockNode -l 1 -lu 1;
createNode joint -n "Spline__instance_2:creationPose_spline_3_joint" -p "Spline__instance_2:creationPose_spline_2_joint";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 3.75 8.3266726846886701e-016 9.8607613152626563e-032 ;
	setAttr ".s";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
lockNode -l 1 -lu 1;
createNode joint -n "Spline__instance_2:creationPose_spline_4_joint" -p "Spline__instance_2:creationPose_spline_3_joint";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 3.75 8.3266726846886741e-016 2.9582283945787934e-031 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 0 90.000000000000014 ;
	setAttr ".ssc" no;
lockNode -l 1 -lu 1;
createNode parentConstraint -n "Spline__instance_2:hook_parent_constraint" -p "Spline__instance_2:HOOK_IN";
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
createNode scaleConstraint -n "Spline__instance_2:hook_scale_constraint" -p "Spline__instance_2:HOOK_IN";
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
createNode transform -n "Spline__instance_2:SETTINGS" -p "Spline__instance_2:module_grp";
	addAttr -ci true -sn "activeModule" -ln "activeModule" -min 0 -max 0 -en "None" 
		-at "enum";
	addAttr -ci true -sn "creationPoseWeight" -ln "creationPoseWeight" -dv 1 -at "float";
	setAttr ".v" no;
lockNode -l 1 -lu 1;
createNode locator -n "Spline__instance_2:SETTINGSShape" -p "Spline__instance_2:SETTINGS";
	setAttr -k off ".v";
lockNode -l 1 -lu 1;
createNode transform -n "non_blueprint_grp" -p "character_grp";
	addAttr -ci true -k true -sn "display" -ln "display" -dv 1 -min 0 -max 1 -at "bool";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".rp" -type "double3" -1.1102230246251565e-016 11.367318742994845 0 ;
	setAttr ".sp" -type "double3" -1.1102230246251565e-016 11.367318742994845 0 ;
	setAttr -k on ".display";
lockNode -l 1 -lu 1;
createNode transform -n "nurbsCylinder1" -p "non_blueprint_grp";
	setAttr ".t" -type "double3" 0 11.367318742994847 0 ;
	setAttr ".t";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 1 1.6347331117423645 1 ;
	setAttr ".s";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
lockNode -l 1 -lu 1;
createNode nurbsSurface -n "nurbsCylinderShape1" -p "nurbsCylinder1";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".iog[0].og[0]";
	setAttr ".iog[0].og[1]";
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
createNode nurbsSurface -n "nurbsCylinderShape1Orig" -p "nurbsCylinder1";
	setAttr -k off ".v";
	setAttr ".io" yes;
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
		13 0 0 0 1.25 2.5 3.75 5 6.25 7.5 8.75 10 10 10
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		
		121
		0.78361162489122382 -5 -0.78361162489122538
		1.1081941875543879 -5 -1.7972999370854505e-016
		0.78361162489122427 -5 0.78361162489122393
		3.2112695072372299e-016 -5 1.1081941875543877
		-0.78361162489122405 -5 0.78361162489122416
		-1.1081941875543881 -5 2.7758836572213633e-017
		-0.78361162489122438 -5 -0.78361162489122416
		-5.9521325992805852e-016 -5 -1.1081941875543881
		0.78361162489122382 -5 -0.78361162489122538
		1.1081941875543879 -5 -1.7972999370854505e-016
		0.78361162489122427 -5 0.78361162489122393
		0.78361162489122382 -4.583333333333333 -0.78361162489122538
		1.1081941875543879 -4.583333333333333 -1.5421651872630852e-016
		0.78361162489122427 -4.583333333333333 0.78361162489122393
		3.2112695072372299e-016 -4.583333333333333 1.1081941875543877
		-0.78361162489122405 -4.583333333333333 0.78361162489122416
		-1.1081941875543881 -4.583333333333333 5.3272311554450171e-017
		-0.78361162489122438 -4.583333333333333 -0.78361162489122416
		-5.9521325992805852e-016 -4.583333333333333 -1.1081941875543881
		0.78361162489122382 -4.583333333333333 -0.78361162489122538
		1.1081941875543879 -4.583333333333333 -1.5421651872630852e-016
		0.78361162489122427 -4.583333333333333 0.78361162489122393
		0.78361162489122382 -3.75 -0.78361162489122527
		1.1081941875543879 -3.75 -1.0318956876183549e-016
		0.78361162489122427 -3.75 0.78361162489122405
		3.2112695072372299e-016 -3.75 1.1081941875543877
		-0.78361162489122405 -3.75 0.78361162489122427
		-1.1081941875543881 -3.75 1.042992615189232e-016
		-0.78361162489122438 -3.75 -0.78361162489122405
		-5.9521325992805852e-016 -3.75 -1.1081941875543881
		0.78361162489122382 -3.75 -0.78361162489122527
		1.1081941875543879 -3.75 -1.0318956876183549e-016
		0.78361162489122427 -3.75 0.78361162489122405
		0.78361162489122382 -2.5 -0.78361162489122516
		1.1081941875543879 -2.5 -2.6649143815125897e-017
		0.78361162489122427 -2.5 0.78361162489122416
		3.2112695072372299e-016 -2.5 1.1081941875543877
		-0.78361162489122405 -2.5 0.78361162489122438
		-1.1081941875543881 -2.5 1.8083968646563279e-016
		-0.78361162489122438 -2.5 -0.78361162489122393
		-5.9521325992805852e-016 -2.5 -1.1081941875543881
		0.78361162489122382 -2.5 -0.78361162489122516
		1.1081941875543879 -2.5 -2.6649143815125897e-017
		0.78361162489122427 -2.5 0.78361162489122416
		0.78361162489122382 -1.25 -0.78361162489122516
		1.1081941875543879 -1.25 4.9891281131583682e-017
		0.78361162489122427 -1.25 0.78361162489122416
		3.2112695072372299e-016 -1.25 1.1081941875543879
		-0.78361162489122405 -1.25 0.78361162489122438
		-1.1081941875543881 -1.25 2.5738011141234238e-016
		-0.78361162489122438 -1.25 -0.78361162489122393
		-5.9521325992805852e-016 -1.25 -1.1081941875543879
		0.78361162489122382 -1.25 -0.78361162489122516
		1.1081941875543879 -1.25 4.9891281131583682e-017
		0.78361162489122427 -1.25 0.78361162489122416
		0.78361162489122382 4.7982373409884756e-017 -0.78361162489122504
		1.1081941875543879 -7.7417092079760399e-033 1.2643170607829326e-016
		0.78361162489122427 -4.7982373409884713e-017 0.78361162489122427
		3.2112695072372299e-016 -6.7857323231109134e-017 1.1081941875543879
		-0.78361162489122405 -4.7982373409884725e-017 0.78361162489122449
		-1.1081941875543881 -2.0446735801084019e-032 3.3392053635905195e-016
		-0.78361162489122438 4.7982373409884682e-017 -0.78361162489122382
		-5.9521325992805852e-016 6.7857323231109134e-017 -1.1081941875543879
		0.78361162489122382 4.7982373409884756e-017 -0.78361162489122504
		1.1081941875543879 -7.7417092079760399e-033 1.2643170607829326e-016
		0.78361162489122427 -4.7982373409884713e-017 0.78361162489122427
		0.78361162489122382 1.25 -0.78361162489122493
		1.1081941875543879 1.25 2.0297213102500285e-016
		0.78361162489122427 1.25 0.78361162489122438
		3.2112695072372299e-016 1.25 1.1081941875543879
		-0.78361162489122405 1.25 0.7836116248912246
		-1.1081941875543881 1.25 4.1046096130576151e-016
		-0.78361162489122438 1.25 -0.78361162489122371
		-5.9521325992805852e-016 1.25 -1.1081941875543879
		0.78361162489122382 1.25 -0.78361162489122493
		1.1081941875543879 1.25 2.0297213102500285e-016
		0.78361162489122427 1.25 0.78361162489122438
		0.78361162489122382 2.5 -0.78361162489122493
		1.1081941875543879 2.5 2.7951255597171242e-016
		0.78361162489122427 2.5 0.78361162489122438
		3.2112695072372299e-016 2.5 1.1081941875543881
		-0.78361162489122405 2.5 0.7836116248912246
		-1.1081941875543881 2.5 4.8700138625247108e-016
		-0.78361162489122438 2.5 -0.78361162489122371
		-5.9521325992805852e-016 2.5 -1.1081941875543877
		0.78361162489122382 2.5 -0.78361162489122493
		1.1081941875543879 2.5 2.7951255597171242e-016
		0.78361162489122427 2.5 0.78361162489122438
		0.78361162489122382 3.75 -0.78361162489122482
		1.1081941875543879 3.75 3.5605298091842203e-016
		0.78361162489122427 3.75 0.78361162489122449
		3.2112695072372299e-016 3.75 1.1081941875543881
		-0.78361162489122405 3.75 0.78361162489122471
		-1.1081941875543881 3.75 5.6354181119918074e-016
		-0.78361162489122438 3.75 -0.7836116248912236
		-5.9521325992805852e-016 3.75 -1.1081941875543877
		0.78361162489122382 3.75 -0.78361162489122482
		1.1081941875543879 3.75 3.5605298091842203e-016
		0.78361162489122427 3.75 0.78361162489122449
		0.78361162489122382 4.5833333333333339 -0.78361162489122471
		1.1081941875543879 4.5833333333333339 4.0707993088289511e-016
		0.78361162489122427 4.5833333333333339 0.7836116248912246
		3.2112695072372299e-016 4.5833333333333339 1.1081941875543881
		-0.78361162489122405 4.5833333333333339 0.78361162489122482
		-1.1081941875543881 4.5833333333333339 6.1456876116365372e-016
		-0.78361162489122438 4.5833333333333339 -0.78361162489122349
		-5.9521325992805852e-016 4.5833333333333339 -1.1081941875543877
		0.78361162489122382 4.5833333333333339 -0.78361162489122471
		1.1081941875543879 4.5833333333333339 4.0707993088289511e-016
		0.78361162489122427 4.5833333333333339 0.7836116248912246
		0.78361162489122382 5 -0.78361162489122471
		1.1081941875543879 5 4.325934058651316e-016
		0.78361162489122427 5 0.7836116248912246
		3.2112695072372299e-016 5 1.1081941875543881
		-0.78361162489122405 5 0.78361162489122482
		-1.1081941875543881 5 6.4008223614589021e-016
		-0.78361162489122438 5 -0.78361162489122349
		-5.9521325992805852e-016 5 -1.1081941875543877
		0.78361162489122382 5 -0.78361162489122471
		1.1081941875543879 5 4.325934058651316e-016
		0.78361162489122427 5 0.7836116248912246
		
		;
lockNode -l 1 -lu 1;
createNode container -n "character_container";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr ".isc" yes;
	setAttr -s 6 ".boc";
	setAttr -s 5 ".ish[1:5]" yes yes yes yes yes;
	setAttr ".ctor" -type "string" "cat";
	setAttr ".cdat" -type "string" "2012/06/13 01:22:31";
	setAttr ".aal" -type "attributeAlias" {"animControlVis","borderConnections[0]","instance_1_activeModule"
		,"borderConnections[1]","instance_1_creationPoseWeight","borderConnections[2]","instance_2_activeModule"
		,"borderConnections[3]","instance_2_creationPoseWeight","borderConnections[4]","displayNonBlueprintNodes"
		,"borderConnections[5]"} ;
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "moduleVisibilityMultiply";
	setAttr ".i1";
	setAttr ".i2";
lockNode -l 1 -lu 1;
createNode reverse -n "reverse_moduleMaintenanceVisibility";
	setAttr ".i";
lockNode -l 1 -lu 1;
createNode hyperLayout -n "hyperLayout10";
	setAttr ".ihi" 0;
	setAttr -s 6 ".hyp";
createNode container -n "RootTransform__instance_1:module_container";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr ".isc" yes;
	setAttr -s 2 ".boc";
	setAttr ".ctor" -type "string" "cat";
	setAttr ".cdat" -type "string" "2012/06/13 01:20:26";
	setAttr ".aal" -type "attributeAlias" {"activeModule","borderConnections[0]","creationPoseWeight"
		,"borderConnections[1]"} ;
lockNode -l 1 -lu 1;
createNode container -n "Spline__instance_2:module_container";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr ".isc" yes;
	setAttr -s 2 ".boc";
	setAttr ".ctor" -type "string" "cat";
	setAttr ".cdat" -type "string" "2012/06/13 01:20:26";
	setAttr ".aal" -type "attributeAlias" {"activeModule","borderConnections[0]","creationPoseWeight"
		,"borderConnections[1]"} ;
lockNode -l 1 -lu 1;
createNode container -n "non_blueprint_container";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr ".isc" yes;
	setAttr ".ctor" -type "string" "cat";
	setAttr ".cdat" -type "string" "2012/06/13 01:22:31";
	setAttr ".aal" -type "attributeAlias" {"displayNonBlueprintNodes","borderConnections[0]"
		} ;
lockNode -l 1 -lu 1;
createNode hyperLayout -n "hyperLayout7";
	setAttr ".ihi" 0;
	setAttr -s 5 ".hyp";
createNode container -n "RootTransform__instance_1:blueprint_container";
	setAttr ".isc" yes;
	setAttr ".ctor" -type "string" "cat";
	setAttr ".cdat" -type "string" "2012/06/13 01:20:26";
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "RootTransform__instance_1:blueprint_joint_original_scale";
	setAttr ".i1" -type "float3" 1 1 1 ;
	setAttr ".i2";
lockNode -l 1 -lu 1;
createNode plusMinusAverage -n "RootTransform__instance_1:blueprint_joint_addScale";
	setAttr ".i3";
	setAttr ".i3";
lockNode -l 1 -lu 1;
createNode hyperLayout -n "hyperLayout6";
	setAttr ".ihi" 0;
	setAttr -s 11 ".hyp";
createNode plusMinusAverage -n "RootTransform__instance_1:blueprint_joint_addRotations";
	setAttr ".i3";
	setAttr ".i3";
lockNode -l 1 -lu 1;
createNode unitConversion -n "unitConversion1";
	setAttr ".cf" 0.017453292519943295;
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "RootTransform__instance_1:blueprint_joint_original_Translate";
	setAttr ".i2";
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "RootTransform__instance_1:blueprint_joint_dummyRotationsMultiply";
lockNode -l 1 -lu 1;
createNode plusMinusAverage -n "RootTransform__instance_1:blueprint_joint_addTranslate";
	setAttr ".i3";
	setAttr ".i3";
lockNode -l 1 -lu 1;
createNode hyperLayout -n "hyperLayout9";
	setAttr ".ihi" 0;
	setAttr -s 7 ".hyp";
createNode container -n "Spline__instance_2:blueprint_container";
	setAttr ".isc" yes;
	setAttr ".ctor" -type "string" "cat";
	setAttr ".cdat" -type "string" "2012/06/13 01:20:26";
lockNode -l 1 -lu 1;
createNode hyperLayout -n "hyperLayout8";
	setAttr ".ihi" 0;
	setAttr -s 36 ".hyp";
createNode unitConversion -n "unitConversion5";
	setAttr ".cf" 0.017453292519943295;
lockNode -l 1 -lu 1;
createNode unitConversion -n "unitConversion4";
	setAttr ".cf" 0.017453292519943295;
lockNode -l 1 -lu 1;
createNode unitConversion -n "unitConversion3";
	setAttr ".cf" 0.017453292519943295;
lockNode -l 1 -lu 1;
createNode unitConversion -n "unitConversion2";
	setAttr ".cf" 0.017453292519943295;
lockNode -l 1 -lu 1;
createNode plusMinusAverage -n "Spline__instance_2:blueprint_spline_3_joint_addTx";
	setAttr ".i1";
	setAttr ".i1";
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "Spline__instance_2:blueprint_spline_3_joint_original_Tx";
	setAttr ".i1" -type "float3" 3.75 0 0 ;
	setAttr ".i1";
	setAttr -l on ".i1x";
	setAttr ".i2";
lockNode -l 1 -lu 1;
createNode plusMinusAverage -n "Spline__instance_2:blueprint_spline_4_joint_addTx";
	setAttr ".i1";
	setAttr ".i1";
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "Spline__instance_2:blueprint_spline_4_joint_original_Tx";
	setAttr ".i1" -type "float3" 3.75 0 0 ;
	setAttr ".i1";
	setAttr -l on ".i1x";
	setAttr ".i2";
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
	setAttr ".i1" -type "float3" 0 4.0581322 0 ;
	setAttr ".i2";
lockNode -l 1 -lu 1;
createNode plusMinusAverage -n "Spline__instance_2:blueprint_spline_0_joint_addScale";
	setAttr ".i3";
	setAttr ".i3";
lockNode -l 1 -lu 1;
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
	setAttr ".i1" -type "float3" 3.75 0 0 ;
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
	setAttr ".i1" -type "float3" 3.75 0 0 ;
	setAttr ".i1";
	setAttr -l on ".i1x";
	setAttr ".i2";
lockNode -l 1 -lu 1;
createNode plusMinusAverage -n "Spline__instance_2:blueprint_spline_3_joint_addRotations";
	setAttr ".i3";
	setAttr ".i3";
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "Spline__instance_2:blueprint_spline_3_joint_dummyRotationsMultiply";
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "non_blueprint_visibilityMultiply";
	setAttr ".i1";
	setAttr ".i2";
lockNode -l 1 -lu 1;
createNode tweak -n "tweak1";
	setAttr ".ip";
	setAttr ".pl";
lockNode -l 1 -lu 1;
createNode groupId -n "nurbsCylinder1_skinClusterGroupId";
	setAttr ".ihi" 0;
lockNode -l 1 -lu 1;
createNode groupId -n "groupId2";
	setAttr ".ihi" 0;
lockNode -l 1 -lu 1;
createNode objectSet -n "nurbsCylinder1_skinClusterSet";
	setAttr ".ihi" 0;
	setAttr ".mwc";
	setAttr ".vo" yes;
lockNode -l 1 -lu 1;
createNode objectSet -n "tweakSet1";
	setAttr ".ihi" 0;
	setAttr ".mwc";
	setAttr ".vo" yes;
lockNode -l 1 -lu 1;
createNode hyperLayout -n "hyperLayout11";
	setAttr ".ihi" 0;
	setAttr -s 13 ".hyp";
createNode skinCluster -n "nurbsCylinder1_skinCluster";
	setAttr ".ip";
	setAttr -s 88 ".wl";
	setAttr -s 2 ".wl[0].w[0:1]"  0.99236525304075718 0.0076347469592427959;
	setAttr -s 2 ".wl[1].w[0:1]"  0.99236525304075718 0.0076347469592427889;
	setAttr -s 2 ".wl[2].w[0:1]"  0.99236525304075718 0.0076347469592427837;
	setAttr -s 2 ".wl[3].w[0:1]"  0.99236525304075718 0.0076347469592427889;
	setAttr -s 2 ".wl[4].w[0:1]"  0.99236525304075718 0.0076347469592427837;
	setAttr -s 2 ".wl[5].w[0:1]"  0.99236525304075718 0.0076347469592427959;
	setAttr -s 2 ".wl[6].w[0:1]"  0.99236525304075718 0.0076347469592427889;
	setAttr -s 2 ".wl[7].w[0:1]"  0.99236525304075718 0.0076347469592427959;
	setAttr -s 2 ".wl[11].w[0:1]"  0.99432388545206274 0.0056761145479372966;
	setAttr -s 2 ".wl[12].w[0:1]"  0.99432388545206274 0.0056761145479372914;
	setAttr -s 2 ".wl[13].w[0:1]"  0.99432388545206274 0.0056761145479372827;
	setAttr -s 2 ".wl[14].w[0:1]"  0.99432388545206274 0.0056761145479372862;
	setAttr -s 2 ".wl[15].w[0:1]"  0.99432388545206274 0.0056761145479372827;
	setAttr -s 2 ".wl[16].w[0:1]"  0.99432388545206274 0.0056761145479372966;
	setAttr -s 2 ".wl[17].w[0:1]"  0.99432388545206274 0.0056761145479372914;
	setAttr -s 2 ".wl[18].w[0:1]"  0.99432388545206274 0.0056761145479372966;
	setAttr -s 2 ".wl[22].w[0:1]"  0.97604091068855037 0.023959089311449695;
	setAttr -s 2 ".wl[23].w[0:1]"  0.97604091068855037 0.023959089311449678;
	setAttr -s 2 ".wl[24].w[0:1]"  0.97604091068855037 0.023959089311449678;
	setAttr -s 2 ".wl[25].w[0:1]"  0.97604091068855037 0.023959089311449678;
	setAttr -s 2 ".wl[26].w[0:1]"  0.97604091068855037 0.023959089311449678;
	setAttr -s 2 ".wl[27].w[0:1]"  0.97604091068855037 0.023959089311449695;
	setAttr -s 2 ".wl[28].w[0:1]"  0.97604091068855037 0.023959089311449678;
	setAttr -s 2 ".wl[29].w[0:1]"  0.97604091068855037 0.023959089311449695;
	setAttr -s 2 ".wl[33].w[0:1]"  0.60076588219288896 0.39923411780711104;
	setAttr -s 2 ".wl[34].w[0:1]"  0.60076588219288896 0.39923411780711104;
	setAttr -s 2 ".wl[35].w[0:1]"  0.60076588219288896 0.39923411780711104;
	setAttr -s 2 ".wl[36].w[0:1]"  0.60076588219288896 0.39923411780711104;
	setAttr -s 2 ".wl[37].w[0:1]"  0.60076588219288873 0.39923411780711127;
	setAttr -s 2 ".wl[38].w[0:1]"  0.60076588219288884 0.39923411780711121;
	setAttr -s 2 ".wl[39].w[0:1]"  0.60076588219288873 0.39923411780711127;
	setAttr -s 2 ".wl[40].w[0:1]"  0.60076588219288884 0.39923411780711121;
	setAttr -s 2 ".wl[44].w[1:2]"  0.96247761100608609 0.037522388993913934;
	setAttr -s 2 ".wl[45].w[1:2]"  0.96247761100608609 0.037522388993913934;
	setAttr -s 2 ".wl[46].w[1:2]"  0.96247761100608609 0.03752238899391392;
	setAttr -s 2 ".wl[47].w[1:2]"  0.96247761100608609 0.037522388993913934;
	setAttr -s 2 ".wl[48].w[1:2]"  0.96247761100608609 0.03752238899391392;
	setAttr -s 2 ".wl[49].w[1:2]"  0.96247761100608609 0.037522388993913955;
	setAttr -s 2 ".wl[50].w[1:2]"  0.96247761100608609 0.03752238899391392;
	setAttr -s 2 ".wl[51].w[1:2]"  0.96247761100608609 0.037522388993913934;
	setAttr -s 2 ".wl[55].w[1:2]"  0.51460403582761138 0.48539596417238862;
	setAttr -s 2 ".wl[56].w[1:2]"  0.51460403582761138 0.48539596417238862;
	setAttr -s 2 ".wl[57].w[1:2]"  0.51460403582761138 0.48539596417238856;
	setAttr -s 2 ".wl[58].w[1:2]"  0.51460403582761138 0.48539596417238862;
	setAttr -s 2 ".wl[59].w[1:2]"  0.51460403582761138 0.48539596417238856;
	setAttr -s 2 ".wl[60].w[1:2]"  0.51460403582761149 0.48539596417238851;
	setAttr -s 2 ".wl[61].w[1:2]"  0.51460403582761138 0.48539596417238862;
	setAttr -s 2 ".wl[62].w[1:2]"  0.51460403582761138 0.48539596417238862;
	setAttr -s 2 ".wl[66].w[2:3]"  0.93923342871157722 0.060766571288422791;
	setAttr -s 2 ".wl[67].w[2:3]"  0.93923342871157722 0.060766571288422791;
	setAttr -s 2 ".wl[68].w[2:3]"  0.93923342871157722 0.060766571288422791;
	setAttr -s 2 ".wl[69].w[2:3]"  0.93923342871157722 0.060766571288422791;
	setAttr -s 2 ".wl[70].w[2:3]"  0.93923342871157722 0.060766571288422791;
	setAttr -s 2 ".wl[71].w[2:3]"  0.93923342871157722 0.060766571288422826;
	setAttr -s 2 ".wl[72].w[2:3]"  0.93923342871157733 0.060766571288422763;
	setAttr -s 2 ".wl[73].w[2:3]"  0.93923342871157722 0.060766571288422791;
	setAttr -s 2 ".wl[77].w[3:4]"  0.99259316239958317 0.007406837600416806;
	setAttr -s 2 ".wl[78].w[3:4]"  0.99259316239958317 0.007406837600416806;
	setAttr -s 2 ".wl[79].w[3:4]"  0.99259316239958317 0.007406837600416806;
	setAttr -s 2 ".wl[80].w[3:4]"  0.99259316239958317 0.0074068376004168103;
	setAttr -s 2 ".wl[81].w[3:4]"  0.99259316239958317 0.007406837600416806;
	setAttr -s 2 ".wl[82].w[3:4]"  0.99259316239958317 0.0074068376004168103;
	setAttr -s 2 ".wl[83].w[3:4]"  0.99259316239958317 0.0074068376004167956;
	setAttr -s 2 ".wl[84].w[3:4]"  0.99259316239958317 0.0074068376004167999;
	setAttr -s 2 ".wl[88].w[3:4]"  0.89897490268198554 0.10102509731801453;
	setAttr -s 2 ".wl[89].w[3:4]"  0.89897490268198554 0.10102509731801453;
	setAttr -s 2 ".wl[90].w[3:4]"  0.89897490268198554 0.10102509731801453;
	setAttr -s 2 ".wl[91].w[3:4]"  0.89897490268198554 0.10102509731801454;
	setAttr -s 2 ".wl[92].w[3:4]"  0.89897490268198554 0.10102509731801453;
	setAttr -s 2 ".wl[93].w[3:4]"  0.89897490268198554 0.10102509731801454;
	setAttr -s 2 ".wl[94].w[3:4]"  0.89897490268198554 0.10102509731801444;
	setAttr -s 2 ".wl[95].w[3:4]"  0.89897490268198554 0.10102509731801443;
	setAttr -s 2 ".wl[99].w[3:4]"  0.51575145067762784 0.48424854932237227;
	setAttr -s 2 ".wl[100].w[3:4]"  0.51575145067762806 0.48424854932237199;
	setAttr -s 2 ".wl[101].w[3:4]"  0.51575145067762806 0.48424854932237199;
	setAttr -s 2 ".wl[102].w[3:4]"  0.51575145067762806 0.48424854932237188;
	setAttr -s 2 ".wl[103].w[3:4]"  0.51575145067762806 0.48424854932237199;
	setAttr -s 2 ".wl[104].w[3:4]"  0.51575145067762806 0.48424854932237188;
	setAttr -s 2 ".wl[105].w[3:4]"  0.51575145067762806 0.48424854932237194;
	setAttr -s 2 ".wl[106].w[3:4]"  0.51575145067762806 0.48424854932237199;
	setAttr -s 2 ".wl[110].w[3:4]"  0.5 0.5;
	setAttr -s 2 ".wl[111].w[3:4]"  0.5 0.5;
	setAttr -s 2 ".wl[112].w[3:4]"  0.5 0.5;
	setAttr -s 2 ".wl[113].w[3:4]"  0.5 0.5;
	setAttr -s 2 ".wl[114].w[3:4]"  0.5 0.5;
	setAttr -s 2 ".wl[115].w[3:4]"  0.5 0.5;
	setAttr -s 2 ".wl[116].w[3:4]"  0.5 0.5;
	setAttr -s 2 ".wl[117].w[3:4]"  0.5 0.5;
	setAttr ".wl";
	setAttr -s 5 ".pm";
	setAttr ".pm[0]" -type "matrix" -2.2204460492503131e-016 1 1.2246467991473532e-016 -0
		 1 2.2204460492503131e-016 2.7192621468937821e-032 -0 -2.5407181807812022e-033 1.2246467991473532e-016 -1 0
		 -4.0581321716308594 -9.0108635478333352e-016 -1.1035125201407657e-031 1;
	setAttr ".pm[1]" -type "matrix" -2.2204460492503131e-016 1 1.2246467991473532e-016 -0
		 1 2.2204460492503131e-016 2.7192621468937821e-032 -0 -2.5407181807812022e-033 1.2246467991473532e-016 -1 0
		 -7.8081321716308594 -1.7337536232522013e-015 -2.1232358252259347e-031 1;
	setAttr ".pm[2]" -type "matrix" -2.2204460492503131e-016 1 1.2246467991473532e-016 -0
		 1 2.2204460492503131e-016 2.7192621468937821e-032 -0 -2.5407181807812022e-033 1.2246467991473532e-016 -1 0
		 -11.558132171630859 -2.5664208917210691e-015 -4.0953880882784642e-031 1;
	setAttr ".pm[3]" -type "matrix" -2.2204460492503131e-016 1 1.2246467991473532e-016 -0
		 1 2.2204460492503131e-016 2.7192621468937821e-032 -0 -2.5407181807812022e-033 1.2246467991473532e-016 -1 0
		 -15.308132171630859 -3.3990881601899361e-015 -5.081464219804729e-031 1;
	setAttr ".pm[4]" -type "matrix" 1 1.4997597826618573e-032 -1.2246467991473532e-016 -0
		 -2.7369110631344083e-048 1 1.224646799147353e-016 0 1.2246467991473532e-016 -1.224646799147353e-016 1 -0
		 -3.9443045261050582e-031 -19.058132171630859 -2.3339480561714919e-015 1;
	setAttr ".pm";
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1.6347331117423645 0 0 0 0 1 0 0 11.367318742994847 0 1;
	setAttr -s 5 ".ma";
	setAttr ".ma";
	setAttr -s 5 ".dpf[0:4]"  4 4 4 4 4;
	setAttr -s 5 ".lw";
	setAttr -s 5 ".lw";
	setAttr ".ucm" yes;
lockNode -l 1 -lu 1;
createNode groupParts -n "nurbsCylinder1_skinClusterGroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*][*]";
lockNode -l 1 -lu 1;
createNode groupParts -n "groupParts2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*][*]";
lockNode -l 1 -lu 1;
createNode dagPose -n "bindPose1";
	setAttr -s 8 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[2]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 8 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 4.0581321716308594 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.70710678118654746 0.70710678118654757 4.329780281177467e-017 4.3297802811774658e-017 1
		 1 1 no;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.75 8.326672684688678e-016
		 1.0197233050851693e-031 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.75 8.326672684688678e-016
		 1.9721522630525291e-031 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.75 8.3266726846886701e-016
		 9.8607613152626563e-032 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.75 8.3266726846886741e-016
		 2.9582283945787934e-031 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.70710678118654746 0.70710678118654757 4.329780281177467e-017 4.3297802811774658e-017 1
		 1 1 no;
	setAttr -s 8 ".m";
	setAttr -s 8 ".p";
	setAttr -s 8 ".g[0:7]" yes yes yes no no no no no;
	setAttr ".bp" yes;
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
	setAttr -s 29 ".u";
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
connectAttr "Spline__instance_2:HOOK_IN.sy" "Spline__instance_2:module_grp.hierarchicalScale"
		 -l on;
connectAttr "Spline__instance_2:hook_scale_constraint.csy" "Spline__instance_2:HOOK_IN.sy"
		 -l on;
connectAttr "Spline__instance_2:hook_scale_constraint.csx" "Spline__instance_2:HOOK_IN.sx"
		 -l on;
connectAttr "Spline__instance_2:hook_scale_constraint.csz" "Spline__instance_2:HOOK_IN.sz"
		 -l on;
connectAttr "Spline__instance_2:hook_parent_constraint.ctx" "Spline__instance_2:HOOK_IN.tx"
		 -l on;
connectAttr "Spline__instance_2:hook_parent_constraint.cty" "Spline__instance_2:HOOK_IN.ty"
		 -l on;
connectAttr "Spline__instance_2:hook_parent_constraint.ctz" "Spline__instance_2:HOOK_IN.tz"
		 -l on;
connectAttr "Spline__instance_2:hook_parent_constraint.crx" "Spline__instance_2:HOOK_IN.rx"
		 -l on;
connectAttr "Spline__instance_2:hook_parent_constraint.cry" "Spline__instance_2:HOOK_IN.ry"
		 -l on;
connectAttr "Spline__instance_2:hook_parent_constraint.crz" "Spline__instance_2:HOOK_IN.rz"
		 -l on;
connectAttr "character_grp.moduleMaintenanceVisibility" "Spline__instance_2:blueprint_joints_grp.v"
		 -l on;
connectAttr "Spline__instance_2:blueprint_spline_0_joint_addScale.o3" "Spline__instance_2:blueprint_spline_0_joint.s"
		 -l on;
connectAttr "unitConversion2.o" "Spline__instance_2:blueprint_spline_0_joint.r" 
		-l on;
connectAttr "Spline__instance_2:blueprint_spline_0_joint_addTranslate.o3" "Spline__instance_2:blueprint_spline_0_joint.t"
		 -l on;
connectAttr "Spline__instance_2:blueprint_spline_0_joint.s" "Spline__instance_2:blueprint_spline_1_joint.is"
		 -l on;
connectAttr "unitConversion3.o" "Spline__instance_2:blueprint_spline_1_joint.r" 
		-l on;
connectAttr "Spline__instance_2:blueprint_spline_1_joint_addTx.o1" "Spline__instance_2:blueprint_spline_1_joint.tx"
		 -l on;
connectAttr "Spline__instance_2:blueprint_spline_1_joint.s" "Spline__instance_2:blueprint_spline_2_joint.is"
		 -l on;
connectAttr "unitConversion4.o" "Spline__instance_2:blueprint_spline_2_joint.r" 
		-l on;
connectAttr "Spline__instance_2:blueprint_spline_2_joint_addTx.o1" "Spline__instance_2:blueprint_spline_2_joint.tx"
		 -l on;
connectAttr "Spline__instance_2:blueprint_spline_2_joint.s" "Spline__instance_2:blueprint_spline_3_joint.is"
		 -l on;
connectAttr "unitConversion5.o" "Spline__instance_2:blueprint_spline_3_joint.r" 
		-l on;
connectAttr "Spline__instance_2:blueprint_spline_3_joint_addTx.o1" "Spline__instance_2:blueprint_spline_3_joint.tx"
		 -l on;
connectAttr "Spline__instance_2:blueprint_spline_3_joint.s" "Spline__instance_2:blueprint_spline_4_joint.is"
		 -l on;
connectAttr "Spline__instance_2:blueprint_spline_4_joint_addTx.o1" "Spline__instance_2:blueprint_spline_4_joint.tx"
		 -l on;
connectAttr "Spline__instance_2:creationPose_spline_0_joint.s" "Spline__instance_2:creationPose_spline_1_joint.is"
		 -l on;
connectAttr "Spline__instance_2:creationPose_spline_1_joint.s" "Spline__instance_2:creationPose_spline_2_joint.is"
		 -l on;
connectAttr "Spline__instance_2:creationPose_spline_2_joint.s" "Spline__instance_2:creationPose_spline_3_joint.is"
		 -l on;
connectAttr "Spline__instance_2:creationPose_spline_3_joint.s" "Spline__instance_2:creationPose_spline_4_joint.is"
		 -l on;
connectAttr "Spline__instance_2:HOOK_IN.ro" "Spline__instance_2:hook_parent_constraint.cro"
		 -l on;
connectAttr "Spline__instance_2:HOOK_IN.pim" "Spline__instance_2:hook_parent_constraint.cpim"
		 -l on;
connectAttr "Spline__instance_2:HOOK_IN.rp" "Spline__instance_2:hook_parent_constraint.crp"
		 -l on;
connectAttr "Spline__instance_2:HOOK_IN.rpt" "Spline__instance_2:hook_parent_constraint.crt"
		 -l on;
connectAttr "RootTransform__instance_1:blueprint_joint.t" "Spline__instance_2:hook_parent_constraint.tg[0].tt"
		 -l on;
connectAttr "RootTransform__instance_1:blueprint_joint.rp" "Spline__instance_2:hook_parent_constraint.tg[0].trp"
		 -l on;
connectAttr "RootTransform__instance_1:blueprint_joint.rpt" "Spline__instance_2:hook_parent_constraint.tg[0].trt"
		 -l on;
connectAttr "RootTransform__instance_1:blueprint_joint.r" "Spline__instance_2:hook_parent_constraint.tg[0].tr"
		 -l on;
connectAttr "RootTransform__instance_1:blueprint_joint.ro" "Spline__instance_2:hook_parent_constraint.tg[0].tro"
		 -l on;
connectAttr "RootTransform__instance_1:blueprint_joint.s" "Spline__instance_2:hook_parent_constraint.tg[0].ts"
		 -l on;
connectAttr "RootTransform__instance_1:blueprint_joint.pm" "Spline__instance_2:hook_parent_constraint.tg[0].tpm"
		 -l on;
connectAttr "RootTransform__instance_1:blueprint_joint.jo" "Spline__instance_2:hook_parent_constraint.tg[0].tjo"
		 -l on;
connectAttr "Spline__instance_2:hook_parent_constraint.w0" "Spline__instance_2:hook_parent_constraint.tg[0].tw"
		 -l on;
connectAttr "Spline__instance_2:HOOK_IN.pim" "Spline__instance_2:hook_scale_constraint.cpim"
		 -l on;
connectAttr "RootTransform__instance_1:blueprint_joint.s" "Spline__instance_2:hook_scale_constraint.tg[0].ts"
		 -l on;
connectAttr "RootTransform__instance_1:blueprint_joint.pm" "Spline__instance_2:hook_scale_constraint.tg[0].tpm"
		 -l on;
connectAttr "Spline__instance_2:hook_scale_constraint.w0" "Spline__instance_2:hook_scale_constraint.tg[0].tw"
		 -l on;
connectAttr "non_blueprint_visibilityMultiply.ox" "non_blueprint_grp.v" -l on;
connectAttr "nurbsCylinder1_skinClusterGroupId.id" "nurbsCylinderShape1.iog.og[0].gid"
		 -l on;
connectAttr "nurbsCylinder1_skinClusterSet.mwc" "nurbsCylinderShape1.iog.og[0].gco"
		 -l on;
connectAttr "groupId2.id" "nurbsCylinderShape1.iog.og[1].gid" -l on;
connectAttr "tweakSet1.mwc" "nurbsCylinderShape1.iog.og[1].gco" -l on;
connectAttr "nurbsCylinder1_skinCluster.og[0]" "nurbsCylinderShape1.cr" -l on;
connectAttr "tweak1.pl[0].cp[0]" "nurbsCylinderShape1.twl" -l on;
connectAttr "character_grp.animationControlVisibility" "character_container.boc[0]"
		 -l on;
connectAttr "RootTransform__instance_1:module_container.boc[0]" "character_container.boc[1]"
		 -l on;
connectAttr "RootTransform__instance_1:module_container.boc[1]" "character_container.boc[2]"
		 -l on;
connectAttr "Spline__instance_2:module_container.boc[0]" "character_container.boc[3]"
		 -l on;
connectAttr "Spline__instance_2:module_container.boc[1]" "character_container.boc[4]"
		 -l on;
connectAttr "non_blueprint_container.boc[0]" "character_container.boc[5]" -l on;
connectAttr "hyperLayout10.msg" "character_container.hl" -l on;
connectAttr "reverse_moduleMaintenanceVisibility.ox" "moduleVisibilityMultiply.i1x"
		 -l on;
connectAttr "character_grp.animationControlVisibility" "moduleVisibilityMultiply.i2x"
		 -l on;
connectAttr "character_grp.moduleMaintenanceVisibility" "reverse_moduleMaintenanceVisibility.ix"
		 -l on;
connectAttr "RootTransform__instance_1:module_container.msg" "hyperLayout10.hyp[0].dn"
		;
connectAttr "Spline__instance_2:module_container.msg" "hyperLayout10.hyp[1].dn";
connectAttr "character_grp.msg" "hyperLayout10.hyp[2].dn";
connectAttr "reverse_moduleMaintenanceVisibility.msg" "hyperLayout10.hyp[3].dn";
connectAttr "moduleVisibilityMultiply.msg" "hyperLayout10.hyp[4].dn";
connectAttr "non_blueprint_container.msg" "hyperLayout10.hyp[5].dn";
connectAttr "RootTransform__instance_1:SETTINGS.activeModule" "RootTransform__instance_1:module_container.boc[0]"
		;
connectAttr "RootTransform__instance_1:SETTINGS.creationPoseWeight" "RootTransform__instance_1:module_container.boc[1]"
		;
connectAttr "hyperLayout7.msg" "RootTransform__instance_1:module_container.hl" -l
		 on;
connectAttr "Spline__instance_2:SETTINGS.activeModule" "Spline__instance_2:module_container.boc[0]"
		;
connectAttr "Spline__instance_2:SETTINGS.creationPoseWeight" "Spline__instance_2:module_container.boc[1]"
		;
connectAttr "hyperLayout9.msg" "Spline__instance_2:module_container.hl" -l on;
connectAttr "non_blueprint_grp.display" "non_blueprint_container.boc[0]";
connectAttr "hyperLayout11.msg" "non_blueprint_container.hl" -l on;
connectAttr "RootTransform__instance_1:module_grp.msg" "hyperLayout7.hyp[0].dn";
connectAttr "RootTransform__instance_1:HOOK_IN.msg" "hyperLayout7.hyp[1].dn";
connectAttr "RootTransform__instance_1:SETTINGS.msg" "hyperLayout7.hyp[2].dn";
connectAttr "RootTransform__instance_1:blueprint_container.msg" "hyperLayout7.hyp[3].dn"
		;
connectAttr "RootTransform__instance_1:SETTINGSShape.msg" "hyperLayout7.hyp[4].dn"
		;
connectAttr "hyperLayout6.msg" "RootTransform__instance_1:blueprint_container.hl"
		 -l on;
connectAttr "RootTransform__instance_1:SETTINGS.creationPoseWeight" "RootTransform__instance_1:blueprint_joint_original_scale.i2x"
		 -l on;
connectAttr "RootTransform__instance_1:SETTINGS.creationPoseWeight" "RootTransform__instance_1:blueprint_joint_original_scale.i2y"
		 -l on;
connectAttr "RootTransform__instance_1:SETTINGS.creationPoseWeight" "RootTransform__instance_1:blueprint_joint_original_scale.i2z"
		 -l on;
connectAttr "RootTransform__instance_1:blueprint_joint_original_scale.o" "RootTransform__instance_1:blueprint_joint_addScale.i3[0]"
		 -l on;
connectAttr "RootTransform__instance_1:blueprint_joint_addRotations.msg" "hyperLayout6.hyp[0].dn"
		;
connectAttr "RootTransform__instance_1:blueprint_joint_dummyRotationsMultiply.msg" "hyperLayout6.hyp[1].dn"
		;
connectAttr "RootTransform__instance_1:blueprint_joint_addTranslate.msg" "hyperLayout6.hyp[2].dn"
		;
connectAttr "RootTransform__instance_1:blueprint_joint_original_Translate.msg" "hyperLayout6.hyp[3].dn"
		;
connectAttr "RootTransform__instance_1:blueprint_joint_addScale.msg" "hyperLayout6.hyp[4].dn"
		;
connectAttr "RootTransform__instance_1:blueprint_joint_original_scale.msg" "hyperLayout6.hyp[5].dn"
		;
connectAttr "RootTransform__instance_1:blueprint_joints_grp.msg" "hyperLayout6.hyp[6].dn"
		;
connectAttr "RootTransform__instance_1:creationPose_joints_grp.msg" "hyperLayout6.hyp[7].dn"
		;
connectAttr "unitConversion1.msg" "hyperLayout6.hyp[8].dn";
connectAttr "RootTransform__instance_1:blueprint_joint.msg" "hyperLayout6.hyp[9].dn"
		;
connectAttr "RootTransform__instance_1:creationPose_joint.msg" "hyperLayout6.hyp[10].dn"
		;
connectAttr "RootTransform__instance_1:blueprint_joint_dummyRotationsMultiply.o" "RootTransform__instance_1:blueprint_joint_addRotations.i3[0]"
		 -l on;
connectAttr "RootTransform__instance_1:blueprint_joint_addRotations.o3" "unitConversion1.i"
		 -l on;
connectAttr "RootTransform__instance_1:SETTINGS.creationPoseWeight" "RootTransform__instance_1:blueprint_joint_original_Translate.i2x"
		 -l on;
connectAttr "RootTransform__instance_1:SETTINGS.creationPoseWeight" "RootTransform__instance_1:blueprint_joint_original_Translate.i2y"
		 -l on;
connectAttr "RootTransform__instance_1:SETTINGS.creationPoseWeight" "RootTransform__instance_1:blueprint_joint_original_Translate.i2z"
		 -l on;
connectAttr "RootTransform__instance_1:blueprint_joint_original_Translate.o" "RootTransform__instance_1:blueprint_joint_addTranslate.i3[0]"
		 -l on;
connectAttr "Spline__instance_2:module_grp.msg" "hyperLayout9.hyp[0].dn";
connectAttr "Spline__instance_2:HOOK_IN.msg" "hyperLayout9.hyp[1].dn";
connectAttr "Spline__instance_2:SETTINGS.msg" "hyperLayout9.hyp[2].dn";
connectAttr "Spline__instance_2:blueprint_container.msg" "hyperLayout9.hyp[3].dn"
		;
connectAttr "Spline__instance_2:SETTINGSShape.msg" "hyperLayout9.hyp[4].dn";
connectAttr "Spline__instance_2:hook_parent_constraint.msg" "hyperLayout9.hyp[5].dn"
		;
connectAttr "Spline__instance_2:hook_scale_constraint.msg" "hyperLayout9.hyp[6].dn"
		;
connectAttr "hyperLayout8.msg" "Spline__instance_2:blueprint_container.hl" -l on
		;
connectAttr "Spline__instance_2:blueprint_spline_0_joint_addRotations.msg" "hyperLayout8.hyp[0].dn"
		;
connectAttr "Spline__instance_2:blueprint_spline_0_joint_dummyRotationsMultiply.msg" "hyperLayout8.hyp[1].dn"
		;
connectAttr "Spline__instance_2:blueprint_spline_0_joint_addTranslate.msg" "hyperLayout8.hyp[2].dn"
		;
connectAttr "Spline__instance_2:blueprint_spline_0_joint_original_Translate.msg" "hyperLayout8.hyp[3].dn"
		;
connectAttr "Spline__instance_2:blueprint_spline_0_joint_addScale.msg" "hyperLayout8.hyp[4].dn"
		;
connectAttr "Spline__instance_2:blueprint_spline_0_joint_original_scale.msg" "hyperLayout8.hyp[5].dn"
		;
connectAttr "Spline__instance_2:blueprint_spline_1_joint_addRotations.msg" "hyperLayout8.hyp[6].dn"
		;
connectAttr "Spline__instance_2:blueprint_spline_1_joint_dummyRotationsMultiply.msg" "hyperLayout8.hyp[7].dn"
		;
connectAttr "Spline__instance_2:blueprint_spline_1_joint_addTx.msg" "hyperLayout8.hyp[8].dn"
		;
connectAttr "Spline__instance_2:blueprint_spline_1_joint_original_Tx.msg" "hyperLayout8.hyp[9].dn"
		;
connectAttr "Spline__instance_2:blueprint_spline_2_joint_addRotations.msg" "hyperLayout8.hyp[10].dn"
		;
connectAttr "Spline__instance_2:blueprint_spline_2_joint_dummyRotationsMultiply.msg" "hyperLayout8.hyp[11].dn"
		;
connectAttr "Spline__instance_2:blueprint_spline_2_joint_addTx.msg" "hyperLayout8.hyp[12].dn"
		;
connectAttr "Spline__instance_2:blueprint_spline_2_joint_original_Tx.msg" "hyperLayout8.hyp[13].dn"
		;
connectAttr "Spline__instance_2:blueprint_spline_3_joint_addRotations.msg" "hyperLayout8.hyp[14].dn"
		;
connectAttr "Spline__instance_2:blueprint_spline_3_joint_dummyRotationsMultiply.msg" "hyperLayout8.hyp[15].dn"
		;
connectAttr "Spline__instance_2:blueprint_spline_3_joint_addTx.msg" "hyperLayout8.hyp[16].dn"
		;
connectAttr "Spline__instance_2:blueprint_spline_3_joint_original_Tx.msg" "hyperLayout8.hyp[17].dn"
		;
connectAttr "Spline__instance_2:blueprint_spline_4_joint_addTx.msg" "hyperLayout8.hyp[18].dn"
		;
connectAttr "Spline__instance_2:blueprint_spline_4_joint_original_Tx.msg" "hyperLayout8.hyp[19].dn"
		;
connectAttr "Spline__instance_2:blueprint_joints_grp.msg" "hyperLayout8.hyp[20].dn"
		;
connectAttr "Spline__instance_2:creationPose_joints_grp.msg" "hyperLayout8.hyp[21].dn"
		;
connectAttr "unitConversion2.msg" "hyperLayout8.hyp[22].dn";
connectAttr "unitConversion3.msg" "hyperLayout8.hyp[23].dn";
connectAttr "unitConversion4.msg" "hyperLayout8.hyp[24].dn";
connectAttr "unitConversion5.msg" "hyperLayout8.hyp[25].dn";
connectAttr "Spline__instance_2:blueprint_spline_0_joint.msg" "hyperLayout8.hyp[26].dn"
		;
connectAttr "Spline__instance_2:blueprint_spline_1_joint.msg" "hyperLayout8.hyp[27].dn"
		;
connectAttr "Spline__instance_2:blueprint_spline_2_joint.msg" "hyperLayout8.hyp[28].dn"
		;
connectAttr "Spline__instance_2:blueprint_spline_3_joint.msg" "hyperLayout8.hyp[29].dn"
		;
connectAttr "Spline__instance_2:blueprint_spline_4_joint.msg" "hyperLayout8.hyp[30].dn"
		;
connectAttr "Spline__instance_2:creationPose_spline_0_joint.msg" "hyperLayout8.hyp[31].dn"
		;
connectAttr "Spline__instance_2:creationPose_spline_1_joint.msg" "hyperLayout8.hyp[32].dn"
		;
connectAttr "Spline__instance_2:creationPose_spline_2_joint.msg" "hyperLayout8.hyp[33].dn"
		;
connectAttr "Spline__instance_2:creationPose_spline_3_joint.msg" "hyperLayout8.hyp[34].dn"
		;
connectAttr "Spline__instance_2:creationPose_spline_4_joint.msg" "hyperLayout8.hyp[35].dn"
		;
connectAttr "Spline__instance_2:blueprint_spline_3_joint_addRotations.o3" "unitConversion5.i"
		 -l on;
connectAttr "Spline__instance_2:blueprint_spline_2_joint_addRotations.o3" "unitConversion4.i"
		 -l on;
connectAttr "Spline__instance_2:blueprint_spline_1_joint_addRotations.o3" "unitConversion3.i"
		 -l on;
connectAttr "Spline__instance_2:blueprint_spline_0_joint_addRotations.o3" "unitConversion2.i"
		 -l on;
connectAttr "Spline__instance_2:blueprint_spline_3_joint_original_Tx.ox" "Spline__instance_2:blueprint_spline_3_joint_addTx.i1[0]"
		 -l on;
connectAttr "Spline__instance_2:SETTINGS.creationPoseWeight" "Spline__instance_2:blueprint_spline_3_joint_original_Tx.i2x"
		 -l on;
connectAttr "Spline__instance_2:blueprint_spline_4_joint_original_Tx.ox" "Spline__instance_2:blueprint_spline_4_joint_addTx.i1[0]"
		 -l on;
connectAttr "Spline__instance_2:SETTINGS.creationPoseWeight" "Spline__instance_2:blueprint_spline_4_joint_original_Tx.i2x"
		 -l on;
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
connectAttr "Spline__instance_2:blueprint_spline_3_joint_dummyRotationsMultiply.o" "Spline__instance_2:blueprint_spline_3_joint_addRotations.i3[0]"
		 -l on;
connectAttr "reverse_moduleMaintenanceVisibility.ox" "non_blueprint_visibilityMultiply.i1x"
		 -l on;
connectAttr "non_blueprint_grp.display" "non_blueprint_visibilityMultiply.i2x" -l
		 on;
connectAttr "groupParts2.og" "tweak1.ip[0].ig" -l on;
connectAttr "groupId2.id" "tweak1.ip[0].gi" -l on;
connectAttr "nurbsCylinder1_skinClusterGroupId.msg" "nurbsCylinder1_skinClusterSet.gn"
		 -l on -na;
connectAttr "nurbsCylinderShape1.iog.og[0]" "nurbsCylinder1_skinClusterSet.dsm" 
		-l on -na;
connectAttr "nurbsCylinder1_skinCluster.msg" "nurbsCylinder1_skinClusterSet.ub[0]"
		 -l on;
connectAttr "groupId2.msg" "tweakSet1.gn" -l on -na;
connectAttr "nurbsCylinderShape1.iog.og[1]" "tweakSet1.dsm" -l on -na;
connectAttr "tweak1.msg" "tweakSet1.ub[0]" -l on;
connectAttr "non_blueprint_grp.msg" "hyperLayout11.hyp[0].dn";
connectAttr "nurbsCylinder1.msg" "hyperLayout11.hyp[1].dn";
connectAttr "nurbsCylinderShape1.msg" "hyperLayout11.hyp[2].dn";
connectAttr "nurbsCylinderShape1Orig.msg" "hyperLayout11.hyp[3].dn";
connectAttr "non_blueprint_visibilityMultiply.msg" "hyperLayout11.hyp[4].dn";
connectAttr "tweak1.msg" "hyperLayout11.hyp[5].dn";
connectAttr "nurbsCylinder1_skinClusterGroupId.msg" "hyperLayout11.hyp[6].dn";
connectAttr "groupId2.msg" "hyperLayout11.hyp[7].dn";
connectAttr "nurbsCylinder1_skinClusterSet.msg" "hyperLayout11.hyp[8].dn";
connectAttr "tweakSet1.msg" "hyperLayout11.hyp[9].dn";
connectAttr "nurbsCylinder1_skinCluster.msg" "hyperLayout11.hyp[10].dn";
connectAttr "nurbsCylinder1_skinClusterGroupParts.msg" "hyperLayout11.hyp[11].dn"
		;
connectAttr "groupParts2.msg" "hyperLayout11.hyp[12].dn";
connectAttr "nurbsCylinder1_skinClusterGroupParts.og" "nurbsCylinder1_skinCluster.ip[0].ig"
		 -l on;
connectAttr "nurbsCylinder1_skinClusterGroupId.id" "nurbsCylinder1_skinCluster.ip[0].gi"
		 -l on;
connectAttr "bindPose1.msg" "nurbsCylinder1_skinCluster.bp" -l on;
connectAttr "Spline__instance_2:blueprint_spline_0_joint.wm" "nurbsCylinder1_skinCluster.ma[0]"
		 -l on;
connectAttr "Spline__instance_2:blueprint_spline_1_joint.wm" "nurbsCylinder1_skinCluster.ma[1]"
		 -l on;
connectAttr "Spline__instance_2:blueprint_spline_2_joint.wm" "nurbsCylinder1_skinCluster.ma[2]"
		 -l on;
connectAttr "Spline__instance_2:blueprint_spline_3_joint.wm" "nurbsCylinder1_skinCluster.ma[3]"
		 -l on;
connectAttr "Spline__instance_2:blueprint_spline_4_joint.wm" "nurbsCylinder1_skinCluster.ma[4]"
		 -l on;
connectAttr "Spline__instance_2:blueprint_spline_0_joint.liw" "nurbsCylinder1_skinCluster.lw[0]"
		 -l on;
connectAttr "Spline__instance_2:blueprint_spline_1_joint.liw" "nurbsCylinder1_skinCluster.lw[1]"
		 -l on;
connectAttr "Spline__instance_2:blueprint_spline_2_joint.liw" "nurbsCylinder1_skinCluster.lw[2]"
		 -l on;
connectAttr "Spline__instance_2:blueprint_spline_3_joint.liw" "nurbsCylinder1_skinCluster.lw[3]"
		 -l on;
connectAttr "Spline__instance_2:blueprint_spline_4_joint.liw" "nurbsCylinder1_skinCluster.lw[4]"
		 -l on;
connectAttr "tweak1.og[0]" "nurbsCylinder1_skinClusterGroupParts.ig" -l on;
connectAttr "nurbsCylinder1_skinClusterGroupId.id" "nurbsCylinder1_skinClusterGroupParts.gi"
		 -l on;
connectAttr "nurbsCylinderShape1Orig.ws" "groupParts2.ig" -l on;
connectAttr "groupId2.id" "groupParts2.gi" -l on;
connectAttr "Spline__instance_2:module_grp.msg" "bindPose1.m[0]";
connectAttr "Spline__instance_2:HOOK_IN.msg" "bindPose1.m[1]";
connectAttr "Spline__instance_2:blueprint_joints_grp.msg" "bindPose1.m[2]";
connectAttr "Spline__instance_2:blueprint_spline_0_joint.msg" "bindPose1.m[3]";
connectAttr "Spline__instance_2:blueprint_spline_1_joint.msg" "bindPose1.m[4]";
connectAttr "Spline__instance_2:blueprint_spline_2_joint.msg" "bindPose1.m[5]";
connectAttr "Spline__instance_2:blueprint_spline_3_joint.msg" "bindPose1.m[6]";
connectAttr "Spline__instance_2:blueprint_spline_4_joint.msg" "bindPose1.m[7]";
connectAttr "bindPose1.w" "bindPose1.p[0]";
connectAttr "bindPose1.m[0]" "bindPose1.p[1]";
connectAttr "bindPose1.m[1]" "bindPose1.p[2]";
connectAttr "bindPose1.m[2]" "bindPose1.p[3]";
connectAttr "bindPose1.m[3]" "bindPose1.p[4]";
connectAttr "bindPose1.m[4]" "bindPose1.p[5]";
connectAttr "bindPose1.m[5]" "bindPose1.p[6]";
connectAttr "bindPose1.m[6]" "bindPose1.p[7]";
connectAttr "Spline__instance_2:blueprint_spline_0_joint.bps" "bindPose1.wm[3]";
connectAttr "Spline__instance_2:blueprint_spline_1_joint.bps" "bindPose1.wm[4]";
connectAttr "Spline__instance_2:blueprint_spline_2_joint.bps" "bindPose1.wm[5]";
connectAttr "Spline__instance_2:blueprint_spline_3_joint.bps" "bindPose1.wm[6]";
connectAttr "Spline__instance_2:blueprint_spline_4_joint.bps" "bindPose1.wm[7]";
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
connectAttr "Spline__instance_2:blueprint_spline_3_joint_addRotations.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Spline__instance_2:blueprint_spline_3_joint_dummyRotationsMultiply.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Spline__instance_2:blueprint_spline_3_joint_addTx.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Spline__instance_2:blueprint_spline_3_joint_original_Tx.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Spline__instance_2:blueprint_spline_4_joint_addTx.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Spline__instance_2:blueprint_spline_4_joint_original_Tx.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "reverse_moduleMaintenanceVisibility.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "moduleVisibilityMultiply.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "non_blueprint_visibilityMultiply.msg" ":defaultRenderUtilityList1.u"
		 -na;
// End of rootTransformTest.ma
