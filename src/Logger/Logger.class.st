"
I'm a facade to manage log on my applications. 
I use beacon as backend.
"
Class {
	#name : #Logger,
	#superclass : #Object,
	#instVars : [
		'enabled'
	],
	#classVars : [
		'Current'
	],
	#category : 'Logger'
}

{ #category : #accessing }
Logger class >> current [ 
	^ Current ifNil: [ Current := self new ]
]

{ #category : #accessing }
Logger class >> log [ 
	^ self current
]

{ #category : #logging }
Logger class >> logToConsole [
	FileLogger stdout start
]

{ #category : #logging }
Logger class >> logToFile: aName [
	(FileLogger filename: aName) start
]

{ #category : #logging }
Logger class >> logToTranscript [
	TranscriptLogger instance start
]

{ #category : #logging }
Logger class >> stopLogging [
	SignalLogger stopAll
]

{ #category : #'accessing events' }
Logger >> debug: aBlockOrString [ 
	self isEnabled ifFalse: [ ^ self ].
	DebugEvent new 
		message: aBlockOrString value;
		emit
	
]

{ #category : #accessing }
Logger >> disable [ 
	enabled := false.
	TraceEvent stopLoggingToTranscript
]

{ #category : #accessing }
Logger >> enable [ 
	enabled := true.
	TraceEvent logToTranscript
]

{ #category : #'accessing events' }
Logger >> error: aBlockOrString [
	self isEnabled ifFalse: [ ^ self ].
	ErrorEvent new 
		message: aBlockOrString value;
		emit
	
]

{ #category : #'accessing events' }
Logger >> info: aBlockOrString [
	self isEnabled ifFalse: [ ^ self ].
	InfoEvent new 
		message: aBlockOrString value;
		emit
	
]

{ #category : #initialization }
Logger >> initialize [ 
	super initialize.
	enabled := true
]

{ #category : #testing }
Logger >> isEnabled [
	^ enabled
]
