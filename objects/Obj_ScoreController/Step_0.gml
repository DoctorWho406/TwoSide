///@description 
if(cronoScore < SCORE_TIMER) {
	cronoScore ++;
} else {
	cronoScore = 0;
	score += scoreAddFactor;
}
if(cronoScoreIncrement < SCORE_INCREMENT_TIMER) {
	cronoScoreIncrement ++;
} else {
	cronoScoreIncrement = 0;
	scoreAddFactor *= SCORE_MULTIPLY_FACTOR;
}
