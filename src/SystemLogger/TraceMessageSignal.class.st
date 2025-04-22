Class {
	#name : 'TraceMessageSignal',
	#superclass : 'TraceObjectSignal',
	#category : 'SystemLogger',
	#package : 'SystemLogger'
}

{ #category : 'initialization' }
TraceMessageSignal >> fromContext: aContext node: aNode [

	super fromContext: aContext node: aNode.
	traceName := aNode formattedCode
]
