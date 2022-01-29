import std.stdio;
import requests;

void main(string[] args)
{
    auto content = getContent("http://httpbin.org/");
    writeln(content);
}