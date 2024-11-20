.class abstract Lcom/caverock/androidsvg/SVG$SvgElement;
.super Lcom/caverock/androidsvg/SVG$SvgElementBase;
.source "SVG.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "SvgElement"
.end annotation


# instance fields
.field boundingBox:Lcom/caverock/androidsvg/SVG$Box;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1580
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVG$SvgElementBase;-><init>()V

    .line 1582
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    return-void
.end method
