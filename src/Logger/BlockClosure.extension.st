Extension { #name : 'BlockClosure' }

{ #category : '*Logger' }
BlockClosure >> emitLogDebug [
	^ Logger current debug: self
]

{ #category : '*Logger' }
BlockClosure >> emitLogError [
	^ Logger current error: self
]

{ #category : '*Logger' }
BlockClosure >> emitLogInfo [
	^ Logger current info: self
]
