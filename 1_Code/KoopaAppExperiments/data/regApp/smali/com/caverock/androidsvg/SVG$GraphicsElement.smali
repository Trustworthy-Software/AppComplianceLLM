.class abstract Lcom/caverock/androidsvg/SVG$GraphicsElement;
.super Lcom/caverock/androidsvg/SVG$SvgConditionalElement;
.source "SVG.java"

# interfaces
.implements Lcom/caverock/androidsvg/SVG$HasTransform;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "GraphicsElement"
.end annotation


# instance fields
.field transform:Landroid/graphics/Matrix;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1739
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;-><init>()V

    return-void
.end method


# virtual methods
.method public setTransform(Landroid/graphics/Matrix;)V
    .locals 0
    .param p1, "transform"    # Landroid/graphics/Matrix;

    .line 1744
    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$GraphicsElement;->transform:Landroid/graphics/Matrix;

    return-void
.end method
