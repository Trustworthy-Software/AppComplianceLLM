.class public abstract Lorg/osmdroid/util/TileLooper;
.super Ljava/lang/Object;
.source "TileLooper.java"


# instance fields
.field private horizontalWrapEnabled:Z

.field protected mTileZoomLevel:I

.field protected final mTiles:Landroid/graphics/Rect;

.field private verticalWrapEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lorg/osmdroid/util/TileLooper;-><init>(ZZ)V

    .line 17
    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 1
    .param p1, "horizontalWrapEnabled"    # Z
    .param p2, "verticalWrapEnabled"    # Z

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/util/TileLooper;->mTiles:Landroid/graphics/Rect;

    .line 12
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/osmdroid/util/TileLooper;->horizontalWrapEnabled:Z

    .line 13
    iput-boolean v0, p0, Lorg/osmdroid/util/TileLooper;->verticalWrapEnabled:Z

    .line 20
    iput-boolean p1, p0, Lorg/osmdroid/util/TileLooper;->horizontalWrapEnabled:Z

    .line 21
    iput-boolean p2, p0, Lorg/osmdroid/util/TileLooper;->verticalWrapEnabled:Z

    .line 22
    return-void
.end method


# virtual methods
.method public finaliseLoop()V
    .locals 0

    .line 54
    return-void
.end method

.method public abstract handleTile(JII)V
.end method

.method public initialiseLoop()V
    .locals 0

    .line 49
    return-void
.end method

.method public isHorizontalWrapEnabled()Z
    .locals 1

    .line 57
    iget-boolean v0, p0, Lorg/osmdroid/util/TileLooper;->horizontalWrapEnabled:Z

    return v0
.end method

.method public isVerticalWrapEnabled()Z
    .locals 1

    .line 65
    iget-boolean v0, p0, Lorg/osmdroid/util/TileLooper;->verticalWrapEnabled:Z

    return v0
.end method

.method protected loop(DLorg/osmdroid/util/RectL;)V
    .locals 7
    .param p1, "pZoomLevel"    # D
    .param p3, "pMercatorViewPort"    # Lorg/osmdroid/util/RectL;

    .line 25
    invoke-static {p1, p2}, Lorg/osmdroid/util/TileSystem;->getTileSize(D)D

    move-result-wide v0

    iget-object v2, p0, Lorg/osmdroid/util/TileLooper;->mTiles:Landroid/graphics/Rect;

    invoke-static {p3, v0, v1, v2}, Lorg/osmdroid/util/TileSystem;->getTileFromMercator(Lorg/osmdroid/util/RectL;DLandroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 26
    invoke-static {p1, p2}, Lorg/osmdroid/util/TileSystem;->getInputTileZoomLevel(D)I

    move-result v0

    iput v0, p0, Lorg/osmdroid/util/TileLooper;->mTileZoomLevel:I

    .line 28
    invoke-virtual {p0}, Lorg/osmdroid/util/TileLooper;->initialiseLoop()V

    .line 30
    const/4 v0, 0x1

    iget v1, p0, Lorg/osmdroid/util/TileLooper;->mTileZoomLevel:I

    shl-int/2addr v0, v1

    .line 33
    .local v0, "mapTileUpperBound":I
    iget-object v1, p0, Lorg/osmdroid/util/TileLooper;->mTiles:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/osmdroid/util/TileLooper;->mTiles:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    if-gt v1, v2, :cond_4

    .line 34
    iget-object v2, p0, Lorg/osmdroid/util/TileLooper;->mTiles:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    .local v2, "j":I
    :goto_1
    iget-object v3, p0, Lorg/osmdroid/util/TileLooper;->mTiles:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    if-gt v2, v3, :cond_3

    .line 35
    iget-boolean v3, p0, Lorg/osmdroid/util/TileLooper;->horizontalWrapEnabled:Z

    if-nez v3, :cond_0

    if-ltz v1, :cond_2

    if-ge v1, v0, :cond_2

    :cond_0
    iget-boolean v3, p0, Lorg/osmdroid/util/TileLooper;->verticalWrapEnabled:Z

    if-nez v3, :cond_1

    if-ltz v2, :cond_2

    if-ge v2, v0, :cond_2

    .line 37
    :cond_1
    invoke-static {v1, v0}, Lorg/osmdroid/util/MyMath;->mod(II)I

    move-result v3

    .line 38
    .local v3, "tileX":I
    invoke-static {v2, v0}, Lorg/osmdroid/util/MyMath;->mod(II)I

    move-result v4

    .line 39
    .local v4, "tileY":I
    iget v5, p0, Lorg/osmdroid/util/TileLooper;->mTileZoomLevel:I

    invoke-static {v5, v3, v4}, Lorg/osmdroid/util/MapTileIndex;->getTileIndex(III)J

    move-result-wide v5

    .line 40
    .local v5, "tile":J
    invoke-virtual {p0, v5, v6, v1, v2}, Lorg/osmdroid/util/TileLooper;->handleTile(JII)V

    .line 34
    .end local v3    # "tileX":I
    .end local v4    # "tileY":I
    .end local v5    # "tile":J
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 33
    .end local v2    # "j":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 45
    .end local v1    # "i":I
    :cond_4
    invoke-virtual {p0}, Lorg/osmdroid/util/TileLooper;->finaliseLoop()V

    .line 46
    return-void
.end method

.method public setHorizontalWrapEnabled(Z)V
    .locals 0
    .param p1, "horizontalWrapEnabled"    # Z

    .line 61
    iput-boolean p1, p0, Lorg/osmdroid/util/TileLooper;->horizontalWrapEnabled:Z

    .line 62
    return-void
.end method

.method public setVerticalWrapEnabled(Z)V
    .locals 0
    .param p1, "verticalWrapEnabled"    # Z

    .line 69
    iput-boolean p1, p0, Lorg/osmdroid/util/TileLooper;->verticalWrapEnabled:Z

    .line 70
    return-void
.end method
