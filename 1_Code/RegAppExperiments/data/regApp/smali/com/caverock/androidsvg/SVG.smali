.class public Lcom/caverock/androidsvg/SVG;
.super Ljava/lang/Object;
.source "SVG.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/caverock/androidsvg/SVG$PathDefinition;,
        Lcom/caverock/androidsvg/SVG$PathInterface;,
        Lcom/caverock/androidsvg/SVG$SolidColor;,
        Lcom/caverock/androidsvg/SVG$Mask;,
        Lcom/caverock/androidsvg/SVG$View;,
        Lcom/caverock/androidsvg/SVG$Image;,
        Lcom/caverock/androidsvg/SVG$Pattern;,
        Lcom/caverock/androidsvg/SVG$ClipPath;,
        Lcom/caverock/androidsvg/SVG$SvgRadialGradient;,
        Lcom/caverock/androidsvg/SVG$SvgLinearGradient;,
        Lcom/caverock/androidsvg/SVG$Stop;,
        Lcom/caverock/androidsvg/SVG$GradientElement;,
        Lcom/caverock/androidsvg/SVG$Marker;,
        Lcom/caverock/androidsvg/SVG$Symbol;,
        Lcom/caverock/androidsvg/SVG$Switch;,
        Lcom/caverock/androidsvg/SVG$TextPath;,
        Lcom/caverock/androidsvg/SVG$TRef;,
        Lcom/caverock/androidsvg/SVG$TextSequence;,
        Lcom/caverock/androidsvg/SVG$TSpan;,
        Lcom/caverock/androidsvg/SVG$Text;,
        Lcom/caverock/androidsvg/SVG$TextPositionedContainer;,
        Lcom/caverock/androidsvg/SVG$TextContainer;,
        Lcom/caverock/androidsvg/SVG$TextChild;,
        Lcom/caverock/androidsvg/SVG$TextRoot;,
        Lcom/caverock/androidsvg/SVG$Polygon;,
        Lcom/caverock/androidsvg/SVG$PolyLine;,
        Lcom/caverock/androidsvg/SVG$Line;,
        Lcom/caverock/androidsvg/SVG$Ellipse;,
        Lcom/caverock/androidsvg/SVG$Circle;,
        Lcom/caverock/androidsvg/SVG$Rect;,
        Lcom/caverock/androidsvg/SVG$Path;,
        Lcom/caverock/androidsvg/SVG$Use;,
        Lcom/caverock/androidsvg/SVG$GraphicsElement;,
        Lcom/caverock/androidsvg/SVG$Defs;,
        Lcom/caverock/androidsvg/SVG$NotDirectlyRendered;,
        Lcom/caverock/androidsvg/SVG$Group;,
        Lcom/caverock/androidsvg/SVG$Svg;,
        Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;,
        Lcom/caverock/androidsvg/SVG$SvgPreserveAspectRatioContainer;,
        Lcom/caverock/androidsvg/SVG$HasTransform;,
        Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;,
        Lcom/caverock/androidsvg/SVG$SvgContainer;,
        Lcom/caverock/androidsvg/SVG$SvgConditionalElement;,
        Lcom/caverock/androidsvg/SVG$SvgConditional;,
        Lcom/caverock/androidsvg/SVG$SvgElement;,
        Lcom/caverock/androidsvg/SVG$SvgElementBase;,
        Lcom/caverock/androidsvg/SVG$SvgObject;,
        Lcom/caverock/androidsvg/SVG$CSSClipRect;,
        Lcom/caverock/androidsvg/SVG$Length;,
        Lcom/caverock/androidsvg/SVG$PaintReference;,
        Lcom/caverock/androidsvg/SVG$CurrentColor;,
        Lcom/caverock/androidsvg/SVG$Colour;,
        Lcom/caverock/androidsvg/SVG$SvgPaint;,
        Lcom/caverock/androidsvg/SVG$Style;,
        Lcom/caverock/androidsvg/SVG$Box;,
        Lcom/caverock/androidsvg/SVG$GradientSpread;,
        Lcom/caverock/androidsvg/SVG$Unit;
    }
.end annotation


# static fields
.field private static final DEFAULT_PICTURE_HEIGHT:I = 0x200

.field private static final DEFAULT_PICTURE_WIDTH:I = 0x200

.field private static final SPECIFIED_ALL:J = -0x1L

.field static final SPECIFIED_CLIP:J = 0x100000L

.field static final SPECIFIED_CLIP_PATH:J = 0x10000000L

.field static final SPECIFIED_CLIP_RULE:J = 0x20000000L

.field static final SPECIFIED_COLOR:J = 0x1000L

.field static final SPECIFIED_DIRECTION:J = 0x1000000000L

.field static final SPECIFIED_DISPLAY:J = 0x1000000L

.field static final SPECIFIED_FILL:J = 0x1L

.field static final SPECIFIED_FILL_OPACITY:J = 0x4L

.field static final SPECIFIED_FILL_RULE:J = 0x2L

.field static final SPECIFIED_FONT_FAMILY:J = 0x2000L

.field static final SPECIFIED_FONT_SIZE:J = 0x4000L

.field static final SPECIFIED_FONT_STYLE:J = 0x10000L

.field static final SPECIFIED_FONT_WEIGHT:J = 0x8000L

.field static final SPECIFIED_IMAGE_RENDERING:J = 0x2000000000L

.field static final SPECIFIED_MARKER_END:J = 0x800000L

.field static final SPECIFIED_MARKER_MID:J = 0x400000L

.field static final SPECIFIED_MARKER_START:J = 0x200000L

.field static final SPECIFIED_MASK:J = 0x40000000L

.field static final SPECIFIED_OPACITY:J = 0x800L

.field static final SPECIFIED_OVERFLOW:J = 0x80000L

.field static final SPECIFIED_SOLID_COLOR:J = 0x80000000L

.field static final SPECIFIED_SOLID_OPACITY:J = 0x100000000L

.field static final SPECIFIED_STOP_COLOR:J = 0x4000000L

.field static final SPECIFIED_STOP_OPACITY:J = 0x8000000L

.field static final SPECIFIED_STROKE:J = 0x8L

.field static final SPECIFIED_STROKE_DASHARRAY:J = 0x200L

.field static final SPECIFIED_STROKE_DASHOFFSET:J = 0x400L

.field static final SPECIFIED_STROKE_LINECAP:J = 0x40L

.field static final SPECIFIED_STROKE_LINEJOIN:J = 0x80L

.field static final SPECIFIED_STROKE_MITERLIMIT:J = 0x100L

.field static final SPECIFIED_STROKE_OPACITY:J = 0x10L

.field static final SPECIFIED_STROKE_WIDTH:J = 0x20L

.field static final SPECIFIED_TEXT_ANCHOR:J = 0x40000L

.field static final SPECIFIED_TEXT_DECORATION:J = 0x20000L

.field static final SPECIFIED_VECTOR_EFFECT:J = 0x800000000L

.field static final SPECIFIED_VIEWPORT_FILL:J = 0x200000000L

.field static final SPECIFIED_VIEWPORT_FILL_OPACITY:J = 0x400000000L

.field static final SPECIFIED_VISIBILITY:J = 0x2000000L

.field private static final SQRT2:D = 1.414213562373095

.field static final TAG:Ljava/lang/String; = "AndroidSVG"

.field private static final VERSION:Ljava/lang/String; = "1.3"

.field private static enableInternalEntities:Z

.field private static externalFileResolver:Lcom/caverock/androidsvg/SVGExternalFileResolver;


# instance fields
.field private cssRules:Lcom/caverock/androidsvg/CSSParser$Ruleset;

.field private desc:Ljava/lang/String;

.field private idToElementMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/caverock/androidsvg/SVG$SvgElementBase;",
            ">;"
        }
    .end annotation
.end field

.field private renderDPI:F

.field private rootElement:Lcom/caverock/androidsvg/SVG$Svg;

.field private title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 88
    const/4 v0, 0x0

    sput-object v0, Lcom/caverock/androidsvg/SVG;->externalFileResolver:Lcom/caverock/androidsvg/SVGExternalFileResolver;

    .line 91
    const/4 v0, 0x1

    sput-boolean v0, Lcom/caverock/androidsvg/SVG;->enableInternalEntities:Z

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    .line 97
    const-string v0, ""

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG;->title:Ljava/lang/String;

    .line 98
    iput-object v0, p0, Lcom/caverock/androidsvg/SVG;->desc:Ljava/lang/String;

    .line 101
    const/high16 v0, 0x42c00000    # 96.0f

    iput v0, p0, Lcom/caverock/androidsvg/SVG;->renderDPI:F

    .line 104
    new-instance v0, Lcom/caverock/androidsvg/CSSParser$Ruleset;

    invoke-direct {v0}, Lcom/caverock/androidsvg/CSSParser$Ruleset;-><init>()V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG;->cssRules:Lcom/caverock/androidsvg/CSSParser$Ruleset;

    .line 107
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG;->idToElementMap:Ljava/util/Map;

    .line 136
    return-void
.end method

.method private cssQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .line 950
    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 953
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\\""

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 955
    :cond_0
    const-string v0, "\'"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 958
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\\'"

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 961
    :cond_1
    :goto_0
    const-string v0, "\\\n"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\A"

    const-string v2, "\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static deregisterExternalFileResolver()V
    .locals 1

    .line 300
    const/4 v0, 0x0

    sput-object v0, Lcom/caverock/androidsvg/SVG;->externalFileResolver:Lcom/caverock/androidsvg/SVGExternalFileResolver;

    .line 301
    return-void
.end method

.method private getDocumentDimensions(F)Lcom/caverock/androidsvg/SVG$Box;
    .locals 6
    .param p1, "dpi"    # F

    .line 967
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Svg;->width:Lcom/caverock/androidsvg/SVG$Length;

    .line 968
    .local v0, "w":Lcom/caverock/androidsvg/SVG$Length;
    iget-object v1, p0, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Svg;->height:Lcom/caverock/androidsvg/SVG$Length;

    .line 970
    .local v1, "h":Lcom/caverock/androidsvg/SVG$Length;
    const/high16 v2, -0x40800000    # -1.0f

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$Length;->isZero()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/caverock/androidsvg/SVG$Length;->unit:Lcom/caverock/androidsvg/SVG$Unit;

    sget-object v4, Lcom/caverock/androidsvg/SVG$Unit;->percent:Lcom/caverock/androidsvg/SVG$Unit;

    if-eq v3, v4, :cond_5

    iget-object v3, v0, Lcom/caverock/androidsvg/SVG$Length;->unit:Lcom/caverock/androidsvg/SVG$Unit;

    sget-object v4, Lcom/caverock/androidsvg/SVG$Unit;->em:Lcom/caverock/androidsvg/SVG$Unit;

    if-eq v3, v4, :cond_5

    iget-object v3, v0, Lcom/caverock/androidsvg/SVG$Length;->unit:Lcom/caverock/androidsvg/SVG$Unit;

    sget-object v4, Lcom/caverock/androidsvg/SVG$Unit;->ex:Lcom/caverock/androidsvg/SVG$Unit;

    if-ne v3, v4, :cond_0

    goto :goto_2

    .line 973
    :cond_0
    invoke-virtual {v0, p1}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(F)F

    move-result v3

    .line 976
    .local v3, "wOut":F
    if-eqz v1, :cond_3

    .line 977
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$Length;->isZero()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, v1, Lcom/caverock/androidsvg/SVG$Length;->unit:Lcom/caverock/androidsvg/SVG$Unit;

    sget-object v5, Lcom/caverock/androidsvg/SVG$Unit;->percent:Lcom/caverock/androidsvg/SVG$Unit;

    if-eq v4, v5, :cond_2

    iget-object v4, v1, Lcom/caverock/androidsvg/SVG$Length;->unit:Lcom/caverock/androidsvg/SVG$Unit;

    sget-object v5, Lcom/caverock/androidsvg/SVG$Unit;->em:Lcom/caverock/androidsvg/SVG$Unit;

    if-eq v4, v5, :cond_2

    iget-object v4, v1, Lcom/caverock/androidsvg/SVG$Length;->unit:Lcom/caverock/androidsvg/SVG$Unit;

    sget-object v5, Lcom/caverock/androidsvg/SVG$Unit;->ex:Lcom/caverock/androidsvg/SVG$Unit;

    if-ne v4, v5, :cond_1

    goto :goto_0

    .line 980
    :cond_1
    invoke-virtual {v1, p1}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(F)F

    move-result v2

    .local v2, "hOut":F
    goto :goto_1

    .line 978
    .end local v2    # "hOut":F
    :cond_2
    :goto_0
    new-instance v4, Lcom/caverock/androidsvg/SVG$Box;

    invoke-direct {v4, v2, v2, v2, v2}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    return-object v4

    .line 984
    :cond_3
    iget-object v2, p0, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVG$Svg;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    if-eqz v2, :cond_4

    .line 985
    iget-object v2, p0, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVG$Svg;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v2, v2, Lcom/caverock/androidsvg/SVG$Box;->height:F

    mul-float/2addr v2, v3

    iget-object v4, p0, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$Svg;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v4, v4, Lcom/caverock/androidsvg/SVG$Box;->width:F

    div-float/2addr v2, v4

    .restart local v2    # "hOut":F
    goto :goto_1

    .line 987
    .end local v2    # "hOut":F
    :cond_4
    move v2, v3

    .line 990
    .restart local v2    # "hOut":F
    :goto_1
    new-instance v4, Lcom/caverock/androidsvg/SVG$Box;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v5, v3, v2}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    return-object v4

    .line 971
    .end local v2    # "hOut":F
    .end local v3    # "wOut":F
    :cond_5
    :goto_2
    new-instance v3, Lcom/caverock/androidsvg/SVG$Box;

    invoke-direct {v3, v2, v2, v2, v2}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    return-object v3
.end method

.method private getElementById(Lcom/caverock/androidsvg/SVG$SvgContainer;Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgElementBase;
    .locals 5
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$SvgContainer;
    .param p2, "id"    # Ljava/lang/String;

    .line 2330
    move-object v0, p1

    check-cast v0, Lcom/caverock/androidsvg/SVG$SvgElementBase;

    .line 2331
    .local v0, "elem":Lcom/caverock/androidsvg/SVG$SvgElementBase;
    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgElementBase;->id:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2332
    return-object v0

    .line 2333
    :cond_0
    invoke-interface {p1}, Lcom/caverock/androidsvg/SVG$SvgContainer;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/caverock/androidsvg/SVG$SvgObject;

    .line 2335
    .local v2, "child":Lcom/caverock/androidsvg/SVG$SvgObject;
    instance-of v3, v2, Lcom/caverock/androidsvg/SVG$SvgElementBase;

    if-nez v3, :cond_1

    .line 2336
    goto :goto_0

    .line 2337
    :cond_1
    move-object v3, v2

    check-cast v3, Lcom/caverock/androidsvg/SVG$SvgElementBase;

    .line 2338
    .local v3, "childElem":Lcom/caverock/androidsvg/SVG$SvgElementBase;
    iget-object v4, v3, Lcom/caverock/androidsvg/SVG$SvgElementBase;->id:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2339
    return-object v3

    .line 2340
    :cond_2
    instance-of v4, v2, Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v4, :cond_3

    .line 2342
    move-object v4, v2

    check-cast v4, Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-direct {p0, v4, p2}, Lcom/caverock/androidsvg/SVG;->getElementById(Lcom/caverock/androidsvg/SVG$SvgContainer;Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgElementBase;

    move-result-object v4

    .line 2343
    .local v4, "found":Lcom/caverock/androidsvg/SVG$SvgElementBase;
    if-eqz v4, :cond_3

    .line 2344
    return-object v4

    .line 2346
    .end local v2    # "child":Lcom/caverock/androidsvg/SVG$SvgObject;
    .end local v3    # "childElem":Lcom/caverock/androidsvg/SVG$SvgElementBase;
    .end local v4    # "found":Lcom/caverock/androidsvg/SVG$SvgElementBase;
    :cond_3
    goto :goto_0

    .line 2347
    :cond_4
    const/4 v1, 0x0

    return-object v1
.end method

.method private getElementsByTagName(Lcom/caverock/androidsvg/SVG$SvgContainer;Ljava/lang/Class;)Ljava/util/List;
    .locals 4
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$SvgContainer;
    .param p2, "clazz"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/SVG$SvgContainer;",
            "Ljava/lang/Class;",
            ")",
            "Ljava/util/List<",
            "Lcom/caverock/androidsvg/SVG$SvgObject;",
            ">;"
        }
    .end annotation

    .line 2362
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2364
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/caverock/androidsvg/SVG$SvgObject;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v1, p2, :cond_0

    .line 2365
    move-object v1, p1

    check-cast v1, Lcom/caverock/androidsvg/SVG$SvgObject;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2366
    :cond_0
    invoke-interface {p1}, Lcom/caverock/androidsvg/SVG$SvgContainer;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/caverock/androidsvg/SVG$SvgObject;

    .line 2368
    .local v2, "child":Lcom/caverock/androidsvg/SVG$SvgObject;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v3, p2, :cond_1

    .line 2369
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2370
    :cond_1
    instance-of v3, v2, Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v3, :cond_2

    .line 2371
    move-object v3, v2

    check-cast v3, Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-direct {p0, v3, p2}, Lcom/caverock/androidsvg/SVG;->getElementsByTagName(Lcom/caverock/androidsvg/SVG$SvgContainer;Ljava/lang/Class;)Ljava/util/List;

    .line 2372
    .end local v2    # "child":Lcom/caverock/androidsvg/SVG$SvgObject;
    :cond_2
    goto :goto_0

    .line 2373
    :cond_3
    return-object v0
.end method

.method private getElementsByTagName(Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .param p1, "clazz"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            ")",
            "Ljava/util/List<",
            "Lcom/caverock/androidsvg/SVG$SvgObject;",
            ">;"
        }
    .end annotation

    .line 2355
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVG;->getElementsByTagName(Lcom/caverock/androidsvg/SVG$SvgContainer;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static getFileResolver()Lcom/caverock/androidsvg/SVGExternalFileResolver;
    .locals 1

    .line 2141
    sget-object v0, Lcom/caverock/androidsvg/SVG;->externalFileResolver:Lcom/caverock/androidsvg/SVGExternalFileResolver;

    return-object v0
.end method

.method public static getFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Lcom/caverock/androidsvg/SVG;
    .locals 4
    .param p0, "assetManager"    # Landroid/content/res/AssetManager;
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 222
    new-instance v0, Lcom/caverock/androidsvg/SVGParser;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVGParser;-><init>()V

    .line 223
    .local v0, "parser":Lcom/caverock/androidsvg/SVGParser;
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 225
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    sget-boolean v2, Lcom/caverock/androidsvg/SVG;->enableInternalEntities:Z

    invoke-virtual {v0, v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parse(Ljava/io/InputStream;Z)Lcom/caverock/androidsvg/SVG;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 231
    goto :goto_0

    .line 229
    :catch_0
    move-exception v3

    .line 225
    :goto_0
    return-object v2

    .line 227
    :catchall_0
    move-exception v2

    .line 228
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 231
    goto :goto_1

    .line 229
    :catch_1
    move-exception v3

    .line 231
    :goto_1
    throw v2
.end method

.method public static getFromInputStream(Ljava/io/InputStream;)Lcom/caverock/androidsvg/SVG;
    .locals 2
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    .line 149
    new-instance v0, Lcom/caverock/androidsvg/SVGParser;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVGParser;-><init>()V

    .line 150
    .local v0, "parser":Lcom/caverock/androidsvg/SVGParser;
    sget-boolean v1, Lcom/caverock/androidsvg/SVG;->enableInternalEntities:Z

    invoke-virtual {v0, p0, v1}, Lcom/caverock/androidsvg/SVGParser;->parse(Ljava/io/InputStream;Z)Lcom/caverock/androidsvg/SVG;

    move-result-object v1

    return-object v1
.end method

.method public static getFromResource(Landroid/content/Context;I)Lcom/caverock/androidsvg/SVG;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resourceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    .line 180
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/caverock/androidsvg/SVG;->getFromResource(Landroid/content/res/Resources;I)Lcom/caverock/androidsvg/SVG;

    move-result-object v0

    return-object v0
.end method

.method public static getFromResource(Landroid/content/res/Resources;I)Lcom/caverock/androidsvg/SVG;
    .locals 4
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "resourceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    .line 196
    new-instance v0, Lcom/caverock/androidsvg/SVGParser;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVGParser;-><init>()V

    .line 197
    .local v0, "parser":Lcom/caverock/androidsvg/SVGParser;
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 199
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    sget-boolean v2, Lcom/caverock/androidsvg/SVG;->enableInternalEntities:Z

    invoke-virtual {v0, v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parse(Ljava/io/InputStream;Z)Lcom/caverock/androidsvg/SVG;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 205
    goto :goto_0

    .line 203
    :catch_0
    move-exception v3

    .line 199
    :goto_0
    return-object v2

    .line 201
    :catchall_0
    move-exception v2

    .line 202
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 205
    goto :goto_1

    .line 203
    :catch_1
    move-exception v3

    .line 205
    :goto_1
    throw v2
.end method

.method public static getFromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG;
    .locals 3
    .param p0, "svg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    .line 164
    new-instance v0, Lcom/caverock/androidsvg/SVGParser;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVGParser;-><init>()V

    .line 165
    .local v0, "parser":Lcom/caverock/androidsvg/SVGParser;
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    sget-boolean v2, Lcom/caverock/androidsvg/SVG;->enableInternalEntities:Z

    invoke-virtual {v0, v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parse(Ljava/io/InputStream;Z)Lcom/caverock/androidsvg/SVG;

    move-result-object v1

    return-object v1
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .line 599
    const-string v0, "1.3"

    return-object v0
.end method

.method public static isInternalEntitiesEnabled()Z
    .locals 1

    .line 272
    sget-boolean v0, Lcom/caverock/androidsvg/SVG;->enableInternalEntities:Z

    return v0
.end method

.method public static registerExternalFileResolver(Lcom/caverock/androidsvg/SVGExternalFileResolver;)V
    .locals 0
    .param p0, "fileResolver"    # Lcom/caverock/androidsvg/SVGExternalFileResolver;

    .line 291
    sput-object p0, Lcom/caverock/androidsvg/SVG;->externalFileResolver:Lcom/caverock/androidsvg/SVGExternalFileResolver;

    .line 292
    return-void
.end method

.method public static setInternalEntitiesEnabled(Z)V
    .locals 0
    .param p0, "enable"    # Z

    .line 263
    sput-boolean p0, Lcom/caverock/androidsvg/SVG;->enableInternalEntities:Z

    .line 264
    return-void
.end method


# virtual methods
.method addCSSRules(Lcom/caverock/androidsvg/CSSParser$Ruleset;)V
    .locals 1
    .param p1, "ruleset"    # Lcom/caverock/androidsvg/CSSParser$Ruleset;

    .line 1000
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG;->cssRules:Lcom/caverock/androidsvg/CSSParser$Ruleset;

    invoke-virtual {v0, p1}, Lcom/caverock/androidsvg/CSSParser$Ruleset;->addAll(Lcom/caverock/androidsvg/CSSParser$Ruleset;)V

    .line 1001
    return-void
.end method

.method clearRenderCSSRules()V
    .locals 2

    .line 1018
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG;->cssRules:Lcom/caverock/androidsvg/CSSParser$Ruleset;

    sget-object v1, Lcom/caverock/androidsvg/CSSParser$Source;->RenderOptions:Lcom/caverock/androidsvg/CSSParser$Source;

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/CSSParser$Ruleset;->removeFromSource(Lcom/caverock/androidsvg/CSSParser$Source;)V

    .line 1019
    return-void
.end method

.method getCSSRules()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/caverock/androidsvg/CSSParser$Rule;",
            ">;"
        }
    .end annotation

    .line 1006
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG;->cssRules:Lcom/caverock/androidsvg/CSSParser$Ruleset;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/CSSParser$Ruleset;->getRules()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDocumentAspectRatio()F
    .locals 5

    .line 894
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    if-eqz v0, :cond_4

    .line 897
    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Svg;->width:Lcom/caverock/androidsvg/SVG$Length;

    .line 898
    .local v0, "w":Lcom/caverock/androidsvg/SVG$Length;
    iget-object v1, p0, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Svg;->height:Lcom/caverock/androidsvg/SVG$Length;

    .line 901
    .local v1, "h":Lcom/caverock/androidsvg/SVG$Length;
    const/high16 v2, -0x40800000    # -1.0f

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    iget-object v3, v0, Lcom/caverock/androidsvg/SVG$Length;->unit:Lcom/caverock/androidsvg/SVG$Unit;

    sget-object v4, Lcom/caverock/androidsvg/SVG$Unit;->percent:Lcom/caverock/androidsvg/SVG$Unit;

    if-eq v3, v4, :cond_2

    iget-object v3, v1, Lcom/caverock/androidsvg/SVG$Length;->unit:Lcom/caverock/androidsvg/SVG$Unit;

    sget-object v4, Lcom/caverock/androidsvg/SVG$Unit;->percent:Lcom/caverock/androidsvg/SVG$Unit;

    if-eq v3, v4, :cond_2

    .line 903
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$Length;->isZero()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$Length;->isZero()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 905
    :cond_0
    iget v2, p0, Lcom/caverock/androidsvg/SVG;->renderDPI:F

    invoke-virtual {v0, v2}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(F)F

    move-result v2

    iget v3, p0, Lcom/caverock/androidsvg/SVG;->renderDPI:F

    invoke-virtual {v1, v3}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(F)F

    move-result v3

    div-float/2addr v2, v3

    return v2

    .line 904
    :cond_1
    :goto_0
    return v2

    .line 909
    :cond_2
    iget-object v3, p0, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$Svg;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$Svg;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v3, v3, Lcom/caverock/androidsvg/SVG$Box;->width:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$Svg;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v3, v3, Lcom/caverock/androidsvg/SVG$Box;->height:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_3

    .line 910
    iget-object v2, p0, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVG$Svg;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v2, v2, Lcom/caverock/androidsvg/SVG$Box;->width:F

    iget-object v3, p0, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$Svg;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v3, v3, Lcom/caverock/androidsvg/SVG$Box;->height:F

    div-float/2addr v2, v3

    return v2

    .line 914
    :cond_3
    return v2

    .line 895
    .end local v0    # "w":Lcom/caverock/androidsvg/SVG$Length;
    .end local v1    # "h":Lcom/caverock/androidsvg/SVG$Length;
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SVG document is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDocumentDescription()Ljava/lang/String;
    .locals 2

    .line 628
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    if-eqz v0, :cond_0

    .line 631
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG;->desc:Ljava/lang/String;

    return-object v0

    .line 629
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SVG document is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDocumentHeight()F
    .locals 2

    .line 752
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    if-eqz v0, :cond_0

    .line 755
    iget v0, p0, Lcom/caverock/androidsvg/SVG;->renderDPI:F

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVG;->getDocumentDimensions(F)Lcom/caverock/androidsvg/SVG$Box;

    move-result-object v0

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Box;->height:F

    return v0

    .line 753
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SVG document is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDocumentPreserveAspectRatio()Lcom/caverock/androidsvg/PreserveAspectRatio;
    .locals 2

    .line 870
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    if-eqz v0, :cond_1

    .line 873
    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Svg;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    if-nez v0, :cond_0

    .line 874
    const/4 v0, 0x0

    return-object v0

    .line 876
    :cond_0
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Svg;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    return-object v0

    .line 871
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SVG document is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDocumentSVGVersion()Ljava/lang/String;
    .locals 2

    .line 644
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    if-eqz v0, :cond_0

    .line 647
    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Svg;->version:Ljava/lang/String;

    return-object v0

    .line 645
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SVG document is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDocumentTitle()Ljava/lang/String;
    .locals 2

    .line 612
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    if-eqz v0, :cond_0

    .line 615
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG;->title:Ljava/lang/String;

    return-object v0

    .line 613
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SVG document is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDocumentViewBox()Landroid/graphics/RectF;
    .locals 2

    .line 831
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    if-eqz v0, :cond_1

    .line 834
    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Svg;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    if-nez v0, :cond_0

    .line 835
    const/4 v0, 0x0

    return-object v0

    .line 837
    :cond_0
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Svg;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$Box;->toRectF()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0

    .line 832
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SVG document is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDocumentWidth()F
    .locals 2

    .line 695
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    if-eqz v0, :cond_0

    .line 698
    iget v0, p0, Lcom/caverock/androidsvg/SVG;->renderDPI:F

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVG;->getDocumentDimensions(F)Lcom/caverock/androidsvg/SVG$Box;

    move-result-object v0

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Box;->width:F

    return v0

    .line 696
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SVG document is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getElementById(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgElementBase;
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .line 2313
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2315
    :cond_0
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Svg;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2316
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    return-object v0

    .line 2318
    :cond_1
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG;->idToElementMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2319
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG;->idToElementMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVG$SvgElementBase;

    return-object v0

    .line 2322
    :cond_2
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVG;->getElementById(Lcom/caverock/androidsvg/SVG$SvgContainer;Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgElementBase;

    move-result-object v0

    .line 2323
    .local v0, "result":Lcom/caverock/androidsvg/SVG$SvgElementBase;
    iget-object v1, p0, Lcom/caverock/androidsvg/SVG;->idToElementMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2324
    return-object v0

    .line 2314
    .end local v0    # "result":Lcom/caverock/androidsvg/SVG$SvgElementBase;
    :cond_3
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRenderDPI()F
    .locals 1

    .line 327
    iget v0, p0, Lcom/caverock/androidsvg/SVG;->renderDPI:F

    return v0
.end method

.method getRootElement()Lcom/caverock/androidsvg/SVG$Svg;
    .locals 1

    .line 924
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    return-object v0
.end method

.method public getViewList()Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 662
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    if-eqz v0, :cond_2

    .line 665
    const-class v0, Lcom/caverock/androidsvg/SVG$View;

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVG;->getElementsByTagName(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 667
    .local v0, "viewElems":Ljava/util/List;, "Ljava/util/List<Lcom/caverock/androidsvg/SVG$SvgObject;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 668
    .local v1, "viewIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/caverock/androidsvg/SVG$SvgObject;

    .line 670
    .local v3, "elem":Lcom/caverock/androidsvg/SVG$SvgObject;
    move-object v4, v3

    check-cast v4, Lcom/caverock/androidsvg/SVG$View;

    .line 671
    .local v4, "view":Lcom/caverock/androidsvg/SVG$View;
    iget-object v5, v4, Lcom/caverock/androidsvg/SVG$View;->id:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 672
    iget-object v5, v4, Lcom/caverock/androidsvg/SVG$View;->id:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 674
    :cond_0
    const-string v5, "AndroidSVG"

    const-string v6, "getViewList(): found a <view> without an id attribute"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    .end local v3    # "elem":Lcom/caverock/androidsvg/SVG$SvgObject;
    .end local v4    # "view":Lcom/caverock/androidsvg/SVG$View;
    :goto_1
    goto :goto_0

    .line 676
    :cond_1
    return-object v1

    .line 663
    .end local v0    # "viewElems":Ljava/util/List;, "Ljava/util/List<Lcom/caverock/androidsvg/SVG$SvgObject;>;"
    .end local v1    # "viewIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SVG document is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method hasCSSRules()Z
    .locals 1

    .line 1012
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG;->cssRules:Lcom/caverock/androidsvg/CSSParser$Ruleset;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/CSSParser$Ruleset;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public renderToCanvas(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 490
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Lcom/caverock/androidsvg/RenderOptions;

    invoke-virtual {p0, p1, v0}, Lcom/caverock/androidsvg/SVG;->renderToCanvas(Landroid/graphics/Canvas;Lcom/caverock/androidsvg/RenderOptions;)V

    .line 491
    return-void
.end method

.method public renderToCanvas(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "viewPort"    # Landroid/graphics/RectF;

    .line 503
    new-instance v0, Lcom/caverock/androidsvg/RenderOptions;

    invoke-direct {v0}, Lcom/caverock/androidsvg/RenderOptions;-><init>()V

    .line 505
    .local v0, "renderOptions":Lcom/caverock/androidsvg/RenderOptions;
    if-eqz p2, :cond_0

    .line 506
    iget v1, p2, Landroid/graphics/RectF;->left:F

    iget v2, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/caverock/androidsvg/RenderOptions;->viewPort(FFFF)Lcom/caverock/androidsvg/RenderOptions;

    goto :goto_0

    .line 508
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/caverock/androidsvg/RenderOptions;->viewPort(FFFF)Lcom/caverock/androidsvg/RenderOptions;

    .line 511
    :goto_0
    new-instance v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;

    iget v2, p0, Lcom/caverock/androidsvg/SVG;->renderDPI:F

    invoke-direct {v1, p1, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;-><init>(Landroid/graphics/Canvas;F)V

    .line 513
    .local v1, "renderer":Lcom/caverock/androidsvg/SVGAndroidRenderer;
    invoke-virtual {v1, p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderDocument(Lcom/caverock/androidsvg/SVG;Lcom/caverock/androidsvg/RenderOptions;)V

    .line 514
    return-void
.end method

.method public renderToCanvas(Landroid/graphics/Canvas;Lcom/caverock/androidsvg/RenderOptions;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "renderOptions"    # Lcom/caverock/androidsvg/RenderOptions;

    .line 527
    if-nez p2, :cond_0

    .line 528
    new-instance v0, Lcom/caverock/androidsvg/RenderOptions;

    invoke-direct {v0}, Lcom/caverock/androidsvg/RenderOptions;-><init>()V

    move-object p2, v0

    .line 530
    :cond_0
    invoke-virtual {p2}, Lcom/caverock/androidsvg/RenderOptions;->hasViewPort()Z

    move-result v0

    if-nez v0, :cond_1

    .line 531
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v2, v0, v1}, Lcom/caverock/androidsvg/RenderOptions;->viewPort(FFFF)Lcom/caverock/androidsvg/RenderOptions;

    .line 534
    :cond_1
    new-instance v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;

    iget v1, p0, Lcom/caverock/androidsvg/SVG;->renderDPI:F

    invoke-direct {v0, p1, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;-><init>(Landroid/graphics/Canvas;F)V

    .line 536
    .local v0, "renderer":Lcom/caverock/androidsvg/SVGAndroidRenderer;
    invoke-virtual {v0, p0, p2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderDocument(Lcom/caverock/androidsvg/SVG;Lcom/caverock/androidsvg/RenderOptions;)V

    .line 537
    return-void
.end method

.method public renderToPicture()Landroid/graphics/Picture;
    .locals 1

    .line 346
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/caverock/androidsvg/SVG;->renderToPicture(Lcom/caverock/androidsvg/RenderOptions;)Landroid/graphics/Picture;

    move-result-object v0

    return-object v0
.end method

.method public renderToPicture(II)Landroid/graphics/Picture;
    .locals 1
    .param p1, "widthInPixels"    # I
    .param p2, "heightInPixels"    # I

    .line 360
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/caverock/androidsvg/SVG;->renderToPicture(IILcom/caverock/androidsvg/RenderOptions;)Landroid/graphics/Picture;

    move-result-object v0

    return-object v0
.end method

.method public renderToPicture(IILcom/caverock/androidsvg/RenderOptions;)Landroid/graphics/Picture;
    .locals 5
    .param p1, "widthInPixels"    # I
    .param p2, "heightInPixels"    # I
    .param p3, "renderOptions"    # Lcom/caverock/androidsvg/RenderOptions;

    .line 426
    new-instance v0, Landroid/graphics/Picture;

    invoke-direct {v0}, Landroid/graphics/Picture;-><init>()V

    .line 427
    .local v0, "picture":Landroid/graphics/Picture;
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    move-result-object v1

    .line 429
    .local v1, "canvas":Landroid/graphics/Canvas;
    if-eqz p3, :cond_0

    iget-object v2, p3, Lcom/caverock/androidsvg/RenderOptions;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    if-nez v2, :cond_2

    .line 430
    :cond_0
    new-instance v2, Lcom/caverock/androidsvg/RenderOptions;

    if-nez p3, :cond_1

    invoke-direct {v2}, Lcom/caverock/androidsvg/RenderOptions;-><init>()V

    goto :goto_0

    :cond_1
    invoke-direct {v2, p3}, Lcom/caverock/androidsvg/RenderOptions;-><init>(Lcom/caverock/androidsvg/RenderOptions;)V

    :goto_0
    move-object p3, v2

    .line 431
    int-to-float v2, p1

    int-to-float v3, p2

    const/4 v4, 0x0

    invoke-virtual {p3, v4, v4, v2, v3}, Lcom/caverock/androidsvg/RenderOptions;->viewPort(FFFF)Lcom/caverock/androidsvg/RenderOptions;

    .line 434
    :cond_2
    new-instance v2, Lcom/caverock/androidsvg/SVGAndroidRenderer;

    iget v3, p0, Lcom/caverock/androidsvg/SVG;->renderDPI:F

    invoke-direct {v2, v1, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;-><init>(Landroid/graphics/Canvas;F)V

    .line 436
    .local v2, "renderer":Lcom/caverock/androidsvg/SVGAndroidRenderer;
    invoke-virtual {v2, p0, p3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderDocument(Lcom/caverock/androidsvg/SVG;Lcom/caverock/androidsvg/RenderOptions;)V

    .line 438
    invoke-virtual {v0}, Landroid/graphics/Picture;->endRecording()V

    .line 439
    return-object v0
.end method

.method public renderToPicture(Lcom/caverock/androidsvg/RenderOptions;)Landroid/graphics/Picture;
    .locals 6
    .param p1, "renderOptions"    # Lcom/caverock/androidsvg/RenderOptions;

    .line 375
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/caverock/androidsvg/RenderOptions;->hasViewBox()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/caverock/androidsvg/RenderOptions;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Svg;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 379
    .local v0, "viewBox":Lcom/caverock/androidsvg/SVG$Box;
    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/caverock/androidsvg/RenderOptions;->hasViewPort()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 381
    iget-object v1, p1, Lcom/caverock/androidsvg/RenderOptions;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$Box;->maxX()F

    move-result v1

    .line 382
    .local v1, "w":F
    iget-object v2, p1, Lcom/caverock/androidsvg/RenderOptions;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Box;->maxY()F

    move-result v2

    .line 383
    .local v2, "h":F
    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-virtual {p0, v3, v4, p1}, Lcom/caverock/androidsvg/SVG;->renderToPicture(IILcom/caverock/androidsvg/RenderOptions;)Landroid/graphics/Picture;

    move-result-object v3

    return-object v3

    .line 385
    .end local v1    # "w":F
    .end local v2    # "h":F
    :cond_1
    iget-object v1, p0, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Svg;->width:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Svg;->width:Lcom/caverock/androidsvg/SVG$Length;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Length;->unit:Lcom/caverock/androidsvg/SVG$Unit;

    sget-object v2, Lcom/caverock/androidsvg/SVG$Unit;->percent:Lcom/caverock/androidsvg/SVG$Unit;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Svg;->height:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Svg;->height:Lcom/caverock/androidsvg/SVG$Length;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Length;->unit:Lcom/caverock/androidsvg/SVG$Unit;

    sget-object v2, Lcom/caverock/androidsvg/SVG$Unit;->percent:Lcom/caverock/androidsvg/SVG$Unit;

    if-eq v1, v2, :cond_2

    .line 388
    iget-object v1, p0, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Svg;->width:Lcom/caverock/androidsvg/SVG$Length;

    iget v2, p0, Lcom/caverock/androidsvg/SVG;->renderDPI:F

    invoke-virtual {v1, v2}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(F)F

    move-result v1

    .line 389
    .restart local v1    # "w":F
    iget-object v2, p0, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVG$Svg;->height:Lcom/caverock/androidsvg/SVG$Length;

    iget v3, p0, Lcom/caverock/androidsvg/SVG;->renderDPI:F

    invoke-virtual {v2, v3}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(F)F

    move-result v2

    .line 390
    .restart local v2    # "h":F
    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-virtual {p0, v3, v4, p1}, Lcom/caverock/androidsvg/SVG;->renderToPicture(IILcom/caverock/androidsvg/RenderOptions;)Landroid/graphics/Picture;

    move-result-object v3

    return-object v3

    .line 392
    .end local v1    # "w":F
    .end local v2    # "h":F
    :cond_2
    iget-object v1, p0, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Svg;->width:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 396
    iget-object v1, p0, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Svg;->width:Lcom/caverock/androidsvg/SVG$Length;

    iget v2, p0, Lcom/caverock/androidsvg/SVG;->renderDPI:F

    invoke-virtual {v1, v2}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(F)F

    move-result v1

    .line 397
    .restart local v1    # "w":F
    iget v2, v0, Lcom/caverock/androidsvg/SVG$Box;->height:F

    mul-float/2addr v2, v1

    iget v3, v0, Lcom/caverock/androidsvg/SVG$Box;->width:F

    div-float/2addr v2, v3

    .line 398
    .restart local v2    # "h":F
    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-virtual {p0, v3, v4, p1}, Lcom/caverock/androidsvg/SVG;->renderToPicture(IILcom/caverock/androidsvg/RenderOptions;)Landroid/graphics/Picture;

    move-result-object v3

    return-object v3

    .line 400
    .end local v1    # "w":F
    .end local v2    # "h":F
    :cond_3
    iget-object v1, p0, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Svg;->height:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    .line 403
    iget-object v1, p0, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Svg;->height:Lcom/caverock/androidsvg/SVG$Length;

    iget v2, p0, Lcom/caverock/androidsvg/SVG;->renderDPI:F

    invoke-virtual {v1, v2}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(F)F

    move-result v1

    .line 404
    .local v1, "h":F
    iget v2, v0, Lcom/caverock/androidsvg/SVG$Box;->width:F

    mul-float/2addr v2, v1

    iget v3, v0, Lcom/caverock/androidsvg/SVG$Box;->height:F

    div-float/2addr v2, v3

    .line 405
    .local v2, "w":F
    float-to-double v3, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-virtual {p0, v3, v4, p1}, Lcom/caverock/androidsvg/SVG;->renderToPicture(IILcom/caverock/androidsvg/RenderOptions;)Landroid/graphics/Picture;

    move-result-object v3

    return-object v3

    .line 409
    .end local v1    # "h":F
    .end local v2    # "w":F
    :cond_4
    const/16 v1, 0x200

    invoke-virtual {p0, v1, v1, p1}, Lcom/caverock/androidsvg/SVG;->renderToPicture(IILcom/caverock/androidsvg/RenderOptions;)Landroid/graphics/Picture;

    move-result-object v1

    return-object v1
.end method

.method public renderViewToCanvas(Ljava/lang/String;Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "viewId"    # Ljava/lang/String;
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .line 556
    invoke-static {}, Lcom/caverock/androidsvg/RenderOptions;->create()Lcom/caverock/androidsvg/RenderOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/caverock/androidsvg/RenderOptions;->view(Ljava/lang/String;)Lcom/caverock/androidsvg/RenderOptions;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/caverock/androidsvg/SVG;->renderToCanvas(Landroid/graphics/Canvas;Lcom/caverock/androidsvg/RenderOptions;)V

    .line 557
    return-void
.end method

.method public renderViewToCanvas(Ljava/lang/String;Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 5
    .param p1, "viewId"    # Ljava/lang/String;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "viewPort"    # Landroid/graphics/RectF;

    .line 577
    invoke-static {}, Lcom/caverock/androidsvg/RenderOptions;->create()Lcom/caverock/androidsvg/RenderOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/caverock/androidsvg/RenderOptions;->view(Ljava/lang/String;)Lcom/caverock/androidsvg/RenderOptions;

    move-result-object v0

    .line 579
    .local v0, "renderOptions":Lcom/caverock/androidsvg/RenderOptions;
    if-eqz p3, :cond_0

    .line 580
    iget v1, p3, Landroid/graphics/RectF;->left:F

    iget v2, p3, Landroid/graphics/RectF;->top:F

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/caverock/androidsvg/RenderOptions;->viewPort(FFFF)Lcom/caverock/androidsvg/RenderOptions;

    .line 583
    :cond_0
    invoke-virtual {p0, p2, v0}, Lcom/caverock/androidsvg/SVG;->renderToCanvas(Landroid/graphics/Canvas;Lcom/caverock/androidsvg/RenderOptions;)V

    .line 584
    return-void
.end method

.method public renderViewToPicture(Ljava/lang/String;II)Landroid/graphics/Picture;
    .locals 5
    .param p1, "viewId"    # Ljava/lang/String;
    .param p2, "widthInPixels"    # I
    .param p3, "heightInPixels"    # I

    .line 460
    new-instance v0, Lcom/caverock/androidsvg/RenderOptions;

    invoke-direct {v0}, Lcom/caverock/androidsvg/RenderOptions;-><init>()V

    .line 461
    .local v0, "renderOptions":Lcom/caverock/androidsvg/RenderOptions;
    invoke-virtual {v0, p1}, Lcom/caverock/androidsvg/RenderOptions;->view(Ljava/lang/String;)Lcom/caverock/androidsvg/RenderOptions;

    move-result-object v1

    int-to-float v2, p2

    int-to-float v3, p3

    .line 462
    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Lcom/caverock/androidsvg/RenderOptions;->viewPort(FFFF)Lcom/caverock/androidsvg/RenderOptions;

    .line 464
    new-instance v1, Landroid/graphics/Picture;

    invoke-direct {v1}, Landroid/graphics/Picture;-><init>()V

    .line 465
    .local v1, "picture":Landroid/graphics/Picture;
    invoke-virtual {v1, p2, p3}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    move-result-object v2

    .line 467
    .local v2, "canvas":Landroid/graphics/Canvas;
    new-instance v3, Lcom/caverock/androidsvg/SVGAndroidRenderer;

    iget v4, p0, Lcom/caverock/androidsvg/SVG;->renderDPI:F

    invoke-direct {v3, v2, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;-><init>(Landroid/graphics/Canvas;F)V

    .line 469
    .local v3, "renderer":Lcom/caverock/androidsvg/SVGAndroidRenderer;
    invoke-virtual {v3, p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderDocument(Lcom/caverock/androidsvg/SVG;Lcom/caverock/androidsvg/RenderOptions;)V

    .line 471
    invoke-virtual {v1}, Landroid/graphics/Picture;->endRecording()V

    .line 472
    return-object v1
.end method

.method resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;
    .locals 3
    .param p1, "iri"    # Ljava/lang/String;

    .line 936
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 937
    return-object v0

    .line 939
    :cond_0
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVG;->cssQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 940
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    const-string v1, "#"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 942
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/caverock/androidsvg/SVG;->getElementById(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgElementBase;

    move-result-object v0

    return-object v0

    .line 944
    :cond_1
    return-object v0
.end method

.method setDesc(Ljava/lang/String;)V
    .locals 0
    .param p1, "desc"    # Ljava/lang/String;

    .line 2135
    iput-object p1, p0, Lcom/caverock/androidsvg/SVG;->desc:Ljava/lang/String;

    .line 2136
    return-void
.end method

.method public setDocumentHeight(F)V
    .locals 2
    .param p1, "pixels"    # F

    .line 769
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    if-eqz v0, :cond_0

    .line 772
    new-instance v1, Lcom/caverock/androidsvg/SVG$Length;

    invoke-direct {v1, p1}, Lcom/caverock/androidsvg/SVG$Length;-><init>(F)V

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Svg;->height:Lcom/caverock/androidsvg/SVG$Length;

    .line 773
    return-void

    .line 770
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SVG document is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDocumentHeight(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    .line 787
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    if-eqz v0, :cond_0

    .line 790
    invoke-static {p1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Svg;->height:Lcom/caverock/androidsvg/SVG$Length;

    .line 791
    return-void

    .line 788
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SVG document is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDocumentPreserveAspectRatio(Lcom/caverock/androidsvg/PreserveAspectRatio;)V
    .locals 2
    .param p1, "preserveAspectRatio"    # Lcom/caverock/androidsvg/PreserveAspectRatio;

    .line 853
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    if-eqz v0, :cond_0

    .line 856
    iput-object p1, v0, Lcom/caverock/androidsvg/SVG$Svg;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    .line 857
    return-void

    .line 854
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SVG document is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDocumentViewBox(FFFF)V
    .locals 2
    .param p1, "minX"    # F
    .param p2, "minY"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F

    .line 815
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    if-eqz v0, :cond_0

    .line 818
    new-instance v1, Lcom/caverock/androidsvg/SVG$Box;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Svg;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 819
    return-void

    .line 816
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SVG document is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDocumentWidth(F)V
    .locals 2
    .param p1, "pixels"    # F

    .line 712
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    if-eqz v0, :cond_0

    .line 715
    new-instance v1, Lcom/caverock/androidsvg/SVG$Length;

    invoke-direct {v1, p1}, Lcom/caverock/androidsvg/SVG$Length;-><init>(F)V

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Svg;->width:Lcom/caverock/androidsvg/SVG$Length;

    .line 716
    return-void

    .line 713
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SVG document is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDocumentWidth(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    .line 730
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    if-eqz v0, :cond_0

    .line 733
    invoke-static {p1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Svg;->width:Lcom/caverock/androidsvg/SVG$Length;

    .line 734
    return-void

    .line 731
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SVG document is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setRenderDPI(F)V
    .locals 0
    .param p1, "dpi"    # F

    .line 316
    iput p1, p0, Lcom/caverock/androidsvg/SVG;->renderDPI:F

    .line 317
    return-void
.end method

.method setRootElement(Lcom/caverock/androidsvg/SVG$Svg;)V
    .locals 0
    .param p1, "rootElement"    # Lcom/caverock/androidsvg/SVG$Svg;

    .line 930
    iput-object p1, p0, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    .line 931
    return-void
.end method

.method setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .line 2129
    iput-object p1, p0, Lcom/caverock/androidsvg/SVG;->title:Ljava/lang/String;

    .line 2130
    return-void
.end method
