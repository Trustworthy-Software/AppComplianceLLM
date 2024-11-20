.class public final Lorg/mapsforge/core/graphics/GraphicUtils;
.super Ljava/lang/Object;
.source "GraphicUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    return-void
.end method

.method public static filterColor(ILorg/mapsforge/core/graphics/Filter;)I
    .locals 8
    .param p0, "color"    # I
    .param p1, "filter"    # Lorg/mapsforge/core/graphics/Filter;

    .line 31
    sget-object v0, Lorg/mapsforge/core/graphics/Filter;->NONE:Lorg/mapsforge/core/graphics/Filter;

    if-ne p1, v0, :cond_0

    .line 32
    return p0

    .line 34
    :cond_0
    ushr-int/lit8 v0, p0, 0x18

    .line 35
    .local v0, "a":I
    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    .line 36
    .local v1, "r":I
    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    .line 37
    .local v2, "g":I
    and-int/lit16 v3, p0, 0xff

    .line 38
    .local v3, "b":I
    sget-object v4, Lorg/mapsforge/core/graphics/GraphicUtils$1;->$SwitchMap$org$mapsforge$core$graphics$Filter:[I

    invoke-virtual {p1}, Lorg/mapsforge/core/graphics/Filter;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const v5, 0x3d9374bc    # 0.072f

    const v6, 0x3f370a3d    # 0.715f

    const v7, 0x3e5a1cac    # 0.213f

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 46
    :pswitch_0
    rsub-int v1, v1, 0xff

    .line 47
    rsub-int v2, v2, 0xff

    .line 48
    rsub-int v3, v3, 0xff

    goto :goto_0

    .line 43
    :pswitch_1
    int-to-float v4, v1

    mul-float/2addr v4, v7

    int-to-float v7, v2

    mul-float/2addr v7, v6

    add-float/2addr v4, v7

    int-to-float v6, v3

    mul-float/2addr v6, v5

    add-float/2addr v4, v6

    float-to-int v4, v4

    rsub-int v4, v4, 0xff

    move v3, v4

    move v2, v4

    move v1, v4

    .line 44
    goto :goto_0

    .line 40
    :pswitch_2
    int-to-float v4, v1

    mul-float/2addr v4, v7

    int-to-float v7, v2

    mul-float/2addr v7, v6

    add-float/2addr v4, v7

    int-to-float v6, v3

    mul-float/2addr v6, v5

    add-float/2addr v4, v6

    float-to-int v4, v4

    move v3, v4

    move v2, v4

    move v1, v4

    .line 41
    nop

    .line 51
    :goto_0
    shl-int/lit8 v4, v0, 0x18

    shl-int/lit8 v5, v1, 0x10

    or-int/2addr v4, v5

    shl-int/lit8 v5, v2, 0x8

    or-int/2addr v4, v5

    or-int/2addr v4, v3

    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getAlpha(I)I
    .locals 1
    .param p0, "color"    # I

    .line 59
    shr-int/lit8 v0, p0, 0x18

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public static imageSize(FFFIII)[F
    .locals 5
    .param p0, "picWidth"    # F
    .param p1, "picHeight"    # F
    .param p2, "scaleFactor"    # F
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "percent"    # I

    .line 74
    mul-float v0, p0, p2

    .line 75
    .local v0, "bitmapWidth":F
    mul-float v1, p1, p2

    .line 77
    .local v1, "bitmapHeight":F
    div-float v2, p0, p1

    .line 79
    .local v2, "aspectRatio":F
    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 81
    int-to-float v0, p3

    .line 82
    int-to-float v1, p4

    goto :goto_0

    .line 83
    :cond_0
    if-nez p3, :cond_1

    if-eqz p4, :cond_1

    .line 85
    int-to-float v3, p4

    mul-float v0, v3, v2

    .line 86
    int-to-float v1, p4

    goto :goto_0

    .line 87
    :cond_1
    if-eqz p3, :cond_2

    if-nez p4, :cond_2

    .line 89
    int-to-float v3, p3

    div-float v1, v3, v2

    .line 90
    int-to-float v0, p3

    .line 93
    :cond_2
    :goto_0
    const/16 v3, 0x64

    if-eq p5, v3, :cond_3

    .line 94
    int-to-float v3, p5

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    mul-float/2addr v0, v3

    .line 95
    int-to-float v3, p5

    div-float/2addr v3, v4

    mul-float/2addr v1, v3

    .line 98
    :cond_3
    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v0, v3, v4

    const/4 v4, 0x1

    aput v1, v3, v4

    return-object v3
.end method
