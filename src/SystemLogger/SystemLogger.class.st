Class {
	#name : 'SystemLogger',
	#superclass : 'Object',
	#classInstVars : [
		'uniqueInstance'
	],
	#category : 'SystemLogger',
	#package : 'SystemLogger'
}

{ #category : 'actions' }
SystemLogger class >> globalName [
		
	^ #logger
]

{ #category : 'actions' }
SystemLogger class >> install [
	<script>
	
	self install: EmptySystemLogger uniqueInstance
]

{ #category : 'actions' }
SystemLogger class >> install: aLogger [

	^ Smalltalk 
		at: self globalName
		put: aLogger
]

{ #category : 'instance creation' }
SystemLogger class >> new [
	
	self error: 'Use #uniqueInstance'
]

{ #category : 'actions' }
SystemLogger class >> uninstall [
	<script>
	
	Smalltalk globals
		removeKey: self globalName
		ifAbsent: [ ]
]

{ #category : 'instance creation' }
SystemLogger class >> uniqueInstance [

	self = SystemLogger ifTrue: [
		self error: 'I''m an abstract class. Use one of my children instead.' ].
	^ uniqueInstance ifNil: [ uniqueInstance := self basicNew initialize ]
]

{ #category : 'protocol' }
SystemLogger >> disable [

	^ self class install: EmptySystemLogger uniqueInstance
]

{ #category : 'protocol' }
SystemLogger >> enable [

	^ self class install: BeaconSystemLogger uniqueInstance.
	
]

{ #category : 'tracing' }
SystemLogger >> info: aString [
]

{ #category : 'testing' }
SystemLogger >> isEnabled [

	^ self subclassResponsibility
]

{ #category : 'tracing' }
SystemLogger >> object: aVariable [
	"trace variable value"
]

{ #category : 'tracing' }
SystemLogger >> trace [
	"trace method (and line)"
]

{ #category : 'tracing' }
SystemLogger >> trace: aString [
	"trace method (and line)"
]

{ #category : 'tracing' }
SystemLogger >> trace: aString message: messageString [
	"trace method (and line)"
]

{ #category : 'tracing' }
SystemLogger >> var: aVariable [
	"trace variable value"
]

{ #category : 'tracing' }
SystemLogger >> variable: aVariable [
	"trace variable value"
]
