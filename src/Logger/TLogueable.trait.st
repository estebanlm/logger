"
I'm add loguable traits to objects. 
Log  uses the centralized log RpgLogManager.
"
Trait {
	#name : #TLogueable,
	#category : 'Logger'
}

{ #category : #'accessing logging' }
TLogueable >> log [ 
	^ Logger log
]

{ #category : #'accessing logging' }
TLogueable >> logDebug: aBlockOrString [
	self log debug: aBlockOrString
]

{ #category : #'accessing logging' }
TLogueable >> logError: aBlockOrString [
	self log error: aBlockOrString
]

{ #category : #'accessing logging' }
TLogueable >> logInfo: aBlockOrString [
	self log info: aBlockOrString
]
