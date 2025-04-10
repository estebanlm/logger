Class {
	#name : 'BeaconSystemLogger',
	#superclass : 'SystemLogger',
	#category : 'SystemLogger',
	#package : 'SystemLogger'
}

{ #category : 'tracing' }
BeaconSystemLogger >> object: aVariable [

	(TraceObjectSignal 
		fromContext: thisContext sender
		object: aVariable) 
		emit
]

{ #category : 'tracing' }
BeaconSystemLogger >> trace [
	"trace method (and line)"

	(TraceSignal fromContext: thisContext sender) emit
]

{ #category : 'tracing' }
BeaconSystemLogger >> var: aVariable [

	(TraceObjectSignal 
		fromContext: thisContext sender
		object: aVariable) 
		emit
]

{ #category : 'tracing' }
BeaconSystemLogger >> variable: aVariable [

	(TraceObjectSignal 
		fromContext: thisContext sender
		object: aVariable) 
		emit
]
