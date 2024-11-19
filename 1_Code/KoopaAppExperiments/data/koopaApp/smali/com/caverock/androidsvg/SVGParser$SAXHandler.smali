.class Lcom/caverock/androidsvg/SVGParser$SAXHandler;
.super Lorg/xml/sax/ext/DefaultHandler2;
.source "SVGParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVGParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SAXHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/caverock/androidsvg/SVGParser;


# direct methods
.method private constructor <init>(Lcom/caverock/androidsvg/SVGParser;)V
    .locals 0

    .line 811
    iput-object p1, p0, Lcom/caverock/androidsvg/SVGParser$SAXHandler;->this$0:Lcom/caverock/androidsvg/SVGParser;

    invoke-direct {p0}, Lorg/xml/sax/ext/DefaultHandler2;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/caverock/androidsvg/SVGParser;Lcom/caverock/androidsvg/SVGParser$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/caverock/androidsvg/SVGParser;
    .param p2, "x1"    # Lcom/caverock/androidsvg/SVGParser$1;

    .line 811
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGParser$SAXHandler;-><init>(Lcom/caverock/androidsvg/SVGParser;)V

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 2
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 830
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser$SAXHandler;->this$0:Lcom/caverock/androidsvg/SVGParser;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/SVGParser;->access$300(Lcom/caverock/androidsvg/SVGParser;Ljava/lang/String;)V

    .line 831
    return-void
.end method

.method public endDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 853
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser$SAXHandler;->this$0:Lcom/caverock/androidsvg/SVGParser;

    invoke-static {v0}, Lcom/caverock/androidsvg/SVGParser;->access$500(Lcom/caverock/androidsvg/SVGParser;)V

    .line 854
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 846
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser$SAXHandler;->this$0:Lcom/caverock/androidsvg/SVGParser;

    invoke-static {v0, p1, p2, p3}, Lcom/caverock/androidsvg/SVGParser;->access$400(Lcom/caverock/androidsvg/SVGParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 860
    new-instance v0, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    invoke-direct {v0, p2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    .line 861
    .local v0, "scan":Lcom/caverock/androidsvg/SVGParser$TextScanner;
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser$SAXHandler;->this$0:Lcom/caverock/androidsvg/SVGParser;

    invoke-static {v1, v0}, Lcom/caverock/androidsvg/SVGParser;->access$600(Lcom/caverock/androidsvg/SVGParser;Lcom/caverock/androidsvg/SVGParser$TextScanner;)Ljava/util/Map;

    move-result-object v1

    .line 862
    .local v1, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGParser$SAXHandler;->this$0:Lcom/caverock/androidsvg/SVGParser;

    invoke-static {v2, p1, v1}, Lcom/caverock/androidsvg/SVGParser;->access$700(Lcom/caverock/androidsvg/SVGParser;Ljava/lang/String;Ljava/util/Map;)V

    .line 863
    return-void
.end method

.method public startDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 816
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser$SAXHandler;->this$0:Lcom/caverock/androidsvg/SVGParser;

    invoke-static {v0}, Lcom/caverock/androidsvg/SVGParser;->access$100(Lcom/caverock/androidsvg/SVGParser;)V

    .line 817
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 823
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser$SAXHandler;->this$0:Lcom/caverock/androidsvg/SVGParser;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/caverock/androidsvg/SVGParser;->access$200(Lcom/caverock/androidsvg/SVGParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 824
    return-void
.end method
