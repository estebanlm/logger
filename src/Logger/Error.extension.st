Extension { #name : #Error }

{ #category : #'*Logger' }
Error >> emitLogDebug [
	^ Logger current error: (String streamContents: [ :stream |
		stream << self messageText; cr.
		self signalerContext shortDebugStackOn: stream ])
]

{ #category : #'*Logger' }
Error >> emitLogError [
	^ Logger current error: self messageText
]

{ #category : #'*Logger' }
Error >> emitLogInfo [
	^ Logger current error: self messageText
]
