*Logger
logToConsole
	self stopLoggingToTranscript.
	^ self announcer 
		when: ZnLogEvent 
		do: [ :event | Stdio stdout print: event; print: OSPlatform current lineEnding ].