static import std.file;
import std.datetime;
import dplug.graphics;


void main(string[] args)
{
    // Load image.
    auto image = loadOwnedImage( std.file.read("input.png") );

    // Load font.
    auto font = new Font( cast(ubyte[]) std.file.read("VeraBd.ttf") );

    // Write text.
    RGBA red = RGBA(255, 0, 0, 255);
    float textX = 20;
    float textY = 20;
    float fontSize = 16;
    string timeStr = Clock.currTime().toISOExtString();
    image.toRef.fillText(font, timeStr, fontSize, 0.0, red, textX, textY, HorizontalAlignment.left);

    // Save image.
    std.file.write("output.png", image.toRef.convertImageRefToPNG);
}