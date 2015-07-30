accessing events
info: aBlockOrString
	self isEnabled ifFalse: [ ^ self ].
	InfoEvent new 
		message: aBlockOrString value;
		emit
	