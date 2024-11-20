.class public Lorg/osmdroid/views/overlay/advancedpolyline/ColorHelper;
.super Ljava/lang/Object;
.source "ColorHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static HSLToColor(FFF)I
    .locals 9
    .param p0, "h"    # F
    .param p1, "s"    # F
    .param p2, "l"    # F

    .line 26
    const/high16 v0, 0x40000000    # 2.0f

    mul-float v1, p2, v0

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sub-float v1, v2, v1

    mul-float/2addr v1, p1

    .line 27
    .local v1, "c":F
    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v3, v1

    sub-float v3, p2, v3

    .line 28
    .local v3, "m":F
    const/high16 v4, 0x42700000    # 60.0f

    div-float v4, p0, v4

    rem-float/2addr v4, v0

    sub-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float/2addr v2, v0

    mul-float/2addr v2, v1

    .line 30
    .local v2, "x":F
    float-to-int v0, p0

    div-int/lit8 v0, v0, 0x3c

    .line 32
    .local v0, "hueSegment":I
    const/4 v4, 0x0

    .local v4, "r":I
    const/4 v5, 0x0

    .local v5, "g":I
    const/4 v6, 0x0

    .line 34
    .local v6, "b":I
    const/high16 v7, 0x437f0000    # 255.0f

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 62
    :pswitch_0
    add-float v8, v1, v3

    mul-float/2addr v8, v7

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 63
    mul-float v8, v3, v7

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 64
    add-float v8, v2, v3

    mul-float/2addr v8, v7

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v6

    goto :goto_0

    .line 56
    :pswitch_1
    add-float v8, v2, v3

    mul-float/2addr v8, v7

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 57
    mul-float v8, v3, v7

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 58
    add-float v8, v1, v3

    mul-float/2addr v8, v7

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 59
    goto :goto_0

    .line 51
    :pswitch_2
    mul-float v8, v3, v7

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 52
    add-float v8, v2, v3

    mul-float/2addr v8, v7

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 53
    add-float v8, v1, v3

    mul-float/2addr v8, v7

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 54
    goto :goto_0

    .line 46
    :pswitch_3
    mul-float v8, v3, v7

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 47
    add-float v8, v1, v3

    mul-float/2addr v8, v7

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 48
    add-float v8, v2, v3

    mul-float/2addr v8, v7

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 49
    goto :goto_0

    .line 41
    :pswitch_4
    add-float v8, v2, v3

    mul-float/2addr v8, v7

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 42
    add-float v8, v1, v3

    mul-float/2addr v8, v7

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 43
    mul-float/2addr v7, v3

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 44
    goto :goto_0

    .line 36
    :pswitch_5
    add-float v8, v1, v3

    mul-float/2addr v8, v7

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 37
    add-float v8, v2, v3

    mul-float/2addr v8, v7

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 38
    mul-float/2addr v7, v3

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 39
    nop

    .line 68
    :goto_0
    const/4 v7, 0x0

    const/16 v8, 0xff

    invoke-static {v4, v7, v8}, Lorg/osmdroid/views/overlay/advancedpolyline/ColorHelper;->constrain(III)I

    move-result v4

    .line 69
    invoke-static {v5, v7, v8}, Lorg/osmdroid/views/overlay/advancedpolyline/ColorHelper;->constrain(III)I

    move-result v5

    .line 70
    invoke-static {v6, v7, v8}, Lorg/osmdroid/views/overlay/advancedpolyline/ColorHelper;->constrain(III)I

    move-result v6

    .line 72
    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    return v7

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static constrain(FFF)F
    .locals 1
    .param p0, "amount"    # F
    .param p1, "low"    # F
    .param p2, "high"    # F

    .line 96
    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    cmpl-float v0, p0, p2

    if-lez v0, :cond_1

    move v0, p2

    goto :goto_0

    :cond_1
    move v0, p0

    :goto_0
    return v0
.end method

.method private static constrain(III)I
    .locals 1
    .param p0, "amount"    # I
    .param p1, "low"    # I
    .param p2, "high"    # I

    .line 84
    if-ge p0, p1, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    if-le p0, p2, :cond_1

    move v0, p2

    goto :goto_0

    :cond_1
    move v0, p0

    :goto_0
    return v0
.end method
