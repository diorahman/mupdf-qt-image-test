VPATH += $$PWD
INCLUDEPATH += $$PWD
INCLUDEPATH += $$PWD/private

SOURCES += mupdf-document.cpp \
           mupdf-page.cpp \
           mupdf-link.cpp \
           mupdf-outline.cpp \
           mupdf-textbox.cpp
HEADERS += private/mupdf-document_p.h \
           private/mupdf-page_p.h \
           private/mupdf-link_p.h \
           private/mupdf-outline_p.h \
           private/mupdf-textbox_p.h

