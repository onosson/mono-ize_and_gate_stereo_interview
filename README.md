# mono-ize_and_gate_stereo_interview.praat
Converts stereo .wav file with separate channels for interviewee and interviewer to single mono file for interviewee with noise gate to remove interviewer's voice from audible background noise 

This script was specifically designed for use with DARLA Dartmouth Linguistics completely automated vowel extraction http://darla.dartmouth.edu/cave) which assumes that uploaded audio files contain the voice of a single speaker

This script relies on the Praat Vocal Toolkit (http://www.praatvocaltoolkit.com/index.html) for functionality and should be placed in a folder along with the following scripts from that suite of scripts: batch.praat, declip.praat, fixdc.praat, gate.praat, minmaxf0.praat, workpost.praat, workpre.praat
