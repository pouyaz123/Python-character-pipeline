import maya.cmds as cmds

import System.blueprint as blueprintMod
#reload(blueprintMod)
import Blueprint.finger as finger
reload(finger)

import System.utils as utils
reload(utils)

import os

CLASS_NAME = 'Thumb'
TITLE ='Thumb'
DESCRIPTION = 'Creates 4 joints, defining a Thumb. Ideal use: Thumb'
ICON = os.environ['RIGGING_TOOL_ROOT'] + '/Icons/_thumb.xpm'

class Thumb(finger.Finger):
	def __init__(self, userSpecifiedName, hookObject):
		jointInfo = [['root_joint',[0.0,0.0,0.0]],['knuckle_joint',[4.0,0.0,0.0]],['knuckle2_joint',[8.0,0.0,0.0]],['end_joint',[12.0,0.0,0.0]]]
		
		blueprintMod.Blueprint.__init__(self,CLASS_NAME,userSpecifiedName, jointInfo,hookObject)