.class public Lcom/caverock/androidsvg/SVGParseException;
.super Lorg/xml/sax/SAXException;
.source "SVGParseException.java"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .line 29
    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Exception;

    .line 34
    invoke-direct {p0, p1, p2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 35
    return-void
.end method
