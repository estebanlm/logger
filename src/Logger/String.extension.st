Extension { #name : 'String' }

{ #category : '*Logger' }
String >> emitLogDebug [
	^ Logger current debug: self
]

{ #category : '*Logger' }
String >> emitLogError [
	^ Logger current error: self
]

{ #category : '*Logger' }
String >> emitLogInfo [
	^ Logger current info: self
]
