//Arrête ou relance la musique

if (audio_is_paused(past_sadness_by_kevin_macleod_from_filmmusic_io))
{
	audio_resume_sound(past_sadness_by_kevin_macleod_from_filmmusic_io)
	image_index = 0;
}
else
{
	audio_pause_sound(past_sadness_by_kevin_macleod_from_filmmusic_io)
	image_index = 1;
}