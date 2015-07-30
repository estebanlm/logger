accessing events
error: aBlockOrString
	self isEnabled ifFalse: [ ^ self ].
	ErrorEvent new 
		message: aBlockOrString value;
		emit
	