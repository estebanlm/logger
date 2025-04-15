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
	| argument |

	super fromContext: aContext.
	argument := aContext sourceNodeExecuted arguments first.
	argument isLiteralNode 
		ifFalse: [ variableName := argument name ]
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
	self variableName ifNotNil: [ :aName | 
		stream << aName << '=' ].
	stream print: self object
]

{ #category : 'accessing' }
TraceObjectSignal >> variableName [

	^ variableName
]
