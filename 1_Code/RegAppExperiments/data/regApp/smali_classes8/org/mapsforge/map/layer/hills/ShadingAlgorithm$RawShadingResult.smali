.class public Lorg/mapsforge/map/layer/hills/ShadingAlgorithm$RawShadingResult;
.super Ljava/lang/Object;
.source "ShadingAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapsforge/map/layer/hills/ShadingAlgorithm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RawShadingResult"
.end annotation


# instance fields
.field public final bytes:[B

.field public final height:I

.field public final padding:I

.field public final width:I


# direct methods
.method public constructor <init>([BIII)V
    .locals 0
    .param p1, "bytes"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "padding"    # I

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/mapsforge/map/layer/hills/ShadingAlgorithm$RawShadingResult;->bytes:[B

    .line 37
    iput p2, p0, Lorg/mapsforge/map/layer/hills/ShadingAlgorithm$RawShadingResult;->width:I

    .line 38
    iput p3, p0, Lorg/mapsforge/map/layer/hills/ShadingAlgorithm$RawShadingResult;->height:I

    .line 39
    iput p4, p0, Lorg/mapsforge/map/layer/hills/ShadingAlgorithm$RawShadingResult;->padding:I

    .line 40
    return-void
.end method


# virtual methods
.method public fillPadding()V
    .locals 14

    .line 98
    iget v0, p0, Lorg/mapsforge/map/layer/hills/ShadingAlgorithm$RawShadingResult;->padding:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-void

    .line 99
    :cond_0
    sget-object v0, Lorg/mapsforge/core/graphics/HillshadingBitmap$Border;->EAST:Lorg/mapsforge/core/graphics/HillshadingBitmap$Border;

    invoke-virtual {p0, v0}, Lorg/mapsforge/map/layer/hills/ShadingAlgorithm$RawShadingResult;->fillPadding(Lorg/mapsforge/core/graphics/HillshadingBitmap$Border;)V

    .line 100
    sget-object v0, Lorg/mapsforge/core/graphics/HillshadingBitmap$Border;->WEST:Lorg/mapsforge/core/graphics/HillshadingBitmap$Border;

    invoke-virtual {p0, v0}, Lorg/mapsforge/map/layer/hills/ShadingAlgorithm$RawShadingResult;->fillPadding(Lorg/mapsforge/core/graphics/HillshadingBitmap$Border;)V

    .line 101
    sget-object v0, Lorg/mapsforge/core/graphics/HillshadingBitmap$Border;->NORTH:Lorg/mapsforge/core/graphics/HillshadingBitmap$Border;

    invoke-virtual {p0, v0}, Lorg/mapsforge/map/layer/hills/ShadingAlgorithm$RawShadingResult;->fillPadding(Lorg/mapsforge/core/graphics/HillshadingBitmap$Border;)V

    .line 102
    sget-object v0, Lorg/mapsforge/core/graphics/HillshadingBitmap$Border;->SOUTH:Lorg/mapsforge/core/graphics/HillshadingBitmap$Border;

    invoke-virtual {p0, v0}, Lorg/mapsforge/map/layer/hills/ShadingAlgorithm$RawShadingResult;->fillPadding(Lorg/mapsforge/core/graphics/HillshadingBitmap$Border;)V

    .line 105
    iget v0, p0, Lorg/mapsforge/map/layer/hills/ShadingAlgorithm$RawShadingResult;->padding:I

    mul-int/lit8 v2, v0, 0x2

    iget v3, p0, Lorg/mapsforge/map/layer/hills/ShadingAlgorithm$RawShadingResult;->width:I

    add-int/2addr v2, v3

    .line 106
    .local v2, "lineLen":I
    add-int/2addr v3, v0

    .line 107
    .local v3, "widthOncePadded":I
    iget v4, p0, Lorg/mapsforge/map/layer/hills/ShadingAlgorithm$RawShadingResult;->height:I

    add-int/2addr v4, v0

    .line 108
    .local v4, "heightOncePadded":I
    iget-object v5, p0, Lorg/mapsforge/map/layer/hills/ShadingAlgorithm$RawShadingResult;->bytes:[B

    mul-int v6, v2, v0

    add-int/2addr v6, v0

    aget-byte v6, v5, v6

    .line 109
    .local v6, "nw":B
    mul-int v7, v2, v0

    add-int/2addr v7, v3

    sub-int/2addr v7, v1

    aget-byte v1, v5, v7

    .line 110
    .local v1, "ne":B
    add-int/lit8 v7, v4, -0x1

    mul-int/2addr v7, v2

    add-int/2addr v7, v0

    aget-byte v0, v5, v7

    .line 111
    .local v0, "se":B
    add-int/lit8 v7, v4, -0x1

    mul-int/2addr v7, v2

    add-int/lit8 v8, v3, -0x1

    add-int/2addr v7, v8

    aget-byte v5, v5, v7

    .line 113
    .local v5, "sw":B
    mul-int v7, v2, v4

    .line 114
    .local v7, "seOffset":I
    add-int v8, v7, v3

    .line 115
    .local v8, "swOffset":I
    const/4 v9, 0x0

    .local v9, "y":I
    :goto_0
    iget v10, p0, Lorg/mapsforge/map/layer/hills/ShadingAlgorithm$RawShadingResult;->padding:I

    if-ge v9, v10, :cond_2

    .line 116
    mul-int v10, v2, v9

    .line 117
    .local v10, "yoff":I
    const/4 v11, 0x0

    .local v11, "x":I
    :goto_1
    iget v12, p0, Lorg/mapsforge/map/layer/hills/ShadingAlgorithm$RawShadingResult;->padding:I

    if-ge v11, v12, :cond_1

    .line 118
    iget-object v12, p0, Lorg/mapsforge/map/layer/hills/ShadingAlgorithm$RawShadingResult;->bytes:[B

    add-int v13, v11, v10

    aput-byte v6, v12, v13

    .line 119
    add-int v13, v11, v10

    add-int/2addr v13, v3

    aput-byte v1, v12, v13

    .line 120
    add-int v13, v11, v10

    add-int/2addr v13, v7

    aput-byte v0, v12, v13

    .line 121
    add-int v13, v11, v10

    add-int/2addr v13, v8

    aput-byte v5, v12, v13

    .line 117
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 115
    .end local v10    # "yoff":I
    .end local v11    # "x":I
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 124
    .end local v9    # "y":I
    :cond_2
    return-void
.end method

.method fillPadding(Lorg/mapsforge/core/graphics/HillshadingBitmap$Border;)V
    .locals 17
    .param p1, "side"    # Lorg/mapsforge/core/graphics/HillshadingBitmap$Border;

    .line 53
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lorg/mapsforge/map/layer/hills/ShadingAlgorithm$RawShadingResult;->padding:I

    mul-int/lit8 v2, v2, 0x2

    iget v3, v0, Lorg/mapsforge/map/layer/hills/ShadingAlgorithm$RawShadingResult;->width:I

    add-int/2addr v2, v3

    .line 54
    .local v2, "lineLen":I
    iget-boolean v3, v1, Lorg/mapsforge/core/graphics/HillshadingBitmap$Border;->vertical:Z

    if-eqz v3, :cond_1

    .line 55
    iget v3, v0, Lorg/mapsforge/map/layer/hills/ShadingAlgorithm$RawShadingResult;->padding:I

    .line 56
    .local v3, "innersteps":I
    iget v4, v0, Lorg/mapsforge/map/layer/hills/ShadingAlgorithm$RawShadingResult;->width:I

    iget v5, v0, Lorg/mapsforge/map/layer/hills/ShadingAlgorithm$RawShadingResult;->padding:I

    add-int/2addr v4, v5

    .line 57
    .local v4, "skip":I
    iget v5, v0, Lorg/mapsforge/map/layer/hills/ShadingAlgorithm$RawShadingResult;->height:I

    .line 58
    .local v5, "outersteps":I
    sget-object v6, Lorg/mapsforge/core/graphics/HillshadingBitmap$Border;->WEST:Lorg/mapsforge/core/graphics/HillshadingBitmap$Border;

    if-ne v1, v6, :cond_0

    .line 59
    iget v6, v0, Lorg/mapsforge/map/layer/hills/ShadingAlgorithm$RawShadingResult;->padding:I

    mul-int v7, v6, v2

    .line 60
    .local v7, "start":I
    add-int/2addr v6, v7

    .local v6, "sourceOffset":I
    goto :goto_0

    .line 62
    .end local v6    # "sourceOffset":I
    .end local v7    # "start":I
    :cond_0
    iget v6, v0, Lorg/mapsforge/map/layer/hills/ShadingAlgorithm$RawShadingResult;->padding:I

    mul-int v7, v6, v2

    add-int/2addr v7, v6

    iget v6, v0, Lorg/mapsforge/map/layer/hills/ShadingAlgorithm$RawShadingResult;->width:I

    add-int/2addr v7, v6

    .line 63
    .restart local v7    # "start":I
    add-int/lit8 v6, v7, -0x1

    .line 65
    .restart local v6    # "sourceOffset":I
    :goto_0
    const/4 v8, 0x0

    .line 66
    .local v8, "sourceInnerStep":I
    move v9, v2

    .local v9, "sourceOuterStep":I
    goto :goto_2

    .line 68
    .end local v3    # "innersteps":I
    .end local v4    # "skip":I
    .end local v5    # "outersteps":I
    .end local v6    # "sourceOffset":I
    .end local v7    # "start":I
    .end local v8    # "sourceInnerStep":I
    .end local v9    # "sourceOuterStep":I
    :cond_1
    iget v3, v0, Lorg/mapsforge/map/layer/hills/ShadingAlgorithm$RawShadingResult;->width:I

    .line 69
    .restart local v3    # "innersteps":I
    iget v4, v0, Lorg/mapsforge/map/layer/hills/ShadingAlgorithm$RawShadingResult;->padding:I

    mul-int/lit8 v4, v4, 0x2

    .line 70
    .restart local v4    # "skip":I
    iget v5, v0, Lorg/mapsforge/map/layer/hills/ShadingAlgorithm$RawShadingResult;->padding:I

    .line 71
    .restart local v5    # "outersteps":I
    sget-object v6, Lorg/mapsforge/core/graphics/HillshadingBitmap$Border;->NORTH:Lorg/mapsforge/core/graphics/HillshadingBitmap$Border;

    if-ne v1, v6, :cond_2

    .line 72
    iget v6, v0, Lorg/mapsforge/map/layer/hills/ShadingAlgorithm$RawShadingResult;->padding:I

    .line 73
    .local v6, "start":I
    iget v7, v0, Lorg/mapsforge/map/layer/hills/ShadingAlgorithm$RawShadingResult;->padding:I

    mul-int/2addr v7, v2

    add-int/2addr v7, v6

    move/from16 v16, v7

    move v7, v6

    move/from16 v6, v16

    .local v7, "sourceOffset":I
    goto :goto_1

    .line 75
    .end local v6    # "start":I
    .end local v7    # "sourceOffset":I
    :cond_2
    iget v6, v0, Lorg/mapsforge/map/layer/hills/ShadingAlgorithm$RawShadingResult;->height:I

    iget v7, v0, Lorg/mapsforge/map/layer/hills/ShadingAlgorithm$RawShadingResult;->padding:I

    add-int/2addr v6, v7

    mul-int/2addr v6, v2

    add-int/2addr v6, v7

    .line 76
    .restart local v6    # "start":I
    sub-int v7, v6, v2

    move/from16 v16, v7

    move v7, v6

    move/from16 v6, v16

    .line 78
    .local v6, "sourceOffset":I
    .local v7, "start":I
    :goto_1
    const/4 v8, 0x1

    .line 79
    .restart local v8    # "sourceInnerStep":I
    iget v9, v0, Lorg/mapsforge/map/layer/hills/ShadingAlgorithm$RawShadingResult;->width:I

    neg-int v9, v9

    .line 82
    .restart local v9    # "sourceOuterStep":I
    :goto_2
    move v10, v7

    .line 83
    .local v10, "dest":I
    move v11, v6

    .line 84
    .local v11, "src":I
    const/4 v12, 0x0

    .local v12, "o":I
    :goto_3
    if-ge v12, v5, :cond_4

    .line 86
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_4
    if-ge v13, v3, :cond_3

    .line 87
    iget-object v14, v0, Lorg/mapsforge/map/layer/hills/ShadingAlgorithm$RawShadingResult;->bytes:[B

    aget-byte v15, v14, v11

    aput-byte v15, v14, v10

    .line 88
    add-int/lit8 v10, v10, 0x1

    .line 89
    add-int/2addr v11, v8

    .line 86
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 92
    .end local v13    # "i":I
    :cond_3
    add-int/2addr v10, v4

    .line 93
    add-int/2addr v11, v9

    .line 84
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 95
    .end local v12    # "o":I
    :cond_4
    return-void
.end method
