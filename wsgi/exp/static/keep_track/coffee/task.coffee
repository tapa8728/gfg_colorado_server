# jQuery call to set key and click handlers
jQuery ->
	$("body").on('click','button', (event) ->
		currSession.buttonClick(event.target))
	currSession.start()

# This is where you set the order of your blocks
# Simply an array that will get passed down to the Session
blocks = [
	new kTrack.Instruction kTrackInst[0]
	new kTrack.InstGrid kTrackInst[1]
	new kTrack.Instruction kTrackInst[2]
	new kTrack.Instruction kTrackInst[3]
	new kTrack.Instruction kTrackInst[4], "Back", "Start!"
	new kTrack.PracBlock "prac1", "Ready?", kTrack.stim['pracLists'][0], 2000
	new common.FinishInstructions
	new kTrack.Instruction kTrackInst[5], "See again", "Continue" ## Change instructions
	new kTrack.InstGrid kTrackInst[6], kTrack.stim['pracLists'][0][0], true, false
	new kTrack.InstGrid kTrackInst[7], kTrack.stim['pracLists'][0][0], false, ['Cat'], false, false
	new kTrack.Instruction kTrackInst[8], null, "Start"
	new kTrack.PracBlock "prac2", "Ready?", kTrack.stim['pracLists'][1], 2000
	new kTrack.InstGrid "Please enter the last word of each category", kTrack.stim['pracLists'][1][0], false, kTrack.stim['pracLists'][1][1], false, false
	new kTrack.Instruction kTrackInst[9]
	new kTrack.Block "1", "Ready?", kTrack.real_stim[0]
	new kTrack.Block "2", "Ready?", kTrack.real_stim[1]
	new kTrack.Block "3", "Ready?", kTrack.real_stim[2]
	new kTrack.Block "4", "Ready?", kTrack.real_stim[3]
	new kTrack.Block "5", "Ready?", kTrack.real_stim[4]
	new kTrack.Block "6", "Ready?", kTrack.real_stim[5]
	new kTrack.Block "7", "Ready?", kTrack.real_stim[6]

	new common.Questionnaire
	# new common.Debriefing
]

## These have to be at the bottom
# Create the session with block array above
currSession = new kTrack.Session(blocks)

currSession.start()