import maya.cmds as cmds

import System.blueprint as blueprintMod
reload(blueprintMod)

import Blueprint.singleOrientableJoint as SingleOrientableJoint
reload(SingleOrientableJoint)

import System.utils as utils
reload(utils)

import os

CLASS_NAME = 'RootTransform'
TITLE ='Root Transform'
DESCRIPTION = 'Creates a Single Orientable Joint with control for position and orientation.once created  (locked) the joint can rotate, translate and scale. Ideal use:global/master control'
ICON = os.environ['RIGGING_TOOL_ROOT'] + '/Icons/_rootTxfrm.xpm'

class RootTransform(SingleOrientableJoint.SingleOrientableJoint):
	def __init__(self, userSpecifiedName, hookObject):
		jointInfo = [['joint',[0.0,0.0,0.0]]]
		
		blueprintMod.Blueprint.__init__(self,CLASS_NAME,userSpecifiedName, jointInfo,hookObject)
		
		
	def lock_phase1(self):
		moduleInfo = list(SingleOrientableJoint.SingleOrientableJoint.lock_phase1(self))
		
		moduleInfo[5] = True
		return moduleInfo