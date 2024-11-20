.class Lorg/mapsforge/map/android/graphics/AndroidMatrix;
.super Ljava/lang/Object;
.source "AndroidMatrix.java"

# interfaces
.implements Lorg/mapsforge/core/graphics/Matrix;


# instance fields
.field final matrix:Landroid/graphics/Matrix;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidMatrix;->matrix:Landroid/graphics/Matrix;

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 1

    .line 24
    iget-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidMatrix;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 25
    return-void
.end method

.method public rotate(F)V
    .locals 3
    .param p1, "theta"    # F

    .line 29
    iget-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidMatrix;->matrix:Landroid/graphics/Matrix;

    float-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 30
    return-void
.end method

.method public rotate(FFF)V
    .locals 3
    .param p1, "theta"    # F
    .param p2, "pivotX"    # F
    .param p3, "pivotY"    # F

    .line 34
    iget-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidMatrix;->matrix:Landroid/graphics/Matrix;

    float-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    .line 35
    return-void
.end method

.method public scale(FF)V
    .locals 1
    .param p1, "scaleX"    # F
    .param p2, "scaleY"    # F

    .line 39
    iget-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidMatrix;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 40
    return-void
.end method

.method public scale(FFFF)V
    .locals 1
    .param p1, "scaleX"    # F
    .param p2, "scaleY"    # F
    .param p3, "pivotX"    # F
    .param p4, "pivotY"    # F

    .line 44
    iget-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidMatrix;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Matrix;->preScale(FFFF)Z

    .line 45
    return-void
.end method

.method public translate(FF)V
    .locals 1
    .param p1, "translateX"    # F
    .param p2, "translateY"    # F

    .line 49
    iget-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidMatrix;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 50
    return-void
.end method
