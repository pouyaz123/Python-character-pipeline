import maya.cmds as cmds

import System.blueprint as blueprintMod
reload(blueprintMod)

import System.utils as utils
reload(utils)

import os

CLASS_NAME = 'SingleOrientableJoint'
TITLE ='Single Orientable Joint'
DESCRIPTION = 'Creates a Single Orientable Joint with control for position and orientation.once created  (locked) the joint can only rotate. Ideal use: wrist'
ICON = os.environ['RIGGING_TOOL_ROOT'] + '/Icons/_singleOrientable.xpm'

class SingleOrientableJoint(blueprintMod.Blueprint):
	def __init__(self, userSpecifiedName, hookObject):
		jointInfo = [['joint',[0.0,0.0,0.0]]]
		
		blueprintMod.Blueprint.__init__(self,CLASS_NAME,userSpecifiedName, jointInfo,hookObject)
		
	def install_custom(self,joints):
		self.createSingleOrientationControlAtJoint(joints[0])
		
	def mirror_custom(self,originalModule):
		jointName = self.jointInfo[0][0]
		originalJoint = originalModule + ':' + jointName
		newJoint = self.moduleNamespace + ':' + jointName
		
		originalOrientationControl = self.getSingleJointOrientationControl(originalJoint)
		newOrientationControl = self.getSingleJointOrientationControl(newJoint)
		
		oldRotation = cmds.getAttr(originalOrientationControl+'.rotate')[0]
		cmds.setAttr(newOrientationControl + '.rotate', oldRotation[0], oldRotation[1],oldRotation[2], type='double3')
		
	def UI_custom(self):
		joints = self.getJoints()
		self.createRotationOrderUIControl(joints[0])
		
	def lock_phase1(self):
		#gather and return all the required information from this module's control objects
		
		#joint positions = list of joint positions from root down the hierarchy
		
		#jointOrientations = a list of orientations, or a list of axis information (orientJoint and secondaryAxisOrient for joint command)
		#                    #these are passed in the following tuple:(orientation,None) or (None, asixInfo)
		#jointRotationOrders = a list of joint rotation orders (integer values gathered with getAttr)
		#jointPreferredAngles = a list of joint preferred angles, optional(can pass None)
		#hookObject = self.findHookObjectForLock()
		#rootTransform = a bool, either True or False. True = R,T, and S on root joint. False = R only.
		#
		#moduleInfo = (jointPositions,jointOrientations,jointRotationOrders,jointPreferredAngles, hookObject,rootTransform)
		#return moduleInfo
		
		jointPositions = []
		jointOrientationValues = []
		jointRotationOrders = []
		
		joint = self.getJoints()[0]
		
		
		jointPositions.append(cmds.xform(joint,q=True, worldSpace=True, translation=True))
		
		jointOrientationValues.append(cmds.xform(self.getSingleJointOrientationControl(joint),q=True,worldSpace=True, rotation=True))
		jointOrientations =(jointOrientationValues, None)
		
		jointRotationOrders.append(cmds.getAttr(joint + '.rotateOrder'))
		
		jointPreferredAngles = None
		hookObject = self.findHookObjectForLock()
		rootTransform = False
		
		moduleInfo = (jointPositions,jointOrientations,jointRotationOrders,jointPreferredAngles, hookObject,rootTransform)
		return moduleInfo