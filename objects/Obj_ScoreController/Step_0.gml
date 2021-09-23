///@description 
if(cronoScore < SCORE_TIMER) {
	cronoScore ++;
} else {
	cronoScore = 0;
	score += scoreAddFactor;
}