# logger

A **very** small logger wrapper to use with Pharo.

I act as a façade for the existing log system for ZnClient (and yes, it could collition with regular Zn 
events), but my intend is to simplify the access... and losing deepness, since I do not generate an event 
in particular for each case, but a simple log (info, error, debug).

Maybe I need to die and use a real logger, he :)

## Install

```Smalltalk
Metacello new
	repository: 'github://estebanlm/logger/mc';
	baseline: 'Logger';
	load.
```

## Usage

```Smalltalk
'this is a log' emitLogInfo.
anError emitLogDebug.
42 emitLogError.
```