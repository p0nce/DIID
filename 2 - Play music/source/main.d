import std.stdio;
import gamemixer;

void main(string[] args)
{
    IMixer mixer = mixerCreate();
    IAudioSource music = mixer.createSourceFromFile("music.mp3");
    mixer.play(music);    
    writeln("Press ENTER to halt music...");
    readln();
    mixerDestroy(mixer);
}
