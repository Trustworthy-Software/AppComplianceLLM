.class Lcom/caverock/androidsvg/SVG$SolidColor;
.super Lcom/caverock/androidsvg/SVG$SvgElementBase;
.source "SVG.java"

# interfaces
.implements Lcom/caverock/androidsvg/SVG$SvgContainer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SolidColor"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 2106
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVG$SvgElementBase;-><init>()V

    return-void
.end method


# virtual methods
.method public addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V
    .locals 0
    .param p1, "elem"    # Lcom/caverock/androidsvg/SVG$SvgObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    .line 2117
    return-void
.end method

.method public getChildren()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/caverock/androidsvg/SVG$SvgObject;",
            ">;"
        }
    .end annotation

    .line 2115
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getNodeName()Ljava/lang/String;
    .locals 1

    .line 2119
    const-string v0, "solidColor"

    return-object v0
.end method
