import maya.cmds as cmds
import os
		
import System.blueprint as blueprintMod
reload(blueprintMod)


CLASS_NAME = 'SingleJointSegment'

TITLE = 'Single Joint Segment'
DESCRIPTION = 'creates 2 joints with control for it\'s joints orientation and rotation order. Ideal use:clavicle bones/shoulder'
ICON = os.environ["RIGGING_TOOL_ROOT"] + "/icons/_singleJointSeg.xpm"

class SingleJointSegment(blueprintMod.Blueprint):
	def __init__(self,userSpecifiedName, hookObj):
		jointInfo = [['root_joint',[0.0,0.0,0.0]], ['end_joint',[4.0,0.0,0.0]]]
		
		blueprintMod.Blueprint.__init__(self,CLASS_NAME,userSpecifiedName,jointInfo, hookObj)
		
	def install_custom(self,joints):
		self.createOrientationControl(joints[0],joints[1])
		
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
		
		joints = self.getJoints()
		
		for joint in joints:
			jointPositions.append(cmds.xform(joint,q=True, worldSpace=True, translation=True))
			
		cleanParent = self.moduleNamespace + ':joints_grp'
		orientationInfo = self.orientationControlledJoint_getOrientation(joints[0],cleanParent)
		cmds.delete(orientationInfo[1])
		jointOrientationValues.append(orientationInfo[0])
		jointOrientations =(jointOrientationValues, None)
		jointRotationOrders.append(cmds.getAttr(joints[0] + '.rotateOrder'))
		
		jointPreferredAngles = None
		hookObject = self.findHookObjectForLock()
		rootTransform = False
		
		moduleInfo = (jointPositions,jointOrientations,jointRotationOrders,jointPreferredAngles, hookObject,rootTransform)
		return moduleInfo
		
	def UI_custom(self):
		joints = self.getJoints()
		self.createRotationOrderUIControl(joints[0])
		
	def mirror_custom(self, originalModule):
		jointName = self.jointInfo[0][0]
		originalJoint = originalModule + ':' + jointName
		newJoint = self.moduleNamespace + ':' + jointName
		
		originalOrientationControl = self.getOrientationControl(originalJoint)
		newOrientationControl = self.getOrientationControl(newJoint)
		
		cmds.setAttr(newOrientationControl + '.rotateX', cmds.getAttr(originalOrientationControl + '.rotateX'))
			