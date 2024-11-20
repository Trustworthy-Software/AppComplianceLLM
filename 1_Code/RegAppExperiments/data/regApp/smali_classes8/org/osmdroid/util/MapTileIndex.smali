.class public Lorg/osmdroid/util/MapTileIndex;
.super Ljava/lang/Object;
.source "MapTileIndex.java"


# static fields
.field public static mMaxZoomLevel:I

.field private static mModulo:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    const/16 v0, 0x1d

    sput v0, Lorg/osmdroid/util/MapTileIndex;->mMaxZoomLevel:I

    .line 16
    const/4 v1, 0x1

    shl-int/lit8 v0, v1, 0x1d

    sput v0, Lorg/osmdroid/util/MapTileIndex;->mModulo:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkValues(III)V
    .locals 4
    .param p0, "pZoom"    # I
    .param p1, "pX"    # I
    .param p2, "pY"    # I

    .line 55
    if-ltz p0, :cond_0

    sget v0, Lorg/osmdroid/util/MapTileIndex;->mMaxZoomLevel:I

    if-le p0, v0, :cond_1

    .line 56
    :cond_0
    const-string v0, "Zoom"

    invoke-static {p0, p0, v0}, Lorg/osmdroid/util/MapTileIndex;->throwIllegalValue(IILjava/lang/String;)V

    .line 58
    :cond_1
    const/4 v0, 0x1

    shl-int/2addr v0, p0

    int-to-long v0, v0

    .line 59
    .local v0, "max":J
    if-ltz p1, :cond_2

    int-to-long v2, p1

    cmp-long v2, v2, v0

    if-ltz v2, :cond_3

    .line 60
    :cond_2
    const-string v2, "X"

    invoke-static {p0, p1, v2}, Lorg/osmdroid/util/MapTileIndex;->throwIllegalValue(IILjava/lang/String;)V

    .line 62
    :cond_3
    if-ltz p2, :cond_4

    int-to-long v2, p2

    cmp-long v2, v2, v0

    if-ltz v2, :cond_5

    .line 63
    :cond_4
    const-string v2, "Y"

    invoke-static {p0, p2, v2}, Lorg/osmdroid/util/MapTileIndex;->throwIllegalValue(IILjava/lang/String;)V

    .line 65
    :cond_5
    return-void
.end method

.method public static getTileIndex(III)J
    .locals 5
    .param p0, "pZoom"    # I
    .param p1, "pX"    # I
    .param p2, "pY"    # I

    .line 19
    invoke-static {p0, p1, p2}, Lorg/osmdroid/util/MapTileIndex;->checkValues(III)V

    .line 20
    int-to-long v0, p0

    sget v2, Lorg/osmdroid/util/MapTileIndex;->mMaxZoomLevel:I

    mul-int/lit8 v3, v2, 0x2

    shl-long/2addr v0, v3

    int-to-long v3, p1

    shl-long v2, v3, v2

    add-long/2addr v0, v2

    int-to-long v2, p2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public static getX(J)I
    .locals 4
    .param p0, "pTileIndex"    # J

    .line 30
    sget v0, Lorg/osmdroid/util/MapTileIndex;->mMaxZoomLevel:I

    shr-long v0, p0, v0

    sget v2, Lorg/osmdroid/util/MapTileIndex;->mModulo:I

    int-to-long v2, v2

    rem-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public static getY(J)I
    .locals 2
    .param p0, "pTileIndex"    # J

    .line 34
    sget v0, Lorg/osmdroid/util/MapTileIndex;->mModulo:I

    int-to-long v0, v0

    rem-long v0, p0, v0

    long-to-int v0, v0

    return v0
.end method

.method public static getZoom(J)I
    .locals 2
    .param p0, "pTileIndex"    # J

    .line 26
    sget v0, Lorg/osmdroid/util/MapTileIndex;->mMaxZoomLevel:I

    mul-int/lit8 v0, v0, 0x2

    shr-long v0, p0, v0

    long-to-int v0, v0

    return v0
.end method

.method private static throwIllegalValue(IILjava/lang/String;)V
    .locals 3
    .param p0, "pZoom"    # I
    .param p1, "pValue"    # I
    .param p2, "pTag"    # Ljava/lang/String;

    .line 71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MapTileIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is too big (zoom="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toString(III)Ljava/lang/String;
    .locals 2
    .param p0, "pZoom"    # I
    .param p1, "pX"    # I
    .param p2, "pY"    # I

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(J)Ljava/lang/String;
    .locals 3
    .param p0, "pIndex"    # J

    .line 48
    invoke-static {p0, p1}, Lorg/osmdroid/util/MapTileIndex;->getZoom(J)I

    move-result v0

    invoke-static {p0, p1}, Lorg/osmdroid/util/MapTileIndex;->getX(J)I

    move-result v1

    invoke-static {p0, p1}, Lorg/osmdroid/util/MapTileIndex;->getY(J)I

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/osmdroid/util/MapTileIndex;->toString(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
