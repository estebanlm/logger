Class {
	#name : 'TraceVariableSignal',
	#superclass : 'TraceObjectSignal',
	#category : 'SystemLogger',
	#package : 'SystemLogger'
}

{ #category : 'initialization' }
TraceVariableSignal >> fromContext: aContext node: aNode [

	super fromContext: aContext node: aNode.
	traceName := aNode name
]
