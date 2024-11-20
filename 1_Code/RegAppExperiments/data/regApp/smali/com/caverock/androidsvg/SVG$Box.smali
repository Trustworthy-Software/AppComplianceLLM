.class Lcom/caverock/androidsvg/SVG$Box;
.super Ljava/lang/Object;
.source "SVG.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Box"
.end annotation


# instance fields
.field height:F

.field minX:F

.field minY:F

.field width:F


# direct methods
.method constructor <init>(FFFF)V
    .locals 0
    .param p1, "minX"    # F
    .param p2, "minY"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F

    .line 1031
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1032
    iput p1, p0, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    .line 1033
    iput p2, p0, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    .line 1034
    iput p3, p0, Lcom/caverock/androidsvg/SVG$Box;->width:F

    .line 1035
    iput p4, p0, Lcom/caverock/androidsvg/SVG$Box;->height:F

    .line 1036
    return-void
.end method

.method constructor <init>(Lcom/caverock/androidsvg/SVG$Box;)V
    .locals 1
    .param p1, "copy"    # Lcom/caverock/androidsvg/SVG$Box;

    .line 1039
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1040
    iget v0, p1, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    iput v0, p0, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    .line 1041
    iget v0, p1, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    iput v0, p0, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    .line 1042
    iget v0, p1, Lcom/caverock/androidsvg/SVG$Box;->width:F

    iput v0, p0, Lcom/caverock/androidsvg/SVG$Box;->width:F

    .line 1043
    iget v0, p1, Lcom/caverock/androidsvg/SVG$Box;->height:F

    iput v0, p0, Lcom/caverock/androidsvg/SVG$Box;->height:F

    .line 1044
    return-void
.end method

.method static fromLimits(FFFF)Lcom/caverock/androidsvg/SVG$Box;
    .locals 3
    .param p0, "minX"    # F
    .param p1, "minY"    # F
    .param p2, "maxX"    # F
    .param p3, "maxY"    # F

    .line 1048
    new-instance v0, Lcom/caverock/androidsvg/SVG$Box;

    sub-float v1, p2, p0

    sub-float v2, p3, p1

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    return-object v0
.end method

.method static fromRectF(Landroid/graphics/RectF;)Lcom/caverock/androidsvg/SVG$Box;
    .locals 4
    .param p0, "rect"    # Landroid/graphics/RectF;

    .line 1053
    iget v0, p0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Landroid/graphics/RectF;->top:F

    iget v2, p0, Landroid/graphics/RectF;->right:F

    iget v3, p0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v0, v1, v2, v3}, Lcom/caverock/androidsvg/SVG$Box;->fromLimits(FFFF)Lcom/caverock/androidsvg/SVG$Box;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method maxX()F
    .locals 2

    .line 1061
    iget v0, p0, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    iget v1, p0, Lcom/caverock/androidsvg/SVG$Box;->width:F

    add-float/2addr v0, v1

    return v0
.end method

.method maxY()F
    .locals 2

    .line 1062
    iget v0, p0, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    iget v1, p0, Lcom/caverock/androidsvg/SVG$Box;->height:F

    add-float/2addr v0, v1

    return v0
.end method

.method toRectF()Landroid/graphics/RectF;
    .locals 5

    .line 1058
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    iget v2, p0, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVG$Box;->maxX()F

    move-result v3

    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVG$Box;->maxY()F

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1072
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/caverock/androidsvg/SVG$Box;->width:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/caverock/androidsvg/SVG$Box;->height:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method union(Lcom/caverock/androidsvg/SVG$Box;)V
    .locals 2
    .param p1, "other"    # Lcom/caverock/androidsvg/SVG$Box;

    .line 1066
    iget v0, p1, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    iget v1, p0, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    iput v0, p0, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    .line 1067
    :cond_0
    iget v0, p1, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    iget v1, p0, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    iput v0, p0, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    .line 1068
    :cond_1
    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVG$Box;->maxX()F

    move-result v0

    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVG$Box;->maxX()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVG$Box;->maxX()F

    move-result v0

    iget v1, p0, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/caverock/androidsvg/SVG$Box;->width:F

    .line 1069
    :cond_2
    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVG$Box;->maxY()F

    move-result v0

    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVG$Box;->maxY()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVG$Box;->maxY()F

    move-result v0

    iget v1, p0, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/caverock/androidsvg/SVG$Box;->height:F

    .line 1070
    :cond_3
    return-void
.end method
