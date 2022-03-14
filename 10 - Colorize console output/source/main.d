import colorize;

void main()
{
    cwriteln("This is light_blue".color(fg.light_blue));
    auto c = "light_red";
    cwritefln("This is %s in this nested coloured text".color("red"), c.color(c));
}