Class {
	#name : #BaselineOfTaskItArchetype,
	#superclass : #BaselineOf,
	#category : #BaselineOfTaskItArchetype
}

{ #category : #baselines }
BaselineOfTaskItArchetype >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ spec
				baseline: 'Equals'
					with: [ spec repository: 'github://bouraqadi/PharoMisc' ];
				baseline: #TaskItShell
					with: [ spec repository: 'github://pharo-contributions/taskit-shell' ];
				baseline: #TaskIt
					with: [ spec repository: 'github://pharo-contributions/taskit' ];
				package: 'TaskItArchetype-Tests'
					with: [ spec requires: #(TaskItArchetype) ];
				package: #TaskItArchetype
					with: [ spec requires: #(TaskIt TaskItShell Equals) ].
			spec
				group: 'minimal'
				with: #(#TaskItArchetype 'TaskItArchetype-Tests') ]
]
