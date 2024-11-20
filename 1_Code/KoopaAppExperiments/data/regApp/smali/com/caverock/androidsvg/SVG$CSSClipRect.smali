.class Lcom/caverock/androidsvg/SVG$CSSClipRect;
.super Ljava/lang/Object;
.source "SVG.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CSSClipRect"
.end annotation


# instance fields
.field bottom:Lcom/caverock/androidsvg/SVG$Length;

.field left:Lcom/caverock/androidsvg/SVG$Length;

.field right:Lcom/caverock/androidsvg/SVG$Length;

.field top:Lcom/caverock/androidsvg/SVG$Length;


# direct methods
.method constructor <init>(Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Length;)V
    .locals 0
    .param p1, "top"    # Lcom/caverock/androidsvg/SVG$Length;
    .param p2, "right"    # Lcom/caverock/androidsvg/SVG$Length;
    .param p3, "bottom"    # Lcom/caverock/androidsvg/SVG$Length;
    .param p4, "left"    # Lcom/caverock/androidsvg/SVG$Length;

    .line 1538
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1539
    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$CSSClipRect;->top:Lcom/caverock/androidsvg/SVG$Length;

    .line 1540
    iput-object p2, p0, Lcom/caverock/androidsvg/SVG$CSSClipRect;->right:Lcom/caverock/androidsvg/SVG$Length;

    .line 1541
    iput-object p3, p0, Lcom/caverock/androidsvg/SVG$CSSClipRect;->bottom:Lcom/caverock/androidsvg/SVG$Length;

    .line 1542
    iput-object p4, p0, Lcom/caverock/androidsvg/SVG$CSSClipRect;->left:Lcom/caverock/androidsvg/SVG$Length;

    .line 1543
    return-void
.end method
