///@description 
if(!global.pause) {
	if(cronoScore < SCORE_TIMER) {
		cronoScore ++;
	} else {
		cronoScore = 0;
		score += scoreAddFactor;
	}
	if(cronoScoreIncrement < SCORE_INCREMENT_TIMER) {
		cronoScoreIncrement ++;
	} else {
		audio_play_sound(Snd_ScoreProgress,1000,false);
		cronoScoreIncrement = 0;
		scoreAddFactor *= SCORE_MULTIPLY_FACTOR;
	}
}