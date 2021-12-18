import std.stdio;
import std.file;
import printed.canvas;

void main(string[] args)
{
    auto pdfDoc = new PDFDocument();
    IRenderingContext2D renderer = pdfDoc;
    with(renderer)
    {
        // Draw a 50% transparent green triangle
        fillStyle = brush("rgba(0, 255, 0, 0.5)");
        beginPath(80, 70);
        lineTo(180, 70);
        lineTo(105, 140);
        closePath();
        fill();

        fillStyle = brush("black");
        fillText("That was easy.", 20, 20);        
    }
    std.file.write("output.pdf", pdfDoc.bytes);
}
