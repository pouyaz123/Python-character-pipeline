//Maya ASCII 2009 scene
//Name: maya2009simplIK.ma
//Last modified: Sun, Jun 10, 2012 10:05:54 PM
//Codeset: 1252
requires maya "2009";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya Unlimited 2009";
fileInfo "version" "2009 x64";
fileInfo "cutIdentifier" "200809110029-734661";
fileInfo "osv" "Microsoft Windows Vista Service Pack 2 (Build 6002)\n";
createNode transform -n "character_grp";
	addAttr -ci true -sn "moduleMaintenanceVisibility" -ln "moduleMaintenanceVisibility" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "animationControlVisibility" -ln "animationControlVisibility" 
		-dv 1 -min 0 -max 1 -at "bool";
	setAttr ".moduleMaintenanceVisibility";
	setAttr -k on ".animationControlVisibility";
lockNode -l 1 -lu 1;
createNode transform -n "SingleJointSegment__instance_1:module_grp" -p "character_grp";
	addAttr -ci true -sn "hierarchicalScale" -ln "hierarchicalScale" -at "float";
lockNode -l 1 -lu 1;
createNode transform -n "SingleJointSegment__instance_1:HOOK_IN" -p "SingleJointSegment__instance_1:module_grp";
	setAttr ".s";
	setAttr ".sy";
lockNode -l 1 -lu 1;
createNode transform -n "SingleJointSegment__instance_1:blueprint_joints_grp" -p
		 "SingleJointSegment__instance_1:HOOK_IN";
	addAttr -ci true -sn "controlModulesInstalled" -ln "controlModulesInstalled" -min 
		0 -max 1 -at "bool";
	setAttr ".ove" yes;
lockNode -l 1 -lu 1;
createNode joint -n "SingleJointSegment__instance_1:blueprint_root_joint" -p "SingleJointSegment__instance_1:blueprint_joints_grp";
	setAttr ".t" -type "double3" 0 16.47827043616282 0 ;
	setAttr ".s";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
lockNode -l 1 -lu 1;
createNode joint -n "SingleJointSegment__instance_1:blueprint_end_joint" -p "SingleJointSegment__instance_1:blueprint_root_joint";
	setAttr ".t";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
lockNode -l 1 -lu 1;
createNode transform -n "SingleJointSegment__instance_1:creationPose_joints_grp" 
		-p "SingleJointSegment__instance_1:HOOK_IN";
lockNode -l 1 -lu 1;
createNode joint -n "SingleJointSegment__instance_1:creationPose_root_joint" -p "SingleJointSegment__instance_1:creationPose_joints_grp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 16.47827043616282 0 ;
	setAttr ".s";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
lockNode -l 1 -lu 1;
createNode joint -n "SingleJointSegment__instance_1:creationPose_end_joint" -p "SingleJointSegment__instance_1:creationPose_root_joint";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 4 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
lockNode -l 1 -lu 1;
createNode transform -n "SingleJointSegment__instance_1:SETTINGS" -p "SingleJointSegment__instance_1:module_grp";
	addAttr -ci true -sn "activeModule" -ln "activeModule" -min 0 -max 0 -en "None" 
		-at "enum";
	addAttr -ci true -sn "creationPoseWeight" -ln "creationPoseWeight" -dv 1 -at "float";
	setAttr ".v" no;
lockNode -l 1 -lu 1;
createNode locator -n "SingleJointSegment__instance_1:SETTINGSShape" -p "SingleJointSegment__instance_1:SETTINGS";
	setAttr -k off ".v";
lockNode -l 1 -lu 1;
createNode container -n "character_container";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -bt "ATAL" -dt "attributeAlias";
	setAttr ".isc" yes;
	setAttr -s 3 ".bc";
	setAttr -s 2 ".ish[1:2]" yes yes;
	setAttr ".o" -type "string" "cat";
	setAttr ".cd" -type "string" "2012/06/10 22:05:54";
	setAttr ".aal" -type "attributeAlias" {"animControlVis","borderConnections[0]","instance_1_activeModule"
		,"borderConnections[1]","instance_1_creationPoseWeight","borderConnections[2]"} ;
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
	setAttr -s 4 ".hyp";
createNode container -n "SingleJointSegment__instance_1:module_container";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -bt "ATAL" -dt "attributeAlias";
	setAttr ".isc" yes;
	setAttr -s 2 ".bc";
	setAttr ".o" -type "string" "cat";
	setAttr ".cd" -type "string" "2012/06/10 22:05:41";
	setAttr ".aal" -type "attributeAlias" {"activeModule","borderConnections[0]","creationPoseWeight"
		,"borderConnections[1]"} ;
lockNode -l 1 -lu 1;
createNode hyperLayout -n "hyperLayout2";
	setAttr ".ihi" 0;
	setAttr -s 5 ".hyp";
createNode container -n "SingleJointSegment__instance_1:blueprint_container";
	setAttr ".isc" yes;
	setAttr ".o" -type "string" "cat";
	setAttr ".cd" -type "string" "2012/06/10 22:05:41";
lockNode -l 1 -lu 1;
createNode hyperLayout -n "hyperLayout1";
	setAttr ".ihi" 0;
	setAttr -s 11 ".hyp";
createNode multiplyDivide -n "SingleJointSegment__instance_1:blueprint_root_joint_dummyRotationsMultiply";
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "SingleJointSegment__instance_1:blueprint_end_joint_original_Tx";
	setAttr ".i1" -type "float3" 4 0 0 ;
	setAttr ".i1";
	setAttr -l on ".i1x";
	setAttr ".i2";
lockNode -l 1 -lu 1;
createNode plusMinusAverage -n "SingleJointSegment__instance_1:blueprint_root_joint_addRotations";
	setAttr ".i3";
	setAttr ".i3";
lockNode -l 1 -lu 1;
createNode unitConversion -n "unitConversion1";
	setAttr ".cf" 0.017453292519943295;
lockNode -l 1 -lu 1;
createNode plusMinusAverage -n "SingleJointSegment__instance_1:blueprint_end_joint_addTx";
	setAttr ".i1";
	setAttr ".i1";
lockNode -l 1 -lu 1;
createNode lightLinker -n "lightLinker1";
	setAttr -s 8 ".lnk";
	setAttr -s 20 ".slnk";
select -ne :time1;
	setAttr ".o" 1;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 2 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 6 ".u";
select -ne :lightList1;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".fn" -type "string" "im";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "SingleJointSegment__instance_1:HOOK_IN.sy" "SingleJointSegment__instance_1:module_grp.hierarchicalScale"
		 -l on;
connectAttr "character_grp.moduleMaintenanceVisibility" "SingleJointSegment__instance_1:blueprint_joints_grp.v"
		 -l on;
connectAttr "unitConversion1.o" "SingleJointSegment__instance_1:blueprint_root_joint.r"
		 -l on;
connectAttr "SingleJointSegment__instance_1:blueprint_root_joint.s" "SingleJointSegment__instance_1:blueprint_end_joint.is"
		 -l on;
connectAttr "SingleJointSegment__instance_1:blueprint_end_joint_addTx.o1" "SingleJointSegment__instance_1:blueprint_end_joint.tx"
		 -l on;
connectAttr "SingleJointSegment__instance_1:creationPose_root_joint.s" "SingleJointSegment__instance_1:creationPose_end_joint.is"
		 -l on;
connectAttr "hyperLayout3.msg" "character_container.hl" -l on;
connectAttr "character_grp.animationControlVisibility" "character_container.bc[0]"
		 -l on;
connectAttr "SingleJointSegment__instance_1:module_container.bc[0]" "character_container.bc[1]"
		 -l on;
connectAttr "SingleJointSegment__instance_1:module_container.bc[1]" "character_container.bc[2]"
		 -l on;
connectAttr "reverse_moduleMaintenanceVisibility.ox" "moduleVisibilityMultiply.i1x"
		 -l on;
connectAttr "character_grp.animationControlVisibility" "moduleVisibilityMultiply.i2x"
		 -l on;
connectAttr "character_grp.moduleMaintenanceVisibility" "reverse_moduleMaintenanceVisibility.ix"
		 -l on;
connectAttr "SingleJointSegment__instance_1:module_container.msg" "hyperLayout3.hyp[0].dn"
		;
connectAttr "character_grp.msg" "hyperLayout3.hyp[1].dn";
connectAttr "reverse_moduleMaintenanceVisibility.msg" "hyperLayout3.hyp[2].dn";
connectAttr "moduleVisibilityMultiply.msg" "hyperLayout3.hyp[3].dn";
connectAttr "hyperLayout2.msg" "SingleJointSegment__instance_1:module_container.hl"
		 -l on;
connectAttr "SingleJointSegment__instance_1:SETTINGS.activeModule" "SingleJointSegment__instance_1:module_container.bc[0]"
		;
connectAttr "SingleJointSegment__instance_1:SETTINGS.creationPoseWeight" "SingleJointSegment__instance_1:module_container.bc[1]"
		;
connectAttr "SingleJointSegment__instance_1:module_grp.msg" "hyperLayout2.hyp[0].dn"
		;
connectAttr "SingleJointSegment__instance_1:HOOK_IN.msg" "hyperLayout2.hyp[1].dn"
		;
connectAttr "SingleJointSegment__instance_1:SETTINGS.msg" "hyperLayout2.hyp[2].dn"
		;
connectAttr "SingleJointSegment__instance_1:blueprint_container.msg" "hyperLayout2.hyp[3].dn"
		;
connectAttr "SingleJointSegment__instance_1:SETTINGSShape.msg" "hyperLayout2.hyp[4].dn"
		;
connectAttr "hyperLayout1.msg" "SingleJointSegment__instance_1:blueprint_container.hl"
		 -l on;
connectAttr "SingleJointSegment__instance_1:blueprint_root_joint_addRotations.msg" "hyperLayout1.hyp[0].dn"
		;
connectAttr "SingleJointSegment__instance_1:blueprint_root_joint_dummyRotationsMultiply.msg" "hyperLayout1.hyp[1].dn"
		;
connectAttr "SingleJointSegment__instance_1:blueprint_end_joint_addTx.msg" "hyperLayout1.hyp[2].dn"
		;
connectAttr "SingleJointSegment__instance_1:blueprint_end_joint_original_Tx.msg" "hyperLayout1.hyp[3].dn"
		;
connectAttr "SingleJointSegment__instance_1:blueprint_joints_grp.msg" "hyperLayout1.hyp[4].dn"
		;
connectAttr "SingleJointSegment__instance_1:creationPose_joints_grp.msg" "hyperLayout1.hyp[5].dn"
		;
connectAttr "unitConversion1.msg" "hyperLayout1.hyp[6].dn";
connectAttr "SingleJointSegment__instance_1:blueprint_root_joint.msg" "hyperLayout1.hyp[7].dn"
		;
connectAttr "SingleJointSegment__instance_1:blueprint_end_joint.msg" "hyperLayout1.hyp[8].dn"
		;
connectAttr "SingleJointSegment__instance_1:creationPose_root_joint.msg" "hyperLayout1.hyp[9].dn"
		;
connectAttr "SingleJointSegment__instance_1:creationPose_end_joint.msg" "hyperLayout1.hyp[10].dn"
		;
connectAttr "SingleJointSegment__instance_1:SETTINGS.creationPoseWeight" "SingleJointSegment__instance_1:blueprint_end_joint_original_Tx.i2x"
		 -l on;
connectAttr "SingleJointSegment__instance_1:blueprint_root_joint_dummyRotationsMultiply.o" "SingleJointSegment__instance_1:blueprint_root_joint_addRotations.i3[0]"
		 -l on;
connectAttr "SingleJointSegment__instance_1:blueprint_root_joint_addRotations.o3" "unitConversion1.i"
		 -l on;
connectAttr "SingleJointSegment__instance_1:blueprint_end_joint_original_Tx.ox" "SingleJointSegment__instance_1:blueprint_end_joint_addTx.i1[0]"
		 -l on;
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[0].llnk";
connectAttr ":initialShadingGroup.msg" "lightLinker1.lnk[0].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[1].llnk";
connectAttr ":initialParticleSE.msg" "lightLinker1.lnk[1].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.slnk[0].sllk";
connectAttr ":initialShadingGroup.msg" "lightLinker1.slnk[0].solk";
connectAttr ":defaultLightSet.msg" "lightLinker1.slnk[1].sllk";
connectAttr ":initialParticleSE.msg" "lightLinker1.slnk[1].solk";
connectAttr "SingleJointSegment__instance_1:blueprint_root_joint_addRotations.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "SingleJointSegment__instance_1:blueprint_root_joint_dummyRotationsMultiply.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "SingleJointSegment__instance_1:blueprint_end_joint_addTx.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "SingleJointSegment__instance_1:blueprint_end_joint_original_Tx.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "reverse_moduleMaintenanceVisibility.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "moduleVisibilityMultiply.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "lightLinker1.msg" ":lightList1.ln" -na;
// End of maya2009simplIK.ma
