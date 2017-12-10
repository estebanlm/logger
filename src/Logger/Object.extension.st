Extension { #name : #Object }

{ #category : #'*Logger' }
Object >> emitLogDebug [
	^ self asString emitLogDebug
]

{ #category : #'*Logger' }
Object >> emitLogError [
	^ self asString emitLogError
]

{ #category : #'*Logger' }
Object >> emitLogInfo [
	^ self asString emitLogInfo
]
