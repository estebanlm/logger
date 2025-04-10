Class {
	#name : 'BaselineOfSystemLogger',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfSystemLogger',
	#package : 'BaselineOfSystemLogger'
}

{ #category : 'accessing' }
BaselineOfSystemLogger >> baseline: spec [
	<baseline>
	
	spec for: #pharo do: [
		spec package: 'SystemLogger' ].	
]

{ #category : 'external projects' }
BaselineOfSystemLogger >> beacon: spec [
	spec 
		baseline: 'Beacon'
		with: [ spec repository: 'github://pharo-project/pharo-beacon/repository' ]
]
