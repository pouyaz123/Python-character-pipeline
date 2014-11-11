//Maya ASCII 2012 scene
//Name: tubeSpline.ma
//Last modified: Sat, Feb 25, 2012 10:33:53 PM
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
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 0 90.000000000000014 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -2.2204460492503131e-016 1 0 0 1 2.2204460492503131e-016 1.2246467991473532e-016 0
		 1.2246467991473532e-016 2.4651903288156619e-032 -1 0 0 0 0 1;
	setAttr ".liw";
lockNode -l 1 -lu 1;
createNode joint -n "Spline__instance_1:blueprint_spline_1_joint" -p "Spline__instance_1:blueprint_spline_0_joint";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 3.75 8.326672684688678e-016 1.0197233050851688e-031 ;
	setAttr ".t";
	setAttr ".s";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -2.2204460492503131e-016 1 0 0 1 2.2204460492503131e-016 1.2246467991473532e-016 0
		 1.2246467991473532e-016 2.4651903288156619e-032 -1 0 3.944304526105059e-031 3.75 0 1;
	setAttr ".liw";
lockNode -l 1 -lu 1;
createNode joint -n "Spline__instance_1:blueprint_spline_2_joint" -p "Spline__instance_1:blueprint_spline_1_joint";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 3.75 8.326672684688676e-016 9.8607613152626498e-032 ;
	setAttr ".t";
	setAttr ".s";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -2.2204460492503131e-016 1 0 0 1 2.2204460492503131e-016 1.2246467991473532e-016 0
		 1.2246467991473532e-016 2.4651903288156619e-032 -1 0 5.9164567891575885e-031 7.5 3.3647173558903631e-033 1;
	setAttr ".liw";
lockNode -l 1 -lu 1;
createNode joint -n "Spline__instance_1:blueprint_spline_3_joint" -p "Spline__instance_1:blueprint_spline_2_joint";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 3.75 8.326672684688676e-016 9.8607613152626476e-032 ;
	setAttr ".t";
	setAttr ".s";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -2.2204460492503131e-016 1 0 0 1 2.2204460492503131e-016 1.2246467991473532e-016 0
		 1.2246467991473532e-016 2.4651903288156619e-032 -1 0 7.8886090522101181e-031 11.25 6.729434711780748e-033 1;
	setAttr ".liw";
lockNode -l 1 -lu 1;
createNode joint -n "Spline__instance_1:blueprint_spline_4_joint" -p "Spline__instance_1:blueprint_spline_3_joint";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 3.75 8.326672684688678e-016 9.8607613152626563e-032 ;
	setAttr ".t";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 0 90.000000000000014 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 1 0 1.2246467991473532e-016 0 1.4997597826618576e-032 1 -1.224646799147353e-016 0
		 -1.2246467991473532e-016 1.224646799147353e-016 1 0 1.1832913578315177e-030 15 1.0094152067671067e-032 1;
	setAttr ".liw";
lockNode -l 1 -lu 1;
createNode transform -n "Spline__instance_1:creationPose_joints_grp" -p "Spline__instance_1:HOOK_IN";
lockNode -l 1 -lu 1;
createNode joint -n "Spline__instance_1:creationPose_spline_0_joint" -p "Spline__instance_1:creationPose_joints_grp";
	setAttr ".v" no;
	setAttr ".s";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 0 90.000000000000014 ;
	setAttr ".ssc" no;
lockNode -l 1 -lu 1;
createNode joint -n "Spline__instance_1:creationPose_spline_1_joint" -p "Spline__instance_1:creationPose_spline_0_joint";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 3.7500000000000009 8.326672684688678e-016 1.0197233050851688e-031 ;
	setAttr ".s";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
lockNode -l 1 -lu 1;
createNode joint -n "Spline__instance_1:creationPose_spline_2_joint" -p "Spline__instance_1:creationPose_spline_1_joint";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 3.7500000000000009 8.326672684688676e-016 9.8607613152626498e-032 ;
	setAttr ".s";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
lockNode -l 1 -lu 1;
createNode joint -n "Spline__instance_1:creationPose_spline_3_joint" -p "Spline__instance_1:creationPose_spline_2_joint";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 3.7500000000000018 8.326672684688676e-016 9.8607613152626476e-032 ;
	setAttr ".s";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
lockNode -l 1 -lu 1;
createNode joint -n "Spline__instance_1:creationPose_spline_4_joint" -p "Spline__instance_1:creationPose_spline_3_joint";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 3.75 8.326672684688678e-016 9.8607613152626563e-032 ;
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
createNode transform -n "non_blueprint_grp" -p "character_grp";
	addAttr -ci true -k true -sn "display" -ln "display" -dv 1 -min 0 -max 1 -at "bool";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".rp" -type "double3" -1.1102230246251565e-016 7.5741622706750453 0 ;
	setAttr ".sp" -type "double3" -1.1102230246251565e-016 7.5741622706750453 0 ;
	setAttr -k on ".display";
lockNode -l 1 -lu 1;
createNode transform -n "nurbsCylinder1" -p "non_blueprint_grp";
	setAttr ".t" -type "double3" 0 7.5741622706750453 0 ;
	setAttr ".t";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 1 7.8585252600668172 1 ;
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
		13 0 0 0 0.25 0.5 0.75 1 1.25 1.5 1.75 2 2 2
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		
		121
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
		0.78361162489122382 -0.91666666666666663 -0.78361162489122516
		1.1081941875543879 -0.91666666666666663 7.030206111737291e-017
		0.78361162489122427 -0.91666666666666663 0.78361162489122416
		3.2112695072372299e-016 -0.91666666666666674 1.1081941875543879
		-0.78361162489122405 -0.91666666666666663 0.78361162489122438
		-1.1081941875543881 -0.91666666666666663 2.7779089139813157e-016
		-0.78361162489122438 -0.91666666666666663 -0.78361162489122393
		-5.9521325992805852e-016 -0.91666666666666652 -1.1081941875543879
		0.78361162489122382 -0.91666666666666663 -0.78361162489122516
		1.1081941875543879 -0.91666666666666663 7.030206111737291e-017
		0.78361162489122427 -0.91666666666666663 0.78361162489122416
		0.78361162489122382 -0.75 -0.78361162489122504
		1.1081941875543879 -0.75 8.0507451110267518e-017
		0.78361162489122427 -0.75 0.78361162489122427
		3.2112695072372299e-016 -0.75000000000000011 1.1081941875543879
		-0.78361162489122405 -0.75 0.78361162489122449
		-1.1081941875543881 -0.75 2.8799628139102622e-016
		-0.78361162489122438 -0.75 -0.78361162489122382
		-5.9521325992805852e-016 -0.74999999999999989 -1.1081941875543879
		0.78361162489122382 -0.75 -0.78361162489122504
		1.1081941875543879 -0.75 8.0507451110267518e-017
		0.78361162489122427 -0.75 0.78361162489122427
		0.78361162489122382 -0.49999999999999994 -0.78361162489122504
		1.1081941875543879 -0.5 9.5815536099609424e-017
		0.78361162489122427 -0.5 0.78361162489122427
		3.2112695072372299e-016 -0.50000000000000011 1.1081941875543879
		-0.78361162489122405 -0.5 0.78361162489122449
		-1.1081941875543881 -0.5 3.0330436638036811e-016
		-0.78361162489122438 -0.49999999999999994 -0.78361162489122382
		-5.9521325992805852e-016 -0.49999999999999994 -1.1081941875543879
		0.78361162489122382 -0.49999999999999994 -0.78361162489122504
		1.1081941875543879 -0.5 9.5815536099609424e-017
		0.78361162489122427 -0.5 0.78361162489122427
		0.78361162489122382 -0.24999999999999992 -0.78361162489122504
		1.1081941875543879 -0.24999999999999997 1.1112362108895134e-016
		0.78361162489122427 -0.25 0.78361162489122427
		3.2112695072372299e-016 -0.25000000000000006 1.1081941875543879
		-0.78361162489122405 -0.25 0.78361162489122449
		-1.1081941875543881 -0.24999999999999997 3.1861245136971005e-016
		-0.78361162489122438 -0.24999999999999992 -0.78361162489122382
		-5.9521325992805852e-016 -0.24999999999999992 -1.1081941875543879
		0.78361162489122382 -0.24999999999999992 -0.78361162489122504
		1.1081941875543879 -0.24999999999999997 1.1112362108895134e-016
		0.78361162489122427 -0.25 0.78361162489122427
		0.78361162489122382 6.1860161217699207e-017 -0.78361162489122504
		1.1081941875543879 1.3877787807814449e-017 1.2643170607829326e-016
		0.78361162489122427 -3.4104585602070256e-017 0.78361162489122427
		3.2112695072372299e-016 -5.3979535423294677e-017 1.1081941875543879
		-0.78361162489122405 -3.4104585602070268e-017 0.78361162489122449
		-1.1081941875543881 1.3877787807814437e-017 3.3392053635905195e-016
		-0.78361162489122438 6.1860161217699133e-017 -0.78361162489122382
		-5.9521325992805852e-016 8.1735111038923591e-017 -1.1081941875543879
		0.78361162489122382 6.1860161217699207e-017 -0.78361162489122504
		1.1081941875543879 1.3877787807814449e-017 1.2643170607829326e-016
		0.78361162489122427 -3.4104585602070256e-017 0.78361162489122427
		0.78361162489122382 0.25000000000000011 -0.78361162489122504
		1.1081941875543879 0.25000000000000006 1.4173979106763518e-016
		0.78361162489122427 0.25 0.78361162489122427
		3.2112695072372299e-016 0.25 1.1081941875543879
		-0.78361162489122405 0.25 0.78361162489122449
		-1.1081941875543881 0.25000000000000006 3.4922862134839384e-016
		-0.78361162489122438 0.25000000000000011 -0.78361162489122382
		-5.9521325992805852e-016 0.25000000000000011 -1.1081941875543879
		0.78361162489122382 0.25000000000000011 -0.78361162489122504
		1.1081941875543879 0.25000000000000006 1.4173979106763518e-016
		0.78361162489122427 0.25 0.78361162489122427
		0.78361162489122382 0.5 -0.78361162489122504
		1.1081941875543879 0.5 1.570478760569771e-016
		0.78361162489122427 0.49999999999999994 0.78361162489122427
		3.2112695072372299e-016 0.49999999999999994 1.1081941875543879
		-0.78361162489122405 0.49999999999999994 0.78361162489122449
		-1.1081941875543881 0.5 3.6453670633773578e-016
		-0.78361162489122438 0.5 -0.78361162489122382
		-5.9521325992805852e-016 0.50000000000000011 -1.1081941875543879
		0.78361162489122382 0.5 -0.78361162489122504
		1.1081941875543879 0.5 1.570478760569771e-016
		0.78361162489122427 0.49999999999999994 0.78361162489122427
		0.78361162489122382 0.75 -0.78361162489122504
		1.1081941875543879 0.75 1.7235596104631902e-016
		0.78361162489122427 0.75 0.78361162489122427
		3.2112695072372299e-016 0.74999999999999989 1.1081941875543879
		-0.78361162489122405 0.75 0.78361162489122449
		-1.1081941875543881 0.75 3.7984479132707768e-016
		-0.78361162489122438 0.75 -0.78361162489122382
		-5.9521325992805852e-016 0.75000000000000011 -1.1081941875543879
		0.78361162489122382 0.75 -0.78361162489122504
		1.1081941875543879 0.75 1.7235596104631902e-016
		0.78361162489122427 0.75 0.78361162489122427
		0.78361162489122382 0.91666666666666663 -0.78361162489122493
		1.1081941875543879 0.91666666666666663 1.8256135103921361e-016
		0.78361162489122427 0.91666666666666663 0.78361162489122438
		3.2112695072372299e-016 0.91666666666666652 1.1081941875543879
		-0.78361162489122405 0.91666666666666663 0.7836116248912246
		-1.1081941875543881 0.91666666666666663 3.9005018131997232e-016
		-0.78361162489122438 0.91666666666666663 -0.78361162489122371
		-5.9521325992805852e-016 0.91666666666666674 -1.1081941875543879
		0.78361162489122382 0.91666666666666663 -0.78361162489122493
		1.1081941875543879 0.91666666666666663 1.8256135103921361e-016
		0.78361162489122427 0.91666666666666663 0.78361162489122438
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
lockNode -l 1 -lu 1;
createNode container -n "character_container";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr ".isc" yes;
	setAttr -s 4 ".boc";
	setAttr -s 3 ".ish[1:3]" yes yes yes;
	setAttr ".ctor" -type "string" "cat";
	setAttr ".cdat" -type "string" "2012/02/25 22:33:53";
	setAttr ".aal" -type "attributeAlias" {"animControlVis","borderConnections[0]","instance_1_activeModule"
		,"borderConnections[1]","instance_1_creationPoseWeight","borderConnections[2]","displayNonBlueprintNodes"
		,"borderConnections[3]"} ;
lockNode -l 1 -lu 1;
createNode hyperLayout -n "hyperLayout3";
	setAttr ".ihi" 0;
	setAttr -s 5 ".hyp";
createNode reverse -n "reverse_moduleMaintenanceVisibility";
	setAttr ".i";
lockNode -l 1 -lu 1;
createNode container -n "non_blueprint_container";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr ".isc" yes;
	setAttr ".ctor" -type "string" "cat";
	setAttr ".cdat" -type "string" "2012/02/25 22:33:53";
	setAttr ".aal" -type "attributeAlias" {"displayNonBlueprintNodes","borderConnections[0]"
		} ;
lockNode -l 1 -lu 1;
createNode container -n "Spline__instance_1:module_container";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr ".isc" yes;
	setAttr -s 2 ".boc";
	setAttr ".ctor" -type "string" "cat";
	setAttr ".cdat" -type "string" "2012/02/25 22:31:50";
	setAttr ".aal" -type "attributeAlias" {"activeModule","borderConnections[0]","creationPoseWeight"
		,"borderConnections[1]"} ;
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "moduleVisibilityMultiply";
	setAttr ".i1";
	setAttr ".i2";
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
createNode multiplyDivide -n "non_blueprint_visibilityMultiply";
	setAttr ".i1";
	setAttr ".i2";
lockNode -l 1 -lu 1;
createNode groupParts -n "nurbsCylinder1_skinClusterGroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*][*]";
lockNode -l 1 -lu 1;
createNode groupParts -n "groupParts2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*][*]";
lockNode -l 1 -lu 1;
createNode skinCluster -n "nurbsCylinder1_skinCluster";
	setAttr ".ip";
	setAttr -s 88 ".wl";
	setAttr -s 2 ".wl[0].w[0:1]"  0.99443909809671183 0.0055609019032881986;
	setAttr -s 2 ".wl[1].w[0:1]"  0.99443909809671183 0.0055609019032881951;
	setAttr -s 2 ".wl[2].w[0:1]"  0.99443909809671183 0.0055609019032881908;
	setAttr -s 2 ".wl[3].w[0:1]"  0.99443909809671183 0.0055609019032881951;
	setAttr -s 2 ".wl[4].w[0:1]"  0.99443909809671183 0.0055609019032881951;
	setAttr -s 2 ".wl[5].w[0:1]"  0.99443909809671183 0.0055609019032881986;
	setAttr -s 2 ".wl[6].w[0:1]"  0.99443909809671183 0.0055609019032881908;
	setAttr -s 2 ".wl[7].w[0:1]"  0.99443909809671183 0.0055609019032882004;
	setAttr -s 2 ".wl[11].w[0:1]"  0.99066154408357443 0.0093384559164255629;
	setAttr -s 2 ".wl[12].w[0:1]"  0.99066154408357443 0.0093384559164255629;
	setAttr -s 2 ".wl[13].w[0:1]"  0.99066154408357443 0.0093384559164255559;
	setAttr -s 2 ".wl[14].w[0:1]"  0.99066154408357443 0.0093384559164255525;
	setAttr -s 2 ".wl[15].w[0:1]"  0.99066154408357443 0.0093384559164255559;
	setAttr -s 2 ".wl[16].w[0:1]"  0.99066154408357443 0.0093384559164255698;
	setAttr -s 2 ".wl[17].w[0:1]"  0.99066154408357443 0.0093384559164255559;
	setAttr -s 2 ".wl[18].w[0:1]"  0.99066154408357443 0.0093384559164255716;
	setAttr -s 2 ".wl[22].w[0:1]"  0.95270431342280548 0.047295686577194504;
	setAttr -s 2 ".wl[23].w[0:1]"  0.95270431342280548 0.047295686577194504;
	setAttr -s 2 ".wl[24].w[0:1]"  0.95270431342280548 0.047295686577194462;
	setAttr -s 2 ".wl[25].w[0:1]"  0.95270431342280559 0.047295686577194428;
	setAttr -s 2 ".wl[26].w[0:1]"  0.95270431342280548 0.047295686577194462;
	setAttr -s 2 ".wl[27].w[0:1]"  0.95270431342280548 0.047295686577194532;
	setAttr -s 2 ".wl[28].w[0:1]"  0.95270431342280548 0.047295686577194469;
	setAttr -s 2 ".wl[29].w[0:1]"  0.95270431342280548 0.047295686577194573;
	setAttr -s 2 ".wl[33].w[0:1]"  0.50447702185752419 0.49552297814247587;
	setAttr -s 2 ".wl[34].w[0:1]"  0.50447702185752419 0.49552297814247587;
	setAttr -s 2 ".wl[35].w[0:1]"  0.50447702185752419 0.49552297814247581;
	setAttr -s 2 ".wl[36].w[0:1]"  0.50447702185752441 0.4955229781424757;
	setAttr -s 2 ".wl[37].w[0:1]"  0.50447702185752419 0.49552297814247581;
	setAttr -s 2 ".wl[38].w[0:1]"  0.50447702185752419 0.49552297814247587;
	setAttr -s 2 ".wl[39].w[0:1]"  0.50447702185752408 0.49552297814247587;
	setAttr -s 2 ".wl[40].w[0:1]"  0.50447702185752419 0.49552297814247587;
	setAttr -s 2 ".wl[44].w[1:2]"  0.93860833210622718 0.061391667893772858;
	setAttr -s 2 ".wl[45].w[1:2]"  0.93860833210622718 0.061391667893772858;
	setAttr -s 2 ".wl[46].w[1:2]"  0.93860833210622718 0.061391667893772803;
	setAttr -s 2 ".wl[47].w[1:2]"  0.93860833210622729 0.061391667893772754;
	setAttr -s 2 ".wl[48].w[1:2]"  0.93860833210622718 0.061391667893772803;
	setAttr -s 2 ".wl[49].w[1:2]"  0.93860833210622718 0.0613916678937729;
	setAttr -s 2 ".wl[50].w[1:2]"  0.93860833210622718 0.061391667893772824;
	setAttr -s 2 ".wl[51].w[1:2]"  0.93860833210622718 0.061391667893772858;
	setAttr -s 2 ".wl[55].w[2:3]"  0.99310599908850972 0.0068940009114902582;
	setAttr -s 2 ".wl[56].w[2:3]"  0.99310599908850972 0.0068940009114902548;
	setAttr -s 2 ".wl[57].w[2:3]"  0.99310599908850972 0.0068940009114902487;
	setAttr -s 2 ".wl[58].w[2:3]"  0.99310599908850972 0.0068940009114902548;
	setAttr -s 2 ".wl[59].w[2:3]"  0.99310599908850972 0.0068940009114902487;
	setAttr -s 2 ".wl[60].w[2:3]"  0.99310599908850972 0.0068940009114902548;
	setAttr -s 2 ".wl[61].w[2:3]"  0.99310599908850972 0.0068940009114902522;
	setAttr -s 2 ".wl[62].w[2:3]"  0.99310599908850972 0.0068940009114902608;
	setAttr -s 2 ".wl[66].w[2:3]"  0.91970411624542903 0.080295883754570974;
	setAttr -s 2 ".wl[67].w[2:3]"  0.91970411624542925 0.080295883754570779;
	setAttr -s 2 ".wl[68].w[2:3]"  0.91970411624542925 0.08029588375457071;
	setAttr -s 2 ".wl[69].w[2:3]"  0.91970411624542925 0.080295883754570779;
	setAttr -s 2 ".wl[70].w[2:3]"  0.91970411624542925 0.08029588375457071;
	setAttr -s 2 ".wl[71].w[2:3]"  0.91970411624542914 0.080295883754570821;
	setAttr -s 2 ".wl[72].w[2:3]"  0.91970411624542903 0.080295883754570932;
	setAttr -s 2 ".wl[73].w[2:3]"  0.91970411624542892 0.080295883754571029;
	setAttr -s 2 ".wl[77].w[3:4]"  0.99173679468477527 0.0082632053152247257;
	setAttr -s 2 ".wl[78].w[3:4]"  0.99173679468477527 0.0082632053152247257;
	setAttr -s 2 ".wl[79].w[3:4]"  0.99173679468477527 0.0082632053152247083;
	setAttr -s 2 ".wl[80].w[3:4]"  0.99173679468477527 0.0082632053152247153;
	setAttr -s 2 ".wl[81].w[3:4]"  0.99173679468477527 0.0082632053152247083;
	setAttr -s 2 ".wl[82].w[3:4]"  0.99173679468477527 0.0082632053152247326;
	setAttr -s 2 ".wl[83].w[3:4]"  0.99173679468477538 0.0082632053152247153;
	setAttr -s 2 ".wl[84].w[3:4]"  0.99173679468477527 0.0082632053152247257;
	setAttr -s 2 ".wl[88].w[3:4]"  0.89444515170373329 0.10555484829626671;
	setAttr -s 2 ".wl[89].w[3:4]"  0.89444515170373329 0.10555484829626675;
	setAttr -s 2 ".wl[90].w[3:4]"  0.89444515170373329 0.10555484829626667;
	setAttr -s 2 ".wl[91].w[3:4]"  0.89444515170373351 0.10555484829626643;
	setAttr -s 2 ".wl[92].w[3:4]"  0.89444515170373329 0.10555484829626667;
	setAttr -s 2 ".wl[93].w[3:4]"  0.89444515170373318 0.10555484829626678;
	setAttr -s 2 ".wl[94].w[3:4]"  0.8944451517037334 0.10555484829626663;
	setAttr -s 2 ".wl[95].w[3:4]"  0.89444515170373329 0.10555484829626675;
	setAttr -s 2 ".wl[99].w[3:4]"  0.51969584000865165 0.48030415999134846;
	setAttr -s 2 ".wl[100].w[3:4]"  0.51969584000865165 0.48030415999134846;
	setAttr -s 2 ".wl[101].w[3:4]"  0.51969584000865132 0.48030415999134862;
	setAttr -s 2 ".wl[102].w[3:4]"  0.51969584000865165 0.48030415999134829;
	setAttr -s 2 ".wl[103].w[3:4]"  0.51969584000865132 0.48030415999134862;
	setAttr -s 2 ".wl[104].w[3:4]"  0.51969584000865165 0.48030415999134846;
	setAttr -s 2 ".wl[105].w[3:4]"  0.51969584000865132 0.48030415999134868;
	setAttr -s 2 ".wl[106].w[3:4]"  0.51969584000865165 0.48030415999134846;
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
		 -0 0 -0 1;
	setAttr ".pm[1]" -type "matrix" -2.2204460492503131e-016 1 1.2246467991473532e-016 -0
		 1 2.2204460492503131e-016 2.7192621468937821e-032 -0 -2.5407181807812022e-033 1.2246467991473532e-016 -1 0
		 -3.75 -8.326672684688678e-016 -1.0197233050851688e-031 1;
	setAttr ".pm[2]" -type "matrix" -2.2204460492503131e-016 1 1.2246467991473532e-016 -0
		 1 2.2204460492503131e-016 2.7192621468937821e-032 -0 -2.5407181807812022e-033 1.2246467991473532e-016 -1 0
		 -7.5 -1.6653345369377354e-015 -2.0057994366114338e-031 1;
	setAttr ".pm[3]" -type "matrix" -2.2204460492503131e-016 1 1.2246467991473532e-016 -0
		 1 2.2204460492503131e-016 2.7192621468937821e-032 -0 -2.5407181807812022e-033 1.2246467991473532e-016 -1 0
		 -11.25 -2.498001805406603e-015 -2.9918755681376986e-031 1;
	setAttr ".pm[4]" -type "matrix" 1 1.4997597826618573e-032 -1.2246467991473532e-016 -0
		 -2.7369110631344083e-048 1 1.224646799147353e-016 0 1.2246467991473532e-016 -1.224646799147353e-016 1 -0
		 -1.1832913578315177e-030 -15 -1.8369701987210296e-015 1;
	setAttr ".pm";
	setAttr ".gm" -type "matrix" 1 0 0 0 0 7.8585252600668172 0 0 0 0 1 0 0 7.5741622706750453 0 1;
	setAttr -s 5 ".ma";
	setAttr ".ma";
	setAttr -s 5 ".dpf[0:4]"  4 4 4 4 4;
	setAttr -s 5 ".lw";
	setAttr -s 5 ".lw";
	setAttr ".ucm" yes;
lockNode -l 1 -lu 1;
createNode hyperLayout -n "hyperLayout4";
	setAttr ".ihi" 0;
	setAttr -s 13 ".hyp";
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
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0.70710678118654746 0.70710678118654757 4.329780281177467e-017 4.3297802811774658e-017 1
		 1 1 no;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.75 8.326672684688678e-016
		 1.0197233050851688e-031 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.75 8.326672684688676e-016
		 9.8607613152626498e-032 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.75 8.326672684688676e-016
		 9.8607613152626476e-032 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.75 8.326672684688678e-016
		 9.8607613152626563e-032 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.70710678118654746 0.70710678118654757 4.329780281177467e-017 4.3297802811774658e-017 1
		 1 1 no;
	setAttr -s 8 ".m";
	setAttr -s 8 ".p";
	setAttr -s 8 ".g[0:7]" yes yes yes no no no no no;
	setAttr ".bp" yes;
createNode plusMinusAverage -n "Spline__instance_1:blueprint_spline_0_joint_addScale";
	setAttr ".i3";
	setAttr ".i3";
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "Spline__instance_1:blueprint_spline_0_joint_original_scale";
	setAttr ".i1" -type "float3" 1 1 1 ;
	setAttr ".i2";
lockNode -l 1 -lu 1;
createNode unitConversion -n "unitConversion1";
	setAttr ".cf" 0.017453292519943295;
lockNode -l 1 -lu 1;
createNode plusMinusAverage -n "Spline__instance_1:blueprint_spline_0_joint_addRotations";
	setAttr ".i3";
	setAttr ".i3";
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "Spline__instance_1:blueprint_spline_0_joint_dummyRotationsMultiply";
lockNode -l 1 -lu 1;
createNode plusMinusAverage -n "Spline__instance_1:blueprint_spline_0_joint_addTranslate";
	setAttr ".i3";
	setAttr ".i3";
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "Spline__instance_1:blueprint_spline_0_joint_original_Translate";
	setAttr ".i2";
lockNode -l 1 -lu 1;
createNode unitConversion -n "unitConversion2";
	setAttr ".cf" 0.017453292519943295;
lockNode -l 1 -lu 1;
createNode plusMinusAverage -n "Spline__instance_1:blueprint_spline_1_joint_addRotations";
	setAttr ".i3";
	setAttr ".i3";
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "Spline__instance_1:blueprint_spline_1_joint_dummyRotationsMultiply";
lockNode -l 1 -lu 1;
createNode plusMinusAverage -n "Spline__instance_1:blueprint_spline_1_joint_addTx";
	setAttr ".i1";
	setAttr ".i1";
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "Spline__instance_1:blueprint_spline_1_joint_original_Tx";
	setAttr ".i1" -type "float3" 3.75 0 0 ;
	setAttr ".i1";
	setAttr -l on ".i1x";
	setAttr ".i2";
lockNode -l 1 -lu 1;
createNode unitConversion -n "unitConversion3";
	setAttr ".cf" 0.017453292519943295;
lockNode -l 1 -lu 1;
createNode plusMinusAverage -n "Spline__instance_1:blueprint_spline_2_joint_addRotations";
	setAttr ".i3";
	setAttr ".i3";
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "Spline__instance_1:blueprint_spline_2_joint_dummyRotationsMultiply";
lockNode -l 1 -lu 1;
createNode plusMinusAverage -n "Spline__instance_1:blueprint_spline_2_joint_addTx";
	setAttr ".i1";
	setAttr ".i1";
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "Spline__instance_1:blueprint_spline_2_joint_original_Tx";
	setAttr ".i1" -type "float3" 3.75 0 0 ;
	setAttr ".i1";
	setAttr -l on ".i1x";
	setAttr ".i2";
lockNode -l 1 -lu 1;
createNode unitConversion -n "unitConversion4";
	setAttr ".cf" 0.017453292519943295;
lockNode -l 1 -lu 1;
createNode plusMinusAverage -n "Spline__instance_1:blueprint_spline_3_joint_addRotations";
	setAttr ".i3";
	setAttr ".i3";
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "Spline__instance_1:blueprint_spline_3_joint_dummyRotationsMultiply";
lockNode -l 1 -lu 1;
createNode plusMinusAverage -n "Spline__instance_1:blueprint_spline_3_joint_addTx";
	setAttr ".i1";
	setAttr ".i1";
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "Spline__instance_1:blueprint_spline_3_joint_original_Tx";
	setAttr ".i1" -type "float3" 3.75 0 0 ;
	setAttr ".i1";
	setAttr -l on ".i1x";
	setAttr ".i2";
lockNode -l 1 -lu 1;
createNode plusMinusAverage -n "Spline__instance_1:blueprint_spline_4_joint_addTx";
	setAttr ".i1";
	setAttr ".i1";
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "Spline__instance_1:blueprint_spline_4_joint_original_Tx";
	setAttr ".i1" -type "float3" 3.75 0 0 ;
	setAttr ".i1";
	setAttr -l on ".i1x";
	setAttr ".i2";
lockNode -l 1 -lu 1;
createNode hyperLayout -n "hyperLayout2";
	setAttr ".ihi" 0;
	setAttr -s 5 ".hyp";
createNode container -n "Spline__instance_1:blueprint_container";
	setAttr ".isc" yes;
	setAttr ".ctor" -type "string" "cat";
	setAttr ".cdat" -type "string" "2012/02/25 22:31:50";
lockNode -l 1 -lu 1;
createNode hyperLayout -n "hyperLayout1";
	setAttr ".ihi" 0;
	setAttr -s 36 ".hyp";
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
connectAttr "unitConversion3.o" "Spline__instance_1:blueprint_spline_2_joint.r" 
		-l on;
connectAttr "Spline__instance_1:blueprint_spline_2_joint_addTx.o1" "Spline__instance_1:blueprint_spline_2_joint.tx"
		 -l on;
connectAttr "Spline__instance_1:blueprint_spline_2_joint.s" "Spline__instance_1:blueprint_spline_3_joint.is"
		 -l on;
connectAttr "unitConversion4.o" "Spline__instance_1:blueprint_spline_3_joint.r" 
		-l on;
connectAttr "Spline__instance_1:blueprint_spline_3_joint_addTx.o1" "Spline__instance_1:blueprint_spline_3_joint.tx"
		 -l on;
connectAttr "Spline__instance_1:blueprint_spline_3_joint.s" "Spline__instance_1:blueprint_spline_4_joint.is"
		 -l on;
connectAttr "Spline__instance_1:blueprint_spline_4_joint_addTx.o1" "Spline__instance_1:blueprint_spline_4_joint.tx"
		 -l on;
connectAttr "Spline__instance_1:creationPose_spline_0_joint.s" "Spline__instance_1:creationPose_spline_1_joint.is"
		 -l on;
connectAttr "Spline__instance_1:creationPose_spline_1_joint.s" "Spline__instance_1:creationPose_spline_2_joint.is"
		 -l on;
connectAttr "Spline__instance_1:creationPose_spline_2_joint.s" "Spline__instance_1:creationPose_spline_3_joint.is"
		 -l on;
connectAttr "Spline__instance_1:creationPose_spline_3_joint.s" "Spline__instance_1:creationPose_spline_4_joint.is"
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
connectAttr "Spline__instance_1:module_container.boc[0]" "character_container.boc[1]"
		 -l on;
connectAttr "Spline__instance_1:module_container.boc[1]" "character_container.boc[2]"
		 -l on;
connectAttr "non_blueprint_container.boc[0]" "character_container.boc[3]" -l on;
connectAttr "hyperLayout3.msg" "character_container.hl" -l on;
connectAttr "Spline__instance_1:module_container.msg" "hyperLayout3.hyp[0].dn";
connectAttr "character_grp.msg" "hyperLayout3.hyp[1].dn";
connectAttr "reverse_moduleMaintenanceVisibility.msg" "hyperLayout3.hyp[2].dn";
connectAttr "moduleVisibilityMultiply.msg" "hyperLayout3.hyp[3].dn";
connectAttr "non_blueprint_container.msg" "hyperLayout3.hyp[4].dn";
connectAttr "character_grp.moduleMaintenanceVisibility" "reverse_moduleMaintenanceVisibility.ix"
		 -l on;
connectAttr "non_blueprint_grp.display" "non_blueprint_container.boc[0]";
connectAttr "hyperLayout4.msg" "non_blueprint_container.hl" -l on;
connectAttr "Spline__instance_1:SETTINGS.activeModule" "Spline__instance_1:module_container.boc[0]"
		;
connectAttr "Spline__instance_1:SETTINGS.creationPoseWeight" "Spline__instance_1:module_container.boc[1]"
		;
connectAttr "hyperLayout2.msg" "Spline__instance_1:module_container.hl" -l on;
connectAttr "reverse_moduleMaintenanceVisibility.ox" "moduleVisibilityMultiply.i1x"
		 -l on;
connectAttr "character_grp.animationControlVisibility" "moduleVisibilityMultiply.i2x"
		 -l on;
connectAttr "nurbsCylinder1_skinClusterGroupId.msg" "nurbsCylinder1_skinClusterSet.gn"
		 -l on -na;
connectAttr "nurbsCylinderShape1.iog.og[0]" "nurbsCylinder1_skinClusterSet.dsm" 
		-l on -na;
connectAttr "nurbsCylinder1_skinCluster.msg" "nurbsCylinder1_skinClusterSet.ub[0]"
		 -l on;
connectAttr "groupId2.msg" "tweakSet1.gn" -l on -na;
connectAttr "nurbsCylinderShape1.iog.og[1]" "tweakSet1.dsm" -l on -na;
connectAttr "tweak1.msg" "tweakSet1.ub[0]" -l on;
connectAttr "groupParts2.og" "tweak1.ip[0].ig" -l on;
connectAttr "groupId2.id" "tweak1.ip[0].gi" -l on;
connectAttr "reverse_moduleMaintenanceVisibility.ox" "non_blueprint_visibilityMultiply.i1x"
		 -l on;
connectAttr "non_blueprint_grp.display" "non_blueprint_visibilityMultiply.i2x" -l
		 on;
connectAttr "tweak1.og[0]" "nurbsCylinder1_skinClusterGroupParts.ig" -l on;
connectAttr "nurbsCylinder1_skinClusterGroupId.id" "nurbsCylinder1_skinClusterGroupParts.gi"
		 -l on;
connectAttr "nurbsCylinderShape1Orig.ws" "groupParts2.ig" -l on;
connectAttr "groupId2.id" "groupParts2.gi" -l on;
connectAttr "nurbsCylinder1_skinClusterGroupParts.og" "nurbsCylinder1_skinCluster.ip[0].ig"
		 -l on;
connectAttr "nurbsCylinder1_skinClusterGroupId.id" "nurbsCylinder1_skinCluster.ip[0].gi"
		 -l on;
connectAttr "bindPose1.msg" "nurbsCylinder1_skinCluster.bp" -l on;
connectAttr "Spline__instance_1:blueprint_spline_0_joint.wm" "nurbsCylinder1_skinCluster.ma[0]"
		 -l on;
connectAttr "Spline__instance_1:blueprint_spline_1_joint.wm" "nurbsCylinder1_skinCluster.ma[1]"
		 -l on;
connectAttr "Spline__instance_1:blueprint_spline_2_joint.wm" "nurbsCylinder1_skinCluster.ma[2]"
		 -l on;
connectAttr "Spline__instance_1:blueprint_spline_3_joint.wm" "nurbsCylinder1_skinCluster.ma[3]"
		 -l on;
connectAttr "Spline__instance_1:blueprint_spline_4_joint.wm" "nurbsCylinder1_skinCluster.ma[4]"
		 -l on;
connectAttr "Spline__instance_1:blueprint_spline_0_joint.liw" "nurbsCylinder1_skinCluster.lw[0]"
		 -l on;
connectAttr "Spline__instance_1:blueprint_spline_1_joint.liw" "nurbsCylinder1_skinCluster.lw[1]"
		 -l on;
connectAttr "Spline__instance_1:blueprint_spline_2_joint.liw" "nurbsCylinder1_skinCluster.lw[2]"
		 -l on;
connectAttr "Spline__instance_1:blueprint_spline_3_joint.liw" "nurbsCylinder1_skinCluster.lw[3]"
		 -l on;
connectAttr "Spline__instance_1:blueprint_spline_4_joint.liw" "nurbsCylinder1_skinCluster.lw[4]"
		 -l on;
connectAttr "non_blueprint_grp.msg" "hyperLayout4.hyp[0].dn";
connectAttr "nurbsCylinder1.msg" "hyperLayout4.hyp[1].dn";
connectAttr "nurbsCylinderShape1.msg" "hyperLayout4.hyp[2].dn";
connectAttr "nurbsCylinderShape1Orig.msg" "hyperLayout4.hyp[3].dn";
connectAttr "nurbsCylinder1_skinClusterSet.msg" "hyperLayout4.hyp[4].dn";
connectAttr "tweakSet1.msg" "hyperLayout4.hyp[5].dn";
connectAttr "tweak1.msg" "hyperLayout4.hyp[6].dn";
connectAttr "nurbsCylinder1_skinClusterGroupId.msg" "hyperLayout4.hyp[7].dn";
connectAttr "groupId2.msg" "hyperLayout4.hyp[8].dn";
connectAttr "non_blueprint_visibilityMultiply.msg" "hyperLayout4.hyp[9].dn";
connectAttr "nurbsCylinder1_skinClusterGroupParts.msg" "hyperLayout4.hyp[10].dn"
		;
connectAttr "groupParts2.msg" "hyperLayout4.hyp[11].dn";
connectAttr "nurbsCylinder1_skinCluster.msg" "hyperLayout4.hyp[12].dn";
connectAttr "Spline__instance_1:module_grp.msg" "bindPose1.m[0]";
connectAttr "Spline__instance_1:HOOK_IN.msg" "bindPose1.m[1]";
connectAttr "Spline__instance_1:blueprint_joints_grp.msg" "bindPose1.m[2]";
connectAttr "Spline__instance_1:blueprint_spline_0_joint.msg" "bindPose1.m[3]";
connectAttr "Spline__instance_1:blueprint_spline_1_joint.msg" "bindPose1.m[4]";
connectAttr "Spline__instance_1:blueprint_spline_2_joint.msg" "bindPose1.m[5]";
connectAttr "Spline__instance_1:blueprint_spline_3_joint.msg" "bindPose1.m[6]";
connectAttr "Spline__instance_1:blueprint_spline_4_joint.msg" "bindPose1.m[7]";
connectAttr "bindPose1.w" "bindPose1.p[0]";
connectAttr "bindPose1.m[0]" "bindPose1.p[1]";
connectAttr "bindPose1.m[1]" "bindPose1.p[2]";
connectAttr "bindPose1.m[2]" "bindPose1.p[3]";
connectAttr "bindPose1.m[3]" "bindPose1.p[4]";
connectAttr "bindPose1.m[4]" "bindPose1.p[5]";
connectAttr "bindPose1.m[5]" "bindPose1.p[6]";
connectAttr "bindPose1.m[6]" "bindPose1.p[7]";
connectAttr "Spline__instance_1:blueprint_spline_0_joint.bps" "bindPose1.wm[3]";
connectAttr "Spline__instance_1:blueprint_spline_1_joint.bps" "bindPose1.wm[4]";
connectAttr "Spline__instance_1:blueprint_spline_2_joint.bps" "bindPose1.wm[5]";
connectAttr "Spline__instance_1:blueprint_spline_3_joint.bps" "bindPose1.wm[6]";
connectAttr "Spline__instance_1:blueprint_spline_4_joint.bps" "bindPose1.wm[7]";
connectAttr "Spline__instance_1:blueprint_spline_0_joint_original_scale.o" "Spline__instance_1:blueprint_spline_0_joint_addScale.i3[0]"
		 -l on;
connectAttr "Spline__instance_1:SETTINGS.creationPoseWeight" "Spline__instance_1:blueprint_spline_0_joint_original_scale.i2x"
		 -l on;
connectAttr "Spline__instance_1:SETTINGS.creationPoseWeight" "Spline__instance_1:blueprint_spline_0_joint_original_scale.i2y"
		 -l on;
connectAttr "Spline__instance_1:SETTINGS.creationPoseWeight" "Spline__instance_1:blueprint_spline_0_joint_original_scale.i2z"
		 -l on;
connectAttr "Spline__instance_1:blueprint_spline_0_joint_addRotations.o3" "unitConversion1.i"
		 -l on;
connectAttr "Spline__instance_1:blueprint_spline_0_joint_dummyRotationsMultiply.o" "Spline__instance_1:blueprint_spline_0_joint_addRotations.i3[0]"
		 -l on;
connectAttr "Spline__instance_1:blueprint_spline_0_joint_original_Translate.o" "Spline__instance_1:blueprint_spline_0_joint_addTranslate.i3[0]"
		 -l on;
connectAttr "Spline__instance_1:SETTINGS.creationPoseWeight" "Spline__instance_1:blueprint_spline_0_joint_original_Translate.i2x"
		 -l on;
connectAttr "Spline__instance_1:SETTINGS.creationPoseWeight" "Spline__instance_1:blueprint_spline_0_joint_original_Translate.i2y"
		 -l on;
connectAttr "Spline__instance_1:SETTINGS.creationPoseWeight" "Spline__instance_1:blueprint_spline_0_joint_original_Translate.i2z"
		 -l on;
connectAttr "Spline__instance_1:blueprint_spline_1_joint_addRotations.o3" "unitConversion2.i"
		 -l on;
connectAttr "Spline__instance_1:blueprint_spline_1_joint_dummyRotationsMultiply.o" "Spline__instance_1:blueprint_spline_1_joint_addRotations.i3[0]"
		 -l on;
connectAttr "Spline__instance_1:blueprint_spline_1_joint_original_Tx.ox" "Spline__instance_1:blueprint_spline_1_joint_addTx.i1[0]"
		 -l on;
connectAttr "Spline__instance_1:SETTINGS.creationPoseWeight" "Spline__instance_1:blueprint_spline_1_joint_original_Tx.i2x"
		 -l on;
connectAttr "Spline__instance_1:blueprint_spline_2_joint_addRotations.o3" "unitConversion3.i"
		 -l on;
connectAttr "Spline__instance_1:blueprint_spline_2_joint_dummyRotationsMultiply.o" "Spline__instance_1:blueprint_spline_2_joint_addRotations.i3[0]"
		 -l on;
connectAttr "Spline__instance_1:blueprint_spline_2_joint_original_Tx.ox" "Spline__instance_1:blueprint_spline_2_joint_addTx.i1[0]"
		 -l on;
connectAttr "Spline__instance_1:SETTINGS.creationPoseWeight" "Spline__instance_1:blueprint_spline_2_joint_original_Tx.i2x"
		 -l on;
connectAttr "Spline__instance_1:blueprint_spline_3_joint_addRotations.o3" "unitConversion4.i"
		 -l on;
connectAttr "Spline__instance_1:blueprint_spline_3_joint_dummyRotationsMultiply.o" "Spline__instance_1:blueprint_spline_3_joint_addRotations.i3[0]"
		 -l on;
connectAttr "Spline__instance_1:blueprint_spline_3_joint_original_Tx.ox" "Spline__instance_1:blueprint_spline_3_joint_addTx.i1[0]"
		 -l on;
connectAttr "Spline__instance_1:SETTINGS.creationPoseWeight" "Spline__instance_1:blueprint_spline_3_joint_original_Tx.i2x"
		 -l on;
connectAttr "Spline__instance_1:blueprint_spline_4_joint_original_Tx.ox" "Spline__instance_1:blueprint_spline_4_joint_addTx.i1[0]"
		 -l on;
connectAttr "Spline__instance_1:SETTINGS.creationPoseWeight" "Spline__instance_1:blueprint_spline_4_joint_original_Tx.i2x"
		 -l on;
connectAttr "Spline__instance_1:module_grp.msg" "hyperLayout2.hyp[0].dn";
connectAttr "Spline__instance_1:HOOK_IN.msg" "hyperLayout2.hyp[1].dn";
connectAttr "Spline__instance_1:SETTINGS.msg" "hyperLayout2.hyp[2].dn";
connectAttr "Spline__instance_1:blueprint_container.msg" "hyperLayout2.hyp[3].dn"
		;
connectAttr "Spline__instance_1:SETTINGSShape.msg" "hyperLayout2.hyp[4].dn";
connectAttr "hyperLayout1.msg" "Spline__instance_1:blueprint_container.hl" -l on
		;
connectAttr "Spline__instance_1:blueprint_spline_0_joint_addRotations.msg" "hyperLayout1.hyp[0].dn"
		;
connectAttr "Spline__instance_1:blueprint_spline_0_joint_dummyRotationsMultiply.msg" "hyperLayout1.hyp[1].dn"
		;
connectAttr "Spline__instance_1:blueprint_spline_0_joint_addTranslate.msg" "hyperLayout1.hyp[2].dn"
		;
connectAttr "Spline__instance_1:blueprint_spline_0_joint_original_Translate.msg" "hyperLayout1.hyp[3].dn"
		;
connectAttr "Spline__instance_1:blueprint_spline_0_joint_addScale.msg" "hyperLayout1.hyp[4].dn"
		;
connectAttr "Spline__instance_1:blueprint_spline_0_joint_original_scale.msg" "hyperLayout1.hyp[5].dn"
		;
connectAttr "Spline__instance_1:blueprint_spline_1_joint_addRotations.msg" "hyperLayout1.hyp[6].dn"
		;
connectAttr "Spline__instance_1:blueprint_spline_1_joint_dummyRotationsMultiply.msg" "hyperLayout1.hyp[7].dn"
		;
connectAttr "Spline__instance_1:blueprint_spline_1_joint_addTx.msg" "hyperLayout1.hyp[8].dn"
		;
connectAttr "Spline__instance_1:blueprint_spline_1_joint_original_Tx.msg" "hyperLayout1.hyp[9].dn"
		;
connectAttr "Spline__instance_1:blueprint_spline_2_joint_addRotations.msg" "hyperLayout1.hyp[10].dn"
		;
connectAttr "Spline__instance_1:blueprint_spline_2_joint_dummyRotationsMultiply.msg" "hyperLayout1.hyp[11].dn"
		;
connectAttr "Spline__instance_1:blueprint_spline_2_joint_addTx.msg" "hyperLayout1.hyp[12].dn"
		;
connectAttr "Spline__instance_1:blueprint_spline_2_joint_original_Tx.msg" "hyperLayout1.hyp[13].dn"
		;
connectAttr "Spline__instance_1:blueprint_spline_3_joint_addRotations.msg" "hyperLayout1.hyp[14].dn"
		;
connectAttr "Spline__instance_1:blueprint_spline_3_joint_dummyRotationsMultiply.msg" "hyperLayout1.hyp[15].dn"
		;
connectAttr "Spline__instance_1:blueprint_spline_3_joint_addTx.msg" "hyperLayout1.hyp[16].dn"
		;
connectAttr "Spline__instance_1:blueprint_spline_3_joint_original_Tx.msg" "hyperLayout1.hyp[17].dn"
		;
connectAttr "Spline__instance_1:blueprint_spline_4_joint_addTx.msg" "hyperLayout1.hyp[18].dn"
		;
connectAttr "Spline__instance_1:blueprint_spline_4_joint_original_Tx.msg" "hyperLayout1.hyp[19].dn"
		;
connectAttr "Spline__instance_1:blueprint_joints_grp.msg" "hyperLayout1.hyp[20].dn"
		;
connectAttr "Spline__instance_1:creationPose_joints_grp.msg" "hyperLayout1.hyp[21].dn"
		;
connectAttr "unitConversion1.msg" "hyperLayout1.hyp[22].dn";
connectAttr "unitConversion2.msg" "hyperLayout1.hyp[23].dn";
connectAttr "unitConversion3.msg" "hyperLayout1.hyp[24].dn";
connectAttr "unitConversion4.msg" "hyperLayout1.hyp[25].dn";
connectAttr "Spline__instance_1:blueprint_spline_0_joint.msg" "hyperLayout1.hyp[26].dn"
		;
connectAttr "Spline__instance_1:blueprint_spline_1_joint.msg" "hyperLayout1.hyp[27].dn"
		;
connectAttr "Spline__instance_1:blueprint_spline_2_joint.msg" "hyperLayout1.hyp[28].dn"
		;
connectAttr "Spline__instance_1:blueprint_spline_3_joint.msg" "hyperLayout1.hyp[29].dn"
		;
connectAttr "Spline__instance_1:blueprint_spline_4_joint.msg" "hyperLayout1.hyp[30].dn"
		;
connectAttr "Spline__instance_1:creationPose_spline_0_joint.msg" "hyperLayout1.hyp[31].dn"
		;
connectAttr "Spline__instance_1:creationPose_spline_1_joint.msg" "hyperLayout1.hyp[32].dn"
		;
connectAttr "Spline__instance_1:creationPose_spline_2_joint.msg" "hyperLayout1.hyp[33].dn"
		;
connectAttr "Spline__instance_1:creationPose_spline_3_joint.msg" "hyperLayout1.hyp[34].dn"
		;
connectAttr "Spline__instance_1:creationPose_spline_4_joint.msg" "hyperLayout1.hyp[35].dn"
		;
connectAttr "nurbsCylinderShape1.iog" ":initialShadingGroup.dsm" -na;
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
connectAttr "Spline__instance_1:blueprint_spline_2_joint_addRotations.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Spline__instance_1:blueprint_spline_2_joint_dummyRotationsMultiply.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Spline__instance_1:blueprint_spline_2_joint_addTx.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Spline__instance_1:blueprint_spline_2_joint_original_Tx.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Spline__instance_1:blueprint_spline_3_joint_addRotations.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Spline__instance_1:blueprint_spline_3_joint_dummyRotationsMultiply.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Spline__instance_1:blueprint_spline_3_joint_addTx.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Spline__instance_1:blueprint_spline_3_joint_original_Tx.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Spline__instance_1:blueprint_spline_4_joint_addTx.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Spline__instance_1:blueprint_spline_4_joint_original_Tx.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "reverse_moduleMaintenanceVisibility.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "moduleVisibilityMultiply.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "non_blueprint_visibilityMultiply.msg" ":defaultRenderUtilityList1.u"
		 -na;
// End of tubeSpline.ma
