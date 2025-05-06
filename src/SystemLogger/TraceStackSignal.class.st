Class {
	#name : 'TraceStackSignal',
	#superclass : 'TraceSignal',
	#instVars : [
		'stack'
	],
	#category : 'SystemLogger',
	#package : 'SystemLogger'
}

{ #category : 'instance creation' }
TraceStackSignal >> fromContext: aContext [

	super fromContext: aContext.
	stack := aContext copyStack
]

{ #category : 'printing' }
TraceStackSignal >> printOneLineContentsOn: stream [
	| stream |

	super printOneLineContentsOn: stream.
	stream << '[['; cr.
	stack shortDebugStackOn: stream.
	stream cr.
	stream << ']]'
]
