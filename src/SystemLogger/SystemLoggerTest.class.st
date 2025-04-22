Class {
	#name : 'SystemLoggerTest',
	#superclass : 'TestCase',
	#category : 'SystemLogger',
	#package : 'SystemLogger'
}

{ #category : 'accessing' }
SystemLoggerTest >> messageForTest [

	^ 'a message'
]

{ #category : 'accessing' }
SystemLoggerTest >> recordings [

	^ MemoryLogger instance entries
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
SystemLoggerTest >> testInfo [

	BeaconSystemLogger uniqueInstance info: self message.
	
	self assert: self recordings first senderClass equals: self class.	
	self assert: self recordings first senderSelector equals: #testVariable.
	self assert: self recordings first message equals: self message
]

{ #category : 'tests' }
SystemLoggerTest >> testTrace [

	BeaconSystemLogger uniqueInstance trace.
	
	self assert: self recordings first senderClass equals: self class.	
	self assert: self recordings first senderSelector equals: #testTrace.
	self assert: self recordings first sourcePosition equals: { 3. 2. 13 }
]

{ #category : 'tests' }
SystemLoggerTest >> testTraceWithMessage [

	BeaconSystemLogger uniqueInstance trace: self messageForTest.
	
	self assert: self recordings first senderClass equals: self class.	
	self assert: self recordings first senderSelector equals: #testTraceWithMessage.
	self assert: self recordings first sourcePosition equals: { 5. 2. 37 }.
	self assert: self recordings first variableName equals: #var.
	self assert: self recordings first object equals: 42
]

{ #category : 'tests' }
SystemLoggerTest >> testTraceWithVariable [
	| var |

	var := 42.
	BeaconSystemLogger uniqueInstance trace: var.
	
	self assert: self recordings first senderClass equals: self class.	
	self assert: self recordings first senderSelector equals: #testTraceWithVariable.
	self assert: self recordings first sourcePosition equals: { 5. 2. 46 }.
	self assert: self recordings first variableName equals: #var.
	self assert: self recordings first object equals: 42
]
