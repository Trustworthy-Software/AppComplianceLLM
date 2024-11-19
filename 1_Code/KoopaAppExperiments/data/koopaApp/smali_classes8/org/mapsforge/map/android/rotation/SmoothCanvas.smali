.class public Lorg/mapsforge/map/android/rotation/SmoothCanvas;
.super Landroid/graphics/Canvas;
.source "SmoothCanvas.java"


# instance fields
.field delegate:Landroid/graphics/Canvas;

.field private final smooth:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Landroid/graphics/Canvas;-><init>()V

    .line 32
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/mapsforge/map/android/rotation/SmoothCanvas;->smooth:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public clipPath(Landroid/graphics/Path;)Z
    .locals 1
    .param p1, "path"    # Landroid/graphics/Path;

    .line 177
    iget-object v0, p0, Lorg/mapsforge/map/android/rotation/SmoothCanvas;->delegate:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    move-result v0

    return v0
.end method

.method public clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z
    .locals 1
    .param p1, "path"    # Landroid/graphics/Path;
    .param p2, "op"    # Landroid/graphics/Region$Op;

    .line 172
    iget-object v0, p0, Lorg/mapsforge/map/android/rotation/SmoothCanvas;->delegate:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    move-result v0

    return v0
.end method

.method public clipRect(FFFF)Z
    .locals 1
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .line 162
    iget-object v0, p0, Lorg/mapsforge/map/android/rotation/SmoothCanvas;->delegate:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    move-result v0

    return v0
.end method

.method public clipRect(FFFFLandroid/graphics/Region$Op;)Z
    .locals 6
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "op"    # Landroid/graphics/Region$Op;

    .line 157
    iget-object v0, p0, Lorg/mapsforge/map/android/rotation/SmoothCanvas;->delegate:Landroid/graphics/Canvas;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    move-result v0

    return v0
.end method

.method public clipRect(IIII)Z
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 167
    iget-object v0, p0, Lorg/mapsforge/map/android/rotation/SmoothCanvas;->delegate:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    move-result v0

    return v0
.end method

.method public clipRect(Landroid/graphics/Rect;)Z
    .locals 1
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 151
    iget-object v0, p0, Lorg/mapsforge/map/android/rotation/SmoothCanvas;->delegate:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z
    .locals 1
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "op"    # Landroid/graphics/Region$Op;

    .line 141
    iget-object v0, p0, Lorg/mapsforge/map/android/rotation/SmoothCanvas;->delegate:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    move-result v0

    return v0
.end method

.method public clipRect(Landroid/graphics/RectF;)Z
    .locals 1
    .param p1, "rect"    # Landroid/graphics/RectF;

    .line 146
    iget-object v0, p0, Lorg/mapsforge/map/android/rotation/SmoothCanvas;->delegate:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    move-result v0

    return v0
.end method

.method public clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z
    .locals 1
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "op"    # Landroid/graphics/Region$Op;

    .line 136
    iget-object v0, p0, Lorg/mapsforge/map/android/rotation/SmoothCanvas;->delegate:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z

    move-result v0

    return v0
.end method

.method public concat(Landroid/graphics/Matrix;)V
    .locals 1
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .line 120
    iget-object v0, p0, Lorg/mapsforge/map/android/rotation/SmoothCanvas;->delegate:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 121
    return-void
.end method

.method public drawARGB(IIII)V
    .locals 1
    .param p1, "a"    # I
    .param p2, "r"    # I
    .param p3, "g"    # I
    .param p4, "b"    # I

    .line 218
    iget-object v0, p0, Lorg/mapsforge/map/android/rotation/SmoothCanvas;->delegate:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 219
    return-void
.end method

.method public drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V
    .locals 6
    .param p1, "oval"    # Landroid/graphics/RectF;
    .param p2, "startAngle"    # F
    .param p3, "sweepAngle"    # F
    .param p4, "useCenter"    # Z
    .param p5, "paint"    # Landroid/graphics/Paint;

    .line 296
    iget-object v0, p0, Lorg/mapsforge/map/android/rotation/SmoothCanvas;->delegate:Landroid/graphics/Canvas;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 297
    return-void
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "paint"    # Landroid/graphics/Paint;

    .line 311
    if-nez p4, :cond_0

    .line 312
    iget-object p4, p0, Lorg/mapsforge/map/android/rotation/SmoothCanvas;->smooth:Landroid/graphics/Paint;

    goto :goto_0

    .line 314
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 316
    :goto_0
    iget-object v0, p0, Lorg/mapsforge/map/android/rotation/SmoothCanvas;->delegate:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 317
    return-void
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "matrix"    # Landroid/graphics/Matrix;
    .param p3, "paint"    # Landroid/graphics/Paint;

    .line 354
    if-nez p3, :cond_0

    .line 355
    iget-object p3, p0, Lorg/mapsforge/map/android/rotation/SmoothCanvas;->smooth:Landroid/graphics/Paint;

    goto :goto_0

    .line 357
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 359
    :goto_0
    iget-object v0, p0, Lorg/mapsforge/map/android/rotation/SmoothCanvas;->delegate:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 360
    return-void
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "src"    # Landroid/graphics/Rect;
    .param p3, "dst"    # Landroid/graphics/Rect;
    .param p4, "paint"    # Landroid/graphics/Paint;

    .line 331
    if-nez p4, :cond_0

    .line 332
    iget-object p4, p0, Lorg/mapsforge/map/android/rotation/SmoothCanvas;->smooth:Landroid/graphics/Paint;

    goto :goto_0

    .line 334
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 336
    :goto_0
    iget-object v0, p0, Lorg/mapsforge/map/android/rotation/SmoothCanvas;->delegate:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 337
    return-void
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "src"    # Landroid/graphics/Rect;
    .param p3, "dst"    # Landroid/graphics/RectF;
    .param p4, "paint"    # Landroid/graphics/Paint;

    .line 321
    if-nez p4, :cond_0

    .line 322
    iget-object p4, p0, Lorg/mapsforge/map/android/rotation/SmoothCanvas;->smooth:Landroid/graphics/Paint;

    goto :goto_0

    .line 324
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 326
    :goto_0
    iget-object v0, p0, Lorg/mapsforge/map/android/rotation/SmoothCanvas;->delegate:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 327
    return-void
.end method

.method public drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V
    .locals 13
    .param p1, "colors"    # [I
    .param p2, "offset"    # I
    .param p3, "stride"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "hasAlpha"    # Z
    .param p9, "paint"    # Landroid/graphics/Paint;

    .line 343
    move-object v0, p0

    move-object/from16 v1, p9

    if-nez v1, :cond_0

    .line 344
    iget-object v1, v0, Lorg/mapsforge/map/android/rotation/SmoothCanvas;->smooth:Landroid/graphics/Paint;

    .end local p9    # "paint":Landroid/graphics/Paint;
    .local v1, "paint":Landroid/graphics/Paint;
    goto :goto_0

    .line 346
    .end local v1    # "paint":Landroid/graphics/Paint;
    .restart local p9    # "paint":Landroid/graphics/Paint;
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 348
    .end local p9    # "paint":Landroid/graphics/Paint;
    .restart local v1    # "paint":Landroid/graphics/Paint;
    :goto_0
    iget-object v3, v0, Lorg/mapsforge/map/android/rotation/SmoothCanvas;->delegate:Landroid/graphics/Canvas;

    move-object v4, p1

    move v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move-object v12, v1

    invoke-virtual/range {v3 .. v12}, Landroid/graphics/Canvas;->drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V

    .line 350
    return-void
.end method

.method public drawBitmapMesh(Landroid/graphics/Bitmap;II[FI[IILandroid/graphics/Paint;)V
    .locals 10
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "meshWidth"    # I
    .param p3, "meshHeight"    # I
    .param p4, "verts"    # [F
    .param p5, "vertOffset"    # I
    .param p6, "colors"    # [I
    .param p7, "colorOffset"    # I
    .param p8, "paint"    # Landroid/graphics/Paint;

    .line 366
    move-object v0, p0

    iget-object v1, v0, Lorg/mapsforge/map/android/rotation/SmoothCanvas;->delegate:Landroid/graphics/Canvas;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawBitmapMesh(Landroid/graphics/Bitmap;II[FI[IILandroid/graphics/Paint;)V

    .line 368
    return-void
.end method

.method public drawCircle(FFFLandroid/graphics/Paint;)V
    .locals 1
    .param p1, "cx"    # F
    .param p2, "cy"    # F
    .param p3, "radius"    # F
    .param p4, "paint"    # Landroid/graphics/Paint;

    .line 290
    iget-object v0, p0, Lorg/mapsforge/map/android/rotation/SmoothCanvas;->delegate:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 291
    return-void
.end method

.method public drawColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 223
    iget-object v0, p0, Lorg/mapsforge/map/android/rotation/SmoothCanvas;->delegate:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 224
    return-void
.end method

.method public drawColor(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "color"    # I
    .param p2, "mode"    # Landroid/graphics/PorterDuff$Mode;

    .line 228
    iget-object v0, p0, Lorg/mapsforge/map/android/rotation/SmoothCanvas;->delegate:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 229
    return-void
.end method

.method public drawLine(FFFFLandroid/graphics/Paint;)V
    .locals 6
    .param p1, "startX"    # F
    .param p2, "startY"    # F
    .param p3, "stopX"    # F
    .param p4, "stopY"    # F
    .param p5, "paint"    # Landroid/graphics/Paint;

    .line 254
    iget-object v0, p0, Lorg/mapsforge/map/android/rotation/SmoothCanvas;->delegate:Landroid/graphics/Canvas;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 255
    return-void
.end method

.method public drawLines([FIILandroid/graphics/Paint;)V
    .locals 1
    .param p1, "pts"    # [F
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .param p4, "paint"    # Landroid/graphics/Paint;

    .line 259
    iget-object v0, p0, Lorg/mapsforge/map/android/rotation/SmoothCanvas;->delegate:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    .line 260
    return-void
.end method

.method public drawLines([FLandroid/graphics/Paint;)V
    .locals 1
    .param p1, "pts"    # [F
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 264
    iget-object v0, p0, Lorg/mapsforge/map/android/rotation/SmoothCanvas;->delegate:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    .line 265
    return-void
.end method

.method public drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 1
    .param p1, "oval"    # Landroid/graphics/RectF;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 285
    iget-object v0, p0, Lorg/mapsforge/map/android/rotation/SmoothCanvas;->delegate:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 286
    return-void
.end method

.method public drawPaint(Landroid/graphics/Paint;)V
    .locals 1
    .param p1, "paint"    # Landroid/graphics/Paint;

    .line 233
    iget-object v0, p0, Lorg/mapsforge/map/android/rotation/SmoothCanvas;->delegate:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 234
    return-void
.end method

.method public drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
    .locals 1
    .param p1, "path"    # Landroid/graphics/Path;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 306
    iget-object v0, p0, Lorg/mapsforge/map/android/rotation/SmoothCanvas;->delegate:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 307
    return-void
.end method

.method public drawPicture(Landroid/graphics/Picture;)V
    .locals 1
    .param p1, "picture"    # Landroid/graphics/Picture;

    .line 431
    iget-object v0, p0, Lorg/mapsforge/map/android/rotation/SmoothCanvas;->delegate:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;)V

    .line 432
    return-void
.end method

.method public drawPicture(Landroid/graphics/Picture;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "picture"    # Landroid/graphics/Picture;
    .param p2, "dst"    # Landroid/graphics/Rect;

    .line 441
    iget-object v0, p0, Lorg/mapsforge/map/android/rotation/SmoothCanvas;->delegate:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;Landroid/graphics/Rect;)V

    .line 442
    return-void
.end method

.method public drawPicture(Landroid/graphics/Picture;Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "picture"    # Landroid/graphics/Picture;
    .param p2, "dst"    # Landroid/graphics/RectF;

    .line 436
    iget-object v0, p0, Lorg/mapsforge/map/android/rotation/SmoothCanvas;->delegate:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;Landroid/graphics/RectF;)V

    .line 437
    return-void
.end method

.method public drawPoint(FFLandroid/graphics/Paint;)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "paint"    # Landroid/graphics/Paint;

    .line 248
    iget-object v0, p0, Lorg/mapsforge/map/android/rotation/SmoothCanvas;->delegate:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 249
    return-void
.end method

.method public drawPoints([FIILandroid/graphics/Paint;)V
    .locals 1
    .param p1, "pts"    # [F
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .param p4, "paint"    # Landroid/graphics/Paint;

    .line 238
    iget-object v0, p0, Lorg/mapsforge/map/android/rotation/SmoothCanvas;->delegate:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Canvas;->drawPoints([FIILandroid/graphics/Paint;)V

    .line 239
    return-void
.end method

.method public drawPoints([FLandroid/graphics/Paint;)V
    .locals 1
    .param p1, "pts"    # [F
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 243
    iget-object v0, p0, Lorg/mapsforge/map/android/rotation/SmoothCanvas;->delegate:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Canvas;->drawPoints([FLandroid/graphics/Paint;)V

    .line 244
    return-void
.end method

.method public drawPosText(Ljava/lang/String;[FLandroid/graphics/Paint;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "pos"    # [F
    .param p3, "paint"    # Landroid/graphics/Paint;

    .line 413
    iget-object v0, p0, Lorg/mapsforge/map/android/rotation/SmoothCanvas;->delegate:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/Canvas;->drawPosText(Ljava/lang/String;[FLandroid/graphics/Paint;)V

    .line 414
    return-void
.end method

.method public drawPosText([CII[FLandroid/graphics/Paint;)V
    .locals 6
    .param p1, "text"    # [C
    .param p2, "index"    # I
    .param p3, "count"    # I
    .param p4, "pos"    # [F
    .param p5, "paint"    # Landroid/graphics/Paint;

    .line 407
    iget-object v0, p0, Lorg/mapsforge/map/android/rotation/SmoothCanvas;->delegate:Landroid/graphics/Canvas;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawPosText([CII[FLandroid/graphics/Paint;)V

    .line 408
    return-void
.end method

.method public drawRGB(III)V
    .locals 1
    .param p1, "r"    # I
    .param p2, "g"    # I
    .param p3, "b"    # I

    .line 213
    iget-object v0, p0, Lorg/mapsforge/map/android/rotation/SmoothCanvas;->delegate:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/Canvas;->drawRGB(III)V

    .line 214
    return-void
.end method

.method public drawRect(FFFFLandroid/graphics/Paint;)V
    .locals 6
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "paint"    # Landroid/graphics/Paint;

    .line 280
    iget-object v0, p0, Lorg/mapsforge/map/android/rotation/SmoothCanvas;->delegate:Landroid/graphics/Canvas;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 281
    return-void
.end method

.method public drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 1
    .param p1, "r"    # Landroid/graphics/Rect;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 274
    iget-object v0, p0, Lorg/mapsforge/map/android/rotation/SmoothCanvas;->delegate:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 275
    return-void
.end method

.method public drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 1
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 269
    iget-object v0, p0, Lorg/mapsforge/map/android/rotation/SmoothCanvas;->delegate:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 270
    return-void
.end method

.method public drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V
    .locals 1
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "rx"    # F
    .param p3, "ry"    # F
    .param p4, "paint"    # Landroid/graphics/Paint;

    .line 301
    iget-object v0, p0, Lorg/mapsforge/map/android/rotation/SmoothCanvas;->delegate:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 302
    return-void
.end method

.method public drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V
    .locals 7
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "paint"    # Landroid/graphics/Paint;

    .line 400
    iget-object v0, p0, Lorg/mapsforge/map/android/rotation/SmoothCanvas;->delegate:Landroid/graphics/Canvas;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 401
    return-void
.end method

.method public drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "paint"    # Landroid/graphics/Paint;

    .line 388
    iget-object v0, p0, Lorg/mapsforge/map/android/rotation/SmoothCanvas;->delegate:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 389
    return-void
.end method

.method public drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V
    .locals 7
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "paint"    # Landroid/graphics/Paint;

    .line 394
    iget-object v0, p0, Lorg/mapsforge/map/android/rotation/SmoothCanvas;->delegate:Landroid/graphics/Canvas;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 395
    return-void
.end method

.method public drawText([CIIFFLandroid/graphics/Paint;)V
    .locals 7
    .param p1, "text"    # [C
    .param p2, "index"    # I
    .param p3, "count"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "paint"    # Landroid/graphics/Paint;

    .line 383
    iget-object v0, p0, Lorg/mapsforge/map/android/rotation/SmoothCanvas;->delegate:Landroid/graphics/Canvas;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 384
    return-void
.end method

.method public drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V
    .locals 6
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "path"    # Landroid/graphics/Path;
    .param p3, "hOffset"    # F
    .param p4, "vOffset"    # F
    .param p5, "paint"    # Landroid/graphics/Paint;

    .line 426
    iget-object v0, p0, Lorg/mapsforge/map/android/rotation/SmoothCanvas;->delegate:Landroid/graphics/Canvas;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    .line 427
    return-void
.end method

.method public drawTextOnPath([CIILandroid/graphics/Path;FFLandroid/graphics/Paint;)V
    .locals 8
    .param p1, "text"    # [C
    .param p2, "index"    # I
    .param p3, "count"    # I
    .param p4, "path"    # Landroid/graphics/Path;
    .param p5, "hOffset"    # F
    .param p6, "vOffset"    # F
    .param p7, "paint"    # Landroid/graphics/Paint;

    .line 419
    iget-object v0, p0, Lorg/mapsforge/map/android/rotation/SmoothCanvas;->delegate:Landroid/graphics/Canvas;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawTextOnPath([CIILandroid/graphics/Path;FFLandroid/graphics/Paint;)V

    .line 421
    return-void
.end method

.method public drawVertices(Landroid/graphics/Canvas$VertexMode;I[FI[FI[II[SIILandroid/graphics/Paint;)V
    .locals 14
    .param p1, "mode"    # Landroid/graphics/Canvas$VertexMode;
    .param p2, "vertexCount"    # I
    .param p3, "verts"    # [F
    .param p4, "vertOffset"    # I
    .param p5, "texs"    # [F
    .param p6, "texOffset"    # I
    .param p7, "colors"    # [I
    .param p8, "colorOffset"    # I
    .param p9, "indices"    # [S
    .param p10, "indexOffset"    # I
    .param p11, "indexCount"    # I
    .param p12, "paint"    # Landroid/graphics/Paint;

    .line 375
    move-object v0, p0

    iget-object v1, v0, Lorg/mapsforge/map/android/rotation/SmoothCanvas;->delegate:Landroid/graphics/Canvas;

    move-object v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move-object/from16 v13, p12

    invoke-virtual/range {v1 .. v13}, Landroid/graphics/Canvas;->drawVertices(Landroid/graphics/Canvas$VertexMode;I[FI[FI[II[SIILandroid/graphics/Paint;)V

    .line 378
    return-void
.end method

.method public getClipBounds(Landroid/graphics/Rect;)Z
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 208
    iget-object v0, p0, Lorg/mapsforge/map/android/rotation/SmoothCanvas;->delegate:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public getDrawFilter()Landroid/graphics/DrawFilter;
    .locals 1

    .line 182
    iget-object v0, p0, Lorg/mapsforge/map/android/rotation/SmoothCanvas;->delegate:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getDrawFilter()Landroid/graphics/DrawFilter;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 51
    iget-object v0, p0, Lorg/mapsforge/map/android/rotation/SmoothCanvas;->delegate:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    return v0
.end method

.method public getMatrix(Landroid/graphics/Matrix;)V
    .locals 1
    .param p1, "ctm"    # Landroid/graphics/Matrix;

    .line 131
    iget-object v0, p0, Lorg/mapsforge/map/android/rotation/SmoothCanvas;->delegate:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1}, Landroid/graphics/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    .line 132
    return-void
.end method

.method public getSaveCount()I
    .locals 1

    .line 90
    iget-object v0, p0, Lorg/mapsforge/map/android/rotation/SmoothCanvas;->delegate:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 46
    iget-object v0, p0, Lorg/mapsforge/map/android/rotation/SmoothCanvas;->delegate:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    return v0
.end method

.method public isOpaque()Z
    .locals 1

    .line 41
    iget-object v0, p0, Lorg/mapsforge/map/android/rotation/SmoothCanvas;->delegate:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->isOpaque()Z

    move-result v0

    return v0
.end method

.method public quickReject(FFFFLandroid/graphics/Canvas$EdgeType;)Z
    .locals 6
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "type"    # Landroid/graphics/Canvas$EdgeType;

    .line 203
    iget-object v0, p0, Lorg/mapsforge/map/android/rotation/SmoothCanvas;->delegate:Landroid/graphics/Canvas;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->quickReject(FFFFLandroid/graphics/Canvas$EdgeType;)Z

    move-result v0

    return v0
.end method

.method public quickReject(Landroid/graphics/Path;Landroid/graphics/Canvas$EdgeType;)Z
    .locals 1
    .param p1, "path"    # Landroid/graphics/Path;
    .param p2, "type"    # Landroid/graphics/Canvas$EdgeType;

    .line 197
    iget-object v0, p0, Lorg/mapsforge/map/android/rotation/SmoothCanvas;->delegate:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Canvas;->quickReject(Landroid/graphics/Path;Landroid/graphics/Canvas$EdgeType;)Z

    move-result v0

    return v0
.end method

.method public quickReject(Landroid/graphics/RectF;Landroid/graphics/Canvas$EdgeType;)Z
    .locals 1
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "type"    # Landroid/graphics/Canvas$EdgeType;

    .line 192
    iget-object v0, p0, Lorg/mapsforge/map/android/rotation/SmoothCanvas;->delegate:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Canvas;->quickReject(Landroid/graphics/RectF;Landroid/graphics/Canvas$EdgeType;)Z

    move-result v0

    return v0
.end method

.method public restore()V
    .locals 1

    .line 85
    iget-object v0, p0, Lorg/mapsforge/map/android/rotation/SmoothCanvas;->delegate:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 86
    return-void
.end method

.method public restoreToCount(I)V
    .locals 1
    .param p1, "saveCount"    # I

    .line 95
    iget-object v0, p0, Lorg/mapsforge/map/android/rotation/SmoothCanvas;->delegate:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 96
    return-void
.end method

.method public rotate(F)V
    .locals 1
    .param p1, "degrees"    # F

    .line 110
    iget-object v0, p0, Lorg/mapsforge/map/android/rotation/SmoothCanvas;->delegate:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 111
    return-void
.end method

.method public save()I
    .locals 1

    .line 56
    iget-object v0, p0, Lorg/mapsforge/map/android/rotation/SmoothCanvas;->delegate:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    move-result v0

    return v0
.end method

.method public saveLayer(FFFFLandroid/graphics/Paint;I)I
    .locals 7
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "paint"    # Landroid/graphics/Paint;
    .param p6, "saveFlags"    # I

    .line 67
    iget-object v0, p0, Lorg/mapsforge/map/android/rotation/SmoothCanvas;->delegate:Landroid/graphics/Canvas;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v0

    return v0
.end method

.method public saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/RectF;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "saveFlags"    # I

    .line 61
    iget-object v0, p0, Lorg/mapsforge/map/android/rotation/SmoothCanvas;->delegate:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    move-result v0

    return v0
.end method

.method public saveLayerAlpha(FFFFII)I
    .locals 7
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "alpha"    # I
    .param p6, "saveFlags"    # I

    .line 79
    iget-object v0, p0, Lorg/mapsforge/map/android/rotation/SmoothCanvas;->delegate:Landroid/graphics/Canvas;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    move-result v0

    return v0
.end method

.method public saveLayerAlpha(Landroid/graphics/RectF;II)I
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/RectF;
    .param p2, "alpha"    # I
    .param p3, "saveFlags"    # I

    .line 73
    iget-object v0, p0, Lorg/mapsforge/map/android/rotation/SmoothCanvas;->delegate:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    move-result v0

    return v0
.end method

.method public scale(FF)V
    .locals 1
    .param p1, "sx"    # F
    .param p2, "sy"    # F

    .line 105
    iget-object v0, p0, Lorg/mapsforge/map/android/rotation/SmoothCanvas;->delegate:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 106
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 36
    iget-object v0, p0, Lorg/mapsforge/map/android/rotation/SmoothCanvas;->delegate:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 37
    return-void
.end method

.method public setDrawFilter(Landroid/graphics/DrawFilter;)V
    .locals 1
    .param p1, "filter"    # Landroid/graphics/DrawFilter;

    .line 187
    iget-object v0, p0, Lorg/mapsforge/map/android/rotation/SmoothCanvas;->delegate:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 188
    return-void
.end method

.method public setMatrix(Landroid/graphics/Matrix;)V
    .locals 1
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .line 125
    iget-object v0, p0, Lorg/mapsforge/map/android/rotation/SmoothCanvas;->delegate:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 126
    return-void
.end method

.method public skew(FF)V
    .locals 1
    .param p1, "sx"    # F
    .param p2, "sy"    # F

    .line 115
    iget-object v0, p0, Lorg/mapsforge/map/android/rotation/SmoothCanvas;->delegate:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Canvas;->skew(FF)V

    .line 116
    return-void
.end method

.method public translate(FF)V
    .locals 1
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .line 100
    iget-object v0, p0, Lorg/mapsforge/map/android/rotation/SmoothCanvas;->delegate:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 101
    return-void
.end method
