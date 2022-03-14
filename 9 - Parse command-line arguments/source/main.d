import std.getopt;

int main(string[] args)
{
    string data = null;
    int length = 24;
    bool verbose;
    enum Color { no, yes }
    Color color;
    auto helpInformation = getopt(
                                  args,
                                  "length",  &length,    // numeric
                                  "file",    &data,      // string
                                  "verbose", &verbose,   // flag
                                  "color", "Information about this color", &color);    // enum

    if (helpInformation.helpWanted || data is null) // std.getopt always add an option for --help|-h
    {
        defaultGetoptPrinter("Usage:", helpInformation.options);
        return 1;
    }


    // do things
    return 0;
}
