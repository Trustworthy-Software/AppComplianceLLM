.class public abstract Lorg/osmdroid/views/overlay/NonAcceleratedOverlay;
.super Lorg/osmdroid/views/overlay/Overlay;
.source "NonAcceleratedOverlay.java"


# instance fields
.field private mBackingBitmap:Landroid/graphics/Bitmap;

.field private mBackingCanvas:Landroid/graphics/Canvas;

.field private final mBackingMatrix:Landroid/graphics/Matrix;

.field private final mCanvasIdentityMatrix:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/Overlay;-><init>()V

    .line 34
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/NonAcceleratedOverlay;->mBackingMatrix:Landroid/graphics/Matrix;

    .line 35
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/NonAcceleratedOverlay;->mCanvasIdentityMatrix:Landroid/graphics/Matrix;

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 47
    invoke-direct {p0, p1}, Lorg/osmdroid/views/overlay/Overlay;-><init>(Landroid/content/Context;)V

    .line 34
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/NonAcceleratedOverlay;->mBackingMatrix:Landroid/graphics/Matrix;

    .line 35
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/NonAcceleratedOverlay;->mCanvasIdentityMatrix:Landroid/graphics/Matrix;

    .line 48
    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/MapView;Z)V
    .locals 5
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "osmv"    # Lorg/osmdroid/views/MapView;
    .param p3, "shadow"    # Z

    .line 79
    const/4 v0, 0x1

    .line 80
    .local v0, "atLeastHoneycomb":Z
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/NonAcceleratedOverlay;->isUsingBackingBitmap()Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 84
    if-eqz p3, :cond_0

    .line 85
    return-void

    .line 88
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_0

    .line 91
    :cond_1
    iget-object v1, p0, Lorg/osmdroid/views/overlay/NonAcceleratedOverlay;->mBackingBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lorg/osmdroid/views/overlay/NonAcceleratedOverlay;->mBackingBitmap:Landroid/graphics/Bitmap;

    .line 92
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    if-eq v1, v3, :cond_3

    .line 93
    :cond_2
    iput-object v2, p0, Lorg/osmdroid/views/overlay/NonAcceleratedOverlay;->mBackingBitmap:Landroid/graphics/Bitmap;

    .line 94
    iput-object v2, p0, Lorg/osmdroid/views/overlay/NonAcceleratedOverlay;->mBackingCanvas:Landroid/graphics/Canvas;

    .line 96
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lorg/osmdroid/views/overlay/NonAcceleratedOverlay;->mBackingBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    nop

    .line 104
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v3, p0, Lorg/osmdroid/views/overlay/NonAcceleratedOverlay;->mBackingBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lorg/osmdroid/views/overlay/NonAcceleratedOverlay;->mBackingCanvas:Landroid/graphics/Canvas;

    .line 107
    :cond_3
    iget-object v1, p0, Lorg/osmdroid/views/overlay/NonAcceleratedOverlay;->mBackingCanvas:Landroid/graphics/Canvas;

    const/4 v3, 0x0

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 108
    iget-object v1, p0, Lorg/osmdroid/views/overlay/NonAcceleratedOverlay;->mBackingMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    .line 109
    iget-object v1, p0, Lorg/osmdroid/views/overlay/NonAcceleratedOverlay;->mBackingCanvas:Landroid/graphics/Canvas;

    iget-object v3, p0, Lorg/osmdroid/views/overlay/NonAcceleratedOverlay;->mBackingMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 110
    iget-object v1, p0, Lorg/osmdroid/views/overlay/NonAcceleratedOverlay;->mBackingCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0, v1, p1, p2, p3}, Lorg/osmdroid/views/overlay/NonAcceleratedOverlay;->onDraw(Landroid/graphics/Canvas;Landroid/graphics/Canvas;Lorg/osmdroid/views/MapView;Z)V

    .line 111
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 112
    iget-object v1, p0, Lorg/osmdroid/views/overlay/NonAcceleratedOverlay;->mCanvasIdentityMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    .line 113
    iget-object v1, p0, Lorg/osmdroid/views/overlay/NonAcceleratedOverlay;->mCanvasIdentityMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 114
    iget-object v1, p0, Lorg/osmdroid/views/overlay/NonAcceleratedOverlay;->mCanvasIdentityMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 115
    iget-object v1, p0, Lorg/osmdroid/views/overlay/NonAcceleratedOverlay;->mBackingBitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 116
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1

    .line 98
    :catch_0
    move-exception v1

    .line 99
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    const-string v2, "OsmDroid"

    const-string v3, "OutOfMemoryError creating backing bitmap in NonAcceleratedOverlay."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 101
    return-void

    .line 89
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :cond_4
    :goto_0
    return-void

    .line 118
    :cond_5
    invoke-virtual {p0, p1, p1, p2, p3}, Lorg/osmdroid/views/overlay/NonAcceleratedOverlay;->onDraw(Landroid/graphics/Canvas;Landroid/graphics/Canvas;Lorg/osmdroid/views/MapView;Z)V

    .line 119
    :goto_1
    return-void
.end method

.method public isUsingBackingBitmap()Z
    .locals 1

    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method public onDetach(Lorg/osmdroid/views/MapView;)V
    .locals 1
    .param p1, "mapView"    # Lorg/osmdroid/views/MapView;

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osmdroid/views/overlay/NonAcceleratedOverlay;->mBackingBitmap:Landroid/graphics/Bitmap;

    .line 72
    iput-object v0, p0, Lorg/osmdroid/views/overlay/NonAcceleratedOverlay;->mBackingCanvas:Landroid/graphics/Canvas;

    .line 73
    invoke-super {p0, p1}, Lorg/osmdroid/views/overlay/Overlay;->onDetach(Lorg/osmdroid/views/MapView;)V

    .line 74
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;Landroid/graphics/Canvas;Lorg/osmdroid/views/MapView;Z)V
    .locals 0
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "acceleratedCanvas"    # Landroid/graphics/Canvas;
    .param p3, "osmv"    # Lorg/osmdroid/views/MapView;
    .param p4, "shadow"    # Z

    .line 59
    invoke-virtual {p0, p1, p3, p4}, Lorg/osmdroid/views/overlay/NonAcceleratedOverlay;->onDraw(Landroid/graphics/Canvas;Lorg/osmdroid/views/MapView;Z)V

    .line 60
    return-void
.end method

.method protected abstract onDraw(Landroid/graphics/Canvas;Lorg/osmdroid/views/MapView;Z)V
.end method
