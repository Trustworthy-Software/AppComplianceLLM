.class public Lorg/osmdroid/util/GeometryMath;
.super Ljava/lang/Object;
.source "GeometryMath.java"


# static fields
.field public static final DEG2RAD:D = 0.017453292519943295
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RAD2DEG:D = 57.29577951308232
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static Max4(DDDD)D
    .locals 4
    .param p0, "a"    # D
    .param p2, "b"    # D
    .param p4, "c"    # D
    .param p6, "d"    # D

    .line 64
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    invoke-static {p4, p5, p6, p7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private static Min4(DDDD)D
    .locals 4
    .param p0, "a"    # D
    .param p2, "b"    # D
    .param p4, "c"    # D
    .param p6, "d"    # D

    .line 60
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    invoke-static {p4, p5, p6, p7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static final getBoundingBoxForRotatatedRectangle(Landroid/graphics/Rect;FLandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 2
    .param p0, "rect"    # Landroid/graphics/Rect;
    .param p1, "angle"    # F
    .param p2, "reuse"    # Landroid/graphics/Rect;

    .line 18
    invoke-virtual {p0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    invoke-static {p0, v0, v1, p1, p2}, Lorg/osmdroid/util/GeometryMath;->getBoundingBoxForRotatatedRectangle(Landroid/graphics/Rect;IIFLandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public static final getBoundingBoxForRotatatedRectangle(Landroid/graphics/Rect;IIFLandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 51
    .param p0, "rect"    # Landroid/graphics/Rect;
    .param p1, "centerX"    # I
    .param p2, "centerY"    # I
    .param p3, "angle"    # F
    .param p4, "reuse"    # Landroid/graphics/Rect;

    .line 29
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    if-nez p4, :cond_0

    .line 30
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .end local p4    # "reuse":Landroid/graphics/Rect;
    .local v3, "reuse":Landroid/graphics/Rect;
    goto :goto_0

    .line 29
    .end local v3    # "reuse":Landroid/graphics/Rect;
    .restart local p4    # "reuse":Landroid/graphics/Rect;
    :cond_0
    move-object/from16 v3, p4

    .line 32
    .end local p4    # "reuse":Landroid/graphics/Rect;
    .restart local v3    # "reuse":Landroid/graphics/Rect;
    :goto_0
    move/from16 v4, p3

    float-to-double v5, v4

    const-wide v7, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double/2addr v5, v7

    .line 33
    .local v5, "theta":D
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    .line 34
    .local v7, "sinTheta":D
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    .line 35
    .local v9, "cosTheta":D
    iget v11, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v11, v1

    int-to-double v11, v11

    .line 36
    .local v11, "dx1":D
    iget v13, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v13, v2

    int-to-double v13, v13

    .line 37
    .local v13, "dy1":D
    move-wide v15, v5

    .end local v5    # "theta":D
    .local v15, "theta":D
    int-to-double v4, v1

    mul-double v17, v11, v9

    sub-double v4, v4, v17

    mul-double v17, v13, v7

    add-double v4, v4, v17

    .line 38
    .local v4, "newX1":D
    move-object v6, v3

    move-wide/from16 v17, v4

    .end local v3    # "reuse":Landroid/graphics/Rect;
    .end local v4    # "newX1":D
    .local v6, "reuse":Landroid/graphics/Rect;
    .local v17, "newX1":D
    int-to-double v3, v2

    mul-double v19, v11, v7

    sub-double v3, v3, v19

    mul-double v19, v13, v9

    sub-double v3, v3, v19

    .line 39
    .local v3, "newY1":D
    iget v5, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v1

    move-wide/from16 v29, v11

    .end local v11    # "dx1":D
    .local v29, "dx1":D
    int-to-double v11, v5

    .line 40
    .local v11, "dx2":D
    iget v5, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v2

    move-wide/from16 v31, v13

    .end local v13    # "dy1":D
    .local v31, "dy1":D
    int-to-double v13, v5

    .line 41
    .local v13, "dy2":D
    move-wide/from16 v33, v3

    .end local v3    # "newY1":D
    .local v33, "newY1":D
    int-to-double v3, v1

    mul-double v19, v11, v9

    sub-double v3, v3, v19

    mul-double v19, v13, v7

    add-double v3, v3, v19

    .line 42
    .local v3, "newX2":D
    move-object/from16 p4, v6

    .end local v6    # "reuse":Landroid/graphics/Rect;
    .restart local p4    # "reuse":Landroid/graphics/Rect;
    int-to-double v5, v2

    mul-double v19, v11, v7

    sub-double v5, v5, v19

    mul-double v19, v13, v9

    sub-double v5, v5, v19

    .line 43
    .local v5, "newY2":D
    move-wide/from16 v35, v11

    .end local v11    # "dx2":D
    .local v35, "dx2":D
    iget v11, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v11, v1

    int-to-double v11, v11

    .line 44
    .local v11, "dx3":D
    move-wide/from16 v37, v13

    .end local v13    # "dy2":D
    .local v37, "dy2":D
    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v13, v2

    int-to-double v13, v13

    .line 45
    .local v13, "dy3":D
    move-wide/from16 v39, v5

    .end local v5    # "newY2":D
    .local v39, "newY2":D
    int-to-double v5, v1

    mul-double v19, v11, v9

    sub-double v5, v5, v19

    mul-double v19, v13, v7

    add-double v5, v5, v19

    .line 46
    .local v5, "newX3":D
    move-wide/from16 v41, v5

    .end local v5    # "newX3":D
    .local v41, "newX3":D
    int-to-double v5, v2

    mul-double v19, v11, v7

    sub-double v5, v5, v19

    mul-double v19, v13, v9

    sub-double v5, v5, v19

    .line 47
    .local v5, "newY3":D
    move-wide/from16 v43, v11

    .end local v11    # "dx3":D
    .local v43, "dx3":D
    iget v11, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v11, v1

    int-to-double v11, v11

    .line 48
    .local v11, "dx4":D
    move-wide/from16 v45, v13

    .end local v13    # "dy3":D
    .local v45, "dy3":D
    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v13, v2

    int-to-double v13, v13

    .line 49
    .local v13, "dy4":D
    move-wide/from16 v47, v5

    .end local v5    # "newY3":D
    .local v47, "newY3":D
    int-to-double v5, v1

    mul-double v19, v11, v9

    sub-double v5, v5, v19

    mul-double v19, v13, v7

    add-double v5, v5, v19

    .line 50
    .local v5, "newX4":D
    int-to-double v0, v2

    mul-double v19, v11, v7

    sub-double v0, v0, v19

    mul-double v19, v13, v9

    sub-double v0, v0, v19

    .line 51
    .local v0, "newY4":D
    move-wide/from16 v19, v17

    move-wide/from16 v21, v3

    move-wide/from16 v23, v41

    move-wide/from16 v25, v5

    invoke-static/range {v19 .. v26}, Lorg/osmdroid/util/GeometryMath;->Min4(DDDD)D

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Lorg/osmdroid/util/MyMath;->floorToInt(D)I

    move-result v2

    move-wide/from16 v49, v7

    move-object/from16 v7, p4

    .end local p4    # "reuse":Landroid/graphics/Rect;
    .local v7, "reuse":Landroid/graphics/Rect;
    .local v49, "sinTheta":D
    iput v2, v7, Landroid/graphics/Rect;->left:I

    .line 52
    move-wide/from16 v21, v33

    move-wide/from16 v23, v39

    move-wide/from16 v25, v47

    move-wide/from16 v27, v0

    invoke-static/range {v21 .. v28}, Lorg/osmdroid/util/GeometryMath;->Min4(DDDD)D

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Lorg/osmdroid/util/MyMath;->floorToInt(D)I

    move-result v2

    iput v2, v7, Landroid/graphics/Rect;->top:I

    .line 53
    move-wide/from16 v19, v17

    move-wide/from16 v21, v3

    move-wide/from16 v23, v41

    move-wide/from16 v25, v5

    invoke-static/range {v19 .. v26}, Lorg/osmdroid/util/GeometryMath;->Max4(DDDD)D

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Lorg/osmdroid/util/MyMath;->floorToInt(D)I

    move-result v2

    iput v2, v7, Landroid/graphics/Rect;->right:I

    .line 54
    move-wide/from16 v21, v33

    move-wide/from16 v23, v39

    move-wide/from16 v25, v47

    invoke-static/range {v21 .. v28}, Lorg/osmdroid/util/GeometryMath;->Max4(DDDD)D

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Lorg/osmdroid/util/MyMath;->floorToInt(D)I

    move-result v2

    iput v2, v7, Landroid/graphics/Rect;->bottom:I

    .line 56
    return-object v7
.end method

.method public static final getBoundingBoxForRotatatedRectangle(Landroid/graphics/Rect;Landroid/graphics/Point;FLandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 2
    .param p0, "rect"    # Landroid/graphics/Rect;
    .param p1, "centerPoint"    # Landroid/graphics/Point;
    .param p2, "angle"    # F
    .param p3, "reuse"    # Landroid/graphics/Rect;

    .line 24
    iget v0, p1, Landroid/graphics/Point;->x:I

    iget v1, p1, Landroid/graphics/Point;->y:I

    invoke-static {p0, v0, v1, p2, p3}, Lorg/osmdroid/util/GeometryMath;->getBoundingBoxForRotatatedRectangle(Landroid/graphics/Rect;IIFLandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method
