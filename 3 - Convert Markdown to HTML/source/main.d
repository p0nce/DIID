import std.stdio;
import std.file;
import commonmarkd;

void main(string[] args)
{
    string text = cast(string) std.file.read("input.md");
    text.convertMarkdownToHTML.writeln; 
}
