.class Lcom/caverock/androidsvg/SVGParser;
.super Ljava/lang/Object;
.source "SVGParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/caverock/androidsvg/SVGParser$TextScanner;,
        Lcom/caverock/androidsvg/SVGParser$SAXHandler;,
        Lcom/caverock/androidsvg/SVGParser$XPPAttributesWrapper;,
        Lcom/caverock/androidsvg/SVGParser$AspectRatioKeywords;,
        Lcom/caverock/androidsvg/SVGParser$FontWeightKeywords;,
        Lcom/caverock/androidsvg/SVGParser$FontSizeKeywords;,
        Lcom/caverock/androidsvg/SVGParser$ColourKeywords;,
        Lcom/caverock/androidsvg/SVGParser$SVGAttr;,
        Lcom/caverock/androidsvg/SVGParser$SVGElem;
    }
.end annotation


# static fields
.field private static final CURRENTCOLOR:Ljava/lang/String; = "currentColor"

.field public static final ENTITY_WATCH_BUFFER_SIZE:I = 0x1000

.field private static final FEATURE_STRING_PREFIX:Ljava/lang/String; = "http://www.w3.org/TR/SVG11/feature#"

.field private static final NONE:Ljava/lang/String; = "none"

.field private static final SVG_NAMESPACE:Ljava/lang/String; = "http://www.w3.org/2000/svg"

.field private static final TAG:Ljava/lang/String; = "SVGParser"

.field private static final VALID_DISPLAY_VALUES:Ljava/lang/String; = "|inline|block|list-item|run-in|compact|marker|table|inline-table|table-row-group|table-header-group|table-footer-group|table-row|table-column-group|table-column|table-cell|table-caption|none|"

.field private static final VALID_VISIBILITY_VALUES:Ljava/lang/String; = "|visible|hidden|collapse|"

.field private static final XLINK_NAMESPACE:Ljava/lang/String; = "http://www.w3.org/1999/xlink"

.field public static final XML_STYLESHEET_ATTR_ALTERNATE:Ljava/lang/String; = "alternate"

.field public static final XML_STYLESHEET_ATTR_ALTERNATE_NO:Ljava/lang/String; = "no"

.field public static final XML_STYLESHEET_ATTR_HREF:Ljava/lang/String; = "href"

.field public static final XML_STYLESHEET_ATTR_MEDIA:Ljava/lang/String; = "media"

.field public static final XML_STYLESHEET_ATTR_MEDIA_ALL:Ljava/lang/String; = "all"

.field public static final XML_STYLESHEET_ATTR_TYPE:Ljava/lang/String; = "type"

.field private static final XML_STYLESHEET_PROCESSING_INSTRUCTION:Ljava/lang/String; = "xml-stylesheet"


# instance fields
.field private currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

.field private ignoreDepth:I

.field private ignoring:Z

.field private inMetadataElement:Z

.field private inStyleElement:Z

.field private metadataElementContents:Ljava/lang/StringBuilder;

.field private metadataTag:Lcom/caverock/androidsvg/SVGParser$SVGElem;

.field private styleElementContents:Ljava/lang/StringBuilder;

.field private svgDocument:Lcom/caverock/androidsvg/SVG;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    .line 99
    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 102
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/caverock/androidsvg/SVGParser;->ignoring:Z

    .line 106
    iput-boolean v1, p0, Lcom/caverock/androidsvg/SVGParser;->inMetadataElement:Z

    .line 107
    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->metadataTag:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    .line 108
    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->metadataElementContents:Ljava/lang/StringBuilder;

    .line 111
    iput-boolean v1, p0, Lcom/caverock/androidsvg/SVGParser;->inStyleElement:Z

    .line 112
    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->styleElementContents:Ljava/lang/StringBuilder;

    return-void
.end method

.method static synthetic access$100(Lcom/caverock/androidsvg/SVGParser;)V
    .locals 0
    .param p0, "x0"    # Lcom/caverock/androidsvg/SVGParser;

    .line 73
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGParser;->startDocument()V

    return-void
.end method

.method static synthetic access$200(Lcom/caverock/androidsvg/SVGParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0
    .param p0, "x0"    # Lcom/caverock/androidsvg/SVGParser;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    .line 73
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/caverock/androidsvg/SVGParser;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-void
.end method

.method static synthetic access$300(Lcom/caverock/androidsvg/SVGParser;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/caverock/androidsvg/SVGParser;
    .param p1, "x1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    .line 73
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGParser;->text(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/caverock/androidsvg/SVGParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/caverock/androidsvg/SVGParser;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    .line 73
    invoke-direct {p0, p1, p2, p3}, Lcom/caverock/androidsvg/SVGParser;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/caverock/androidsvg/SVGParser;)V
    .locals 0
    .param p0, "x0"    # Lcom/caverock/androidsvg/SVGParser;

    .line 73
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGParser;->endDocument()V

    return-void
.end method

.method static synthetic access$600(Lcom/caverock/androidsvg/SVGParser;Lcom/caverock/androidsvg/SVGParser$TextScanner;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/caverock/androidsvg/SVGParser;
    .param p1, "x1"    # Lcom/caverock/androidsvg/SVGParser$TextScanner;

    .line 73
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseProcessingInstructionAttributes(Lcom/caverock/androidsvg/SVGParser$TextScanner;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/caverock/androidsvg/SVGParser;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p0, "x0"    # Lcom/caverock/androidsvg/SVGParser;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/Map;

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/caverock/androidsvg/SVGParser;->handleProcessingInstruction(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private appendToTextContainer(Ljava/lang/String;)V
    .locals 6
    .param p1, "characters"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    .line 1016
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    check-cast v0, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;

    .line 1017
    .local v0, "parent":Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;
    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;->children:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 1018
    .local v1, "numOlderSiblings":I
    if-nez v1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;->children:Ljava/util/List;

    add-int/lit8 v3, v1, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/caverock/androidsvg/SVG$SvgObject;

    .line 1019
    .local v2, "previousSibling":Lcom/caverock/androidsvg/SVG$SvgObject;
    :goto_0
    instance-of v3, v2, Lcom/caverock/androidsvg/SVG$TextSequence;

    if-eqz v3, :cond_1

    .line 1021
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v2

    check-cast v4, Lcom/caverock/androidsvg/SVG$TextSequence;

    iget-object v5, v4, Lcom/caverock/androidsvg/SVG$TextSequence;->text:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/caverock/androidsvg/SVG$TextSequence;->text:Ljava/lang/String;

    goto :goto_1

    .line 1024
    :cond_1
    iget-object v3, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    new-instance v4, Lcom/caverock/androidsvg/SVG$TextSequence;

    invoke-direct {v4, p1}, Lcom/caverock/androidsvg/SVG$TextSequence;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 1026
    :goto_1
    return-void
.end method

.method private circle(Lorg/xml/sax/Attributes;)V
    .locals 2
    .param p1, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    .line 1508
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<circle>"

    invoke-direct {p0, v1, v0}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1510
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_0

    .line 1512
    new-instance v0, Lcom/caverock/androidsvg/SVG$Circle;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$Circle;-><init>()V

    .line 1513
    .local v0, "obj":Lcom/caverock/androidsvg/SVG$Circle;
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Circle;->document:Lcom/caverock/androidsvg/SVG;

    .line 1514
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Circle;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1515
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1516
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1517
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    .line 1518
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 1519
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCircle(Lcom/caverock/androidsvg/SVG$Circle;Lorg/xml/sax/Attributes;)V

    .line 1520
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 1521
    return-void

    .line 1511
    .end local v0    # "obj":Lcom/caverock/androidsvg/SVG$Circle;
    :cond_0
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid document. Root element must be <svg>"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static clamp255(F)I
    .locals 1
    .param p0, "val"    # F

    .line 3740
    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x437f0000    # 255.0f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_1

    const/16 v0, 0xff

    goto :goto_0

    :cond_1
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result v0

    :goto_0
    return v0
.end method

.method private clipPath(Lorg/xml/sax/Attributes;)V
    .locals 2
    .param p1, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    .line 2226
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<clipPath>"

    invoke-direct {p0, v1, v0}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2228
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_0

    .line 2230
    new-instance v0, Lcom/caverock/androidsvg/SVG$ClipPath;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$ClipPath;-><init>()V

    .line 2231
    .local v0, "obj":Lcom/caverock/androidsvg/SVG$ClipPath;
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$ClipPath;->document:Lcom/caverock/androidsvg/SVG;

    .line 2232
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$ClipPath;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 2233
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 2234
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 2235
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    .line 2236
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 2237
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesClipPath(Lcom/caverock/androidsvg/SVG$ClipPath;Lorg/xml/sax/Attributes;)V

    .line 2238
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 2239
    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 2240
    return-void

    .line 2229
    .end local v0    # "obj":Lcom/caverock/androidsvg/SVG$ClipPath;
    :cond_0
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid document. Root element must be <svg>"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 1174
    return-void
.end method

.method private defs(Lorg/xml/sax/Attributes;)V
    .locals 2
    .param p1, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    .line 1264
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<defs>"

    invoke-direct {p0, v1, v0}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1266
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_0

    .line 1268
    new-instance v0, Lcom/caverock/androidsvg/SVG$Defs;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$Defs;-><init>()V

    .line 1269
    .local v0, "obj":Lcom/caverock/androidsvg/SVG$Defs;
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Defs;->document:Lcom/caverock/androidsvg/SVG;

    .line 1270
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Defs;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1271
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1272
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1273
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    .line 1274
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 1275
    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1276
    return-void

    .line 1267
    .end local v0    # "obj":Lcom/caverock/androidsvg/SVG$Defs;
    :cond_0
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid document. Root element must be <svg>"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private dumpNode(Lcom/caverock/androidsvg/SVG$SvgObject;Ljava/lang/String;)V
    .locals 2
    .param p1, "elem"    # Lcom/caverock/androidsvg/SVG$SvgObject;
    .param p2, "indent"    # Ljava/lang/String;

    .line 1160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SVGParser"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;

    if-eqz v0, :cond_0

    .line 1162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1163
    move-object v0, p1

    check-cast v0, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/caverock/androidsvg/SVG$SvgObject;

    .line 1164
    .local v1, "child":Lcom/caverock/androidsvg/SVG$SvgObject;
    invoke-direct {p0, v1, p2}, Lcom/caverock/androidsvg/SVGParser;->dumpNode(Lcom/caverock/androidsvg/SVG$SvgObject;Ljava/lang/String;)V

    .line 1165
    .end local v1    # "child":Lcom/caverock/androidsvg/SVG$SvgObject;
    goto :goto_0

    .line 1167
    :cond_0
    return-void
.end method

.method private ellipse(Lorg/xml/sax/Attributes;)V
    .locals 2
    .param p1, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    .line 1555
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<ellipse>"

    invoke-direct {p0, v1, v0}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1557
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_0

    .line 1559
    new-instance v0, Lcom/caverock/androidsvg/SVG$Ellipse;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$Ellipse;-><init>()V

    .line 1560
    .local v0, "obj":Lcom/caverock/androidsvg/SVG$Ellipse;
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Ellipse;->document:Lcom/caverock/androidsvg/SVG;

    .line 1561
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Ellipse;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1562
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1563
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1564
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    .line 1565
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 1566
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesEllipse(Lcom/caverock/androidsvg/SVG$Ellipse;Lorg/xml/sax/Attributes;)V

    .line 1567
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 1568
    return-void

    .line 1558
    .end local v0    # "obj":Lcom/caverock/androidsvg/SVG$Ellipse;
    :cond_0
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid document. Root element must be <svg>"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private endDocument()V
    .locals 0

    .line 1101
    return-void
.end method

.method private endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    .line 1031
    iget-boolean v0, p0, Lcom/caverock/androidsvg/SVGParser;->ignoring:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1032
    iget v0, p0, Lcom/caverock/androidsvg/SVGParser;->ignoreDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/caverock/androidsvg/SVGParser;->ignoreDepth:I

    if-nez v0, :cond_0

    .line 1033
    iput-boolean v1, p0, Lcom/caverock/androidsvg/SVGParser;->ignoring:Z

    .line 1034
    return-void

    .line 1038
    :cond_0
    const-string v0, "http://www.w3.org/2000/svg"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1039
    return-void

    .line 1042
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    move-object v0, p2

    goto :goto_0

    :cond_2
    move-object v0, p3

    .line 1043
    .local v0, "tag":Ljava/lang/String;
    :goto_0
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGElem:[I

    invoke-static {v0}, Lcom/caverock/androidsvg/SVGParser$SVGElem;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGElem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$SVGElem;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_2

    .line 1059
    :pswitch_1
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGParser;->styleElementContents:Ljava/lang/StringBuilder;

    if-eqz v2, :cond_6

    .line 1060
    iput-boolean v1, p0, Lcom/caverock/androidsvg/SVGParser;->inStyleElement:Z

    .line 1061
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/caverock/androidsvg/SVGParser;->parseCSSStyleSheet(Ljava/lang/String;)V

    .line 1062
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGParser;->styleElementContents:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1063
    return-void

    .line 1047
    :pswitch_2
    iput-boolean v1, p0, Lcom/caverock/androidsvg/SVGParser;->inMetadataElement:Z

    .line 1048
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGParser;->metadataElementContents:Ljava/lang/StringBuilder;

    if-eqz v2, :cond_5

    .line 1050
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGParser;->metadataTag:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    sget-object v3, Lcom/caverock/androidsvg/SVGParser$SVGElem;->title:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    if-ne v2, v3, :cond_3

    .line 1051
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iget-object v3, p0, Lcom/caverock/androidsvg/SVGParser;->metadataElementContents:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/caverock/androidsvg/SVG;->setTitle(Ljava/lang/String;)V

    goto :goto_1

    .line 1052
    :cond_3
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGParser;->metadataTag:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    sget-object v3, Lcom/caverock/androidsvg/SVGParser$SVGElem;->desc:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    if-ne v2, v3, :cond_4

    .line 1053
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iget-object v3, p0, Lcom/caverock/androidsvg/SVGParser;->metadataElementContents:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/caverock/androidsvg/SVG;->setDesc(Ljava/lang/String;)V

    .line 1054
    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGParser;->metadataElementContents:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1056
    :cond_5
    return-void

    .line 1086
    :pswitch_3
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    check-cast v1, Lcom/caverock/androidsvg/SVG$SvgObject;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1087
    nop

    .line 1093
    :cond_6
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private g(Lorg/xml/sax/Attributes;)V
    .locals 2
    .param p1, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    .line 1242
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<g>"

    invoke-direct {p0, v1, v0}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1244
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_0

    .line 1246
    new-instance v0, Lcom/caverock/androidsvg/SVG$Group;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$Group;-><init>()V

    .line 1247
    .local v0, "obj":Lcom/caverock/androidsvg/SVG$Group;
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Group;->document:Lcom/caverock/androidsvg/SVG;

    .line 1248
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Group;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1249
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1250
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1251
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    .line 1252
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 1253
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 1254
    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1255
    return-void

    .line 1245
    .end local v0    # "obj":Lcom/caverock/androidsvg/SVG$Group;
    :cond_0
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid document. Root element must be <svg>"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private handleProcessingInstruction(Ljava/lang/String;Ljava/util/Map;)V
    .locals 5
    .param p1, "instruction"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1106
    .local p2, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "xml-stylesheet"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/caverock/androidsvg/SVG;->getFileResolver()Lcom/caverock/androidsvg/SVGExternalFileResolver;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1109
    const-string v0, "type"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1110
    .local v1, "attr":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, "text/css"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1111
    return-void

    .line 1113
    :cond_0
    const-string v0, "alternate"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    .line 1114
    if-eqz v1, :cond_1

    const-string v2, "no"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1115
    return-void

    .line 1117
    :cond_1
    const-string v0, "href"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1118
    .end local v1    # "attr":Ljava/lang/String;
    .local v0, "attr":Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 1120
    invoke-static {}, Lcom/caverock/androidsvg/SVG;->getFileResolver()Lcom/caverock/androidsvg/SVGExternalFileResolver;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/caverock/androidsvg/SVGExternalFileResolver;->resolveCSSStyleSheet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1121
    .local v1, "css":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 1122
    return-void

    .line 1124
    :cond_2
    const-string v2, "media"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1125
    .local v2, "mediaAttr":Ljava/lang/String;
    if-eqz v2, :cond_3

    const-string v3, "all"

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1126
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "@media "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " { "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1129
    :cond_3
    invoke-direct {p0, v1}, Lcom/caverock/androidsvg/SVGParser;->parseCSSStyleSheet(Ljava/lang/String;)V

    .line 1133
    .end local v0    # "attr":Ljava/lang/String;
    .end local v1    # "css":Ljava/lang/String;
    .end local v2    # "mediaAttr":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method private static hslToRgb(FFF)I
    .locals 8
    .param p0, "hue"    # F
    .param p1, "sat"    # F
    .param p2, "light"    # F

    .line 3747
    const/4 v0, 0x0

    cmpl-float v1, p0, v0

    const/high16 v2, 0x43b40000    # 360.0f

    if-ltz v1, :cond_0

    rem-float v1, p0, v2

    goto :goto_0

    :cond_0
    rem-float v1, p0, v2

    add-float/2addr v1, v2

    :goto_0
    move p0, v1

    .line 3748
    const/high16 v1, 0x42700000    # 60.0f

    div-float/2addr p0, v1

    .line 3749
    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr p1, v1

    .line 3750
    div-float/2addr p2, v1

    .line 3751
    cmpg-float v1, p1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    if-gez v1, :cond_1

    move v1, v0

    goto :goto_1

    :cond_1
    cmpl-float v1, p1, v2

    if-lez v1, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    move v1, p1

    :goto_1
    move p1, v1

    .line 3752
    cmpg-float v1, p2, v0

    if-gez v1, :cond_3

    goto :goto_2

    :cond_3
    cmpl-float v0, p2, v2

    if-lez v0, :cond_4

    move v0, v2

    goto :goto_2

    :cond_4
    move v0, p2

    :goto_2
    move p2, v0

    .line 3754
    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_5

    .line 3755
    add-float/2addr v2, p1

    mul-float/2addr v2, p2

    .local v2, "t2":F
    goto :goto_3

    .line 3757
    .end local v2    # "t2":F
    :cond_5
    add-float v0, p2, p1

    mul-float v1, p2, p1

    sub-float v2, v0, v1

    .line 3759
    .restart local v2    # "t2":F
    :goto_3
    const/high16 v0, 0x40000000    # 2.0f

    mul-float v1, p2, v0

    sub-float/2addr v1, v2

    .line 3760
    .local v1, "t1":F
    add-float v3, p0, v0

    invoke-static {v1, v2, v3}, Lcom/caverock/androidsvg/SVGParser;->hueToRgb(FFF)F

    move-result v3

    .line 3761
    .local v3, "r":F
    invoke-static {v1, v2, p0}, Lcom/caverock/androidsvg/SVGParser;->hueToRgb(FFF)F

    move-result v4

    .line 3762
    .local v4, "g":F
    sub-float v0, p0, v0

    invoke-static {v1, v2, v0}, Lcom/caverock/androidsvg/SVGParser;->hueToRgb(FFF)F

    move-result v0

    .line 3763
    .local v0, "b":F
    const/high16 v5, 0x43800000    # 256.0f

    mul-float v6, v3, v5

    invoke-static {v6}, Lcom/caverock/androidsvg/SVGParser;->clamp255(F)I

    move-result v6

    shl-int/lit8 v6, v6, 0x10

    mul-float v7, v4, v5

    invoke-static {v7}, Lcom/caverock/androidsvg/SVGParser;->clamp255(F)I

    move-result v7

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    mul-float/2addr v5, v0

    invoke-static {v5}, Lcom/caverock/androidsvg/SVGParser;->clamp255(F)I

    move-result v5

    or-int/2addr v5, v6

    return v5
.end method

.method private static hueToRgb(FFF)F
    .locals 2
    .param p0, "t1"    # F
    .param p1, "t2"    # F
    .param p2, "hue"    # F

    .line 3767
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    const/high16 v1, 0x40c00000    # 6.0f

    if-gez v0, :cond_0

    add-float/2addr p2, v1

    .line 3768
    :cond_0
    cmpl-float v0, p2, v1

    if-ltz v0, :cond_1

    sub-float/2addr p2, v1

    .line 3770
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p2, v0

    if-gez v0, :cond_2

    sub-float v0, p1, p0

    mul-float/2addr v0, p2

    add-float/2addr v0, p0

    return v0

    .line 3771
    :cond_2
    const/high16 v0, 0x40400000    # 3.0f

    cmpg-float v0, p2, v0

    if-gez v0, :cond_3

    return p1

    .line 3772
    :cond_3
    const/high16 v0, 0x40800000    # 4.0f

    cmpg-float v1, p2, v0

    if-gez v1, :cond_4

    sub-float v1, p1, p0

    sub-float/2addr v0, p2

    mul-float/2addr v1, v0

    add-float/2addr v1, p0

    return v1

    .line 3773
    :cond_4
    return p0
.end method

.method private image(Lorg/xml/sax/Attributes;)V
    .locals 2
    .param p1, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    .line 1342
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<image>"

    invoke-direct {p0, v1, v0}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1344
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_0

    .line 1346
    new-instance v0, Lcom/caverock/androidsvg/SVG$Image;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$Image;-><init>()V

    .line 1347
    .local v0, "obj":Lcom/caverock/androidsvg/SVG$Image;
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Image;->document:Lcom/caverock/androidsvg/SVG;

    .line 1348
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Image;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1349
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1350
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1351
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    .line 1352
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 1353
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesImage(Lcom/caverock/androidsvg/SVG$Image;Lorg/xml/sax/Attributes;)V

    .line 1354
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 1355
    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1356
    return-void

    .line 1345
    .end local v0    # "obj":Lcom/caverock/androidsvg/SVG$Image;
    :cond_0
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid document. Root element must be <svg>"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private line(Lorg/xml/sax/Attributes;)V
    .locals 2
    .param p1, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    .line 1607
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<line>"

    invoke-direct {p0, v1, v0}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1609
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_0

    .line 1611
    new-instance v0, Lcom/caverock/androidsvg/SVG$Line;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$Line;-><init>()V

    .line 1612
    .local v0, "obj":Lcom/caverock/androidsvg/SVG$Line;
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Line;->document:Lcom/caverock/androidsvg/SVG;

    .line 1613
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Line;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1614
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1615
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1616
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    .line 1617
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 1618
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesLine(Lcom/caverock/androidsvg/SVG$Line;Lorg/xml/sax/Attributes;)V

    .line 1619
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 1620
    return-void

    .line 1610
    .end local v0    # "obj":Lcom/caverock/androidsvg/SVG$Line;
    :cond_0
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid document. Root element must be <svg>"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private linearGradient(Lorg/xml/sax/Attributes;)V
    .locals 2
    .param p1, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    .line 2000
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<linearGradient>"

    invoke-direct {p0, v1, v0}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2002
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_0

    .line 2004
    new-instance v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;-><init>()V

    .line 2005
    .local v0, "obj":Lcom/caverock/androidsvg/SVG$SvgLinearGradient;
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->document:Lcom/caverock/androidsvg/SVG;

    .line 2006
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 2007
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 2008
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 2009
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesGradient(Lcom/caverock/androidsvg/SVG$GradientElement;Lorg/xml/sax/Attributes;)V

    .line 2010
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesLinearGradient(Lcom/caverock/androidsvg/SVG$SvgLinearGradient;Lorg/xml/sax/Attributes;)V

    .line 2011
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 2012
    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 2013
    return-void

    .line 2003
    .end local v0    # "obj":Lcom/caverock/androidsvg/SVG$SvgLinearGradient;
    :cond_0
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid document. Root element must be <svg>"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private marker(Lorg/xml/sax/Attributes;)V
    .locals 2
    .param p1, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    .line 1931
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<marker>"

    invoke-direct {p0, v1, v0}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1933
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_0

    .line 1935
    new-instance v0, Lcom/caverock/androidsvg/SVG$Marker;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$Marker;-><init>()V

    .line 1936
    .local v0, "obj":Lcom/caverock/androidsvg/SVG$Marker;
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Marker;->document:Lcom/caverock/androidsvg/SVG;

    .line 1937
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Marker;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1938
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1939
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1940
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 1941
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesViewBox(Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;Lorg/xml/sax/Attributes;)V

    .line 1942
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesMarker(Lcom/caverock/androidsvg/SVG$Marker;Lorg/xml/sax/Attributes;)V

    .line 1943
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 1944
    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1945
    return-void

    .line 1934
    .end local v0    # "obj":Lcom/caverock/androidsvg/SVG$Marker;
    :cond_0
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid document. Root element must be <svg>"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private mask(Lorg/xml/sax/Attributes;)V
    .locals 2
    .param p1, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    .line 2418
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<mask>"

    invoke-direct {p0, v1, v0}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2420
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_0

    .line 2422
    new-instance v0, Lcom/caverock/androidsvg/SVG$Mask;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$Mask;-><init>()V

    .line 2423
    .local v0, "obj":Lcom/caverock/androidsvg/SVG$Mask;
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Mask;->document:Lcom/caverock/androidsvg/SVG;

    .line 2424
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Mask;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 2425
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 2426
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 2427
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 2428
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesMask(Lcom/caverock/androidsvg/SVG$Mask;Lorg/xml/sax/Attributes;)V

    .line 2429
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 2430
    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 2431
    return-void

    .line 2421
    .end local v0    # "obj":Lcom/caverock/androidsvg/SVG$Mask;
    :cond_0
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid document. Root element must be <svg>"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private parseAttributesCircle(Lcom/caverock/androidsvg/SVG$Circle;Lorg/xml/sax/Attributes;)V
    .locals 4
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$Circle;
    .param p2, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    .line 1526
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1528
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1529
    .local v1, "val":Ljava/lang/String;
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 1538
    :pswitch_0
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Circle;->r:Lcom/caverock/androidsvg/SVG$Length;

    .line 1539
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Circle;->r:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 1540
    :cond_0
    new-instance v2, Lcom/caverock/androidsvg/SVGParseException;

    const-string v3, "Invalid <circle> element. r cannot be negative"

    invoke-direct {v2, v3}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1535
    :pswitch_1
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Circle;->cy:Lcom/caverock/androidsvg/SVG$Length;

    .line 1536
    goto :goto_1

    .line 1532
    :pswitch_2
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Circle;->cx:Lcom/caverock/androidsvg/SVG$Length;

    .line 1533
    nop

    .line 1526
    .end local v1    # "val":Ljava/lang/String;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1546
    .end local v0    # "i":I
    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseAttributesClipPath(Lcom/caverock/androidsvg/SVG$ClipPath;Lorg/xml/sax/Attributes;)V
    .locals 4
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$ClipPath;
    .param p2, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    .line 2245
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 2247
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 2248
    .local v1, "val":Ljava/lang/String;
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 2251
    :pswitch_0
    const-string v2, "objectBoundingBox"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2252
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$ClipPath;->clipPathUnitsAreUser:Ljava/lang/Boolean;

    goto :goto_1

    .line 2253
    :cond_0
    const-string v2, "userSpaceOnUse"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2254
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$ClipPath;->clipPathUnitsAreUser:Ljava/lang/Boolean;

    goto :goto_1

    .line 2256
    :cond_1
    new-instance v2, Lcom/caverock/androidsvg/SVGParseException;

    const-string v3, "Invalid value for attribute clipPathUnits"

    invoke-direct {v2, v3}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2245
    .end local v1    # "val":Ljava/lang/String;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2263
    .end local v0    # "i":I
    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x26
        :pswitch_0
    .end packed-switch
.end method

.method private parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V
    .locals 5
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$SvgConditional;
    .param p2, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    .line 1874
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1876
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1877
    .local v1, "val":Ljava/lang/String;
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_2

    .line 1892
    :pswitch_0
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseFontFamily(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 1893
    .local v2, "fonts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/HashSet;

    if-eqz v2, :cond_0

    invoke-direct {v3, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 1894
    .local v3, "fontSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {p1, v3}, Lcom/caverock/androidsvg/SVG$SvgConditional;->setRequiredFonts(Ljava/util/Set;)V

    .line 1895
    goto :goto_2

    .line 1889
    .end local v2    # "fonts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "fontSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :pswitch_1
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseRequiredFormats(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/caverock/androidsvg/SVG$SvgConditional;->setRequiredFormats(Ljava/util/Set;)V

    .line 1890
    goto :goto_2

    .line 1886
    :pswitch_2
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseSystemLanguage(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/caverock/androidsvg/SVG$SvgConditional;->setSystemLanguage(Ljava/util/Set;)V

    .line 1887
    goto :goto_2

    .line 1883
    :pswitch_3
    invoke-interface {p1, v1}, Lcom/caverock/androidsvg/SVG$SvgConditional;->setRequiredExtensions(Ljava/lang/String;)V

    .line 1884
    goto :goto_2

    .line 1880
    :pswitch_4
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseRequiredFeatures(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/caverock/androidsvg/SVG$SvgConditional;->setRequiredFeatures(Ljava/util/Set;)V

    .line 1881
    nop

    .line 1874
    .end local v1    # "val":Ljava/lang/String;
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1900
    .end local v0    # "i":I
    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V
    .locals 6
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$SvgElementBase;
    .param p2, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    .line 2879
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 2881
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v1

    .line 2882
    .local v1, "qname":Ljava/lang/String;
    const-string v2, "id"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "xml:id"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 2887
    :cond_0
    const-string v2, "xml:space"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2888
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 2889
    .local v2, "val":Ljava/lang/String;
    const-string v3, "default"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2890
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v3, p1, Lcom/caverock/androidsvg/SVG$SvgElementBase;->spacePreserve:Ljava/lang/Boolean;

    goto :goto_2

    .line 2891
    :cond_1
    const-string v3, "preserve"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2892
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v3, p1, Lcom/caverock/androidsvg/SVG$SvgElementBase;->spacePreserve:Ljava/lang/Boolean;

    goto :goto_2

    .line 2894
    :cond_2
    new-instance v3, Lcom/caverock/androidsvg/SVGParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid value for \"xml:space\" attribute: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2879
    .end local v1    # "qname":Ljava/lang/String;
    .end local v2    # "val":Ljava/lang/String;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2884
    .restart local v1    # "qname":Ljava/lang/String;
    :cond_4
    :goto_1
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$SvgElementBase;->id:Ljava/lang/String;

    .line 2885
    nop

    .line 2899
    .end local v0    # "i":I
    .end local v1    # "qname":Ljava/lang/String;
    :cond_5
    :goto_2
    return-void
.end method

.method private parseAttributesEllipse(Lcom/caverock/androidsvg/SVG$Ellipse;Lorg/xml/sax/Attributes;)V
    .locals 4
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$Ellipse;
    .param p2, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    .line 1573
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1575
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1576
    .local v1, "val":Ljava/lang/String;
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 1582
    :pswitch_0
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Ellipse;->cy:Lcom/caverock/androidsvg/SVG$Length;

    .line 1583
    goto :goto_1

    .line 1579
    :pswitch_1
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Ellipse;->cx:Lcom/caverock/androidsvg/SVG$Length;

    .line 1580
    goto :goto_1

    .line 1590
    :pswitch_2
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Ellipse;->ry:Lcom/caverock/androidsvg/SVG$Length;

    .line 1591
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Ellipse;->ry:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 1592
    :cond_0
    new-instance v2, Lcom/caverock/androidsvg/SVGParseException;

    const-string v3, "Invalid <ellipse> element. ry cannot be negative"

    invoke-direct {v2, v3}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1585
    :pswitch_3
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Ellipse;->rx:Lcom/caverock/androidsvg/SVG$Length;

    .line 1586
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Ellipse;->rx:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 1587
    :cond_1
    new-instance v2, Lcom/caverock/androidsvg/SVGParseException;

    const-string v3, "Invalid <ellipse> element. rx cannot be negative"

    invoke-direct {v2, v3}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1573
    .end local v1    # "val":Ljava/lang/String;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1598
    .end local v0    # "i":I
    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseAttributesGradient(Lcom/caverock/androidsvg/SVG$GradientElement;Lorg/xml/sax/Attributes;)V
    .locals 6
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$GradientElement;
    .param p2, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    .line 2018
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 2020
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 2021
    .local v1, "val":Ljava/lang/String;
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v3

    aget v2, v2, v3

    sparse-switch v2, :sswitch_data_0

    goto :goto_1

    .line 2038
    :sswitch_0
    :try_start_0
    invoke-static {v1}, Lcom/caverock/androidsvg/SVG$GradientSpread;->valueOf(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$GradientSpread;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$GradientElement;->spreadMethod:Lcom/caverock/androidsvg/SVG$GradientSpread;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2043
    goto :goto_1

    .line 2040
    :catch_0
    move-exception v2

    .line 2042
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    new-instance v3, Lcom/caverock/androidsvg/SVGParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid spreadMethod attribute. \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" is not a valid value."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2033
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :sswitch_1
    invoke-direct {p0, v1}, Lcom/caverock/androidsvg/SVGParser;->parseTransformList(Ljava/lang/String;)Landroid/graphics/Matrix;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$GradientElement;->gradientTransform:Landroid/graphics/Matrix;

    .line 2034
    goto :goto_1

    .line 2024
    :sswitch_2
    const-string v2, "objectBoundingBox"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2025
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$GradientElement;->gradientUnitsAreUser:Ljava/lang/Boolean;

    goto :goto_1

    .line 2026
    :cond_0
    const-string v2, "userSpaceOnUse"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2027
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$GradientElement;->gradientUnitsAreUser:Ljava/lang/Boolean;

    goto :goto_1

    .line 2029
    :cond_1
    new-instance v2, Lcom/caverock/androidsvg/SVGParseException;

    const-string v3, "Invalid value for attribute gradientUnits"

    invoke-direct {v2, v3}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2046
    :sswitch_3
    const-string v2, ""

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "http://www.w3.org/1999/xlink"

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2047
    :cond_2
    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$GradientElement;->href:Ljava/lang/String;

    .line 2018
    .end local v1    # "val":Ljava/lang/String;
    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 2053
    .end local v0    # "i":I
    :cond_4
    return-void

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_3
        0x20 -> :sswitch_2
        0x21 -> :sswitch_1
        0x22 -> :sswitch_0
    .end sparse-switch
.end method

.method private parseAttributesImage(Lcom/caverock/androidsvg/SVG$Image;Lorg/xml/sax/Attributes;)V
    .locals 4
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$Image;
    .param p2, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    .line 1361
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 1363
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1364
    .local v1, "val":Ljava/lang/String;
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 1387
    :pswitch_1
    invoke-static {p1, v1}, Lcom/caverock/androidsvg/SVGParser;->parsePreserveAspectRatio(Lcom/caverock/androidsvg/SVG$SvgPreserveAspectRatioContainer;Ljava/lang/String;)V

    .line 1388
    goto :goto_1

    .line 1383
    :pswitch_2
    const-string v2, ""

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "http://www.w3.org/1999/xlink"

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1384
    :cond_0
    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$Image;->href:Ljava/lang/String;

    goto :goto_1

    .line 1378
    :pswitch_3
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Image;->height:Lcom/caverock/androidsvg/SVG$Length;

    .line 1379
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Image;->height:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 1380
    :cond_1
    new-instance v2, Lcom/caverock/androidsvg/SVGParseException;

    const-string v3, "Invalid <use> element. height cannot be negative"

    invoke-direct {v2, v3}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1373
    :pswitch_4
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Image;->width:Lcom/caverock/androidsvg/SVG$Length;

    .line 1374
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Image;->width:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    .line 1375
    :cond_2
    new-instance v2, Lcom/caverock/androidsvg/SVGParseException;

    const-string v3, "Invalid <use> element. width cannot be negative"

    invoke-direct {v2, v3}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1370
    :pswitch_5
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Image;->y:Lcom/caverock/androidsvg/SVG$Length;

    .line 1371
    goto :goto_1

    .line 1367
    :pswitch_6
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Image;->x:Lcom/caverock/androidsvg/SVG$Length;

    .line 1368
    nop

    .line 1361
    .end local v1    # "val":Ljava/lang/String;
    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1393
    .end local v0    # "i":I
    :cond_4
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private parseAttributesLine(Lcom/caverock/androidsvg/SVG$Line;Lorg/xml/sax/Attributes;)V
    .locals 4
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$Line;
    .param p2, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    .line 1625
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1627
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1628
    .local v1, "val":Ljava/lang/String;
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 1640
    :pswitch_0
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Line;->y2:Lcom/caverock/androidsvg/SVG$Length;

    .line 1641
    goto :goto_1

    .line 1637
    :pswitch_1
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Line;->x2:Lcom/caverock/androidsvg/SVG$Length;

    .line 1638
    goto :goto_1

    .line 1634
    :pswitch_2
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Line;->y1:Lcom/caverock/androidsvg/SVG$Length;

    .line 1635
    goto :goto_1

    .line 1631
    :pswitch_3
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Line;->x1:Lcom/caverock/androidsvg/SVG$Length;

    .line 1632
    nop

    .line 1625
    .end local v1    # "val":Ljava/lang/String;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1646
    .end local v0    # "i":I
    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseAttributesLinearGradient(Lcom/caverock/androidsvg/SVG$SvgLinearGradient;Lorg/xml/sax/Attributes;)V
    .locals 4
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$SvgLinearGradient;
    .param p2, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    .line 2058
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2060
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 2061
    .local v1, "val":Ljava/lang/String;
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 2073
    :pswitch_0
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y2:Lcom/caverock/androidsvg/SVG$Length;

    .line 2074
    goto :goto_1

    .line 2070
    :pswitch_1
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x2:Lcom/caverock/androidsvg/SVG$Length;

    .line 2071
    goto :goto_1

    .line 2067
    :pswitch_2
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y1:Lcom/caverock/androidsvg/SVG$Length;

    .line 2068
    goto :goto_1

    .line 2064
    :pswitch_3
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x1:Lcom/caverock/androidsvg/SVG$Length;

    .line 2065
    nop

    .line 2058
    .end local v1    # "val":Ljava/lang/String;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2079
    .end local v0    # "i":I
    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseAttributesMarker(Lcom/caverock/androidsvg/SVG$Marker;Lorg/xml/sax/Attributes;)V
    .locals 4
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$Marker;
    .param p2, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    .line 1950
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 1952
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1953
    .local v1, "val":Ljava/lang/String;
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_1

    .line 1981
    :pswitch_0
    const-string v2, "auto"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1982
    const/high16 v2, 0x7fc00000    # Float.NaN

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Marker;->orient:Ljava/lang/Float;

    goto :goto_1

    .line 1984
    :cond_0
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Marker;->orient:Ljava/lang/Float;

    .line 1986
    goto :goto_1

    .line 1972
    :pswitch_1
    const-string v2, "strokeWidth"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1973
    const/4 v2, 0x0

    iput-boolean v2, p1, Lcom/caverock/androidsvg/SVG$Marker;->markerUnitsAreUser:Z

    goto :goto_1

    .line 1974
    :cond_1
    const-string v2, "userSpaceOnUse"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1975
    const/4 v2, 0x1

    iput-boolean v2, p1, Lcom/caverock/androidsvg/SVG$Marker;->markerUnitsAreUser:Z

    goto :goto_1

    .line 1977
    :cond_2
    new-instance v2, Lcom/caverock/androidsvg/SVGParseException;

    const-string v3, "Invalid value for attribute markerUnits"

    invoke-direct {v2, v3}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1967
    :pswitch_2
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Marker;->markerHeight:Lcom/caverock/androidsvg/SVG$Length;

    .line 1968
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Marker;->markerHeight:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    .line 1969
    :cond_3
    new-instance v2, Lcom/caverock/androidsvg/SVGParseException;

    const-string v3, "Invalid <marker> element. markerHeight cannot be negative"

    invoke-direct {v2, v3}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1962
    :pswitch_3
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Marker;->markerWidth:Lcom/caverock/androidsvg/SVG$Length;

    .line 1963
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Marker;->markerWidth:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_1

    .line 1964
    :cond_4
    new-instance v2, Lcom/caverock/androidsvg/SVGParseException;

    const-string v3, "Invalid <marker> element. markerWidth cannot be negative"

    invoke-direct {v2, v3}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1959
    :pswitch_4
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Marker;->refY:Lcom/caverock/androidsvg/SVG$Length;

    .line 1960
    goto :goto_1

    .line 1956
    :pswitch_5
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Marker;->refX:Lcom/caverock/androidsvg/SVG$Length;

    .line 1957
    nop

    .line 1950
    .end local v1    # "val":Ljava/lang/String;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 1991
    .end local v0    # "i":I
    :cond_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1a
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseAttributesMask(Lcom/caverock/androidsvg/SVG$Mask;Lorg/xml/sax/Attributes;)V
    .locals 7
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$Mask;
    .param p2, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    .line 2436
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 2438
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 2439
    .local v1, "val":Ljava/lang/String;
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x0

    const-string v4, "userSpaceOnUse"

    const-string v5, "objectBoundingBox"

    const/4 v6, 0x1

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_1

    .line 2451
    :sswitch_0
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2452
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Mask;->maskContentUnitsAreUser:Ljava/lang/Boolean;

    goto/16 :goto_1

    .line 2453
    :cond_0
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2454
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Mask;->maskContentUnitsAreUser:Ljava/lang/Boolean;

    goto :goto_1

    .line 2456
    :cond_1
    new-instance v2, Lcom/caverock/androidsvg/SVGParseException;

    const-string v3, "Invalid value for attribute maskContentUnits"

    invoke-direct {v2, v3}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2442
    :sswitch_1
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2443
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Mask;->maskUnitsAreUser:Ljava/lang/Boolean;

    goto :goto_1

    .line 2444
    :cond_2
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2445
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Mask;->maskUnitsAreUser:Ljava/lang/Boolean;

    goto :goto_1

    .line 2447
    :cond_3
    new-instance v2, Lcom/caverock/androidsvg/SVGParseException;

    const-string v3, "Invalid value for attribute maskUnits"

    invoke-direct {v2, v3}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2471
    :sswitch_2
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Mask;->height:Lcom/caverock/androidsvg/SVG$Length;

    .line 2472
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Mask;->height:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_1

    .line 2473
    :cond_4
    new-instance v2, Lcom/caverock/androidsvg/SVGParseException;

    const-string v3, "Invalid <mask> element. height cannot be negative"

    invoke-direct {v2, v3}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2466
    :sswitch_3
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Mask;->width:Lcom/caverock/androidsvg/SVG$Length;

    .line 2467
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Mask;->width:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    .line 2468
    :cond_5
    new-instance v2, Lcom/caverock/androidsvg/SVGParseException;

    const-string v3, "Invalid <mask> element. width cannot be negative"

    invoke-direct {v2, v3}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2463
    :sswitch_4
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Mask;->y:Lcom/caverock/androidsvg/SVG$Length;

    .line 2464
    goto :goto_1

    .line 2460
    :sswitch_5
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Mask;->x:Lcom/caverock/androidsvg/SVG$Length;

    .line 2461
    nop

    .line 2436
    .end local v1    # "val":Ljava/lang/String;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 2479
    .end local v0    # "i":I
    :cond_6
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_4
        0x3 -> :sswitch_3
        0x4 -> :sswitch_2
        0x2b -> :sswitch_1
        0x2c -> :sswitch_0
    .end sparse-switch
.end method

.method private parseAttributesPath(Lcom/caverock/androidsvg/SVG$Path;Lorg/xml/sax/Attributes;)V
    .locals 4
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$Path;
    .param p2, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    .line 1420
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1422
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1423
    .local v1, "val":Ljava/lang/String;
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 1429
    :pswitch_0
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Path;->pathLength:Ljava/lang/Float;

    .line 1430
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Path;->pathLength:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_0

    goto :goto_1

    .line 1431
    :cond_0
    new-instance v2, Lcom/caverock/androidsvg/SVGParseException;

    const-string v3, "Invalid <path> element. pathLength cannot be negative"

    invoke-direct {v2, v3}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1426
    :pswitch_1
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parsePath(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$PathDefinition;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Path;->d:Lcom/caverock/androidsvg/SVG$PathDefinition;

    .line 1427
    nop

    .line 1420
    .end local v1    # "val":Ljava/lang/String;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1437
    .end local v0    # "i":I
    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseAttributesPattern(Lcom/caverock/androidsvg/SVG$Pattern;Lorg/xml/sax/Attributes;)V
    .locals 7
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$Pattern;
    .param p2, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    .line 2338
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_8

    .line 2340
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 2341
    .local v1, "val":Ljava/lang/String;
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x0

    const-string v4, "userSpaceOnUse"

    const-string v5, "objectBoundingBox"

    const/4 v6, 0x1

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_1

    .line 2362
    :sswitch_0
    invoke-direct {p0, v1}, Lcom/caverock/androidsvg/SVGParser;->parseTransformList(Ljava/lang/String;)Landroid/graphics/Matrix;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->patternTransform:Landroid/graphics/Matrix;

    .line 2363
    goto/16 :goto_1

    .line 2353
    :sswitch_1
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2354
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->patternContentUnitsAreUser:Ljava/lang/Boolean;

    goto/16 :goto_1

    .line 2355
    :cond_0
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2356
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->patternContentUnitsAreUser:Ljava/lang/Boolean;

    goto/16 :goto_1

    .line 2358
    :cond_1
    new-instance v2, Lcom/caverock/androidsvg/SVGParseException;

    const-string v3, "Invalid value for attribute patternContentUnits"

    invoke-direct {v2, v3}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2344
    :sswitch_2
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2345
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->patternUnitsAreUser:Ljava/lang/Boolean;

    goto :goto_1

    .line 2346
    :cond_2
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2347
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->patternUnitsAreUser:Ljava/lang/Boolean;

    goto :goto_1

    .line 2349
    :cond_3
    new-instance v2, Lcom/caverock/androidsvg/SVGParseException;

    const-string v3, "Invalid value for attribute patternUnits"

    invoke-direct {v2, v3}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2381
    :sswitch_3
    const-string v2, ""

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "http://www.w3.org/1999/xlink"

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2382
    :cond_4
    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$Pattern;->href:Ljava/lang/String;

    goto :goto_1

    .line 2376
    :sswitch_4
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->height:Lcom/caverock/androidsvg/SVG$Length;

    .line 2377
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->height:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    .line 2378
    :cond_5
    new-instance v2, Lcom/caverock/androidsvg/SVGParseException;

    const-string v3, "Invalid <pattern> element. height cannot be negative"

    invoke-direct {v2, v3}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2371
    :sswitch_5
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->width:Lcom/caverock/androidsvg/SVG$Length;

    .line 2372
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->width:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_1

    .line 2373
    :cond_6
    new-instance v2, Lcom/caverock/androidsvg/SVGParseException;

    const-string v3, "Invalid <pattern> element. width cannot be negative"

    invoke-direct {v2, v3}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2368
    :sswitch_6
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->y:Lcom/caverock/androidsvg/SVG$Length;

    .line 2369
    goto :goto_1

    .line 2365
    :sswitch_7
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->x:Lcom/caverock/androidsvg/SVG$Length;

    .line 2366
    nop

    .line 2338
    .end local v1    # "val":Ljava/lang/String;
    :cond_7
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 2388
    .end local v0    # "i":I
    :cond_8
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_7
        0x2 -> :sswitch_6
        0x3 -> :sswitch_5
        0x4 -> :sswitch_4
        0x6 -> :sswitch_3
        0x28 -> :sswitch_2
        0x29 -> :sswitch_1
        0x2a -> :sswitch_0
    .end sparse-switch
.end method

.method private parseAttributesPolyLine(Lcom/caverock/androidsvg/SVG$PolyLine;Lorg/xml/sax/Attributes;Ljava/lang/String;)V
    .locals 8
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$PolyLine;
    .param p2, "attributes"    # Lorg/xml/sax/Attributes;
    .param p3, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    .line 1676
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 1678
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v1

    sget-object v2, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->points:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v1, v2, :cond_3

    .line 1680
    new-instance v1, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    .line 1681
    .local v1, "scan":Lcom/caverock/androidsvg/SVGParser$TextScanner;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1682
    .local v2, "points":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 1684
    :goto_1
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1685
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v3

    .line 1686
    .local v3, "x":F
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    const-string v5, "Invalid <"

    if-nez v4, :cond_1

    .line 1688
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 1689
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v4

    .line 1690
    .local v4, "y":F
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1692
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 1693
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1694
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1695
    .end local v3    # "x":F
    .end local v4    # "y":F
    goto :goto_1

    .line 1691
    .restart local v3    # "x":F
    .restart local v4    # "y":F
    :cond_0
    new-instance v6, Lcom/caverock/androidsvg/SVGParseException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "> points attribute. There should be an even number of coordinates."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1687
    .end local v4    # "y":F
    :cond_1
    new-instance v4, Lcom/caverock/androidsvg/SVGParseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "> points attribute. Non-coordinate content found in list."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1696
    .end local v3    # "x":F
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [F

    iput-object v3, p1, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    .line 1697
    const/4 v3, 0x0

    .line 1698
    .local v3, "j":I
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 1699
    .local v5, "f":F
    iget-object v6, p1, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    add-int/lit8 v7, v3, 0x1

    .end local v3    # "j":I
    .local v7, "j":I
    aput v5, v6, v3

    .line 1700
    .end local v5    # "f":F
    move v3, v7

    goto :goto_2

    .line 1676
    .end local v1    # "scan":Lcom/caverock/androidsvg/SVGParser$TextScanner;
    .end local v2    # "points":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v7    # "j":I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 1703
    .end local v0    # "i":I
    :cond_4
    return-void
.end method

.method private parseAttributesRadialGradient(Lcom/caverock/androidsvg/SVG$SvgRadialGradient;Lorg/xml/sax/Attributes;)V
    .locals 4
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$SvgRadialGradient;
    .param p2, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    .line 2106
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2108
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 2109
    .local v1, "val":Ljava/lang/String;
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v3

    aget v2, v2, v3

    sparse-switch v2, :sswitch_data_0

    goto :goto_1

    .line 2126
    :sswitch_0
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->fy:Lcom/caverock/androidsvg/SVG$Length;

    .line 2127
    goto :goto_1

    .line 2123
    :sswitch_1
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->fx:Lcom/caverock/androidsvg/SVG$Length;

    .line 2124
    goto :goto_1

    .line 2118
    :sswitch_2
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->r:Lcom/caverock/androidsvg/SVG$Length;

    .line 2119
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->r:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 2120
    :cond_0
    new-instance v2, Lcom/caverock/androidsvg/SVGParseException;

    const-string v3, "Invalid <radialGradient> element. r cannot be negative"

    invoke-direct {v2, v3}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2115
    :sswitch_3
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cy:Lcom/caverock/androidsvg/SVG$Length;

    .line 2116
    goto :goto_1

    .line 2112
    :sswitch_4
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cx:Lcom/caverock/androidsvg/SVG$Length;

    .line 2113
    nop

    .line 2106
    .end local v1    # "val":Ljava/lang/String;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2132
    .end local v0    # "i":I
    :cond_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0xc -> :sswitch_4
        0xd -> :sswitch_3
        0xe -> :sswitch_2
        0x23 -> :sswitch_1
        0x24 -> :sswitch_0
    .end sparse-switch
.end method

.method private parseAttributesRect(Lcom/caverock/androidsvg/SVG$Rect;Lorg/xml/sax/Attributes;)V
    .locals 4
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$Rect;
    .param p2, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    .line 1464
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 1466
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1467
    .local v1, "val":Ljava/lang/String;
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 1491
    :pswitch_1
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Rect;->ry:Lcom/caverock/androidsvg/SVG$Length;

    .line 1492
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Rect;->ry:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 1493
    :cond_0
    new-instance v2, Lcom/caverock/androidsvg/SVGParseException;

    const-string v3, "Invalid <rect> element. ry cannot be negative"

    invoke-direct {v2, v3}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1486
    :pswitch_2
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Rect;->rx:Lcom/caverock/androidsvg/SVG$Length;

    .line 1487
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Rect;->rx:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 1488
    :cond_1
    new-instance v2, Lcom/caverock/androidsvg/SVGParseException;

    const-string v3, "Invalid <rect> element. rx cannot be negative"

    invoke-direct {v2, v3}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1481
    :pswitch_3
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Rect;->height:Lcom/caverock/androidsvg/SVG$Length;

    .line 1482
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Rect;->height:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    .line 1483
    :cond_2
    new-instance v2, Lcom/caverock/androidsvg/SVGParseException;

    const-string v3, "Invalid <rect> element. height cannot be negative"

    invoke-direct {v2, v3}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1476
    :pswitch_4
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Rect;->width:Lcom/caverock/androidsvg/SVG$Length;

    .line 1477
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Rect;->width:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    .line 1478
    :cond_3
    new-instance v2, Lcom/caverock/androidsvg/SVGParseException;

    const-string v3, "Invalid <rect> element. width cannot be negative"

    invoke-direct {v2, v3}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1473
    :pswitch_5
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Rect;->y:Lcom/caverock/androidsvg/SVG$Length;

    .line 1474
    goto :goto_1

    .line 1470
    :pswitch_6
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Rect;->x:Lcom/caverock/androidsvg/SVG$Length;

    .line 1471
    nop

    .line 1464
    .end local v1    # "val":Ljava/lang/String;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 1499
    .end local v0    # "i":I
    :cond_4
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private parseAttributesSVG(Lcom/caverock/androidsvg/SVG$Svg;Lorg/xml/sax/Attributes;)V
    .locals 4
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$Svg;
    .param p2, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    .line 1205
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1207
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1208
    .local v1, "val":Ljava/lang/String;
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 1227
    :pswitch_0
    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$Svg;->version:Ljava/lang/String;

    .line 1228
    goto :goto_1

    .line 1222
    :pswitch_1
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Svg;->height:Lcom/caverock/androidsvg/SVG$Length;

    .line 1223
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Svg;->height:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 1224
    :cond_0
    new-instance v2, Lcom/caverock/androidsvg/SVGParseException;

    const-string v3, "Invalid <svg> element. height cannot be negative"

    invoke-direct {v2, v3}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1217
    :pswitch_2
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Svg;->width:Lcom/caverock/androidsvg/SVG$Length;

    .line 1218
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Svg;->width:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 1219
    :cond_1
    new-instance v2, Lcom/caverock/androidsvg/SVGParseException;

    const-string v3, "Invalid <svg> element. width cannot be negative"

    invoke-direct {v2, v3}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1214
    :pswitch_3
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Svg;->y:Lcom/caverock/androidsvg/SVG$Length;

    .line 1215
    goto :goto_1

    .line 1211
    :pswitch_4
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Svg;->x:Lcom/caverock/androidsvg/SVG$Length;

    .line 1212
    nop

    .line 1205
    .end local v1    # "val":Ljava/lang/String;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1233
    .end local v0    # "i":I
    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseAttributesStop(Lcom/caverock/androidsvg/SVG$Stop;Lorg/xml/sax/Attributes;)V
    .locals 4
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$Stop;
    .param p2, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    .line 2160
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2162
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 2163
    .local v1, "val":Ljava/lang/String;
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 2166
    :pswitch_0
    invoke-direct {p0, v1}, Lcom/caverock/androidsvg/SVGParser;->parseGradientOffset(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Stop;->offset:Ljava/lang/Float;

    .line 2167
    nop

    .line 2160
    .end local v1    # "val":Ljava/lang/String;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2172
    .end local v0    # "i":I
    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x25
        :pswitch_0
    .end packed-switch
.end method

.method private parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V
    .locals 5
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$SvgElementBase;
    .param p2, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    .line 2907
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 2909
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 2910
    .local v1, "val":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 2911
    goto :goto_2

    .line 2915
    :cond_0
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 2926
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$SvgElementBase;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    if-nez v2, :cond_1

    .line 2927
    new-instance v2, Lcom/caverock/androidsvg/SVG$Style;

    invoke-direct {v2}, Lcom/caverock/androidsvg/SVG$Style;-><init>()V

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$SvgElementBase;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    goto :goto_1

    .line 2922
    :pswitch_0
    invoke-static {v1}, Lcom/caverock/androidsvg/CSSParser;->parseClassAttribute(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$SvgElementBase;->classNames:Ljava/util/List;

    .line 2923
    goto :goto_2

    .line 2918
    :pswitch_1
    invoke-static {p1, v1}, Lcom/caverock/androidsvg/SVGParser;->parseStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Ljava/lang/String;)V

    .line 2919
    goto :goto_2

    .line 2928
    :cond_1
    :goto_1
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$SvgElementBase;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/caverock/androidsvg/SVGParser;->processStyleProperty(Lcom/caverock/androidsvg/SVG$Style;Ljava/lang/String;Ljava/lang/String;)V

    .line 2907
    .end local v1    # "val":Ljava/lang/String;
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2932
    .end local v0    # "i":I
    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2d
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseAttributesTRef(Lcom/caverock/androidsvg/SVG$TRef;Lorg/xml/sax/Attributes;)V
    .locals 4
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$TRef;
    .param p2, "attributes"    # Lorg/xml/sax/Attributes;

    .line 1834
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1836
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1837
    .local v1, "val":Ljava/lang/String;
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 1840
    :pswitch_0
    const-string v2, ""

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "http://www.w3.org/1999/xlink"

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1841
    :cond_0
    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$TRef;->href:Ljava/lang/String;

    .line 1834
    .end local v1    # "val":Ljava/lang/String;
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1847
    .end local v0    # "i":I
    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method private parseAttributesTextPath(Lcom/caverock/androidsvg/SVG$TextPath;Lorg/xml/sax/Attributes;)V
    .locals 4
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$TextPath;
    .param p2, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    .line 2294
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 2296
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 2297
    .local v1, "val":Ljava/lang/String;
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v3

    aget v2, v2, v3

    sparse-switch v2, :sswitch_data_0

    goto :goto_1

    .line 2304
    :sswitch_0
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$TextPath;->startOffset:Lcom/caverock/androidsvg/SVG$Length;

    .line 2305
    goto :goto_1

    .line 2300
    :sswitch_1
    const-string v2, ""

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "http://www.w3.org/1999/xlink"

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2301
    :cond_0
    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$TextPath;->href:Ljava/lang/String;

    .line 2294
    .end local v1    # "val":Ljava/lang/String;
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2310
    .end local v0    # "i":I
    :cond_2
    return-void

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_1
        0x27 -> :sswitch_0
    .end sparse-switch
.end method

.method private parseAttributesTextPosition(Lcom/caverock/androidsvg/SVG$TextPositionedContainer;Lorg/xml/sax/Attributes;)V
    .locals 4
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$TextPositionedContainer;
    .param p2, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    .line 1753
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1755
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1756
    .local v1, "val":Ljava/lang/String;
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v3

    aget v2, v2, v3

    sparse-switch v2, :sswitch_data_0

    goto :goto_1

    .line 1768
    :sswitch_0
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLengthList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$TextPositionedContainer;->dy:Ljava/util/List;

    .line 1769
    goto :goto_1

    .line 1765
    :sswitch_1
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLengthList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$TextPositionedContainer;->dx:Ljava/util/List;

    .line 1766
    goto :goto_1

    .line 1762
    :sswitch_2
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLengthList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$TextPositionedContainer;->y:Ljava/util/List;

    .line 1763
    goto :goto_1

    .line 1759
    :sswitch_3
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLengthList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$TextPositionedContainer;->x:Ljava/util/List;

    .line 1760
    nop

    .line 1753
    .end local v1    # "val":Ljava/lang/String;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1774
    .end local v0    # "i":I
    :cond_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_2
        0x13 -> :sswitch_1
        0x14 -> :sswitch_0
    .end sparse-switch
.end method

.method private parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V
    .locals 3
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$HasTransform;
    .param p2, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    .line 3277
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3279
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v1

    sget-object v2, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->transform:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v1, v2, :cond_0

    .line 3281
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/caverock/androidsvg/SVGParser;->parseTransformList(Ljava/lang/String;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/caverock/androidsvg/SVG$HasTransform;->setTransform(Landroid/graphics/Matrix;)V

    .line 3277
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3284
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private parseAttributesUse(Lcom/caverock/androidsvg/SVG$Use;Lorg/xml/sax/Attributes;)V
    .locals 4
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$Use;
    .param p2, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    .line 1304
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 1306
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1307
    .local v1, "val":Ljava/lang/String;
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 1326
    :pswitch_1
    const-string v2, ""

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "http://www.w3.org/1999/xlink"

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1327
    :cond_0
    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$Use;->href:Ljava/lang/String;

    goto :goto_1

    .line 1321
    :pswitch_2
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Use;->height:Lcom/caverock/androidsvg/SVG$Length;

    .line 1322
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Use;->height:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 1323
    :cond_1
    new-instance v2, Lcom/caverock/androidsvg/SVGParseException;

    const-string v3, "Invalid <use> element. height cannot be negative"

    invoke-direct {v2, v3}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1316
    :pswitch_3
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Use;->width:Lcom/caverock/androidsvg/SVG$Length;

    .line 1317
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Use;->width:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    .line 1318
    :cond_2
    new-instance v2, Lcom/caverock/androidsvg/SVGParseException;

    const-string v3, "Invalid <use> element. width cannot be negative"

    invoke-direct {v2, v3}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1313
    :pswitch_4
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Use;->y:Lcom/caverock/androidsvg/SVG$Length;

    .line 1314
    goto :goto_1

    .line 1310
    :pswitch_5
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Use;->x:Lcom/caverock/androidsvg/SVG$Length;

    .line 1311
    nop

    .line 1304
    .end local v1    # "val":Ljava/lang/String;
    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1333
    .end local v0    # "i":I
    :cond_4
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private parseAttributesViewBox(Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;Lorg/xml/sax/Attributes;)V
    .locals 4
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;
    .param p2, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    .line 3257
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3259
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 3260
    .local v1, "val":Ljava/lang/String;
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v3

    aget v2, v2, v3

    sparse-switch v2, :sswitch_data_0

    goto :goto_1

    .line 3263
    :sswitch_0
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseViewBox(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Box;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 3264
    goto :goto_1

    .line 3266
    :sswitch_1
    invoke-static {p1, v1}, Lcom/caverock/androidsvg/SVGParser;->parsePreserveAspectRatio(Lcom/caverock/androidsvg/SVG$SvgPreserveAspectRatioContainer;Ljava/lang/String;)V

    .line 3267
    nop

    .line 3257
    .end local v1    # "val":Ljava/lang/String;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3272
    .end local v0    # "i":I
    :cond_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_1
        0x57 -> :sswitch_0
    .end sparse-switch
.end method

.method private parseCSSStyleSheet(Ljava/lang/String;)V
    .locals 3
    .param p1, "sheet"    # Ljava/lang/String;

    .line 4486
    new-instance v0, Lcom/caverock/androidsvg/CSSParser;

    sget-object v1, Lcom/caverock/androidsvg/CSSParser$MediaType;->screen:Lcom/caverock/androidsvg/CSSParser$MediaType;

    sget-object v2, Lcom/caverock/androidsvg/CSSParser$Source;->Document:Lcom/caverock/androidsvg/CSSParser$Source;

    invoke-direct {v0, v1, v2}, Lcom/caverock/androidsvg/CSSParser;-><init>(Lcom/caverock/androidsvg/CSSParser$MediaType;Lcom/caverock/androidsvg/CSSParser$Source;)V

    .line 4487
    .local v0, "cssp":Lcom/caverock/androidsvg/CSSParser;
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    invoke-virtual {v0, p1}, Lcom/caverock/androidsvg/CSSParser;->parse(Ljava/lang/String;)Lcom/caverock/androidsvg/CSSParser$Ruleset;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/caverock/androidsvg/SVG;->addCSSRules(Lcom/caverock/androidsvg/CSSParser$Ruleset;)V

    .line 4488
    return-void
.end method

.method private static parseClip(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$CSSClipRect;
    .locals 7
    .param p0, "val"    # Ljava/lang/String;

    .line 4054
    const-string v0, "auto"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4055
    return-object v1

    .line 4056
    :cond_0
    const-string v0, "rect("

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4057
    return-object v1

    .line 4059
    :cond_1
    new-instance v0, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    .line 4060
    .local v0, "scan":Lcom/caverock/androidsvg/SVGParser$TextScanner;
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 4062
    invoke-static {v0}, Lcom/caverock/androidsvg/SVGParser;->parseLengthOrAuto(Lcom/caverock/androidsvg/SVGParser$TextScanner;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    .line 4063
    .local v2, "top":Lcom/caverock/androidsvg/SVG$Length;
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 4064
    invoke-static {v0}, Lcom/caverock/androidsvg/SVGParser;->parseLengthOrAuto(Lcom/caverock/androidsvg/SVGParser$TextScanner;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v3

    .line 4065
    .local v3, "right":Lcom/caverock/androidsvg/SVG$Length;
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 4066
    invoke-static {v0}, Lcom/caverock/androidsvg/SVGParser;->parseLengthOrAuto(Lcom/caverock/androidsvg/SVGParser$TextScanner;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v4

    .line 4067
    .local v4, "bottom":Lcom/caverock/androidsvg/SVG$Length;
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 4068
    invoke-static {v0}, Lcom/caverock/androidsvg/SVGParser;->parseLengthOrAuto(Lcom/caverock/androidsvg/SVGParser$TextScanner;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v5

    .line 4070
    .local v5, "left":Lcom/caverock/androidsvg/SVG$Length;
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 4071
    const/16 v6, 0x29

    invoke-virtual {v0, v6}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 4072
    return-object v1

    .line 4074
    :cond_2
    new-instance v1, Lcom/caverock/androidsvg/SVG$CSSClipRect;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/caverock/androidsvg/SVG$CSSClipRect;-><init>(Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Length;)V

    return-object v1
.end method

.method private static parseColour(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Colour;
    .locals 12
    .param p0, "val"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    .line 3635
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x23

    const/high16 v2, -0x1000000

    if-ne v0, v1, :cond_1

    .line 3637
    const/4 v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/caverock/androidsvg/IntegerParser;->parseHex(Ljava/lang/String;II)Lcom/caverock/androidsvg/IntegerParser;

    move-result-object v0

    .line 3638
    .local v0, "ip":Lcom/caverock/androidsvg/IntegerParser;
    const-string v1, "Bad hex colour value: "

    if-eqz v0, :cond_0

    .line 3641
    invoke-virtual {v0}, Lcom/caverock/androidsvg/IntegerParser;->getEndPos()I

    move-result v3

    .line 3643
    .local v3, "pos":I
    packed-switch v3, :pswitch_data_0

    .line 3663
    :pswitch_0
    new-instance v2, Lcom/caverock/androidsvg/SVGParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3660
    :pswitch_1
    new-instance v1, Lcom/caverock/androidsvg/SVG$Colour;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/IntegerParser;->value()I

    move-result v2

    shl-int/lit8 v2, v2, 0x18

    invoke-virtual {v0}, Lcom/caverock/androidsvg/IntegerParser;->value()I

    move-result v4

    ushr-int/lit8 v4, v4, 0x8

    or-int/2addr v2, v4

    invoke-direct {v1, v2}, Lcom/caverock/androidsvg/SVG$Colour;-><init>(I)V

    return-object v1

    .line 3658
    :pswitch_2
    new-instance v1, Lcom/caverock/androidsvg/SVG$Colour;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/IntegerParser;->value()I

    move-result v4

    or-int/2addr v2, v4

    invoke-direct {v1, v2}, Lcom/caverock/androidsvg/SVG$Colour;-><init>(I)V

    return-object v1

    .line 3651
    :pswitch_3
    invoke-virtual {v0}, Lcom/caverock/androidsvg/IntegerParser;->value()I

    move-result v1

    .line 3652
    .local v1, "fourhex":I
    const v2, 0xf000

    and-int/2addr v2, v1

    .line 3653
    .local v2, "h1":I
    and-int/lit16 v4, v1, 0xf00

    .line 3654
    .local v4, "h2":I
    and-int/lit16 v5, v1, 0xf0

    .line 3655
    .local v5, "h3":I
    and-int/lit8 v6, v1, 0xf

    .line 3656
    .local v6, "h4":I
    new-instance v7, Lcom/caverock/androidsvg/SVG$Colour;

    shl-int/lit8 v8, v6, 0x1c

    shl-int/lit8 v9, v6, 0x18

    or-int/2addr v8, v9

    shl-int/lit8 v9, v2, 0x8

    or-int/2addr v8, v9

    shl-int/lit8 v9, v2, 0x4

    or-int/2addr v8, v9

    shl-int/lit8 v9, v4, 0x4

    or-int/2addr v8, v9

    or-int/2addr v8, v4

    or-int/2addr v8, v5

    shr-int/lit8 v9, v5, 0x4

    or-int/2addr v8, v9

    invoke-direct {v7, v8}, Lcom/caverock/androidsvg/SVG$Colour;-><init>(I)V

    return-object v7

    .line 3645
    .end local v1    # "fourhex":I
    .end local v2    # "h1":I
    .end local v4    # "h2":I
    .end local v5    # "h3":I
    .end local v6    # "h4":I
    :pswitch_4
    invoke-virtual {v0}, Lcom/caverock/androidsvg/IntegerParser;->value()I

    move-result v1

    .line 3646
    .local v1, "threehex":I
    and-int/lit16 v4, v1, 0xf00

    .line 3647
    .local v4, "h1":I
    and-int/lit16 v5, v1, 0xf0

    .line 3648
    .local v5, "h2":I
    and-int/lit8 v6, v1, 0xf

    .line 3649
    .local v6, "h3":I
    new-instance v7, Lcom/caverock/androidsvg/SVG$Colour;

    shl-int/lit8 v8, v4, 0xc

    or-int/2addr v2, v8

    shl-int/lit8 v8, v4, 0x8

    or-int/2addr v2, v8

    shl-int/lit8 v8, v5, 0x8

    or-int/2addr v2, v8

    shl-int/lit8 v8, v5, 0x4

    or-int/2addr v2, v8

    shl-int/lit8 v8, v6, 0x4

    or-int/2addr v2, v8

    or-int/2addr v2, v6

    invoke-direct {v7, v2}, Lcom/caverock/androidsvg/SVG$Colour;-><init>(I)V

    return-object v7

    .line 3639
    .end local v1    # "threehex":I
    .end local v3    # "pos":I
    .end local v4    # "h1":I
    .end local v5    # "h2":I
    .end local v6    # "h3":I
    :cond_0
    new-instance v2, Lcom/caverock/androidsvg/SVGParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3667
    .end local v0    # "ip":Lcom/caverock/androidsvg/IntegerParser;
    :cond_1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 3668
    .local v0, "valLowerCase":Ljava/lang/String;
    const-string v1, "rgba("

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    .line 3669
    .local v1, "isRGBA":Z
    const/4 v3, 0x5

    const/16 v4, 0x29

    const/high16 v5, 0x43800000    # 256.0f

    const/16 v6, 0x25

    const/4 v7, 0x4

    if-nez v1, :cond_b

    const-string v8, "rgb("

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    goto/16 :goto_2

    .line 3701
    :cond_2
    const-string v8, "hsla("

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    .line 3702
    .local v8, "isHSLA":Z
    if-nez v8, :cond_4

    const-string v9, "hsl("

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_0

    .line 3733
    .end local v8    # "isHSLA":Z
    :cond_3
    invoke-static {v0}, Lcom/caverock/androidsvg/SVGParser;->parseColourKeyword(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Colour;

    move-result-object v2

    return-object v2

    .line 3704
    .restart local v8    # "isHSLA":Z
    :cond_4
    :goto_0
    new-instance v9, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    if-eqz v8, :cond_5

    goto :goto_1

    :cond_5
    move v3, v7

    :goto_1
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v9, v3}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    move-object v3, v9

    .line 3705
    .local v3, "scan":Lcom/caverock/androidsvg/SVGParser$TextScanner;
    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 3707
    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v7

    .line 3709
    .local v7, "hue":F
    invoke-virtual {v3, v7}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->checkedNextFloat(F)F

    move-result v9

    .line 3710
    .local v9, "saturation":F
    invoke-static {v9}, Ljava/lang/Float;->isNaN(F)Z

    move-result v10

    if-nez v10, :cond_6

    .line 3711
    invoke-virtual {v3, v6}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    .line 3713
    :cond_6
    invoke-virtual {v3, v9}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->checkedNextFloat(F)F

    move-result v10

    .line 3714
    .local v10, "lightness":F
    invoke-static {v10}, Ljava/lang/Float;->isNaN(F)Z

    move-result v11

    if-nez v11, :cond_7

    .line 3715
    invoke-virtual {v3, v6}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    .line 3717
    :cond_7
    if-eqz v8, :cond_9

    .line 3718
    invoke-virtual {v3, v10}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->checkedNextFloat(F)F

    move-result v2

    .line 3719
    .local v2, "alpha":F
    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 3720
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-nez v6, :cond_8

    invoke-virtual {v3, v4}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 3722
    new-instance v4, Lcom/caverock/androidsvg/SVG$Colour;

    mul-float/2addr v5, v2

    invoke-static {v5}, Lcom/caverock/androidsvg/SVGParser;->clamp255(F)I

    move-result v5

    shl-int/lit8 v5, v5, 0x18

    invoke-static {v7, v9, v10}, Lcom/caverock/androidsvg/SVGParser;->hslToRgb(FFF)I

    move-result v6

    or-int/2addr v5, v6

    invoke-direct {v4, v5}, Lcom/caverock/androidsvg/SVG$Colour;-><init>(I)V

    return-object v4

    .line 3721
    :cond_8
    new-instance v4, Lcom/caverock/androidsvg/SVGParseException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad hsla() colour value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3724
    .end local v2    # "alpha":F
    :cond_9
    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 3725
    invoke-static {v10}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-nez v5, :cond_a

    invoke-virtual {v3, v4}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 3727
    new-instance v4, Lcom/caverock/androidsvg/SVG$Colour;

    invoke-static {v7, v9, v10}, Lcom/caverock/androidsvg/SVGParser;->hslToRgb(FFF)I

    move-result v5

    or-int/2addr v2, v5

    invoke-direct {v4, v2}, Lcom/caverock/androidsvg/SVG$Colour;-><init>(I)V

    return-object v4

    .line 3726
    :cond_a
    new-instance v2, Lcom/caverock/androidsvg/SVGParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad hsl() colour value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3671
    .end local v3    # "scan":Lcom/caverock/androidsvg/SVGParser$TextScanner;
    .end local v7    # "hue":F
    .end local v8    # "isHSLA":Z
    .end local v9    # "saturation":F
    .end local v10    # "lightness":F
    :cond_b
    :goto_2
    new-instance v8, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    if-eqz v1, :cond_c

    goto :goto_3

    :cond_c
    move v3, v7

    :goto_3
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v8, v3}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    move-object v3, v8

    .line 3672
    .restart local v3    # "scan":Lcom/caverock/androidsvg/SVGParser$TextScanner;
    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 3674
    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v7

    .line 3675
    .local v7, "red":F
    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    const/high16 v9, 0x42c80000    # 100.0f

    if-nez v8, :cond_d

    invoke-virtual {v3, v6}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 3676
    mul-float v8, v7, v5

    div-float v7, v8, v9

    .line 3678
    :cond_d
    invoke-virtual {v3, v7}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->checkedNextFloat(F)F

    move-result v8

    .line 3679
    .local v8, "green":F
    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    move-result v10

    if-nez v10, :cond_e

    invoke-virtual {v3, v6}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 3680
    mul-float v10, v8, v5

    div-float v8, v10, v9

    .line 3682
    :cond_e
    invoke-virtual {v3, v8}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->checkedNextFloat(F)F

    move-result v10

    .line 3683
    .local v10, "blue":F
    invoke-static {v10}, Ljava/lang/Float;->isNaN(F)Z

    move-result v11

    if-nez v11, :cond_f

    invoke-virtual {v3, v6}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 3684
    mul-float v6, v10, v5

    div-float v10, v6, v9

    .line 3686
    :cond_f
    if-eqz v1, :cond_11

    .line 3687
    invoke-virtual {v3, v10}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->checkedNextFloat(F)F

    move-result v2

    .line 3688
    .restart local v2    # "alpha":F
    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 3689
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-nez v6, :cond_10

    invoke-virtual {v3, v4}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 3691
    new-instance v4, Lcom/caverock/androidsvg/SVG$Colour;

    mul-float/2addr v5, v2

    invoke-static {v5}, Lcom/caverock/androidsvg/SVGParser;->clamp255(F)I

    move-result v5

    shl-int/lit8 v5, v5, 0x18

    invoke-static {v7}, Lcom/caverock/androidsvg/SVGParser;->clamp255(F)I

    move-result v6

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    invoke-static {v8}, Lcom/caverock/androidsvg/SVGParser;->clamp255(F)I

    move-result v6

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    invoke-static {v10}, Lcom/caverock/androidsvg/SVGParser;->clamp255(F)I

    move-result v6

    or-int/2addr v5, v6

    invoke-direct {v4, v5}, Lcom/caverock/androidsvg/SVG$Colour;-><init>(I)V

    return-object v4

    .line 3690
    :cond_10
    new-instance v4, Lcom/caverock/androidsvg/SVGParseException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad rgba() colour value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3693
    .end local v2    # "alpha":F
    :cond_11
    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 3694
    invoke-static {v10}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-nez v5, :cond_12

    invoke-virtual {v3, v4}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 3696
    new-instance v4, Lcom/caverock/androidsvg/SVG$Colour;

    invoke-static {v7}, Lcom/caverock/androidsvg/SVGParser;->clamp255(F)I

    move-result v5

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v2, v5

    invoke-static {v8}, Lcom/caverock/androidsvg/SVGParser;->clamp255(F)I

    move-result v5

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v2, v5

    invoke-static {v10}, Lcom/caverock/androidsvg/SVGParser;->clamp255(F)I

    move-result v5

    or-int/2addr v2, v5

    invoke-direct {v4, v2}, Lcom/caverock/androidsvg/SVG$Colour;-><init>(I)V

    return-object v4

    .line 3695
    :cond_12
    new-instance v2, Lcom/caverock/androidsvg/SVGParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad rgb() colour value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static parseColourKeyword(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Colour;
    .locals 4
    .param p0, "nameLowerCase"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    .line 3780
    invoke-static {p0}, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->get(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 3781
    .local v0, "col":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 3784
    new-instance v1, Lcom/caverock/androidsvg/SVG$Colour;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/caverock/androidsvg/SVG$Colour;-><init>(I)V

    return-object v1

    .line 3782
    :cond_0
    new-instance v1, Lcom/caverock/androidsvg/SVGParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid colour keyword: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static parseColourSpecifer(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgPaint;
    .locals 2
    .param p0, "val"    # Ljava/lang/String;

    .line 3615
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "currentColor"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_1
    const-string v0, "none"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 3622
    :try_start_0
    invoke-static {p0}, Lcom/caverock/androidsvg/SVGParser;->parseColour(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Colour;

    move-result-object v0
    :try_end_0
    .catch Lcom/caverock/androidsvg/SVGParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 3619
    :pswitch_0
    invoke-static {}, Lcom/caverock/androidsvg/SVG$CurrentColor;->getInstance()Lcom/caverock/androidsvg/SVG$CurrentColor;

    move-result-object v0

    return-object v0

    .line 3617
    :pswitch_1
    sget-object v0, Lcom/caverock/androidsvg/SVG$Colour;->TRANSPARENT:Lcom/caverock/androidsvg/SVG$Colour;

    return-object v0

    .line 3622
    :goto_2
    return-object v0

    .line 3623
    :catch_0
    move-exception v0

    .line 3624
    .local v0, "e":Lcom/caverock/androidsvg/SVGParseException;
    const/4 v1, 0x0

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x33af38 -> :sswitch_1
        0x5601056a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static parseFillRule(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$FillRule;
    .locals 1
    .param p0, "val"    # Ljava/lang/String;

    .line 3947
    const-string v0, "nonzero"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3948
    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$FillRule;->NonZero:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    return-object v0

    .line 3949
    :cond_0
    const-string v0, "evenodd"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3950
    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$FillRule;->EvenOdd:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    return-object v0

    .line 3951
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static parseFloat(Ljava/lang/String;)F
    .locals 3
    .param p0, "val"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    .line 3486
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 3487
    .local v0, "len":I
    if-eqz v0, :cond_0

    .line 3489
    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/caverock/androidsvg/SVGParser;->parseFloat(Ljava/lang/String;II)F

    move-result v1

    return v1

    .line 3488
    :cond_0
    new-instance v1, Lcom/caverock/androidsvg/SVGParseException;

    const-string v2, "Invalid float value (empty string)"

    invoke-direct {v1, v2}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static parseFloat(Ljava/lang/String;II)F
    .locals 5
    .param p0, "val"    # Ljava/lang/String;
    .param p1, "offset"    # I
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    .line 3494
    new-instance v0, Lcom/caverock/androidsvg/NumberParser;

    invoke-direct {v0}, Lcom/caverock/androidsvg/NumberParser;-><init>()V

    .line 3495
    .local v0, "np":Lcom/caverock/androidsvg/NumberParser;
    invoke-virtual {v0, p0, p1, p2}, Lcom/caverock/androidsvg/NumberParser;->parseNumber(Ljava/lang/String;II)F

    move-result v1

    .line 3496
    .local v1, "num":F
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3497
    return v1

    .line 3499
    :cond_0
    new-instance v2, Lcom/caverock/androidsvg/SVGParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid float value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static parseFont(Lcom/caverock/androidsvg/SVG$Style;Ljava/lang/String;)V
    .locals 11
    .param p0, "style"    # Lcom/caverock/androidsvg/SVG$Style;
    .param p1, "val"    # Ljava/lang/String;

    .line 3792
    const/4 v0, 0x0

    .line 3793
    .local v0, "fontWeight":Ljava/lang/Integer;
    const/4 v1, 0x0

    .line 3794
    .local v1, "fontStyle":Lcom/caverock/androidsvg/SVG$Style$FontStyle;
    const/4 v2, 0x0

    .line 3797
    .local v2, "fontVariant":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x7c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "|caption|icon|menu|message-box|small-caption|status-bar|"

    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3798
    return-void

    .line 3801
    :cond_0
    new-instance v3, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    invoke-direct {v3, p1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    .line 3805
    .local v3, "scan":Lcom/caverock/androidsvg/SVGParser$TextScanner;
    :goto_0
    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextToken(C)Ljava/lang/String;

    move-result-object v5

    .line 3806
    .local v5, "item":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 3807
    if-nez v5, :cond_1

    .line 3808
    return-void

    .line 3809
    :cond_1
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 3810
    goto :goto_1

    .line 3811
    :cond_2
    const-string v6, "normal"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3812
    goto :goto_0

    .line 3813
    :cond_3
    if-nez v0, :cond_4

    .line 3814
    invoke-static {v5}, Lcom/caverock/androidsvg/SVGParser$FontWeightKeywords;->get(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 3815
    if-eqz v0, :cond_4

    .line 3816
    goto :goto_0

    .line 3818
    :cond_4
    if-nez v1, :cond_5

    .line 3819
    invoke-static {v5}, Lcom/caverock/androidsvg/SVGParser;->parseFontStyle(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    move-result-object v1

    .line 3820
    if-eqz v1, :cond_5

    .line 3821
    goto :goto_0

    .line 3824
    :cond_5
    if-nez v2, :cond_6

    const-string v6, "small-caps"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 3825
    move-object v2, v5

    .line 3826
    goto :goto_0

    .line 3833
    :cond_6
    :goto_1
    invoke-static {v5}, Lcom/caverock/androidsvg/SVGParser;->parseFontSize(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v6

    .line 3836
    .local v6, "fontSize":Lcom/caverock/androidsvg/SVG$Length;
    invoke-virtual {v3, v4}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 3838
    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 3839
    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextToken()Ljava/lang/String;

    move-result-object v5

    .line 3840
    if-eqz v5, :cond_7

    .line 3842
    :try_start_0
    invoke-static {v5}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;
    :try_end_0
    .catch Lcom/caverock/androidsvg/SVGParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3845
    goto :goto_2

    .line 3843
    :catch_0
    move-exception v4

    .line 3844
    .local v4, "e":Lcom/caverock/androidsvg/SVGParseException;
    return-void

    .line 3847
    .end local v4    # "e":Lcom/caverock/androidsvg/SVGParseException;
    :cond_7
    :goto_2
    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 3851
    :cond_8
    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->restOfText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/caverock/androidsvg/SVGParser;->parseFontFamily(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/caverock/androidsvg/SVG$Style;->fontFamily:Ljava/util/List;

    .line 3852
    iput-object v6, p0, Lcom/caverock/androidsvg/SVG$Style;->fontSize:Lcom/caverock/androidsvg/SVG$Length;

    .line 3853
    if-nez v0, :cond_9

    const/16 v4, 0x190

    goto :goto_3

    :cond_9
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :goto_3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    .line 3854
    if-nez v1, :cond_a

    sget-object v4, Lcom/caverock/androidsvg/SVG$Style$FontStyle;->Normal:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    goto :goto_4

    :cond_a
    move-object v4, v1

    :goto_4
    iput-object v4, p0, Lcom/caverock/androidsvg/SVG$Style;->fontStyle:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    .line 3855
    iget-wide v7, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v9, 0x1e000

    or-long/2addr v7, v9

    iput-wide v7, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 3856
    return-void
.end method

.method private static parseFontFamily(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p0, "val"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3862
    const/4 v0, 0x0

    .line 3863
    .local v0, "fonts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    invoke-direct {v1, p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    .line 3866
    .local v1, "scan":Lcom/caverock/androidsvg/SVGParser$TextScanner;
    :goto_0
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextQuotedString()Ljava/lang/String;

    move-result-object v2

    .line 3867
    .local v2, "item":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 3868
    const/16 v3, 0x2c

    invoke-virtual {v1, v3}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextTokenWithWhitespace(C)Ljava/lang/String;

    move-result-object v2

    .line 3869
    :cond_0
    if-nez v2, :cond_1

    .line 3870
    goto :goto_1

    .line 3871
    :cond_1
    if-nez v0, :cond_2

    .line 3872
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v3

    .line 3873
    :cond_2
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3874
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 3875
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3876
    nop

    .line 3878
    .end local v2    # "item":Ljava/lang/String;
    :goto_1
    return-object v0

    .line 3877
    :cond_3
    goto :goto_0
.end method

.method private static parseFontSize(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;
    .locals 2
    .param p0, "val"    # Ljava/lang/String;

    .line 3886
    :try_start_0
    invoke-static {p0}, Lcom/caverock/androidsvg/SVGParser$FontSizeKeywords;->get(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v0

    .line 3887
    .local v0, "size":Lcom/caverock/androidsvg/SVG$Length;
    if-nez v0, :cond_0

    .line 3888
    invoke-static {p0}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1
    :try_end_0
    .catch Lcom/caverock/androidsvg/SVGParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 3889
    :cond_0
    return-object v0

    .line 3890
    .end local v0    # "size":Lcom/caverock/androidsvg/SVG$Length;
    :catch_0
    move-exception v0

    .line 3891
    .local v0, "e":Lcom/caverock/androidsvg/SVGParseException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private static parseFontStyle(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$FontStyle;
    .locals 1
    .param p0, "val"    # Ljava/lang/String;

    .line 3907
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "normal"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_1
    const-string v0, "italic"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_2
    const-string v0, "oblique"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 3912
    const/4 v0, 0x0

    return-object v0

    .line 3911
    :pswitch_0
    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$FontStyle;->Oblique:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    return-object v0

    .line 3910
    :pswitch_1
    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$FontStyle;->Normal:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    return-object v0

    .line 3909
    :pswitch_2
    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$FontStyle;->Italic:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x62ce05cf -> :sswitch_2
        -0x4642c5d0 -> :sswitch_1
        -0x3df94319 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static parseFontWeight(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .param p0, "val"    # Ljava/lang/String;

    .line 3899
    invoke-static {p0}, Lcom/caverock/androidsvg/SVGParser$FontWeightKeywords;->get(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private static parseFunctionalIRI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "val"    # Ljava/lang/String;
    .param p1, "attrName"    # Ljava/lang/String;

    .line 4431
    const-string v0, "none"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4432
    return-object v1

    .line 4433
    :cond_0
    const-string v0, "url("

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4434
    return-object v1

    .line 4435
    :cond_1
    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_2

    .line 4436
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4438
    :cond_2
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private parseGradientOffset(Ljava/lang/String;)Ljava/lang/Float;
    .locals 6
    .param p1, "val"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    .line 2177
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    .line 2179
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 2180
    .local v0, "end":I
    const/4 v1, 0x0

    .line 2182
    .local v1, "isPercent":Z
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x25

    if-ne v2, v3, :cond_0

    .line 2183
    add-int/lit8 v0, v0, -0x1

    .line 2184
    const/4 v1, 0x1

    .line 2188
    :cond_0
    const/4 v2, 0x0

    :try_start_0
    invoke-static {p1, v2, v0}, Lcom/caverock/androidsvg/SVGParser;->parseFloat(Ljava/lang/String;II)F

    move-result v2

    .line 2189
    .local v2, "scalar":F
    const/high16 v3, 0x42c80000    # 100.0f

    if-eqz v1, :cond_1

    .line 2190
    div-float/2addr v2, v3

    .line 2191
    :cond_1
    const/4 v4, 0x0

    cmpg-float v5, v2, v4

    if-gez v5, :cond_2

    move v3, v4

    goto :goto_0

    :cond_2
    cmpl-float v4, v2, v3

    if-lez v4, :cond_3

    goto :goto_0

    :cond_3
    move v3, v2

    :goto_0
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 2193
    .end local v2    # "scalar":F
    :catch_0
    move-exception v2

    .line 2195
    .local v2, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Lcom/caverock/androidsvg/SVGParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid offset value in <stop>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 2178
    .end local v0    # "end":I
    .end local v1    # "isPercent":Z
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_4
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid offset value in <stop> (empty string)"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;
    .locals 8
    .param p0, "val"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    .line 3423
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 3425
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 3426
    .local v0, "end":I
    sget-object v1, Lcom/caverock/androidsvg/SVG$Unit;->px:Lcom/caverock/androidsvg/SVG$Unit;

    .line 3427
    .local v1, "unit":Lcom/caverock/androidsvg/SVG$Unit;
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 3429
    .local v2, "lastChar":C
    const/16 v3, 0x25

    if-ne v2, v3, :cond_0

    .line 3430
    add-int/lit8 v0, v0, -0x1

    .line 3431
    sget-object v1, Lcom/caverock/androidsvg/SVG$Unit;->percent:Lcom/caverock/androidsvg/SVG$Unit;

    goto :goto_0

    .line 3432
    :cond_0
    const/4 v3, 0x2

    if-le v0, v3, :cond_1

    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v3, v0, -0x2

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3433
    add-int/lit8 v0, v0, -0x2

    .line 3434
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 3436
    .local v3, "unitStr":Ljava/lang/String;
    :try_start_0
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/caverock/androidsvg/SVG$Unit;->valueOf(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Unit;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v4

    .line 3439
    goto :goto_0

    .line 3437
    :catch_0
    move-exception v4

    .line 3438
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    new-instance v5, Lcom/caverock/androidsvg/SVGParseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid length unit specifier: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3443
    .end local v3    # "unitStr":Ljava/lang/String;
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1
    :goto_0
    const/4 v3, 0x0

    :try_start_1
    invoke-static {p0, v3, v0}, Lcom/caverock/androidsvg/SVGParser;->parseFloat(Ljava/lang/String;II)F

    move-result v3

    .line 3444
    .local v3, "scalar":F
    new-instance v4, Lcom/caverock/androidsvg/SVG$Length;

    invoke-direct {v4, v3, v1}, Lcom/caverock/androidsvg/SVG$Length;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v4

    .line 3446
    .end local v3    # "scalar":F
    :catch_1
    move-exception v3

    .line 3448
    .local v3, "e":Ljava/lang/NumberFormatException;
    new-instance v4, Lcom/caverock/androidsvg/SVGParseException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid length value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4

    .line 3424
    .end local v0    # "end":I
    .end local v1    # "unit":Lcom/caverock/androidsvg/SVG$Unit;
    .end local v2    # "lastChar":C
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid length value (empty string)"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static parseLengthList(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p0, "val"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/caverock/androidsvg/SVG$Length;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    .line 3458
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    .line 3461
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3463
    .local v0, "coords":Ljava/util/List;, "Ljava/util/List<Lcom/caverock/androidsvg/SVG$Length;>;"
    new-instance v1, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    invoke-direct {v1, p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    .line 3464
    .local v1, "scan":Lcom/caverock/androidsvg/SVGParser$TextScanner;
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 3466
    :goto_0
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 3468
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v2

    .line 3469
    .local v2, "scalar":F
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3471
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextUnit()Lcom/caverock/androidsvg/SVG$Unit;

    move-result-object v3

    .line 3472
    .local v3, "unit":Lcom/caverock/androidsvg/SVG$Unit;
    if-nez v3, :cond_0

    .line 3473
    sget-object v3, Lcom/caverock/androidsvg/SVG$Unit;->px:Lcom/caverock/androidsvg/SVG$Unit;

    .line 3474
    :cond_0
    new-instance v4, Lcom/caverock/androidsvg/SVG$Length;

    invoke-direct {v4, v2, v3}, Lcom/caverock/androidsvg/SVG$Length;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3475
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 3476
    .end local v2    # "scalar":F
    .end local v3    # "unit":Lcom/caverock/androidsvg/SVG$Unit;
    goto :goto_0

    .line 3470
    .restart local v2    # "scalar":F
    :cond_1
    new-instance v3, Lcom/caverock/androidsvg/SVGParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid length list value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->ahead()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3477
    .end local v2    # "scalar":F
    :cond_2
    return-object v0

    .line 3459
    .end local v0    # "coords":Ljava/util/List;, "Ljava/util/List<Lcom/caverock/androidsvg/SVG$Length;>;"
    .end local v1    # "scan":Lcom/caverock/androidsvg/SVGParser$TextScanner;
    :cond_3
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid length list (empty string)"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static parseLengthOrAuto(Lcom/caverock/androidsvg/SVGParser$TextScanner;)Lcom/caverock/androidsvg/SVG$Length;
    .locals 2
    .param p0, "scan"    # Lcom/caverock/androidsvg/SVGParser$TextScanner;

    .line 4080
    const-string v0, "auto"

    invoke-virtual {p0, v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4081
    new-instance v0, Lcom/caverock/androidsvg/SVG$Length;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVG$Length;-><init>(F)V

    return-object v0

    .line 4083
    :cond_0
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextLength()Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v0

    return-object v0
.end method

.method private static parseOpacity(Ljava/lang/String;)Ljava/lang/Float;
    .locals 3
    .param p0, "val"    # Ljava/lang/String;

    .line 3510
    :try_start_0
    invoke-static {p0}, Lcom/caverock/androidsvg/SVGParser;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 3511
    .local v0, "o":F
    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    :goto_0
    goto :goto_1

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    if-lez v2, :cond_1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_1
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1
    :try_end_0
    .catch Lcom/caverock/androidsvg/SVGParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 3512
    .end local v0    # "o":F
    :catch_0
    move-exception v0

    .line 3513
    .local v0, "e":Lcom/caverock/androidsvg/SVGParseException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private static parseOverflow(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "val"    # Ljava/lang/String;

    .line 4037
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "visible"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string v0, "auto"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string v0, "scroll"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_3
    const-string v0, "hidden"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 4046
    const/4 v0, 0x0

    return-object v0

    .line 4044
    :pswitch_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 4041
    :pswitch_1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x48916256 -> :sswitch_3
        -0x361a1933 -> :sswitch_2
        0x2dddaf -> :sswitch_1
        0x1bd1f072 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static parsePaintSpecifier(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgPaint;
    .locals 4
    .param p0, "val"    # Ljava/lang/String;

    .line 3590
    const-string v0, "url("

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3592
    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 3593
    .local v0, "closeBracket":I
    const/4 v1, -0x1

    const/4 v2, 0x4

    if-eq v0, v1, :cond_1

    .line 3595
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 3596
    .local v1, "href":Ljava/lang/String;
    const/4 v2, 0x0

    .line 3598
    .local v2, "fallback":Lcom/caverock/androidsvg/SVG$SvgPaint;
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 3599
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 3600
    invoke-static {p0}, Lcom/caverock/androidsvg/SVGParser;->parseColourSpecifer(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgPaint;

    move-result-object v2

    .line 3601
    :cond_0
    new-instance v3, Lcom/caverock/androidsvg/SVG$PaintReference;

    invoke-direct {v3, v1, v2}, Lcom/caverock/androidsvg/SVG$PaintReference;-><init>(Ljava/lang/String;Lcom/caverock/androidsvg/SVG$SvgPaint;)V

    return-object v3

    .line 3605
    .end local v1    # "href":Ljava/lang/String;
    .end local v2    # "fallback":Lcom/caverock/androidsvg/SVG$SvgPaint;
    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 3606
    .restart local v1    # "href":Ljava/lang/String;
    new-instance v2, Lcom/caverock/androidsvg/SVG$PaintReference;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/caverock/androidsvg/SVG$PaintReference;-><init>(Ljava/lang/String;Lcom/caverock/androidsvg/SVG$SvgPaint;)V

    return-object v2

    .line 3609
    .end local v0    # "closeBracket":I
    .end local v1    # "href":Ljava/lang/String;
    :cond_2
    invoke-static {p0}, Lcom/caverock/androidsvg/SVGParser;->parseColourSpecifer(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgPaint;

    move-result-object v0

    return-object v0
.end method

.method private static parsePath(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$PathDefinition;
    .locals 25
    .param p0, "val"    # Ljava/lang/String;

    .line 4118
    new-instance v0, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    .line 4120
    .local v0, "scan":Lcom/caverock/androidsvg/SVGParser$TextScanner;
    const/4 v2, 0x0

    .local v2, "currentX":F
    const/4 v3, 0x0

    .line 4121
    .local v3, "currentY":F
    const/4 v4, 0x0

    .local v4, "lastMoveX":F
    const/4 v5, 0x0

    .line 4122
    .local v5, "lastMoveY":F
    const/4 v6, 0x0

    .local v6, "lastControlX":F
    const/4 v7, 0x0

    .line 4127
    .local v7, "lastControlY":F
    new-instance v8, Lcom/caverock/androidsvg/SVG$PathDefinition;

    invoke-direct {v8}, Lcom/caverock/androidsvg/SVG$PathDefinition;-><init>()V

    .line 4129
    .local v8, "path":Lcom/caverock/androidsvg/SVG$PathDefinition;
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 4130
    return-object v8

    .line 4132
    :cond_0
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextChar()Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 4134
    .local v9, "pathCommand":I
    const/16 v10, 0x4d

    const/16 v15, 0x6d

    if-eq v9, v10, :cond_1

    if-eq v9, v15, :cond_1

    .line 4135
    return-object v8

    .line 4139
    :cond_1
    move v14, v9

    .end local v9    # "pathCommand":I
    .local v14, "pathCommand":I
    :goto_0
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 4141
    const/16 v9, 0x6c

    const/high16 v10, 0x40000000    # 2.0f

    const-string v11, " path segment"

    const-string v12, "Bad path coords for "

    const-string v13, "SVGParser"

    sparse-switch v14, :sswitch_data_0

    .line 4344
    return-object v8

    .line 4239
    :sswitch_0
    invoke-virtual {v8}, Lcom/caverock/androidsvg/SVG$PathDefinition;->close()V

    .line 4240
    move v6, v4

    move v2, v4

    .line 4241
    move v7, v5

    move v3, v5

    .line 4242
    move/from16 v23, v5

    move v5, v15

    goto/16 :goto_6

    .line 4262
    :sswitch_1
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v9

    .line 4263
    .local v9, "y":F
    invoke-static {v9}, Ljava/lang/Float;->isNaN(F)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 4264
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    int-to-char v12, v14

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v13, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4265
    return-object v8

    .line 4267
    :cond_2
    const/16 v10, 0x76

    if-ne v14, v10, :cond_3

    .line 4268
    add-float/2addr v9, v3

    .line 4270
    :cond_3
    invoke-virtual {v8, v2, v9}, Lcom/caverock/androidsvg/SVG$PathDefinition;->lineTo(FF)V

    .line 4271
    move v7, v9

    move v3, v9

    .line 4272
    move/from16 v23, v5

    move v5, v15

    goto/16 :goto_6

    .line 4301
    .end local v9    # "y":F
    :sswitch_2
    mul-float v9, v2, v10

    sub-float/2addr v9, v6

    .line 4302
    .local v9, "x1":F
    mul-float/2addr v10, v3

    sub-float/2addr v10, v7

    .line 4303
    .local v10, "y1":F
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v15

    .line 4304
    .local v15, "x":F
    invoke-virtual {v0, v15}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->checkedNextFloat(F)F

    move-result v17

    .line 4305
    .local v17, "y":F
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->isNaN(F)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 4306
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-char v12, v14

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4307
    return-object v8

    .line 4309
    :cond_4
    const/16 v1, 0x74

    if-ne v14, v1, :cond_5

    .line 4310
    add-float/2addr v15, v2

    .line 4311
    add-float v17, v17, v3

    move/from16 v1, v17

    goto :goto_1

    .line 4309
    :cond_5
    move/from16 v1, v17

    .line 4313
    .end local v17    # "y":F
    .local v1, "y":F
    :goto_1
    invoke-virtual {v8, v9, v10, v15, v1}, Lcom/caverock/androidsvg/SVG$PathDefinition;->quadTo(FFFF)V

    .line 4314
    move v6, v9

    .line 4315
    move v7, v10

    .line 4316
    move v2, v15

    .line 4317
    move v3, v1

    .line 4318
    move/from16 v23, v5

    const/16 v5, 0x6d

    goto/16 :goto_6

    .line 4213
    .end local v1    # "y":F
    .end local v9    # "x1":F
    .end local v10    # "y1":F
    .end local v15    # "x":F
    :sswitch_3
    mul-float v1, v2, v10

    sub-float/2addr v1, v6

    .line 4214
    .local v1, "x1":F
    mul-float/2addr v10, v3

    sub-float v17, v10, v7

    .line 4215
    .local v17, "y1":F
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v9

    .line 4216
    .local v9, "x2":F
    invoke-virtual {v0, v9}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->checkedNextFloat(F)F

    move-result v10

    .line 4217
    .local v10, "y2":F
    invoke-virtual {v0, v10}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->checkedNextFloat(F)F

    move-result v15

    .line 4218
    .restart local v15    # "x":F
    invoke-virtual {v0, v15}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->checkedNextFloat(F)F

    move-result v18

    .line 4219
    .local v18, "y":F
    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->isNaN(F)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 4220
    move/from16 v19, v4

    .end local v4    # "lastMoveX":F
    .local v19, "lastMoveX":F
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    int-to-char v12, v14

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v13, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4221
    return-object v8

    .line 4223
    .end local v19    # "lastMoveX":F
    .restart local v4    # "lastMoveX":F
    :cond_6
    move/from16 v19, v4

    .end local v4    # "lastMoveX":F
    .restart local v19    # "lastMoveX":F
    const/16 v4, 0x73

    if-ne v14, v4, :cond_7

    .line 4224
    add-float/2addr v15, v2

    .line 4225
    add-float v18, v18, v3

    .line 4226
    add-float/2addr v9, v2

    .line 4227
    add-float/2addr v10, v3

    move v4, v9

    move/from16 v20, v15

    move/from16 v21, v18

    move/from16 v18, v10

    goto :goto_2

    .line 4223
    :cond_7
    move v4, v9

    move/from16 v20, v15

    move/from16 v21, v18

    move/from16 v18, v10

    .line 4229
    .end local v9    # "x2":F
    .end local v10    # "y2":F
    .end local v15    # "x":F
    .local v4, "x2":F
    .local v18, "y2":F
    .local v20, "x":F
    .local v21, "y":F
    :goto_2
    move-object v9, v8

    move v10, v1

    move/from16 v11, v17

    move v12, v4

    move/from16 v13, v18

    move v15, v14

    .end local v14    # "pathCommand":I
    .local v15, "pathCommand":I
    move/from16 v14, v20

    move/from16 v22, v1

    move/from16 v23, v5

    move v1, v15

    const/16 v5, 0x6d

    .end local v5    # "lastMoveY":F
    .end local v15    # "pathCommand":I
    .local v1, "pathCommand":I
    .local v22, "x1":F
    .local v23, "lastMoveY":F
    move/from16 v15, v21

    invoke-virtual/range {v9 .. v15}, Lcom/caverock/androidsvg/SVG$PathDefinition;->cubicTo(FFFFFF)V

    .line 4230
    move v6, v4

    .line 4231
    move/from16 v7, v18

    .line 4232
    move/from16 v2, v20

    .line 4233
    move/from16 v3, v21

    .line 4234
    move v14, v1

    move/from16 v4, v19

    goto/16 :goto_6

    .line 4277
    .end local v1    # "pathCommand":I
    .end local v17    # "y1":F
    .end local v18    # "y2":F
    .end local v19    # "lastMoveX":F
    .end local v20    # "x":F
    .end local v21    # "y":F
    .end local v22    # "x1":F
    .end local v23    # "lastMoveY":F
    .local v4, "lastMoveX":F
    .restart local v5    # "lastMoveY":F
    .restart local v14    # "pathCommand":I
    :sswitch_4
    move/from16 v19, v4

    move/from16 v23, v5

    move v1, v14

    move v5, v15

    .end local v4    # "lastMoveX":F
    .end local v5    # "lastMoveY":F
    .end local v14    # "pathCommand":I
    .restart local v1    # "pathCommand":I
    .restart local v19    # "lastMoveX":F
    .restart local v23    # "lastMoveY":F
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v4

    .line 4278
    .local v4, "x1":F
    invoke-virtual {v0, v4}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->checkedNextFloat(F)F

    move-result v9

    .line 4279
    .local v9, "y1":F
    invoke-virtual {v0, v9}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->checkedNextFloat(F)F

    move-result v10

    .line 4280
    .local v10, "x":F
    invoke-virtual {v0, v10}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->checkedNextFloat(F)F

    move-result v14

    .line 4281
    .local v14, "y":F
    invoke-static {v14}, Ljava/lang/Float;->isNaN(F)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 4282
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    int-to-char v12, v1

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v13, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4283
    return-object v8

    .line 4285
    :cond_8
    const/16 v11, 0x71

    if-ne v1, v11, :cond_9

    .line 4286
    add-float/2addr v10, v2

    .line 4287
    add-float/2addr v14, v3

    .line 4288
    add-float/2addr v4, v2

    .line 4289
    add-float/2addr v9, v3

    .line 4291
    :cond_9
    invoke-virtual {v8, v4, v9, v10, v14}, Lcom/caverock/androidsvg/SVG$PathDefinition;->quadTo(FFFF)V

    .line 4292
    move v6, v4

    .line 4293
    move v7, v9

    .line 4294
    move v2, v10

    .line 4295
    move v3, v14

    .line 4296
    move v14, v1

    move/from16 v4, v19

    goto/16 :goto_6

    .line 4146
    .end local v1    # "pathCommand":I
    .end local v9    # "y1":F
    .end local v10    # "x":F
    .end local v19    # "lastMoveX":F
    .end local v23    # "lastMoveY":F
    .local v4, "lastMoveX":F
    .restart local v5    # "lastMoveY":F
    .local v14, "pathCommand":I
    :sswitch_5
    move/from16 v19, v4

    move/from16 v23, v5

    move v1, v14

    move v5, v15

    .end local v4    # "lastMoveX":F
    .end local v5    # "lastMoveY":F
    .end local v14    # "pathCommand":I
    .restart local v1    # "pathCommand":I
    .restart local v19    # "lastMoveX":F
    .restart local v23    # "lastMoveY":F
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v4

    .line 4147
    .local v4, "x":F
    invoke-virtual {v0, v4}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->checkedNextFloat(F)F

    move-result v10

    .line 4148
    .local v10, "y":F
    invoke-static {v10}, Ljava/lang/Float;->isNaN(F)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 4149
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    int-to-char v9, v1

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v13, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4150
    return-object v8

    .line 4153
    :cond_a
    if-ne v1, v5, :cond_b

    invoke-virtual {v8}, Lcom/caverock/androidsvg/SVG$PathDefinition;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_b

    .line 4154
    add-float/2addr v4, v2

    .line 4155
    add-float/2addr v10, v3

    .line 4157
    :cond_b
    invoke-virtual {v8, v4, v10}, Lcom/caverock/androidsvg/SVG$PathDefinition;->moveTo(FF)V

    .line 4158
    move v6, v4

    move v11, v4

    .end local v19    # "lastMoveX":F
    .local v11, "lastMoveX":F
    move v2, v4

    .line 4159
    move v7, v10

    move v12, v10

    .end local v23    # "lastMoveY":F
    .local v12, "lastMoveY":F
    move v3, v10

    .line 4161
    if-ne v1, v5, :cond_c

    goto :goto_3

    :cond_c
    const/16 v9, 0x4c

    :goto_3
    move v1, v9

    .line 4162
    move v14, v1

    move v4, v11

    move/from16 v23, v12

    goto/16 :goto_6

    .line 4167
    .end local v1    # "pathCommand":I
    .end local v10    # "y":F
    .end local v11    # "lastMoveX":F
    .end local v12    # "lastMoveY":F
    .local v4, "lastMoveX":F
    .restart local v5    # "lastMoveY":F
    .restart local v14    # "pathCommand":I
    :sswitch_6
    move/from16 v19, v4

    move/from16 v23, v5

    move v1, v14

    move v5, v15

    .end local v4    # "lastMoveX":F
    .end local v5    # "lastMoveY":F
    .end local v14    # "pathCommand":I
    .restart local v1    # "pathCommand":I
    .restart local v19    # "lastMoveX":F
    .restart local v23    # "lastMoveY":F
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v4

    .line 4168
    .local v4, "x":F
    invoke-virtual {v0, v4}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->checkedNextFloat(F)F

    move-result v10

    .line 4169
    .restart local v10    # "y":F
    invoke-static {v10}, Ljava/lang/Float;->isNaN(F)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 4170
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    int-to-char v9, v1

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v13, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4171
    return-object v8

    .line 4173
    :cond_d
    if-ne v1, v9, :cond_e

    .line 4174
    add-float/2addr v4, v2

    .line 4175
    add-float/2addr v10, v3

    .line 4177
    :cond_e
    invoke-virtual {v8, v4, v10}, Lcom/caverock/androidsvg/SVG$PathDefinition;->lineTo(FF)V

    .line 4178
    move v6, v4

    move v2, v4

    .line 4179
    move v7, v10

    move v3, v10

    .line 4180
    move v14, v1

    move/from16 v4, v19

    goto/16 :goto_6

    .line 4247
    .end local v1    # "pathCommand":I
    .end local v10    # "y":F
    .end local v19    # "lastMoveX":F
    .end local v23    # "lastMoveY":F
    .local v4, "lastMoveX":F
    .restart local v5    # "lastMoveY":F
    .restart local v14    # "pathCommand":I
    :sswitch_7
    move/from16 v19, v4

    move/from16 v23, v5

    move v1, v14

    move v5, v15

    .end local v4    # "lastMoveX":F
    .end local v5    # "lastMoveY":F
    .end local v14    # "pathCommand":I
    .restart local v1    # "pathCommand":I
    .restart local v19    # "lastMoveX":F
    .restart local v23    # "lastMoveY":F
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v4

    .line 4248
    .local v4, "x":F
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 4249
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    int-to-char v9, v1

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v13, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4250
    return-object v8

    .line 4252
    :cond_f
    const/16 v9, 0x68

    if-ne v1, v9, :cond_10

    .line 4253
    add-float/2addr v4, v2

    .line 4255
    :cond_10
    invoke-virtual {v8, v4, v3}, Lcom/caverock/androidsvg/SVG$PathDefinition;->lineTo(FF)V

    .line 4256
    move v6, v4

    move v2, v4

    .line 4257
    move v14, v1

    move/from16 v4, v19

    goto/16 :goto_6

    .line 4185
    .end local v1    # "pathCommand":I
    .end local v19    # "lastMoveX":F
    .end local v23    # "lastMoveY":F
    .local v4, "lastMoveX":F
    .restart local v5    # "lastMoveY":F
    .restart local v14    # "pathCommand":I
    :sswitch_8
    move/from16 v19, v4

    move/from16 v23, v5

    move v1, v14

    move v5, v15

    .end local v4    # "lastMoveX":F
    .end local v5    # "lastMoveY":F
    .end local v14    # "pathCommand":I
    .restart local v1    # "pathCommand":I
    .restart local v19    # "lastMoveX":F
    .restart local v23    # "lastMoveY":F
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v4

    .line 4186
    .local v4, "x1":F
    invoke-virtual {v0, v4}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->checkedNextFloat(F)F

    move-result v9

    .line 4187
    .restart local v9    # "y1":F
    invoke-virtual {v0, v9}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->checkedNextFloat(F)F

    move-result v10

    .line 4188
    .local v10, "x2":F
    invoke-virtual {v0, v10}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->checkedNextFloat(F)F

    move-result v14

    .line 4189
    .local v14, "y2":F
    invoke-virtual {v0, v14}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->checkedNextFloat(F)F

    move-result v15

    .line 4190
    .local v15, "x":F
    invoke-virtual {v0, v15}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->checkedNextFloat(F)F

    move-result v16

    .line 4191
    .local v16, "y":F
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->isNaN(F)Z

    move-result v17

    if-eqz v17, :cond_11

    .line 4192
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    int-to-char v12, v1

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v13, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4193
    return-object v8

    .line 4195
    :cond_11
    const/16 v11, 0x63

    if-ne v1, v11, :cond_12

    .line 4196
    add-float/2addr v15, v2

    .line 4197
    add-float v16, v16, v3

    .line 4198
    add-float/2addr v4, v2

    .line 4199
    add-float/2addr v9, v3

    .line 4200
    add-float/2addr v10, v2

    .line 4201
    add-float/2addr v14, v3

    move/from16 v17, v10

    move/from16 v18, v14

    move/from16 v20, v15

    move/from16 v21, v16

    move/from16 v16, v9

    goto :goto_4

    .line 4195
    :cond_12
    move/from16 v17, v10

    move/from16 v18, v14

    move/from16 v20, v15

    move/from16 v21, v16

    move/from16 v16, v9

    .line 4203
    .end local v9    # "y1":F
    .end local v10    # "x2":F
    .end local v14    # "y2":F
    .end local v15    # "x":F
    .local v16, "y1":F
    .local v17, "x2":F
    .restart local v18    # "y2":F
    .restart local v20    # "x":F
    .restart local v21    # "y":F
    :goto_4
    move-object v9, v8

    move v10, v4

    move/from16 v11, v16

    move/from16 v12, v17

    move/from16 v13, v18

    move/from16 v14, v20

    move/from16 v15, v21

    invoke-virtual/range {v9 .. v15}, Lcom/caverock/androidsvg/SVG$PathDefinition;->cubicTo(FFFFFF)V

    .line 4204
    move/from16 v6, v17

    .line 4205
    move/from16 v7, v18

    .line 4206
    move/from16 v2, v20

    .line 4207
    move/from16 v3, v21

    .line 4208
    move v14, v1

    move/from16 v4, v19

    goto/16 :goto_6

    .line 4323
    .end local v1    # "pathCommand":I
    .end local v16    # "y1":F
    .end local v17    # "x2":F
    .end local v18    # "y2":F
    .end local v19    # "lastMoveX":F
    .end local v20    # "x":F
    .end local v21    # "y":F
    .end local v23    # "lastMoveY":F
    .local v4, "lastMoveX":F
    .restart local v5    # "lastMoveY":F
    .local v14, "pathCommand":I
    :sswitch_9
    move/from16 v19, v4

    move/from16 v23, v5

    move v1, v14

    move v5, v15

    .end local v4    # "lastMoveX":F
    .end local v5    # "lastMoveY":F
    .end local v14    # "pathCommand":I
    .restart local v1    # "pathCommand":I
    .restart local v19    # "lastMoveX":F
    .restart local v23    # "lastMoveY":F
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v4

    .line 4324
    .local v4, "rx":F
    invoke-virtual {v0, v4}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->checkedNextFloat(F)F

    move-result v15

    .line 4325
    .local v15, "ry":F
    invoke-virtual {v0, v15}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->checkedNextFloat(F)F

    move-result v17

    .line 4326
    .local v17, "xAxisRotation":F
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->checkedNextFlag(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v14

    .line 4327
    .local v14, "largeArcFlag":Ljava/lang/Boolean;
    invoke-virtual {v0, v14}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->checkedNextFlag(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v10

    .line 4328
    .local v10, "sweepFlag":Ljava/lang/Boolean;
    invoke-virtual {v0, v10}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->checkedNextFloat(Ljava/lang/Boolean;)F

    move-result v9

    .line 4329
    .local v9, "x":F
    invoke-virtual {v0, v9}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->checkedNextFloat(F)F

    move-result v16

    .line 4330
    .local v16, "y":F
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->isNaN(F)Z

    move-result v18

    if-nez v18, :cond_17

    const/16 v18, 0x0

    cmpg-float v20, v4, v18

    if-ltz v20, :cond_17

    cmpg-float v18, v15, v18

    if-gez v18, :cond_13

    move-object/from16 v21, v10

    move-object/from16 v22, v14

    move/from16 v24, v15

    goto/16 :goto_7

    .line 4334
    :cond_13
    const/16 v11, 0x61

    if-ne v1, v11, :cond_14

    .line 4335
    add-float/2addr v9, v2

    .line 4336
    add-float v16, v16, v3

    move/from16 v18, v9

    move/from16 v20, v16

    goto :goto_5

    .line 4334
    :cond_14
    move/from16 v18, v9

    move/from16 v20, v16

    .line 4338
    .end local v9    # "x":F
    .end local v16    # "y":F
    .local v18, "x":F
    .local v20, "y":F
    :goto_5
    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    move-object v9, v8

    move-object/from16 v21, v10

    .end local v10    # "sweepFlag":Ljava/lang/Boolean;
    .local v21, "sweepFlag":Ljava/lang/Boolean;
    move v10, v4

    move v11, v15

    move/from16 v12, v17

    move-object/from16 v22, v14

    .end local v14    # "largeArcFlag":Ljava/lang/Boolean;
    .local v22, "largeArcFlag":Ljava/lang/Boolean;
    move/from16 v14, v16

    move/from16 v24, v15

    .end local v15    # "ry":F
    .local v24, "ry":F
    move/from16 v15, v18

    move/from16 v16, v20

    invoke-virtual/range {v9 .. v16}, Lcom/caverock/androidsvg/SVG$PathDefinition;->arcTo(FFFZZFF)V

    .line 4339
    move/from16 v6, v18

    move/from16 v2, v18

    .line 4340
    move/from16 v7, v20

    move/from16 v3, v20

    .line 4341
    move v14, v1

    move/from16 v4, v19

    .line 4347
    .end local v1    # "pathCommand":I
    .end local v17    # "xAxisRotation":F
    .end local v18    # "x":F
    .end local v19    # "lastMoveX":F
    .end local v20    # "y":F
    .end local v21    # "sweepFlag":Ljava/lang/Boolean;
    .end local v22    # "largeArcFlag":Ljava/lang/Boolean;
    .end local v24    # "ry":F
    .local v4, "lastMoveX":F
    .local v14, "pathCommand":I
    :goto_6
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 4348
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 4349
    nop

    .line 4357
    return-object v8

    .line 4352
    :cond_15
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->hasLetter()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 4354
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextChar()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v14

    move-object/from16 v1, p0

    move v15, v5

    move/from16 v5, v23

    goto/16 :goto_0

    .line 4352
    :cond_16
    move-object/from16 v1, p0

    move v15, v5

    move/from16 v5, v23

    goto/16 :goto_0

    .line 4330
    .restart local v1    # "pathCommand":I
    .local v4, "rx":F
    .restart local v9    # "x":F
    .restart local v10    # "sweepFlag":Ljava/lang/Boolean;
    .local v14, "largeArcFlag":Ljava/lang/Boolean;
    .restart local v15    # "ry":F
    .restart local v16    # "y":F
    .restart local v17    # "xAxisRotation":F
    .restart local v19    # "lastMoveX":F
    :cond_17
    move-object/from16 v21, v10

    move-object/from16 v22, v14

    move/from16 v24, v15

    .line 4331
    .end local v10    # "sweepFlag":Ljava/lang/Boolean;
    .end local v14    # "largeArcFlag":Ljava/lang/Boolean;
    .end local v15    # "ry":F
    .restart local v21    # "sweepFlag":Ljava/lang/Boolean;
    .restart local v22    # "largeArcFlag":Ljava/lang/Boolean;
    .restart local v24    # "ry":F
    :goto_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    int-to-char v10, v1

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v13, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4332
    return-object v8

    nop

    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_9
        0x43 -> :sswitch_8
        0x48 -> :sswitch_7
        0x4c -> :sswitch_6
        0x4d -> :sswitch_5
        0x51 -> :sswitch_4
        0x53 -> :sswitch_3
        0x54 -> :sswitch_2
        0x56 -> :sswitch_1
        0x5a -> :sswitch_0
        0x61 -> :sswitch_9
        0x63 -> :sswitch_8
        0x68 -> :sswitch_7
        0x6c -> :sswitch_6
        0x6d -> :sswitch_5
        0x71 -> :sswitch_4
        0x73 -> :sswitch_3
        0x74 -> :sswitch_2
        0x76 -> :sswitch_1
        0x7a -> :sswitch_0
    .end sparse-switch
.end method

.method static parsePreserveAspectRatio(Ljava/lang/String;)Lcom/caverock/androidsvg/PreserveAspectRatio;
    .locals 8
    .param p0, "val"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    .line 3556
    new-instance v0, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    invoke-direct {v0, p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    .line 3557
    .local v0, "scan":Lcom/caverock/androidsvg/SVGParser$TextScanner;
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 3559
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 3560
    .local v1, "word":Ljava/lang/String;
    const-string v2, "defer"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3561
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 3562
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 3565
    :cond_0
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser$AspectRatioKeywords;->get(Ljava/lang/String;)Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    move-result-object v2

    .line 3566
    .local v2, "align":Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;
    const/4 v3, 0x0

    .line 3568
    .local v3, "scale":Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 3570
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 3571
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 3572
    .local v4, "meetOrSlice":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string v5, "slice"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :sswitch_1
    const-string v5, "meet"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x0

    goto :goto_1

    :goto_0
    const/4 v5, -0x1

    :goto_1
    packed-switch v5, :pswitch_data_0

    .line 3578
    new-instance v5, Lcom/caverock/androidsvg/SVGParseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid preserveAspectRatio definition: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3576
    :pswitch_0
    sget-object v3, Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;->slice:Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;

    goto :goto_2

    .line 3574
    :pswitch_1
    sget-object v3, Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;->meet:Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;

    .line 3581
    .end local v4    # "meetOrSlice":Ljava/lang/String;
    :cond_2
    :goto_2
    new-instance v4, Lcom/caverock/androidsvg/PreserveAspectRatio;

    invoke-direct {v4, v2, v3}, Lcom/caverock/androidsvg/PreserveAspectRatio;-><init>(Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;)V

    return-object v4

    nop

    :sswitch_data_0
    .sparse-switch
        0x331447 -> :sswitch_1
        0x6873d92 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static parsePreserveAspectRatio(Lcom/caverock/androidsvg/SVG$SvgPreserveAspectRatioContainer;Ljava/lang/String;)V
    .locals 1
    .param p0, "obj"    # Lcom/caverock/androidsvg/SVG$SvgPreserveAspectRatioContainer;
    .param p1, "val"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    .line 3550
    invoke-static {p1}, Lcom/caverock/androidsvg/SVGParser;->parsePreserveAspectRatio(Ljava/lang/String;)Lcom/caverock/androidsvg/PreserveAspectRatio;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$SvgPreserveAspectRatioContainer;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    .line 3551
    return-void
.end method

.method private parseProcessingInstructionAttributes(Lcom/caverock/androidsvg/SVGParser$TextScanner;)Ljava/util/Map;
    .locals 4
    .param p1, "scan"    # Lcom/caverock/androidsvg/SVGParser$TextScanner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/SVGParser$TextScanner;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1138
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1140
    .local v0, "attributes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 1141
    const/16 v1, 0x3d

    invoke-virtual {p1, v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextToken(C)Ljava/lang/String;

    move-result-object v2

    .line 1142
    .local v2, "attrName":Ljava/lang/String;
    :goto_0
    if-eqz v2, :cond_0

    .line 1144
    invoke-virtual {p1, v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    .line 1145
    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextQuotedString()Ljava/lang/String;

    move-result-object v3

    .line 1146
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1148
    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 1149
    invoke-virtual {p1, v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextToken(C)Ljava/lang/String;

    move-result-object v2

    .line 1150
    .end local v3    # "value":Ljava/lang/String;
    goto :goto_0

    .line 1151
    :cond_0
    return-object v0
.end method

.method private static parseRenderQuality(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$RenderQuality;
    .locals 1
    .param p0, "val"    # Ljava/lang/String;

    .line 4102
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "optimizeSpeed"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_1
    const-string v0, "auto"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_2
    const-string v0, "optimizeQuality"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 4107
    const/4 v0, 0x0

    return-object v0

    .line 4106
    :pswitch_0
    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$RenderQuality;->optimizeSpeed:Lcom/caverock/androidsvg/SVG$Style$RenderQuality;

    return-object v0

    .line 4105
    :pswitch_1
    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$RenderQuality;->optimizeQuality:Lcom/caverock/androidsvg/SVG$Style$RenderQuality;

    return-object v0

    .line 4104
    :pswitch_2
    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$RenderQuality;->auto:Lcom/caverock/androidsvg/SVG$Style$RenderQuality;

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x379c7c9e -> :sswitch_2
        0x2dddaf -> :sswitch_1
        0x159eff6a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static parseRequiredFeatures(Ljava/lang/String;)Ljava/util/Set;
    .locals 5
    .param p0, "val"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4369
    new-instance v0, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    invoke-direct {v0, p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    .line 4370
    .local v0, "scan":Lcom/caverock/androidsvg/SVGParser$TextScanner;
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 4372
    .local v1, "result":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 4374
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 4375
    .local v2, "feature":Ljava/lang/String;
    const-string v3, "http://www.w3.org/TR/SVG11/feature#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4376
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 4381
    :cond_0
    const-string v3, "UNSUPPORTED"

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4383
    :goto_1
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 4384
    .end local v2    # "feature":Ljava/lang/String;
    goto :goto_0

    .line 4385
    :cond_1
    return-object v1
.end method

.method private static parseRequiredFormats(Ljava/lang/String;)Ljava/util/Set;
    .locals 3
    .param p0, "val"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4416
    new-instance v0, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    invoke-direct {v0, p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    .line 4417
    .local v0, "scan":Lcom/caverock/androidsvg/SVGParser$TextScanner;
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 4419
    .local v1, "result":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 4421
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 4422
    .local v2, "mimetype":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4423
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 4424
    .end local v2    # "mimetype":Ljava/lang/String;
    goto :goto_0

    .line 4425
    :cond_0
    return-object v1
.end method

.method private static parseStrokeDashArray(Ljava/lang/String;)[Lcom/caverock/androidsvg/SVG$Length;
    .locals 6
    .param p0, "val"    # Ljava/lang/String;

    .line 3984
    new-instance v0, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    invoke-direct {v0, p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    .line 3985
    .local v0, "scan":Lcom/caverock/androidsvg/SVGParser$TextScanner;
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 3987
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3988
    return-object v2

    .line 3990
    :cond_0
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextLength()Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    .line 3991
    .local v1, "dash":Lcom/caverock/androidsvg/SVG$Length;
    if-nez v1, :cond_1

    .line 3992
    return-object v2

    .line 3993
    :cond_1
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3994
    return-object v2

    .line 3996
    :cond_2
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$Length;->floatValue()F

    move-result v3

    .line 3998
    .local v3, "sum":F
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3999
    .local v4, "dashes":Ljava/util/List;, "Ljava/util/List<Lcom/caverock/androidsvg/SVG$Length;>;"
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4000
    :goto_0
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v5

    if-nez v5, :cond_5

    .line 4002
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 4003
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextLength()Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    .line 4004
    if-nez v1, :cond_3

    .line 4005
    return-object v2

    .line 4006
    :cond_3
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 4007
    return-object v2

    .line 4008
    :cond_4
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4009
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$Length;->floatValue()F

    move-result v5

    add-float/2addr v3, v5

    goto :goto_0

    .line 4014
    :cond_5
    const/4 v5, 0x0

    cmpl-float v5, v3, v5

    if-nez v5, :cond_6

    .line 4015
    return-object v2

    .line 4017
    :cond_6
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/caverock/androidsvg/SVG$Length;

    invoke-interface {v4, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/caverock/androidsvg/SVG$Length;

    return-object v2
.end method

.method private static parseStrokeLineCap(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$LineCap;
    .locals 1
    .param p0, "val"    # Ljava/lang/String;

    .line 3958
    const-string v0, "butt"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3959
    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$LineCap;->Butt:Lcom/caverock/androidsvg/SVG$Style$LineCap;

    return-object v0

    .line 3960
    :cond_0
    const-string v0, "round"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3961
    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$LineCap;->Round:Lcom/caverock/androidsvg/SVG$Style$LineCap;

    return-object v0

    .line 3962
    :cond_1
    const-string v0, "square"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3963
    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$LineCap;->Square:Lcom/caverock/androidsvg/SVG$Style$LineCap;

    return-object v0

    .line 3964
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private static parseStrokeLineJoin(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$LineJoin;
    .locals 1
    .param p0, "val"    # Ljava/lang/String;

    .line 3971
    const-string v0, "miter"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3972
    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$LineJoin;->Miter:Lcom/caverock/androidsvg/SVG$Style$LineJoin;

    return-object v0

    .line 3973
    :cond_0
    const-string v0, "round"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3974
    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$LineJoin;->Round:Lcom/caverock/androidsvg/SVG$Style$LineJoin;

    return-object v0

    .line 3975
    :cond_1
    const-string v0, "bevel"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3976
    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$LineJoin;->Bevel:Lcom/caverock/androidsvg/SVG$Style$LineJoin;

    return-object v0

    .line 3977
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private static parseStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Ljava/lang/String;)V
    .locals 5
    .param p0, "obj"    # Lcom/caverock/androidsvg/SVG$SvgElementBase;
    .param p1, "style"    # Ljava/lang/String;

    .line 2940
    new-instance v0, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    const-string v1, "/\\*.*?\\*/"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    .line 2944
    .local v0, "scan":Lcom/caverock/androidsvg/SVGParser$TextScanner;
    :goto_0
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextToken(C)Ljava/lang/String;

    move-result-object v2

    .line 2945
    .local v2, "propertyName":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 2946
    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2947
    goto :goto_1

    .line 2948
    :cond_0
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 2949
    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextTokenWithWhitespace(C)Ljava/lang/String;

    move-result-object v3

    .line 2950
    .local v3, "propertyValue":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 2951
    nop

    .line 2961
    .end local v2    # "propertyName":Ljava/lang/String;
    .end local v3    # "propertyValue":Ljava/lang/String;
    :goto_1
    return-void

    .line 2952
    .restart local v2    # "propertyName":Ljava/lang/String;
    .restart local v3    # "propertyValue":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 2953
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2955
    :cond_2
    iget-object v1, p0, Lcom/caverock/androidsvg/SVG$SvgElementBase;->style:Lcom/caverock/androidsvg/SVG$Style;

    if-nez v1, :cond_3

    .line 2956
    new-instance v1, Lcom/caverock/androidsvg/SVG$Style;

    invoke-direct {v1}, Lcom/caverock/androidsvg/SVG$Style;-><init>()V

    iput-object v1, p0, Lcom/caverock/androidsvg/SVG$SvgElementBase;->style:Lcom/caverock/androidsvg/SVG$Style;

    .line 2957
    :cond_3
    iget-object v1, p0, Lcom/caverock/androidsvg/SVG$SvgElementBase;->style:Lcom/caverock/androidsvg/SVG$Style;

    invoke-static {v1, v2, v3}, Lcom/caverock/androidsvg/SVGParser;->processStyleProperty(Lcom/caverock/androidsvg/SVG$Style;Ljava/lang/String;Ljava/lang/String;)V

    .line 2958
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 2960
    .end local v2    # "propertyName":Ljava/lang/String;
    .end local v3    # "propertyValue":Ljava/lang/String;
    :cond_4
    goto :goto_0
.end method

.method private static parseSystemLanguage(Ljava/lang/String;)Ljava/util/Set;
    .locals 6
    .param p0, "val"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4393
    new-instance v0, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    invoke-direct {v0, p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    .line 4394
    .local v0, "scan":Lcom/caverock/androidsvg/SVGParser$TextScanner;
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 4396
    .local v1, "result":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 4398
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 4399
    .local v2, "language":Ljava/lang/String;
    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 4400
    .local v3, "hyphenPos":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 4401
    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 4404
    :cond_0
    new-instance v4, Ljava/util/Locale;

    const-string v5, ""

    invoke-direct {v4, v2, v5, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 4405
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4406
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 4407
    .end local v2    # "language":Ljava/lang/String;
    .end local v3    # "hyphenPos":I
    goto :goto_0

    .line 4408
    :cond_1
    return-object v1
.end method

.method private static parseTextAnchor(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$TextAnchor;
    .locals 1
    .param p0, "val"    # Ljava/lang/String;

    .line 4024
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "start"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string v0, "end"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_2
    const-string v0, "middle"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 4029
    const/4 v0, 0x0

    return-object v0

    .line 4028
    :pswitch_0
    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->End:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    return-object v0

    .line 4027
    :pswitch_1
    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->Middle:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    return-object v0

    .line 4026
    :pswitch_2
    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->Start:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4009266b -> :sswitch_2
        0x188db -> :sswitch_1
        0x68ac462 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static parseTextDecoration(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$TextDecoration;
    .locals 1
    .param p0, "val"    # Ljava/lang/String;

    .line 3920
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "overline"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_1
    const-string v0, "blink"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_2
    const-string v0, "none"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_3
    const-string v0, "underline"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_4
    const-string v0, "line-through"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 3927
    const/4 v0, 0x0

    return-object v0

    .line 3926
    :pswitch_0
    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;->Blink:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    return-object v0

    .line 3925
    :pswitch_1
    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;->LineThrough:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    return-object v0

    .line 3924
    :pswitch_2
    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;->Overline:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    return-object v0

    .line 3923
    :pswitch_3
    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;->Underline:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    return-object v0

    .line 3922
    :pswitch_4
    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;->None:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x45d81614 -> :sswitch_4
        -0x3d363934 -> :sswitch_3
        0x33af38 -> :sswitch_2
        0x597af5c -> :sswitch_1
        0x1f9462c8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static parseTextDirection(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$TextDirection;
    .locals 1
    .param p0, "val"    # Ljava/lang/String;

    .line 3935
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "rtl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_1
    const-string v0, "ltr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 3939
    const/4 v0, 0x0

    return-object v0

    .line 3938
    :pswitch_0
    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$TextDirection;->RTL:Lcom/caverock/androidsvg/SVG$Style$TextDirection;

    return-object v0

    .line 3937
    :pswitch_1
    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$TextDirection;->LTR:Lcom/caverock/androidsvg/SVG$Style$TextDirection;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x1a3ea -> :sswitch_1
        0x1ba6a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseTransformList(Ljava/lang/String;)Landroid/graphics/Matrix;
    .locals 20
    .param p1, "val"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    .line 3289
    move-object/from16 v0, p1

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 3291
    .local v1, "matrix":Landroid/graphics/Matrix;
    new-instance v2, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    invoke-direct {v2, v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    .line 3292
    .local v2, "scan":Lcom/caverock/androidsvg/SVGParser$TextScanner;
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 3294
    :goto_0
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v3

    if-nez v3, :cond_d

    .line 3296
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFunction()Ljava/lang/String;

    move-result-object v3

    .line 3298
    .local v3, "cmd":Ljava/lang/String;
    if-eqz v3, :cond_c

    .line 3301
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x2

    const/4 v9, 0x3

    const/4 v10, 0x0

    sparse-switch v4, :sswitch_data_0

    :cond_0
    goto :goto_1

    :sswitch_0
    const-string v4, "translate"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v5

    goto :goto_2

    :sswitch_1
    const-string v4, "skewY"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v6

    goto :goto_2

    :sswitch_2
    const-string v4, "skewX"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v7

    goto :goto_2

    :sswitch_3
    const-string v4, "scale"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v8

    goto :goto_2

    :sswitch_4
    const-string v4, "rotate"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v9

    goto :goto_2

    :sswitch_5
    const-string v4, "matrix"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v10

    goto :goto_2

    :goto_1
    const/4 v4, -0x1

    :goto_2
    const/4 v11, 0x0

    const/16 v12, 0x29

    const-string v13, "Invalid transform list: "

    packed-switch v4, :pswitch_data_0

    .line 3400
    new-instance v4, Lcom/caverock/androidsvg/SVGParseException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid transform list fn: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3388
    :pswitch_0
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 3389
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v4

    .line 3390
    .local v4, "ang":F
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 3392
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v2, v12}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3395
    float-to-double v5, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->tan(D)D

    move-result-wide v5

    double-to-float v5, v5

    invoke-virtual {v1, v11, v5}, Landroid/graphics/Matrix;->preSkew(FF)Z

    .line 3396
    goto/16 :goto_3

    .line 3393
    :cond_1
    new-instance v5, Lcom/caverock/androidsvg/SVGParseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3376
    .end local v4    # "ang":F
    :pswitch_1
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 3377
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v4

    .line 3378
    .restart local v4    # "ang":F
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 3380
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v2, v12}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3383
    float-to-double v5, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->tan(D)D

    move-result-wide v5

    double-to-float v5, v5

    invoke-virtual {v1, v5, v11}, Landroid/graphics/Matrix;->preSkew(FF)Z

    .line 3384
    goto/16 :goto_3

    .line 3381
    :cond_2
    new-instance v5, Lcom/caverock/androidsvg/SVGParseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3356
    .end local v4    # "ang":F
    :pswitch_2
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 3357
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v4

    .line 3358
    .restart local v4    # "ang":F
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->possibleNextFloat()F

    move-result v5

    .line 3359
    .local v5, "cx":F
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->possibleNextFloat()F

    move-result v6

    .line 3360
    .local v6, "cy":F
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 3362
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {v2, v12}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 3365
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 3366
    invoke-virtual {v1, v4}, Landroid/graphics/Matrix;->preRotate(F)Z

    goto/16 :goto_3

    .line 3367
    :cond_3
    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-nez v7, :cond_4

    .line 3368
    invoke-virtual {v1, v4, v5, v6}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    goto/16 :goto_3

    .line 3370
    :cond_4
    new-instance v7, Lcom/caverock/androidsvg/SVGParseException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 3363
    :cond_5
    new-instance v7, Lcom/caverock/androidsvg/SVGParseException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 3341
    .end local v4    # "ang":F
    .end local v5    # "cx":F
    .end local v6    # "cy":F
    :pswitch_3
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 3342
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v4

    .line 3343
    .local v4, "sx":F
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->possibleNextFloat()F

    move-result v5

    .line 3344
    .local v5, "sy":F
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 3346
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-nez v6, :cond_7

    invoke-virtual {v2, v12}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 3349
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 3350
    invoke-virtual {v1, v4, v4}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto/16 :goto_3

    .line 3352
    :cond_6
    invoke-virtual {v1, v4, v5}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 3353
    goto/16 :goto_3

    .line 3347
    :cond_7
    new-instance v6, Lcom/caverock/androidsvg/SVGParseException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 3326
    .end local v4    # "sx":F
    .end local v5    # "sy":F
    :pswitch_4
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 3327
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v4

    .line 3328
    .local v4, "tx":F
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->possibleNextFloat()F

    move-result v5

    .line 3329
    .local v5, "ty":F
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 3331
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-nez v6, :cond_9

    invoke-virtual {v2, v12}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 3334
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 3335
    invoke-virtual {v1, v4, v11}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    goto/16 :goto_3

    .line 3337
    :cond_8
    invoke-virtual {v1, v4, v5}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 3338
    goto :goto_3

    .line 3332
    :cond_9
    new-instance v6, Lcom/caverock/androidsvg/SVGParseException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 3303
    .end local v4    # "tx":F
    .end local v5    # "ty":F
    :pswitch_5
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 3304
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v4

    .line 3305
    .local v4, "a":F
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 3306
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v14

    .line 3307
    .local v14, "b":F
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 3308
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v15

    .line 3309
    .local v15, "c":F
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 3310
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v16

    .line 3311
    .local v16, "d":F
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 3312
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v17

    .line 3313
    .local v17, "e":F
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 3314
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v18

    .line 3315
    .local v18, "f":F
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 3317
    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->isNaN(F)Z

    move-result v19

    if-nez v19, :cond_b

    invoke-virtual {v2, v12}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 3320
    new-instance v12, Landroid/graphics/Matrix;

    invoke-direct {v12}, Landroid/graphics/Matrix;-><init>()V

    .line 3321
    .local v12, "m":Landroid/graphics/Matrix;
    const/16 v13, 0x9

    new-array v13, v13, [F

    aput v4, v13, v10

    aput v15, v13, v5

    aput v17, v13, v8

    aput v14, v13, v9

    aput v16, v13, v7

    aput v18, v13, v6

    const/4 v5, 0x6

    aput v11, v13, v5

    const/4 v5, 0x7

    aput v11, v13, v5

    const/16 v5, 0x8

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v13, v5

    invoke-virtual {v12, v13}, Landroid/graphics/Matrix;->setValues([F)V

    .line 3322
    invoke-virtual {v1, v12}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 3323
    nop

    .line 3403
    .end local v4    # "a":F
    .end local v12    # "m":Landroid/graphics/Matrix;
    .end local v14    # "b":F
    .end local v15    # "c":F
    .end local v16    # "d":F
    .end local v17    # "e":F
    .end local v18    # "f":F
    :goto_3
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 3404
    goto :goto_4

    .line 3405
    :cond_a
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 3406
    .end local v3    # "cmd":Ljava/lang/String;
    goto/16 :goto_0

    .line 3318
    .restart local v3    # "cmd":Ljava/lang/String;
    .restart local v4    # "a":F
    .restart local v14    # "b":F
    .restart local v15    # "c":F
    .restart local v16    # "d":F
    .restart local v17    # "e":F
    .restart local v18    # "f":F
    :cond_b
    new-instance v5, Lcom/caverock/androidsvg/SVGParseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3299
    .end local v4    # "a":F
    .end local v14    # "b":F
    .end local v15    # "c":F
    .end local v16    # "d":F
    .end local v17    # "e":F
    .end local v18    # "f":F
    :cond_c
    new-instance v4, Lcom/caverock/androidsvg/SVGParseException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad transform function encountered in transform list: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3408
    .end local v3    # "cmd":Ljava/lang/String;
    :cond_d
    :goto_4
    return-object v1

    :sswitch_data_0
    .sparse-switch
        -0x4072683f -> :sswitch_5
        -0x372522a5 -> :sswitch_4
        0x683094a -> :sswitch_3
        0x686bc8e -> :sswitch_2
        0x686bc8f -> :sswitch_1
        0x3ec0f14e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseUsingSAX(Ljava/io/InputStream;)V
    .locals 5
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    .line 777
    const-string v0, "SVGParser"

    const-string v1, "Falling back to SAX parser"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    .line 784
    .local v0, "spf":Ljavax/xml/parsers/SAXParserFactory;
    const-string v1, "http://xml.org/sax/features/external-general-entities"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljavax/xml/parsers/SAXParserFactory;->setFeature(Ljava/lang/String;Z)V

    .line 785
    const-string v1, "http://xml.org/sax/features/external-parameter-entities"

    invoke-virtual {v0, v1, v2}, Ljavax/xml/parsers/SAXParserFactory;->setFeature(Ljava/lang/String;Z)V

    .line 787
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v1

    .line 788
    .local v1, "sp":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v2

    .line 790
    .local v2, "xr":Lorg/xml/sax/XMLReader;
    new-instance v3, Lcom/caverock/androidsvg/SVGParser$SAXHandler;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/caverock/androidsvg/SVGParser$SAXHandler;-><init>(Lcom/caverock/androidsvg/SVGParser;Lcom/caverock/androidsvg/SVGParser$1;)V

    .line 791
    .local v3, "handler":Lcom/caverock/androidsvg/SVGParser$SAXHandler;
    invoke-interface {v2, v3}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 792
    const-string v4, "http://xml.org/sax/properties/lexical-handler"

    invoke-interface {v2, v4, v3}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 794
    new-instance v4, Lorg/xml/sax/InputSource;

    invoke-direct {v4, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v2, v4}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 807
    .end local v0    # "spf":Ljavax/xml/parsers/SAXParserFactory;
    .end local v1    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v2    # "xr":Lorg/xml/sax/XMLReader;
    .end local v3    # "handler":Lcom/caverock/androidsvg/SVGParser$SAXHandler;
    nop

    .line 808
    return-void

    .line 804
    :catch_0
    move-exception v0

    .line 806
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/caverock/androidsvg/SVGParseException;

    const-string v2, "Stream error"

    invoke-direct {v1, v2, v0}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 800
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 802
    .local v0, "e":Lorg/xml/sax/SAXException;
    new-instance v1, Lcom/caverock/androidsvg/SVGParseException;

    const-string v2, "SVG parse error"

    invoke-direct {v1, v2, v0}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 796
    .end local v0    # "e":Lorg/xml/sax/SAXException;
    :catch_2
    move-exception v0

    .line 798
    .local v0, "e":Ljavax/xml/parsers/ParserConfigurationException;
    new-instance v1, Lcom/caverock/androidsvg/SVGParseException;

    const-string v2, "XML parser problem"

    invoke-direct {v1, v2, v0}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method private parseUsingXmlPullParser(Ljava/io/InputStream;Z)V
    .locals 9
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "enableInternalEntities"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    .line 689
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 690
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v1, Lcom/caverock/androidsvg/SVGParser$XPPAttributesWrapper;

    invoke-direct {v1, p0, v0}, Lcom/caverock/androidsvg/SVGParser$XPPAttributesWrapper;-><init>(Lcom/caverock/androidsvg/SVGParser;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 693
    .local v1, "attributes":Lcom/caverock/androidsvg/SVGParser$XPPAttributesWrapper;
    const-string v2, "http://xmlpull.org/v1/doc/features.html#process-docdecl"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 694
    const-string v2, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v4, 0x1

    invoke-interface {v0, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 695
    const/4 v2, 0x0

    invoke-interface {v0, p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 697
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 698
    .local v2, "eventType":I
    :goto_0
    if-eq v2, v4, :cond_3

    .line 700
    const/16 v5, 0x3a

    const-string v6, "SVGParser"

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2

    .line 729
    :pswitch_1
    if-eqz p2, :cond_2

    :try_start_1
    iget-object v5, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    .line 730
    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVG;->getRootElement()Lcom/caverock/androidsvg/SVG$Svg;

    move-result-object v5

    if-nez v5, :cond_2

    .line 731
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    const-string v7, "<!ENTITY "

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v5, :cond_2

    .line 734
    :try_start_2
    const-string v3, "Switching to SAX parser to process entities"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 736
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseUsingSAX(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2

    .line 742
    goto :goto_1

    .line 737
    :catch_0
    move-exception v3

    .line 739
    .local v3, "e":Ljava/io/IOException;
    :try_start_3
    const-string v4, "Detected internal entity definitions, but could not parse them."

    invoke-static {v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    .end local v3    # "e":Ljava/io/IOException;
    :goto_1
    return-void

    .line 748
    :pswitch_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PROC INSTR: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    new-instance v5, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    .line 750
    .local v5, "scan":Lcom/caverock/androidsvg/SVGParser$TextScanner;
    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextToken()Ljava/lang/String;

    move-result-object v6

    .line 751
    .local v6, "instr":Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/caverock/androidsvg/SVGParser;->parseProcessingInstructionAttributes(Lcom/caverock/androidsvg/SVGParser$TextScanner;)Ljava/util/Map;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/caverock/androidsvg/SVGParser;->handleProcessingInstruction(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_2

    .line 722
    .end local v5    # "scan":Lcom/caverock/androidsvg/SVGParser$TextScanner;
    .end local v6    # "instr":Ljava/lang/String;
    :pswitch_3
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/caverock/androidsvg/SVGParser;->text(Ljava/lang/String;)V

    .line 723
    goto/16 :goto_2

    .line 717
    :pswitch_4
    const/4 v5, 0x2

    new-array v5, v5, [I

    .line 718
    .local v5, "startAndLength":[I
    invoke-interface {v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getTextCharacters([I)[C

    move-result-object v6

    .line 719
    .local v6, "text":[C
    aget v7, v5, v3

    aget v8, v5, v4

    invoke-direct {p0, v6, v7, v8}, Lcom/caverock/androidsvg/SVGParser;->text([CII)V

    .line 720
    goto :goto_2

    .line 711
    .end local v5    # "startAndLength":[I
    .end local v6    # "text":[C
    :pswitch_5
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 712
    .local v6, "qName":Ljava/lang/String;
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getPrefix()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 713
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getPrefix()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    .line 714
    :cond_0
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v7, v6}, Lcom/caverock/androidsvg/SVGParser;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    goto :goto_2

    .line 705
    .end local v6    # "qName":Ljava/lang/String;
    :pswitch_6
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 706
    .restart local v6    # "qName":Ljava/lang/String;
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getPrefix()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 707
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getPrefix()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    .line 708
    :cond_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v7, v6, v1}, Lcom/caverock/androidsvg/SVGParser;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 709
    goto :goto_2

    .line 702
    .end local v6    # "qName":Ljava/lang/String;
    :pswitch_7
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGParser;->startDocument()V

    .line 703
    nop

    .line 754
    :cond_2
    :goto_2
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextToken()I

    move-result v5

    move v2, v5

    goto/16 :goto_0

    .line 756
    :cond_3
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGParser;->endDocument()V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 766
    .end local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v1    # "attributes":Lcom/caverock/androidsvg/SVGParser$XPPAttributesWrapper;
    .end local v2    # "eventType":I
    nop

    .line 767
    return-void

    .line 763
    :catch_1
    move-exception v0

    .line 765
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/caverock/androidsvg/SVGParseException;

    const-string v2, "Stream error"

    invoke-direct {v1, v2, v0}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 759
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 761
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v1, Lcom/caverock/androidsvg/SVGParseException;

    const-string v2, "XML parser problem"

    invoke-direct {v1, v2, v0}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static parseVectorEffect(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$VectorEffect;
    .locals 1
    .param p0, "val"    # Ljava/lang/String;

    .line 4090
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "non-scaling-stroke"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_1
    const-string v0, "none"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 4094
    const/4 v0, 0x0

    return-object v0

    .line 4093
    :pswitch_0
    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$VectorEffect;->NonScalingStroke:Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    return-object v0

    .line 4092
    :pswitch_1
    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$VectorEffect;->None:Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x33af38 -> :sswitch_1
        0x611b9e3e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static parseViewBox(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Box;
    .locals 7
    .param p0, "val"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    .line 3523
    new-instance v0, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    invoke-direct {v0, p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    .line 3524
    .local v0, "scan":Lcom/caverock/androidsvg/SVGParser$TextScanner;
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 3526
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v1

    .line 3527
    .local v1, "minX":F
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 3528
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v2

    .line 3529
    .local v2, "minY":F
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 3530
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v3

    .line 3531
    .local v3, "width":F
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 3532
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v4

    .line 3534
    .local v4, "height":F
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-nez v5, :cond_2

    .line 3536
    const/4 v5, 0x0

    cmpg-float v6, v3, v5

    if-ltz v6, :cond_1

    .line 3538
    cmpg-float v5, v4, v5

    if-ltz v5, :cond_0

    .line 3541
    new-instance v5, Lcom/caverock/androidsvg/SVG$Box;

    invoke-direct {v5, v1, v2, v3, v4}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    return-object v5

    .line 3539
    :cond_0
    new-instance v5, Lcom/caverock/androidsvg/SVGParseException;

    const-string v6, "Invalid viewBox. height cannot be negative"

    invoke-direct {v5, v6}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3537
    :cond_1
    new-instance v5, Lcom/caverock/androidsvg/SVGParseException;

    const-string v6, "Invalid viewBox. width cannot be negative"

    invoke-direct {v5, v6}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3535
    :cond_2
    new-instance v5, Lcom/caverock/androidsvg/SVGParseException;

    const-string v6, "Invalid viewBox definition - should have four numbers"

    invoke-direct {v5, v6}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private path(Lorg/xml/sax/Attributes;)V
    .locals 2
    .param p1, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    .line 1402
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<path>"

    invoke-direct {p0, v1, v0}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1404
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_0

    .line 1406
    new-instance v0, Lcom/caverock/androidsvg/SVG$Path;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$Path;-><init>()V

    .line 1407
    .local v0, "obj":Lcom/caverock/androidsvg/SVG$Path;
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Path;->document:Lcom/caverock/androidsvg/SVG;

    .line 1408
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Path;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1409
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1410
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1411
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    .line 1412
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 1413
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesPath(Lcom/caverock/androidsvg/SVG$Path;Lorg/xml/sax/Attributes;)V

    .line 1414
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 1415
    return-void

    .line 1405
    .end local v0    # "obj":Lcom/caverock/androidsvg/SVG$Path;
    :cond_0
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid document. Root element must be <svg>"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private pattern(Lorg/xml/sax/Attributes;)V
    .locals 2
    .param p1, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    .line 2319
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<pattern>"

    invoke-direct {p0, v1, v0}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2321
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_0

    .line 2323
    new-instance v0, Lcom/caverock/androidsvg/SVG$Pattern;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$Pattern;-><init>()V

    .line 2324
    .local v0, "obj":Lcom/caverock/androidsvg/SVG$Pattern;
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Pattern;->document:Lcom/caverock/androidsvg/SVG;

    .line 2325
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Pattern;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 2326
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 2327
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 2328
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 2329
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesViewBox(Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;Lorg/xml/sax/Attributes;)V

    .line 2330
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesPattern(Lcom/caverock/androidsvg/SVG$Pattern;Lorg/xml/sax/Attributes;)V

    .line 2331
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 2332
    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 2333
    return-void

    .line 2322
    .end local v0    # "obj":Lcom/caverock/androidsvg/SVG$Pattern;
    :cond_0
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid document. Root element must be <svg>"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private polygon(Lorg/xml/sax/Attributes;)V
    .locals 2
    .param p1, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    .line 1712
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<polygon>"

    invoke-direct {p0, v1, v0}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1714
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_0

    .line 1716
    new-instance v0, Lcom/caverock/androidsvg/SVG$Polygon;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$Polygon;-><init>()V

    .line 1717
    .local v0, "obj":Lcom/caverock/androidsvg/SVG$Polygon;
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Polygon;->document:Lcom/caverock/androidsvg/SVG;

    .line 1718
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Polygon;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1719
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1720
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1721
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    .line 1722
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 1723
    const-string v1, "polygon"

    invoke-direct {p0, v0, p1, v1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesPolyLine(Lcom/caverock/androidsvg/SVG$PolyLine;Lorg/xml/sax/Attributes;Ljava/lang/String;)V

    .line 1724
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 1725
    return-void

    .line 1715
    .end local v0    # "obj":Lcom/caverock/androidsvg/SVG$Polygon;
    :cond_0
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid document. Root element must be <svg>"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private polyline(Lorg/xml/sax/Attributes;)V
    .locals 2
    .param p1, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    .line 1655
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<polyline>"

    invoke-direct {p0, v1, v0}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1657
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_0

    .line 1659
    new-instance v0, Lcom/caverock/androidsvg/SVG$PolyLine;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$PolyLine;-><init>()V

    .line 1660
    .local v0, "obj":Lcom/caverock/androidsvg/SVG$PolyLine;
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$PolyLine;->document:Lcom/caverock/androidsvg/SVG;

    .line 1661
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$PolyLine;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1662
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1663
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1664
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    .line 1665
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 1666
    const-string v1, "polyline"

    invoke-direct {p0, v0, p1, v1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesPolyLine(Lcom/caverock/androidsvg/SVG$PolyLine;Lorg/xml/sax/Attributes;Ljava/lang/String;)V

    .line 1667
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 1668
    return-void

    .line 1658
    .end local v0    # "obj":Lcom/caverock/androidsvg/SVG$PolyLine;
    :cond_0
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid document. Root element must be <svg>"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static processStyleProperty(Lcom/caverock/androidsvg/SVG$Style;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "style"    # Lcom/caverock/androidsvg/SVG$Style;
    .param p1, "localName"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;

    .line 2966
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 2967
    return-void

    .line 2969
    :cond_0
    const-string v0, "inherit"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2970
    return-void

    .line 2972
    :cond_1
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    invoke-static {p1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string v1, "none"

    const-string v2, "SVGParser"

    const-string v3, "currentColor"

    const/16 v4, 0x7c

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    .line 3244
    :pswitch_0
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseRenderQuality(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$RenderQuality;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->imageRendering:Lcom/caverock/androidsvg/SVG$Style$RenderQuality;

    .line 3245
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->imageRendering:Lcom/caverock/androidsvg/SVG$Style$RenderQuality;

    if-eqz v0, :cond_8

    .line 3246
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide v2, 0x2000000000L

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_3

    .line 3238
    :pswitch_1
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseVectorEffect(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->vectorEffect:Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    .line 3239
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->vectorEffect:Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    if-eqz v0, :cond_8

    .line 3240
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide v2, 0x800000000L

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_3

    .line 3233
    :pswitch_2
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseOpacity(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->viewportFillOpacity:Ljava/lang/Float;

    .line 3234
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide v2, 0x400000000L

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 3235
    goto/16 :goto_3

    .line 3218
    :pswitch_3
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3219
    invoke-static {}, Lcom/caverock/androidsvg/SVG$CurrentColor;->getInstance()Lcom/caverock/androidsvg/SVG$CurrentColor;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->viewportFill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    goto :goto_0

    .line 3222
    :cond_2
    :try_start_0
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseColour(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Colour;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->viewportFill:Lcom/caverock/androidsvg/SVG$SvgPaint;
    :try_end_0
    .catch Lcom/caverock/androidsvg/SVGParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3227
    nop

    .line 3229
    :goto_0
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide v2, 0x200000000L

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 3230
    goto/16 :goto_3

    .line 3223
    :catch_0
    move-exception v0

    .line 3225
    .local v0, "e":Lcom/caverock/androidsvg/SVGParseException;
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParseException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3226
    goto/16 :goto_3

    .line 3213
    .end local v0    # "e":Lcom/caverock/androidsvg/SVGParseException;
    :pswitch_4
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseOpacity(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->solidOpacity:Ljava/lang/Float;

    .line 3214
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide v2, 0x100000000L

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 3215
    goto/16 :goto_3

    .line 3198
    :pswitch_5
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3199
    invoke-static {}, Lcom/caverock/androidsvg/SVG$CurrentColor;->getInstance()Lcom/caverock/androidsvg/SVG$CurrentColor;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->solidColor:Lcom/caverock/androidsvg/SVG$SvgPaint;

    goto :goto_1

    .line 3202
    :cond_3
    :try_start_1
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseColour(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Colour;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->solidColor:Lcom/caverock/androidsvg/SVG$SvgPaint;
    :try_end_1
    .catch Lcom/caverock/androidsvg/SVGParseException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3207
    nop

    .line 3209
    :goto_1
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide v2, 0x80000000L

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 3210
    goto/16 :goto_3

    .line 3203
    :catch_1
    move-exception v0

    .line 3205
    .restart local v0    # "e":Lcom/caverock/androidsvg/SVGParseException;
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParseException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3206
    goto/16 :goto_3

    .line 3193
    .end local v0    # "e":Lcom/caverock/androidsvg/SVGParseException;
    :pswitch_6
    invoke-static {p2, p1}, Lcom/caverock/androidsvg/SVGParser;->parseFunctionalIRI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->mask:Ljava/lang/String;

    .line 3194
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v2, 0x40000000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 3195
    goto/16 :goto_3

    .line 3188
    :pswitch_7
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseFillRule(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$FillRule;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->clipRule:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    .line 3189
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v2, 0x20000000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 3190
    goto/16 :goto_3

    .line 3183
    :pswitch_8
    invoke-static {p2, p1}, Lcom/caverock/androidsvg/SVGParser;->parseFunctionalIRI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->clipPath:Ljava/lang/String;

    .line 3184
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v2, 0x10000000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 3185
    goto/16 :goto_3

    .line 3177
    :pswitch_9
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseClip(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$CSSClipRect;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->clip:Lcom/caverock/androidsvg/SVG$CSSClipRect;

    .line 3178
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->clip:Lcom/caverock/androidsvg/SVG$CSSClipRect;

    if-eqz v0, :cond_8

    .line 3179
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v2, 0x100000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_3

    .line 3172
    :pswitch_a
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseOpacity(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->stopOpacity:Ljava/lang/Float;

    .line 3173
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v2, 0x8000000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 3174
    goto/16 :goto_3

    .line 3157
    :pswitch_b
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3158
    invoke-static {}, Lcom/caverock/androidsvg/SVG$CurrentColor;->getInstance()Lcom/caverock/androidsvg/SVG$CurrentColor;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->stopColor:Lcom/caverock/androidsvg/SVG$SvgPaint;

    goto :goto_2

    .line 3161
    :cond_4
    :try_start_2
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseColour(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Colour;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->stopColor:Lcom/caverock/androidsvg/SVG$SvgPaint;
    :try_end_2
    .catch Lcom/caverock/androidsvg/SVGParseException; {:try_start_2 .. :try_end_2} :catch_2

    .line 3166
    nop

    .line 3168
    :goto_2
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v2, 0x4000000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 3169
    goto/16 :goto_3

    .line 3162
    :catch_2
    move-exception v0

    .line 3164
    .restart local v0    # "e":Lcom/caverock/androidsvg/SVGParseException;
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParseException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3165
    goto/16 :goto_3

    .line 3150
    .end local v0    # "e":Lcom/caverock/androidsvg/SVGParseException;
    :pswitch_c
    invoke-virtual {p2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "|visible|hidden|collapse|"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 3151
    goto/16 :goto_3

    .line 3152
    :cond_5
    const-string v0, "visible"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->visibility:Ljava/lang/Boolean;

    .line 3153
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v2, 0x2000000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 3154
    goto/16 :goto_3

    .line 3143
    :pswitch_d
    invoke-virtual {p2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "|inline|block|list-item|run-in|compact|marker|table|inline-table|table-row-group|table-header-group|table-footer-group|table-row|table-column-group|table-column|table-cell|table-caption|none|"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 3144
    goto/16 :goto_3

    .line 3145
    :cond_6
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->display:Ljava/lang/Boolean;

    .line 3146
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v2, 0x1000000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 3147
    goto/16 :goto_3

    .line 3138
    :pswitch_e
    invoke-static {p2, p1}, Lcom/caverock/androidsvg/SVGParser;->parseFunctionalIRI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->markerEnd:Ljava/lang/String;

    .line 3139
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v2, 0x800000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 3140
    goto/16 :goto_3

    .line 3133
    :pswitch_f
    invoke-static {p2, p1}, Lcom/caverock/androidsvg/SVGParser;->parseFunctionalIRI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->markerMid:Ljava/lang/String;

    .line 3134
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v2, 0x400000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 3135
    goto/16 :goto_3

    .line 3128
    :pswitch_10
    invoke-static {p2, p1}, Lcom/caverock/androidsvg/SVGParser;->parseFunctionalIRI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->markerStart:Ljava/lang/String;

    .line 3129
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v2, 0x200000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 3130
    goto/16 :goto_3

    .line 3121
    :pswitch_11
    invoke-static {p2, p1}, Lcom/caverock/androidsvg/SVGParser;->parseFunctionalIRI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->markerStart:Ljava/lang/String;

    .line 3122
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->markerStart:Ljava/lang/String;

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->markerMid:Ljava/lang/String;

    .line 3123
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->markerStart:Ljava/lang/String;

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->markerEnd:Ljava/lang/String;

    .line 3124
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v2, 0xe00000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 3125
    goto/16 :goto_3

    .line 3115
    :pswitch_12
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseOverflow(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->overflow:Ljava/lang/Boolean;

    .line 3116
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->overflow:Ljava/lang/Boolean;

    if-eqz v0, :cond_8

    .line 3117
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v2, 0x80000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_3

    .line 3109
    :pswitch_13
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseTextAnchor(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->textAnchor:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    .line 3110
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->textAnchor:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    if-eqz v0, :cond_8

    .line 3111
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v2, 0x40000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_3

    .line 3103
    :pswitch_14
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseTextDirection(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$TextDirection;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->direction:Lcom/caverock/androidsvg/SVG$Style$TextDirection;

    .line 3104
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->direction:Lcom/caverock/androidsvg/SVG$Style$TextDirection;

    if-eqz v0, :cond_8

    .line 3105
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide v2, 0x1000000000L

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_3

    .line 3097
    :pswitch_15
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseTextDecoration(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->textDecoration:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    .line 3098
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->textDecoration:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    if-eqz v0, :cond_8

    .line 3099
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v2, 0x20000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_3

    .line 3091
    :pswitch_16
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseFontStyle(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->fontStyle:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    .line 3092
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->fontStyle:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    if-eqz v0, :cond_8

    .line 3093
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v2, 0x10000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_3

    .line 3085
    :pswitch_17
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseFontWeight(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    .line 3086
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    if-eqz v0, :cond_8

    .line 3087
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v2, 0x8000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_3

    .line 3079
    :pswitch_18
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseFontSize(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->fontSize:Lcom/caverock/androidsvg/SVG$Length;

    .line 3080
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->fontSize:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v0, :cond_8

    .line 3081
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v2, 0x4000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_3

    .line 3073
    :pswitch_19
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseFontFamily(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->fontFamily:Ljava/util/List;

    .line 3074
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->fontFamily:Ljava/util/List;

    if-eqz v0, :cond_8

    .line 3075
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v2, 0x2000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_3

    .line 3069
    :pswitch_1a
    invoke-static {p0, p2}, Lcom/caverock/androidsvg/SVGParser;->parseFont(Lcom/caverock/androidsvg/SVG$Style;Ljava/lang/String;)V

    .line 3070
    goto/16 :goto_3

    .line 3061
    :pswitch_1b
    :try_start_3
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseColour(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Colour;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->color:Lcom/caverock/androidsvg/SVG$Colour;

    .line 3062
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v2, 0x1000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J
    :try_end_3
    .catch Lcom/caverock/androidsvg/SVGParseException; {:try_start_3 .. :try_end_3} :catch_3

    .line 3065
    goto/16 :goto_3

    .line 3063
    :catch_3
    move-exception v0

    .line 3066
    goto/16 :goto_3

    .line 3055
    :pswitch_1c
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseOpacity(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->opacity:Ljava/lang/Float;

    .line 3056
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v2, 0x800

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 3057
    goto/16 :goto_3

    .line 3047
    :pswitch_1d
    :try_start_4
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->strokeDashOffset:Lcom/caverock/androidsvg/SVG$Length;

    .line 3048
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v2, 0x400

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J
    :try_end_4
    .catch Lcom/caverock/androidsvg/SVGParseException; {:try_start_4 .. :try_end_4} :catch_4

    .line 3051
    goto/16 :goto_3

    .line 3049
    :catch_4
    move-exception v0

    .line 3052
    goto/16 :goto_3

    .line 3035
    :pswitch_1e
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v1, 0x200

    if-eqz v0, :cond_7

    .line 3036
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->strokeDashArray:[Lcom/caverock/androidsvg/SVG$Length;

    .line 3037
    iget-wide v3, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    or-long v0, v3, v1

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 3038
    goto/16 :goto_3

    .line 3040
    :cond_7
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseStrokeDashArray(Ljava/lang/String;)[Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->strokeDashArray:[Lcom/caverock/androidsvg/SVG$Length;

    .line 3041
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->strokeDashArray:[Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v0, :cond_8

    .line 3042
    iget-wide v3, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    or-long v0, v3, v1

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_3

    .line 3027
    :pswitch_1f
    :try_start_5
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->strokeMiterLimit:Ljava/lang/Float;

    .line 3028
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v2, 0x100

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J
    :try_end_5
    .catch Lcom/caverock/androidsvg/SVGParseException; {:try_start_5 .. :try_end_5} :catch_5

    .line 3031
    goto/16 :goto_3

    .line 3029
    :catch_5
    move-exception v0

    .line 3032
    goto/16 :goto_3

    .line 3020
    :pswitch_20
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseStrokeLineJoin(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$LineJoin;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->strokeLineJoin:Lcom/caverock/androidsvg/SVG$Style$LineJoin;

    .line 3021
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->strokeLineJoin:Lcom/caverock/androidsvg/SVG$Style$LineJoin;

    if-eqz v0, :cond_8

    .line 3022
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v2, 0x80

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_3

    .line 3014
    :pswitch_21
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseStrokeLineCap(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$LineCap;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->strokeLineCap:Lcom/caverock/androidsvg/SVG$Style$LineCap;

    .line 3015
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->strokeLineCap:Lcom/caverock/androidsvg/SVG$Style$LineCap;

    if-eqz v0, :cond_8

    .line 3016
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v2, 0x40

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto :goto_3

    .line 3006
    :pswitch_22
    :try_start_6
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->strokeWidth:Lcom/caverock/androidsvg/SVG$Length;

    .line 3007
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v2, 0x20

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J
    :try_end_6
    .catch Lcom/caverock/androidsvg/SVGParseException; {:try_start_6 .. :try_end_6} :catch_6

    .line 3010
    goto :goto_3

    .line 3008
    :catch_6
    move-exception v0

    .line 3011
    goto :goto_3

    .line 2999
    :pswitch_23
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseOpacity(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->strokeOpacity:Ljava/lang/Float;

    .line 3000
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->strokeOpacity:Ljava/lang/Float;

    if-eqz v0, :cond_8

    .line 3001
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto :goto_3

    .line 2993
    :pswitch_24
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parsePaintSpecifier(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgPaint;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->stroke:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 2994
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->stroke:Lcom/caverock/androidsvg/SVG$SvgPaint;

    if-eqz v0, :cond_8

    .line 2995
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto :goto_3

    .line 2987
    :pswitch_25
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseOpacity(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->fillOpacity:Ljava/lang/Float;

    .line 2988
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->fillOpacity:Ljava/lang/Float;

    if-eqz v0, :cond_8

    .line 2989
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto :goto_3

    .line 2981
    :pswitch_26
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseFillRule(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$FillRule;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->fillRule:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    .line 2982
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->fillRule:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    if-eqz v0, :cond_8

    .line 2983
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto :goto_3

    .line 2975
    :pswitch_27
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parsePaintSpecifier(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgPaint;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->fill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 2976
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->fill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    if-eqz v0, :cond_8

    .line 2977
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 3252
    :cond_8
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2f
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private radialGradient(Lorg/xml/sax/Attributes;)V
    .locals 2
    .param p1, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    .line 2088
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<radialGradient>"

    invoke-direct {p0, v1, v0}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2090
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_0

    .line 2092
    new-instance v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;-><init>()V

    .line 2093
    .local v0, "obj":Lcom/caverock/androidsvg/SVG$SvgRadialGradient;
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->document:Lcom/caverock/androidsvg/SVG;

    .line 2094
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 2095
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 2096
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 2097
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesGradient(Lcom/caverock/androidsvg/SVG$GradientElement;Lorg/xml/sax/Attributes;)V

    .line 2098
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesRadialGradient(Lcom/caverock/androidsvg/SVG$SvgRadialGradient;Lorg/xml/sax/Attributes;)V

    .line 2099
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 2100
    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 2101
    return-void

    .line 2091
    .end local v0    # "obj":Lcom/caverock/androidsvg/SVG$SvgRadialGradient;
    :cond_0
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid document. Root element must be <svg>"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private rect(Lorg/xml/sax/Attributes;)V
    .locals 2
    .param p1, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    .line 1446
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<rect>"

    invoke-direct {p0, v1, v0}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1448
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_0

    .line 1450
    new-instance v0, Lcom/caverock/androidsvg/SVG$Rect;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$Rect;-><init>()V

    .line 1451
    .local v0, "obj":Lcom/caverock/androidsvg/SVG$Rect;
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Rect;->document:Lcom/caverock/androidsvg/SVG;

    .line 1452
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Rect;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1453
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1454
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1455
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    .line 1456
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 1457
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesRect(Lcom/caverock/androidsvg/SVG$Rect;Lorg/xml/sax/Attributes;)V

    .line 1458
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 1459
    return-void

    .line 1449
    .end local v0    # "obj":Lcom/caverock/androidsvg/SVG$Rect;
    :cond_0
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid document. Root element must be <svg>"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private solidColor(Lorg/xml/sax/Attributes;)V
    .locals 2
    .param p1, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    .line 2206
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<solidColor>"

    invoke-direct {p0, v1, v0}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2208
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_0

    .line 2210
    new-instance v0, Lcom/caverock/androidsvg/SVG$SolidColor;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$SolidColor;-><init>()V

    .line 2211
    .local v0, "obj":Lcom/caverock/androidsvg/SVG$SolidColor;
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SolidColor;->document:Lcom/caverock/androidsvg/SVG;

    .line 2212
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SolidColor;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 2213
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 2214
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 2215
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 2216
    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 2217
    return-void

    .line 2209
    .end local v0    # "obj":Lcom/caverock/androidsvg/SVG$SolidColor;
    :cond_0
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid document. Root element must be <svg>"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private startDocument()V
    .locals 1

    .line 874
    new-instance v0, Lcom/caverock/androidsvg/SVG;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG;-><init>()V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    .line 875
    return-void
.end method

.method private startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 5
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    .line 880
    iget-boolean v0, p0, Lcom/caverock/androidsvg/SVGParser;->ignoring:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 881
    iget v0, p0, Lcom/caverock/androidsvg/SVGParser;->ignoreDepth:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/caverock/androidsvg/SVGParser;->ignoreDepth:I

    .line 882
    return-void

    .line 884
    :cond_0
    const-string v0, "http://www.w3.org/2000/svg"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 885
    return-void

    .line 888
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    move-object v0, p2

    goto :goto_0

    :cond_2
    move-object v0, p3

    .line 890
    .local v0, "tag":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Lcom/caverock/androidsvg/SVGParser$SVGElem;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGElem;

    move-result-object v2

    .line 891
    .local v2, "elem":Lcom/caverock/androidsvg/SVGParser$SVGElem;
    sget-object v3, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGElem:[I

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$SVGElem;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 956
    iput-boolean v1, p0, Lcom/caverock/androidsvg/SVGParser;->ignoring:Z

    .line 957
    iput v1, p0, Lcom/caverock/androidsvg/SVGParser;->ignoreDepth:I

    goto/16 :goto_1

    .line 954
    :pswitch_0
    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->solidColor(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_1

    .line 952
    :pswitch_1
    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->style(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_1

    .line 950
    :pswitch_2
    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->mask(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_1

    .line 948
    :pswitch_3
    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->view(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_1

    .line 946
    :pswitch_4
    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->image(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_1

    .line 944
    :pswitch_5
    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->pattern(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_1

    .line 942
    :pswitch_6
    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->textPath(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_1

    .line 940
    :pswitch_7
    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->clipPath(Lorg/xml/sax/Attributes;)V

    goto :goto_1

    .line 936
    :pswitch_8
    iput-boolean v1, p0, Lcom/caverock/androidsvg/SVGParser;->inMetadataElement:Z

    .line 937
    iput-object v2, p0, Lcom/caverock/androidsvg/SVGParser;->metadataTag:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    .line 938
    goto :goto_1

    .line 933
    :pswitch_9
    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->stop(Lorg/xml/sax/Attributes;)V

    goto :goto_1

    .line 931
    :pswitch_a
    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->radialGradient(Lorg/xml/sax/Attributes;)V

    goto :goto_1

    .line 929
    :pswitch_b
    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->linearGradient(Lorg/xml/sax/Attributes;)V

    goto :goto_1

    .line 927
    :pswitch_c
    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->marker(Lorg/xml/sax/Attributes;)V

    goto :goto_1

    .line 925
    :pswitch_d
    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->symbol(Lorg/xml/sax/Attributes;)V

    goto :goto_1

    .line 923
    :pswitch_e
    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->zwitch(Lorg/xml/sax/Attributes;)V

    goto :goto_1

    .line 921
    :pswitch_f
    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->tref(Lorg/xml/sax/Attributes;)V

    goto :goto_1

    .line 919
    :pswitch_10
    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->tspan(Lorg/xml/sax/Attributes;)V

    goto :goto_1

    .line 917
    :pswitch_11
    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->text(Lorg/xml/sax/Attributes;)V

    goto :goto_1

    .line 915
    :pswitch_12
    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->polygon(Lorg/xml/sax/Attributes;)V

    goto :goto_1

    .line 913
    :pswitch_13
    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->polyline(Lorg/xml/sax/Attributes;)V

    goto :goto_1

    .line 911
    :pswitch_14
    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->line(Lorg/xml/sax/Attributes;)V

    goto :goto_1

    .line 909
    :pswitch_15
    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->ellipse(Lorg/xml/sax/Attributes;)V

    goto :goto_1

    .line 907
    :pswitch_16
    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->circle(Lorg/xml/sax/Attributes;)V

    goto :goto_1

    .line 905
    :pswitch_17
    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->rect(Lorg/xml/sax/Attributes;)V

    goto :goto_1

    .line 903
    :pswitch_18
    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->path(Lorg/xml/sax/Attributes;)V

    goto :goto_1

    .line 901
    :pswitch_19
    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->use(Lorg/xml/sax/Attributes;)V

    goto :goto_1

    .line 899
    :pswitch_1a
    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->defs(Lorg/xml/sax/Attributes;)V

    goto :goto_1

    .line 897
    :pswitch_1b
    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->g(Lorg/xml/sax/Attributes;)V

    goto :goto_1

    .line 894
    :pswitch_1c
    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->svg(Lorg/xml/sax/Attributes;)V

    .line 960
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_1b
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private stop(Lorg/xml/sax/Attributes;)V
    .locals 2
    .param p1, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    .line 2141
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<stop>"

    invoke-direct {p0, v1, v0}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2143
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_1

    .line 2145
    instance-of v0, v0, Lcom/caverock/androidsvg/SVG$GradientElement;

    if-eqz v0, :cond_0

    .line 2147
    new-instance v0, Lcom/caverock/androidsvg/SVG$Stop;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$Stop;-><init>()V

    .line 2148
    .local v0, "obj":Lcom/caverock/androidsvg/SVG$Stop;
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Stop;->document:Lcom/caverock/androidsvg/SVG;

    .line 2149
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Stop;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 2150
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 2151
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 2152
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStop(Lcom/caverock/androidsvg/SVG$Stop;Lorg/xml/sax/Attributes;)V

    .line 2153
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 2154
    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 2155
    return-void

    .line 2146
    .end local v0    # "obj":Lcom/caverock/androidsvg/SVG$Stop;
    :cond_0
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid document. <stop> elements are only valid inside <linearGradient> or <radialGradient> elements."

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2144
    :cond_1
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid document. Root element must be <svg>"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private style(Lorg/xml/sax/Attributes;)V
    .locals 6
    .param p1, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    .line 4450
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<style>"

    invoke-direct {p0, v1, v0}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4452
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_2

    .line 4456
    const/4 v0, 0x1

    .line 4457
    .local v0, "isTextCSS":Z
    const-string v1, "all"

    .line 4459
    .local v1, "media":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 4461
    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 4462
    .local v3, "val":Ljava/lang/String;
    sget-object v4, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v5

    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    goto :goto_1

    .line 4468
    :pswitch_0
    move-object v1, v3

    .line 4469
    goto :goto_1

    .line 4465
    :pswitch_1
    const-string v4, "text/css"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 4466
    nop

    .line 4459
    .end local v3    # "val":Ljava/lang/String;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4475
    .end local v2    # "i":I
    :cond_0
    const/4 v2, 0x1

    if-eqz v0, :cond_1

    sget-object v3, Lcom/caverock/androidsvg/CSSParser$MediaType;->screen:Lcom/caverock/androidsvg/CSSParser$MediaType;

    invoke-static {v1, v3}, Lcom/caverock/androidsvg/CSSParser;->mediaMatches(Ljava/lang/String;Lcom/caverock/androidsvg/CSSParser$MediaType;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4476
    iput-boolean v2, p0, Lcom/caverock/androidsvg/SVGParser;->inStyleElement:Z

    goto :goto_2

    .line 4478
    :cond_1
    iput-boolean v2, p0, Lcom/caverock/androidsvg/SVGParser;->ignoring:Z

    .line 4479
    iput v2, p0, Lcom/caverock/androidsvg/SVGParser;->ignoreDepth:I

    .line 4481
    :goto_2
    return-void

    .line 4453
    .end local v0    # "isTextCSS":Z
    .end local v1    # "media":Ljava/lang/String;
    :cond_2
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid document. Root element must be <svg>"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x58
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private svg(Lorg/xml/sax/Attributes;)V
    .locals 2
    .param p1, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    .line 1184
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<svg>"

    invoke-direct {p0, v1, v0}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1186
    new-instance v0, Lcom/caverock/androidsvg/SVG$Svg;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$Svg;-><init>()V

    .line 1187
    .local v0, "obj":Lcom/caverock/androidsvg/SVG$Svg;
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Svg;->document:Lcom/caverock/androidsvg/SVG;

    .line 1188
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Svg;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1189
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1190
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1191
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 1192
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesViewBox(Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;Lorg/xml/sax/Attributes;)V

    .line 1193
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesSVG(Lcom/caverock/androidsvg/SVG$Svg;Lorg/xml/sax/Attributes;)V

    .line 1194
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-nez v1, :cond_0

    .line 1195
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    invoke-virtual {v1, v0}, Lcom/caverock/androidsvg/SVG;->setRootElement(Lcom/caverock/androidsvg/SVG$Svg;)V

    goto :goto_0

    .line 1197
    :cond_0
    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 1199
    :goto_0
    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1200
    return-void
.end method

.method private symbol(Lorg/xml/sax/Attributes;)V
    .locals 2
    .param p1, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    .line 1909
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<symbol>"

    invoke-direct {p0, v1, v0}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1911
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_0

    .line 1913
    new-instance v0, Lcom/caverock/androidsvg/SVG$Symbol;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$Symbol;-><init>()V

    .line 1914
    .local v0, "obj":Lcom/caverock/androidsvg/SVG$Symbol;
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Symbol;->document:Lcom/caverock/androidsvg/SVG;

    .line 1915
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Symbol;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1916
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1917
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1918
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 1919
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesViewBox(Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;Lorg/xml/sax/Attributes;)V

    .line 1920
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 1921
    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1922
    return-void

    .line 1912
    .end local v0    # "obj":Lcom/caverock/androidsvg/SVG$Symbol;
    :cond_0
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid document. Root element must be <svg>"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private text(Ljava/lang/String;)V
    .locals 2
    .param p1, "characters"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    .line 965
    iget-boolean v0, p0, Lcom/caverock/androidsvg/SVGParser;->ignoring:Z

    if-eqz v0, :cond_0

    .line 966
    return-void

    .line 968
    :cond_0
    iget-boolean v0, p0, Lcom/caverock/androidsvg/SVGParser;->inMetadataElement:Z

    if-eqz v0, :cond_2

    .line 970
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->metadataElementContents:Ljava/lang/StringBuilder;

    if-nez v0, :cond_1

    .line 971
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->metadataElementContents:Ljava/lang/StringBuilder;

    .line 972
    :cond_1
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->metadataElementContents:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 974
    :cond_2
    iget-boolean v0, p0, Lcom/caverock/androidsvg/SVGParser;->inStyleElement:Z

    if-eqz v0, :cond_4

    .line 976
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->styleElementContents:Ljava/lang/StringBuilder;

    if-nez v0, :cond_3

    .line 977
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->styleElementContents:Ljava/lang/StringBuilder;

    .line 978
    :cond_3
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->styleElementContents:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 980
    :cond_4
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    instance-of v0, v0, Lcom/caverock/androidsvg/SVG$TextContainer;

    if-eqz v0, :cond_5

    .line 982
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGParser;->appendToTextContainer(Ljava/lang/String;)V

    .line 984
    :cond_5
    :goto_0
    return-void
.end method

.method private text(Lorg/xml/sax/Attributes;)V
    .locals 2
    .param p1, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    .line 1734
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<text>"

    invoke-direct {p0, v1, v0}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1736
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_0

    .line 1738
    new-instance v0, Lcom/caverock/androidsvg/SVG$Text;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$Text;-><init>()V

    .line 1739
    .local v0, "obj":Lcom/caverock/androidsvg/SVG$Text;
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Text;->document:Lcom/caverock/androidsvg/SVG;

    .line 1740
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Text;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1741
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1742
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1743
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    .line 1744
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 1745
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTextPosition(Lcom/caverock/androidsvg/SVG$TextPositionedContainer;Lorg/xml/sax/Attributes;)V

    .line 1746
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 1747
    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1748
    return-void

    .line 1737
    .end local v0    # "obj":Lcom/caverock/androidsvg/SVG$Text;
    :cond_0
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid document. Root element must be <svg>"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private text([CII)V
    .locals 1
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    .line 989
    iget-boolean v0, p0, Lcom/caverock/androidsvg/SVGParser;->ignoring:Z

    if-eqz v0, :cond_0

    .line 990
    return-void

    .line 992
    :cond_0
    iget-boolean v0, p0, Lcom/caverock/androidsvg/SVGParser;->inMetadataElement:Z

    if-eqz v0, :cond_2

    .line 994
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->metadataElementContents:Ljava/lang/StringBuilder;

    if-nez v0, :cond_1

    .line 995
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->metadataElementContents:Ljava/lang/StringBuilder;

    .line 996
    :cond_1
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->metadataElementContents:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 998
    :cond_2
    iget-boolean v0, p0, Lcom/caverock/androidsvg/SVGParser;->inStyleElement:Z

    if-eqz v0, :cond_4

    .line 1000
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->styleElementContents:Ljava/lang/StringBuilder;

    if-nez v0, :cond_3

    .line 1001
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->styleElementContents:Ljava/lang/StringBuilder;

    .line 1002
    :cond_3
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->styleElementContents:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1004
    :cond_4
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    instance-of v0, v0, Lcom/caverock/androidsvg/SVG$TextContainer;

    if-eqz v0, :cond_5

    .line 1006
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGParser;->appendToTextContainer(Ljava/lang/String;)V

    .line 1009
    :cond_5
    :goto_0
    return-void
.end method

.method private textPath(Lorg/xml/sax/Attributes;)V
    .locals 2
    .param p1, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    .line 2272
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<textPath>"

    invoke-direct {p0, v1, v0}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2274
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_1

    .line 2276
    new-instance v0, Lcom/caverock/androidsvg/SVG$TextPath;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$TextPath;-><init>()V

    .line 2277
    .local v0, "obj":Lcom/caverock/androidsvg/SVG$TextPath;
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$TextPath;->document:Lcom/caverock/androidsvg/SVG;

    .line 2278
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$TextPath;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 2279
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 2280
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 2281
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 2282
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTextPath(Lcom/caverock/androidsvg/SVG$TextPath;Lorg/xml/sax/Attributes;)V

    .line 2283
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 2284
    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 2285
    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$TextPath;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    instance-of v1, v1, Lcom/caverock/androidsvg/SVG$TextRoot;

    if-eqz v1, :cond_0

    .line 2286
    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$TextPath;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    check-cast v1, Lcom/caverock/androidsvg/SVG$TextRoot;

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVG$TextPath;->setTextRoot(Lcom/caverock/androidsvg/SVG$TextRoot;)V

    goto :goto_0

    .line 2288
    :cond_0
    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$TextPath;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    check-cast v1, Lcom/caverock/androidsvg/SVG$TextChild;

    invoke-interface {v1}, Lcom/caverock/androidsvg/SVG$TextChild;->getTextRoot()Lcom/caverock/androidsvg/SVG$TextRoot;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVG$TextPath;->setTextRoot(Lcom/caverock/androidsvg/SVG$TextRoot;)V

    .line 2289
    :goto_0
    return-void

    .line 2275
    .end local v0    # "obj":Lcom/caverock/androidsvg/SVG$TextPath;
    :cond_1
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid document. Root element must be <svg>"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private tref(Lorg/xml/sax/Attributes;)V
    .locals 2
    .param p1, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    .line 1811
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<tref>"

    invoke-direct {p0, v1, v0}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1813
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_2

    .line 1815
    instance-of v0, v0, Lcom/caverock/androidsvg/SVG$TextContainer;

    if-eqz v0, :cond_1

    .line 1817
    new-instance v0, Lcom/caverock/androidsvg/SVG$TRef;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$TRef;-><init>()V

    .line 1818
    .local v0, "obj":Lcom/caverock/androidsvg/SVG$TRef;
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$TRef;->document:Lcom/caverock/androidsvg/SVG;

    .line 1819
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$TRef;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1820
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1821
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1822
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 1823
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTRef(Lcom/caverock/androidsvg/SVG$TRef;Lorg/xml/sax/Attributes;)V

    .line 1824
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 1825
    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$TRef;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    instance-of v1, v1, Lcom/caverock/androidsvg/SVG$TextRoot;

    if-eqz v1, :cond_0

    .line 1826
    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$TRef;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    check-cast v1, Lcom/caverock/androidsvg/SVG$TextRoot;

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVG$TRef;->setTextRoot(Lcom/caverock/androidsvg/SVG$TextRoot;)V

    goto :goto_0

    .line 1828
    :cond_0
    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$TRef;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    check-cast v1, Lcom/caverock/androidsvg/SVG$TextChild;

    invoke-interface {v1}, Lcom/caverock/androidsvg/SVG$TextChild;->getTextRoot()Lcom/caverock/androidsvg/SVG$TextRoot;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVG$TRef;->setTextRoot(Lcom/caverock/androidsvg/SVG$TextRoot;)V

    .line 1829
    :goto_0
    return-void

    .line 1816
    .end local v0    # "obj":Lcom/caverock/androidsvg/SVG$TRef;
    :cond_1
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid document. <tref> elements are only valid inside <text> or <tspan> elements."

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1814
    :cond_2
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid document. Root element must be <svg>"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private tspan(Lorg/xml/sax/Attributes;)V
    .locals 2
    .param p1, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    .line 1783
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<tspan>"

    invoke-direct {p0, v1, v0}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1785
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_2

    .line 1787
    instance-of v0, v0, Lcom/caverock/androidsvg/SVG$TextContainer;

    if-eqz v0, :cond_1

    .line 1789
    new-instance v0, Lcom/caverock/androidsvg/SVG$TSpan;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$TSpan;-><init>()V

    .line 1790
    .local v0, "obj":Lcom/caverock/androidsvg/SVG$TSpan;
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$TSpan;->document:Lcom/caverock/androidsvg/SVG;

    .line 1791
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$TSpan;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1792
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1793
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1794
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 1795
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTextPosition(Lcom/caverock/androidsvg/SVG$TextPositionedContainer;Lorg/xml/sax/Attributes;)V

    .line 1796
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 1797
    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1798
    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$TSpan;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    instance-of v1, v1, Lcom/caverock/androidsvg/SVG$TextRoot;

    if-eqz v1, :cond_0

    .line 1799
    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$TSpan;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    check-cast v1, Lcom/caverock/androidsvg/SVG$TextRoot;

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVG$TSpan;->setTextRoot(Lcom/caverock/androidsvg/SVG$TextRoot;)V

    goto :goto_0

    .line 1801
    :cond_0
    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$TSpan;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    check-cast v1, Lcom/caverock/androidsvg/SVG$TextChild;

    invoke-interface {v1}, Lcom/caverock/androidsvg/SVG$TextChild;->getTextRoot()Lcom/caverock/androidsvg/SVG$TextRoot;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVG$TSpan;->setTextRoot(Lcom/caverock/androidsvg/SVG$TextRoot;)V

    .line 1802
    :goto_0
    return-void

    .line 1788
    .end local v0    # "obj":Lcom/caverock/androidsvg/SVG$TSpan;
    :cond_1
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid document. <tspan> elements are only valid inside <text> or other <tspan> elements."

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1786
    :cond_2
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid document. Root element must be <svg>"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private use(Lorg/xml/sax/Attributes;)V
    .locals 2
    .param p1, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    .line 1285
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<use>"

    invoke-direct {p0, v1, v0}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1287
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_0

    .line 1289
    new-instance v0, Lcom/caverock/androidsvg/SVG$Use;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$Use;-><init>()V

    .line 1290
    .local v0, "obj":Lcom/caverock/androidsvg/SVG$Use;
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Use;->document:Lcom/caverock/androidsvg/SVG;

    .line 1291
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Use;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1292
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1293
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1294
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    .line 1295
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 1296
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesUse(Lcom/caverock/androidsvg/SVG$Use;Lorg/xml/sax/Attributes;)V

    .line 1297
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 1298
    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1299
    return-void

    .line 1288
    .end local v0    # "obj":Lcom/caverock/androidsvg/SVG$Use;
    :cond_0
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid document. Root element must be <svg>"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private view(Lorg/xml/sax/Attributes;)V
    .locals 2
    .param p1, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    .line 2397
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<view>"

    invoke-direct {p0, v1, v0}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2399
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_0

    .line 2401
    new-instance v0, Lcom/caverock/androidsvg/SVG$View;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$View;-><init>()V

    .line 2402
    .local v0, "obj":Lcom/caverock/androidsvg/SVG$View;
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$View;->document:Lcom/caverock/androidsvg/SVG;

    .line 2403
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$View;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 2404
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 2405
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 2406
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesViewBox(Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;Lorg/xml/sax/Attributes;)V

    .line 2407
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 2408
    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 2409
    return-void

    .line 2400
    .end local v0    # "obj":Lcom/caverock/androidsvg/SVG$View;
    :cond_0
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid document. Root element must be <svg>"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private zwitch(Lorg/xml/sax/Attributes;)V
    .locals 2
    .param p1, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    .line 1856
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<switch>"

    invoke-direct {p0, v1, v0}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1858
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_0

    .line 1860
    new-instance v0, Lcom/caverock/androidsvg/SVG$Switch;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$Switch;-><init>()V

    .line 1861
    .local v0, "obj":Lcom/caverock/androidsvg/SVG$Switch;
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Switch;->document:Lcom/caverock/androidsvg/SVG;

    .line 1862
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Switch;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1863
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1864
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1865
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    .line 1866
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 1867
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 1868
    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1869
    return-void

    .line 1859
    .end local v0    # "obj":Lcom/caverock/androidsvg/SVG$Switch;
    :cond_0
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid document. Root element must be <svg>"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method parse(Ljava/io/InputStream;Z)Lcom/caverock/androidsvg/SVG;
    .locals 5
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "enableInternalEntities"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    .line 575
    const-string v0, "Exception thrown closing input stream"

    const-string v1, "SVGParser"

    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v2

    if-nez v2, :cond_0

    .line 577
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p1, v2

    .line 581
    :cond_0
    const/4 v2, 0x3

    :try_start_0
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->mark(I)V

    .line 582
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v2

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v3

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v2, v3

    .line 583
    .local v2, "firstTwoBytes":I
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 584
    const v3, 0x8b1f

    if-ne v2, v3, :cond_1

    .line 586
    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v4, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v4, p1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v3

    .line 592
    .end local v2    # "firstTwoBytes":I
    :cond_1
    goto :goto_0

    .line 589
    :catch_0
    move-exception v2

    .line 598
    :goto_0
    const/16 v2, 0x1000

    :try_start_1
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->mark(I)V

    .line 603
    invoke-direct {p0, p1, p2}, Lcom/caverock/androidsvg/SVGParser;->parseUsingXmlPullParser(Ljava/io/InputStream;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 608
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 611
    goto :goto_1

    .line 609
    :catch_1
    move-exception v2

    .line 610
    .local v2, "e":Ljava/io/IOException;
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    .end local v2    # "e":Ljava/io/IOException;
    nop

    .line 613
    :goto_1
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    return-object v0

    .line 607
    :catchall_0
    move-exception v2

    .line 608
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 611
    goto :goto_2

    .line 609
    :catch_2
    move-exception v3

    .line 610
    .local v3, "e":Ljava/io/IOException;
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    .end local v3    # "e":Ljava/io/IOException;
    :goto_2
    throw v2
.end method
