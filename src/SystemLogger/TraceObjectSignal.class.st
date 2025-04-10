Class {
	#name : 'TraceObjectSignal',
	#superclass : 'TraceSignal',
	#instVars : [
		'variableName',
		'variableValue',
		'object'
	],
	#category : 'SystemLogger',
	#package : 'SystemLogger'
}

{ #category : 'instance creation' }
TraceObjectSignal class >> fromContext: aContext object: anObject [

	^ (self fromContext: aContext)
		object: anObject;
		yourself
]

{ #category : 'initialization' }
TraceObjectSignal >> fromContext: aContext [ 

	super fromContext: aContext.
	variableName := aContext sourceNodeExecuted arguments first name
]

{ #category : 'accessing' }
TraceObjectSignal >> object [

	^ object
]

{ #category : 'initialization' }
TraceObjectSignal >> object: anObject [

	object := anObject
]

{ #category : 'printing' }
TraceObjectSignal >> printOneLineContentsOn: stream [ 

	super printOneLineContentsOn: stream.
	stream space.
	stream << self variableName << '='.
	stream print: self object
]

{ #category : 'accessing' }
TraceObjectSignal >> variableName [

	^ variableName
]
