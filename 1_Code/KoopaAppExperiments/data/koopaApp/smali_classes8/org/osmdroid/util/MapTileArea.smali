.class public Lorg/osmdroid/util/MapTileArea;
.super Ljava/lang/Object;
.source "MapTileArea.java"

# interfaces
.implements Lorg/osmdroid/util/MapTileContainer;
.implements Lorg/osmdroid/util/IterableWithSize;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/osmdroid/util/MapTileContainer;",
        "Lorg/osmdroid/util/IterableWithSize<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field private mHeight:I

.field private mLeft:I

.field private mMapTileUpperBound:I

.field private mTop:I

.field private mWidth:I

.field private mZoom:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/osmdroid/util/MapTileArea;)I
    .locals 1
    .param p0, "x0"    # Lorg/osmdroid/util/MapTileArea;

    .line 14
    iget v0, p0, Lorg/osmdroid/util/MapTileArea;->mLeft:I

    return v0
.end method

.method static synthetic access$100(Lorg/osmdroid/util/MapTileArea;)I
    .locals 1
    .param p0, "x0"    # Lorg/osmdroid/util/MapTileArea;

    .line 14
    iget v0, p0, Lorg/osmdroid/util/MapTileArea;->mWidth:I

    return v0
.end method

.method static synthetic access$200(Lorg/osmdroid/util/MapTileArea;)I
    .locals 1
    .param p0, "x0"    # Lorg/osmdroid/util/MapTileArea;

    .line 14
    iget v0, p0, Lorg/osmdroid/util/MapTileArea;->mTop:I

    return v0
.end method

.method static synthetic access$300(Lorg/osmdroid/util/MapTileArea;)I
    .locals 1
    .param p0, "x0"    # Lorg/osmdroid/util/MapTileArea;

    .line 14
    iget v0, p0, Lorg/osmdroid/util/MapTileArea;->mMapTileUpperBound:I

    return v0
.end method

.method static synthetic access$400(Lorg/osmdroid/util/MapTileArea;)I
    .locals 1
    .param p0, "x0"    # Lorg/osmdroid/util/MapTileArea;

    .line 14
    iget v0, p0, Lorg/osmdroid/util/MapTileArea;->mZoom:I

    return v0
.end method

.method private cleanValue(I)I
    .locals 1
    .param p1, "pValue"    # I

    .line 140
    nop

    :goto_0
    if-gez p1, :cond_0

    .line 141
    iget v0, p0, Lorg/osmdroid/util/MapTileArea;->mMapTileUpperBound:I

    add-int/2addr p1, v0

    goto :goto_0

    .line 143
    :cond_0
    :goto_1
    iget v0, p0, Lorg/osmdroid/util/MapTileArea;->mMapTileUpperBound:I

    if-lt p1, v0, :cond_1

    .line 144
    sub-int/2addr p1, v0

    goto :goto_1

    .line 146
    :cond_1
    return p1
.end method

.method private computeSize(II)I
    .locals 2
    .param p1, "pTopLeft"    # I
    .param p2, "pBottomRight"    # I

    .line 150
    nop

    :goto_0
    if-le p1, p2, :cond_0

    .line 151
    iget v0, p0, Lorg/osmdroid/util/MapTileArea;->mMapTileUpperBound:I

    add-int/2addr p2, v0

    goto :goto_0

    .line 153
    :cond_0
    iget v0, p0, Lorg/osmdroid/util/MapTileArea;->mMapTileUpperBound:I

    sub-int v1, p2, p1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private contains(III)Z
    .locals 1
    .param p1, "pValue"    # I
    .param p2, "pFirst"    # I
    .param p3, "pSize"    # I

    .line 133
    nop

    :goto_0
    if-ge p1, p2, :cond_0

    .line 134
    iget v0, p0, Lorg/osmdroid/util/MapTileArea;->mMapTileUpperBound:I

    add-int/2addr p1, v0

    goto :goto_0

    .line 136
    :cond_0
    add-int v0, p2, p3

    if-ge p1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method


# virtual methods
.method public contains(J)Z
    .locals 4
    .param p1, "pTileIndex"    # J

    .line 123
    invoke-static {p1, p2}, Lorg/osmdroid/util/MapTileIndex;->getZoom(J)I

    move-result v0

    iget v1, p0, Lorg/osmdroid/util/MapTileArea;->mZoom:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 124
    return v2

    .line 126
    :cond_0
    invoke-static {p1, p2}, Lorg/osmdroid/util/MapTileIndex;->getX(J)I

    move-result v0

    iget v1, p0, Lorg/osmdroid/util/MapTileArea;->mLeft:I

    iget v3, p0, Lorg/osmdroid/util/MapTileArea;->mWidth:I

    invoke-direct {p0, v0, v1, v3}, Lorg/osmdroid/util/MapTileArea;->contains(III)Z

    move-result v0

    if-nez v0, :cond_1

    .line 127
    return v2

    .line 129
    :cond_1
    invoke-static {p1, p2}, Lorg/osmdroid/util/MapTileIndex;->getY(J)I

    move-result v0

    iget v1, p0, Lorg/osmdroid/util/MapTileArea;->mTop:I

    iget v2, p0, Lorg/osmdroid/util/MapTileArea;->mHeight:I

    invoke-direct {p0, v0, v1, v2}, Lorg/osmdroid/util/MapTileArea;->contains(III)Z

    move-result v0

    return v0
.end method

.method public getBottom()I
    .locals 2

    .line 78
    iget v0, p0, Lorg/osmdroid/util/MapTileArea;->mTop:I

    iget v1, p0, Lorg/osmdroid/util/MapTileArea;->mHeight:I

    add-int/2addr v0, v1

    iget v1, p0, Lorg/osmdroid/util/MapTileArea;->mMapTileUpperBound:I

    rem-int/2addr v0, v1

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 70
    iget v0, p0, Lorg/osmdroid/util/MapTileArea;->mHeight:I

    return v0
.end method

.method public getLeft()I
    .locals 1

    .line 58
    iget v0, p0, Lorg/osmdroid/util/MapTileArea;->mLeft:I

    return v0
.end method

.method public getRight()I
    .locals 2

    .line 74
    iget v0, p0, Lorg/osmdroid/util/MapTileArea;->mLeft:I

    iget v1, p0, Lorg/osmdroid/util/MapTileArea;->mWidth:I

    add-int/2addr v0, v1

    iget v1, p0, Lorg/osmdroid/util/MapTileArea;->mMapTileUpperBound:I

    rem-int/2addr v0, v1

    return v0
.end method

.method public getTop()I
    .locals 1

    .line 62
    iget v0, p0, Lorg/osmdroid/util/MapTileArea;->mTop:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 66
    iget v0, p0, Lorg/osmdroid/util/MapTileArea;->mWidth:I

    return v0
.end method

.method public getZoom()I
    .locals 1

    .line 54
    iget v0, p0, Lorg/osmdroid/util/MapTileArea;->mZoom:I

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 88
    new-instance v0, Lorg/osmdroid/util/MapTileArea$1;

    invoke-direct {v0, p0}, Lorg/osmdroid/util/MapTileArea$1;-><init>(Lorg/osmdroid/util/MapTileArea;)V

    return-object v0
.end method

.method public reset()Lorg/osmdroid/util/MapTileArea;
    .locals 1

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lorg/osmdroid/util/MapTileArea;->mWidth:I

    .line 50
    return-object p0
.end method

.method public set(IIIII)Lorg/osmdroid/util/MapTileArea;
    .locals 1
    .param p1, "pZoom"    # I
    .param p2, "pLeft"    # I
    .param p3, "pTop"    # I
    .param p4, "pRight"    # I
    .param p5, "pBottom"    # I

    .line 24
    iput p1, p0, Lorg/osmdroid/util/MapTileArea;->mZoom:I

    .line 25
    const/4 v0, 0x1

    shl-int/2addr v0, p1

    iput v0, p0, Lorg/osmdroid/util/MapTileArea;->mMapTileUpperBound:I

    .line 26
    invoke-direct {p0, p2, p4}, Lorg/osmdroid/util/MapTileArea;->computeSize(II)I

    move-result v0

    iput v0, p0, Lorg/osmdroid/util/MapTileArea;->mWidth:I

    .line 27
    invoke-direct {p0, p3, p5}, Lorg/osmdroid/util/MapTileArea;->computeSize(II)I

    move-result v0

    iput v0, p0, Lorg/osmdroid/util/MapTileArea;->mHeight:I

    .line 28
    invoke-direct {p0, p2}, Lorg/osmdroid/util/MapTileArea;->cleanValue(I)I

    move-result v0

    iput v0, p0, Lorg/osmdroid/util/MapTileArea;->mLeft:I

    .line 29
    invoke-direct {p0, p3}, Lorg/osmdroid/util/MapTileArea;->cleanValue(I)I

    move-result v0

    iput v0, p0, Lorg/osmdroid/util/MapTileArea;->mTop:I

    .line 30
    return-object p0
.end method

.method public set(ILandroid/graphics/Rect;)Lorg/osmdroid/util/MapTileArea;
    .locals 6
    .param p1, "pZoom"    # I
    .param p2, "pRect"    # Landroid/graphics/Rect;

    .line 34
    iget v2, p2, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    iget v4, p2, Landroid/graphics/Rect;->right:I

    iget v5, p2, Landroid/graphics/Rect;->bottom:I

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/osmdroid/util/MapTileArea;->set(IIIII)Lorg/osmdroid/util/MapTileArea;

    move-result-object v0

    return-object v0
.end method

.method public set(Lorg/osmdroid/util/MapTileArea;)Lorg/osmdroid/util/MapTileArea;
    .locals 7
    .param p1, "pArea"    # Lorg/osmdroid/util/MapTileArea;

    .line 38
    invoke-virtual {p1}, Lorg/osmdroid/util/MapTileArea;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 39
    invoke-virtual {p0}, Lorg/osmdroid/util/MapTileArea;->reset()Lorg/osmdroid/util/MapTileArea;

    move-result-object v0

    return-object v0

    .line 41
    :cond_0
    iget v2, p1, Lorg/osmdroid/util/MapTileArea;->mZoom:I

    iget v3, p1, Lorg/osmdroid/util/MapTileArea;->mLeft:I

    iget v4, p1, Lorg/osmdroid/util/MapTileArea;->mTop:I

    invoke-virtual {p1}, Lorg/osmdroid/util/MapTileArea;->getRight()I

    move-result v5

    invoke-virtual {p1}, Lorg/osmdroid/util/MapTileArea;->getBottom()I

    move-result v6

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lorg/osmdroid/util/MapTileArea;->set(IIIII)Lorg/osmdroid/util/MapTileArea;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 2

    .line 83
    iget v0, p0, Lorg/osmdroid/util/MapTileArea;->mWidth:I

    iget v1, p0, Lorg/osmdroid/util/MapTileArea;->mHeight:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 158
    iget v0, p0, Lorg/osmdroid/util/MapTileArea;->mWidth:I

    if-nez v0, :cond_0

    .line 159
    const-string v0, "MapTileArea:empty"

    return-object v0

    .line 161
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MapTileArea:zoom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/osmdroid/util/MapTileArea;->mZoom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",left="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/osmdroid/util/MapTileArea;->mLeft:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",top="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/osmdroid/util/MapTileArea;->mTop:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/osmdroid/util/MapTileArea;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/osmdroid/util/MapTileArea;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
