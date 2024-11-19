.class Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;
.super Ljava/lang/Object;
.source "SVGAndroidRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVGAndroidRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MarkerVector"
.end annotation


# instance fields
.field dx:F

.field dy:F

.field isAmbiguous:Z

.field final synthetic this$0:Lcom/caverock/androidsvg/SVGAndroidRenderer;

.field x:F

.field y:F


# direct methods
.method constructor <init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;FFFF)V
    .locals 4
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "dx"    # F
    .param p5, "dy"    # F

    .line 2772
    iput-object p1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->this$0:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2768
    const/4 p1, 0x0

    iput p1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dx:F

    iput p1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dy:F

    .line 2769
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->isAmbiguous:Z

    .line 2773
    iput p2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->x:F

    .line 2774
    iput p3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->y:F

    .line 2776
    mul-float p1, p4, p4

    mul-float v0, p5, p5

    add-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 2777
    .local v0, "len":D
    const-wide/16 v2, 0x0

    cmpl-double p1, v0, v2

    if-eqz p1, :cond_0

    .line 2778
    float-to-double v2, p4

    div-double/2addr v2, v0

    double-to-float p1, v2

    iput p1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dx:F

    .line 2779
    float-to-double v2, p5

    div-double/2addr v2, v0

    double-to-float p1, v2

    iput p1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dy:F

    .line 2781
    :cond_0
    return-void
.end method


# virtual methods
.method add(FF)V
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 2788
    iget v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->x:F

    sub-float v0, p1, v0

    .line 2789
    .local v0, "dx":F
    iget v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->y:F

    sub-float v1, p2, v1

    .line 2790
    .local v1, "dy":F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 2791
    .local v2, "len":D
    const-wide/16 v4, 0x0

    cmpl-double v4, v2, v4

    if-eqz v4, :cond_0

    .line 2792
    float-to-double v4, v0

    div-double/2addr v4, v2

    double-to-float v0, v4

    .line 2793
    float-to-double v4, v1

    div-double/2addr v4, v2

    double-to-float v1, v4

    .line 2796
    :cond_0
    iget v4, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dx:F

    neg-float v5, v4

    cmpl-float v5, v0, v5

    if-nez v5, :cond_1

    iget v5, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dy:F

    neg-float v5, v5

    cmpl-float v5, v1, v5

    if-nez v5, :cond_1

    .line 2797
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->isAmbiguous:Z

    .line 2799
    neg-float v4, v1

    iput v4, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dx:F

    .line 2800
    iput v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dy:F

    goto :goto_0

    .line 2802
    :cond_1
    add-float/2addr v4, v0

    iput v4, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dx:F

    .line 2803
    iget v4, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dy:F

    add-float/2addr v4, v1

    iput v4, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dy:F

    .line 2805
    :goto_0
    return-void
.end method

.method add(Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;)V
    .locals 4
    .param p1, "v2"    # Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    .line 2810
    iget v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dx:F

    iget v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dx:F

    neg-float v2, v1

    cmpl-float v2, v0, v2

    if-nez v2, :cond_0

    iget v2, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dy:F

    iget v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dy:F

    neg-float v3, v3

    cmpl-float v3, v2, v3

    if-nez v3, :cond_0

    .line 2811
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->isAmbiguous:Z

    .line 2813
    neg-float v0, v2

    iput v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dx:F

    .line 2814
    iget v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dx:F

    iput v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dy:F

    goto :goto_0

    .line 2816
    :cond_0
    add-float/2addr v1, v0

    iput v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dx:F

    .line 2817
    iget v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dy:F

    iget v1, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dy:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dy:F

    .line 2819
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 2825
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->y:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dx:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dy:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
