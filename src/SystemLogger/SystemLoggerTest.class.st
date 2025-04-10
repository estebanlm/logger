Class {
	#name : 'SystemLoggerTest',
	#superclass : 'TestCase',
	#category : 'SystemLogger',
	#package : 'SystemLogger'
}

{ #category : 'accessing' }
SystemLoggerTest >> recordings [

	^ MemoryLogger instance recordings
]

{ #category : 'running' }
SystemLoggerTest >> setUp [
	super setUp.

	MemoryLogger reset; start
]

{ #category : 'running' }
SystemLoggerTest >> tearDown [
	
	MemoryLogger reset; stop.
	super tearDown
]

{ #category : 'tests' }
SystemLoggerTest >> testObject [
	| var |

	var := 42.
	BeaconSystemLogger uniqueInstance object: var.
	
	self assert: self recordings first senderClass equals: self class.	
	self assert: self recordings first senderSelector equals: #testObject.
	self assert: self recordings first sourcePosition equals: { 5. 2. 35 }.
	self assert: self recordings first variableName equals: #var.
	self assert: self recordings first object equals: 42
]

{ #category : 'tests' }
SystemLoggerTest >> testTrace [

	BeaconSystemLogger uniqueInstance trace.
	
	self assert: self recordings first senderClass equals: self class.	
	self assert: self recordings first senderSelector equals: #testTrace.
	self assert: self recordings first sourcePosition equals: { 3. 2. 13 }
]

{ #category : 'tests' }
SystemLoggerTest >> testVariable [
	| var |

	var := 42.
	BeaconSystemLogger uniqueInstance variable: var.
	
	self assert: self recordings first senderClass equals: self class.	
	self assert: self recordings first senderSelector equals: #testVariable.
	self assert: self recordings first sourcePosition equals: { 5. 2. 37 }.
	self assert: self recordings first variableName equals: #var.
	self assert: self recordings first object equals: 42
]
