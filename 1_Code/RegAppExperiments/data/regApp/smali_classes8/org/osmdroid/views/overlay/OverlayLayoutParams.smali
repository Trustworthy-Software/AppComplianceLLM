.class public Lorg/osmdroid/views/overlay/OverlayLayoutParams;
.super Ljava/lang/Object;
.source "OverlayLayoutParams.java"


# static fields
.field public static final BOTTOM:I = 0x10

.field public static final CENTER_HORIZONTAL:I = 0x4

.field public static final CENTER_VERTICAL:I = 0x20

.field public static final LEFT:I = 0x1

.field public static final RIGHT:I = 0x2

.field public static final TOP:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMaskedValue(II[I)I
    .locals 4
    .param p0, "pValue"    # I
    .param p1, "pDefault"    # I
    .param p2, "pMasks"    # [I

    .line 19
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget v2, p2, v1

    .line 20
    .local v2, "mask":I
    and-int v3, p0, v2

    if-ne v3, v2, :cond_0

    .line 21
    return v2

    .line 19
    .end local v2    # "mask":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 24
    :cond_1
    return p1
.end method
