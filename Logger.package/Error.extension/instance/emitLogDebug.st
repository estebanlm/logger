*Logger
emitLogDebug
	^ Logger current error: (String streamContents: [ :stream |
		stream << self messageText; cr.
		self signalerContext shortDebugStackOn: stream ])