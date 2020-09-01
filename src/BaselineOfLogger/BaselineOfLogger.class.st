Class {
	#name : #BaselineOfLogger,
	#superclass : #BaselineOf,
	#category : #BaselineOfLogger
}

{ #category : #accessing }
BaselineOfLogger >> baseline: spec [
	<baseline>
	
	spec for: #pharo do: [
		spec package: 'Logger' ].	
]

{ #category : #'external projects' }
BaselineOfLogger >> beacon: spec [
	spec 
		baseline: 'Beacon'
		with: [ spec repository: 'github://pharo-project/pharo-beacon/repository' ]
]
