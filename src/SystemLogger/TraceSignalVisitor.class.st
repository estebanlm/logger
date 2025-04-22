Class {
	#name : 'TraceSignalVisitor',
	#superclass : 'OCProgramNodeVisitor',
	#category : 'SystemLogger',
	#package : 'SystemLogger'
}

{ #category : 'visiting' }
TraceSignalVisitor >> visitLiteralNode: aNode [

	^ TraceLiteralSignal
]

{ #category : 'visiting' }
TraceSignalVisitor >> visitMessageNode: aMessageNode [

	^ TraceMessageSignal
]

{ #category : 'visiting' }
TraceSignalVisitor >> visitVariableNode: aNode [

	^ TraceVariableSignal
]
