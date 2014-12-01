#include "mupdf-qt.h"
#include <QImage>
#include <QDebug>

int main(int argc, char **argv)
{
    Q_UNUSED(argc)
    Q_UNUSED(argv)

    // open document
    QString file = "C:\\Users\\diorahman\\Downloads\\Hoteles_cerca.pdf";
    MuPDF::Document *document = MuPDF::loadDocument(file);
    if (NULL == document) {
        qDebug() << "no doc";
        return -1;
    }

    // load page
    MuPDF::Page *page = document->page(0);
    if (NULL == page) {
        delete document;
        return -1;
    }

    qDebug() << "loaded";

    // test Page::size()
    qDebug() << page->size();

    // test Page::renderImage()
    QImage image = page->renderImage();
    if (!image.save("a.png")) {
        return 1;
    }

    delete page;
    delete document;
    return 0;
}
