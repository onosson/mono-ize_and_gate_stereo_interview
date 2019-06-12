# Let the user select the channel
pauseScript: "Select the interviewee's channel and press Continue"

# Let the user set the gate threshold
beginPause: "Set the gate threshold"
	comment: "Set the gate threshold"
	real: "Silence threshold (dB)", -37
clicked = endPause: "Continue", 1

# Run gate.praat script (from Vocal Toolkit http://www.praatvocaltoolkit.com/)
runScript: "gate.praat", silence_threshold, 0.1, 0.05, "no", "no"
gateSound = selected ("Sound")

# Save file
darla$ = replace$ (filename$, ".wav", "", 1) + "_DARLA.wav"
Save as WAV file: darla$

# Remove all sounds
removeObject: gateSound
removeObject: stereoFile
removeObject: leftChannel
removeObject: rightChannel

# Open saved file for audition by user
Open long sound file: darla$
