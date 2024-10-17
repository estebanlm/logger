Extension { #name : 'Object' }

{ #category : '*Logger' }
Object >> emitLogDebug [
	^ self loggerString emitLogDebug
]

{ #category : '*Logger' }
Object >> emitLogError [
	^ self loggerString emitLogError
]

{ #category : '*Logger' }
Object >> emitLogInfo [
	^ self loggerString emitLogInfo
]

{ #category : '*Logger' }
Object >> loggerString [
	^ self printString
]
