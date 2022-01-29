import std.file;
import std.conv;
import std.string;
import std.stdio;
import arsd.dom;

struct Stuff
{
    string name;
    int count;
}

void main()
{
    Stuff[] allStuff = parseStuff("inventory.xml");
 
    // Do things with stuff
    foreach(s; allStuff)
    {
        writefln("%s %s", s.count, s.name);
    }
}

Stuff[] parseStuff(string xmlpath)
{
    Stuff[] result;
    string content = readText(xmlpath);
    auto doc = new Document();
    bool caseSensitive = true, strict = true;
    doc.parseUtf8(content, caseSensitive, strict);

    foreach (e; doc.getElementsByTagName("stuff"))
    {
        Stuff s;
        s.count = e.getAttribute("count").to!int;
        foreach (e2; e.getElementsByTagName("name"))
        {
            s.name = e2.innerText.strip; // strip spaces inside <name>  myname </name>
        }

        result ~= s;
    }

    return result;
}