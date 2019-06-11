# let the user choose a sound
filename$ = chooseReadFile$: "Open a sound file"
if filename$ <> ""
    Read from file: filename$
endif

stereoFile = selected ("Sound")
selectObject: stereoFile
leftChannel = Extract one channel: 1
selectObject: stereoFile
rightChannel = Extract one channel: 2

pauseScript: "Please select the interviewee's channel and press Continue"

form Set the gate threshold
	real Silence_threshold_(dB) -35
endform

runScript: "gate.praat", silence_threshold, 0.1, 0.05, "no", "no"
gateSound = selected ("Sound")

# Save file
darla$ = replace$ (filename$, ".wav", "", 1) + "_DARLA.wav"
Save as WAV file: darla$

removeObject: gateSound
removeObject: stereoFile
removeObject: leftChannel
removeObject: rightChannel