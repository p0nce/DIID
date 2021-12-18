import std.file;
import std.stdio;
import arsd.jsvar;

void main(string[] args)
{
    var inventory = var.fromJson( cast(string) std.file.read("inventory.json") );

    foreach(i, v; inventory.stuff)
    {
        writefln("Item %s: name = %s count = %s", i, v.name, v.count);
    }
}