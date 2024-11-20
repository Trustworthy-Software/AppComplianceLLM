.class public abstract Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;
.super Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase;
.source "OnlineTileSourceBase.java"


# instance fields
.field private final mBaseUrls:[Ljava/lang/String;

.field private final mSemaphore:Ljava/util/concurrent/Semaphore;

.field private final mTileSourcePolicy:Lorg/osmdroid/tileprovider/tilesource/TileSourcePolicy;


# direct methods
.method public constructor <init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;)V
    .locals 8
    .param p1, "aName"    # Ljava/lang/String;
    .param p2, "aZoomMinLevel"    # I
    .param p3, "aZoomMaxLevel"    # I
    .param p4, "aTileSizePixels"    # I
    .param p5, "aImageFilenameEnding"    # Ljava/lang/String;
    .param p6, "aBaseUrl"    # [Ljava/lang/String;

    .line 23
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "aName"    # Ljava/lang/String;
    .param p2, "aZoomMinLevel"    # I
    .param p3, "aZoomMaxLevel"    # I
    .param p4, "aTileSizePixels"    # I
    .param p5, "aImageFilenameEnding"    # Ljava/lang/String;
    .param p6, "aBaseUrl"    # [Ljava/lang/String;
    .param p7, "copyyright"    # Ljava/lang/String;

    .line 31
    new-instance v8, Lorg/osmdroid/tileprovider/tilesource/TileSourcePolicy;

    invoke-direct {v8}, Lorg/osmdroid/tileprovider/tilesource/TileSourcePolicy;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lorg/osmdroid/tileprovider/tilesource/TileSourcePolicy;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lorg/osmdroid/tileprovider/tilesource/TileSourcePolicy;)V
    .locals 7
    .param p1, "pName"    # Ljava/lang/String;
    .param p2, "pZoomMinLevel"    # I
    .param p3, "pZoomMaxLevel"    # I
    .param p4, "pTileSizePixels"    # I
    .param p5, "pImageFilenameEnding"    # Ljava/lang/String;
    .param p6, "pBaseUrl"    # [Ljava/lang/String;
    .param p7, "pCopyright"    # Ljava/lang/String;
    .param p8, "pTileSourcePolicy"    # Lorg/osmdroid/tileprovider/tilesource/TileSourcePolicy;

    .line 50
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    .line 52
    iput-object p6, p0, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;->mBaseUrls:[Ljava/lang/String;

    .line 53
    iput-object p8, p0, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;->mTileSourcePolicy:Lorg/osmdroid/tileprovider/tilesource/TileSourcePolicy;

    .line 54
    invoke-virtual {p8}, Lorg/osmdroid/tileprovider/tilesource/TileSourcePolicy;->getMaxConcurrent()I

    move-result v0

    if-lez v0, :cond_0

    .line 55
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-virtual {p8}, Lorg/osmdroid/tileprovider/tilesource/TileSourcePolicy;->getMaxConcurrent()I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    iput-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;->mSemaphore:Ljava/util/concurrent/Semaphore;

    goto :goto_0

    .line 57
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;->mSemaphore:Ljava/util/concurrent/Semaphore;

    .line 59
    :goto_0
    return-void
.end method


# virtual methods
.method public acquire()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;->mSemaphore:Ljava/util/concurrent/Semaphore;

    if-nez v0, :cond_0

    .line 79
    return-void

    .line 81
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 82
    return-void
.end method

.method public getBaseUrl()Ljava/lang/String;
    .locals 3

    .line 69
    iget-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;->mBaseUrls:[Ljava/lang/String;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 70
    iget-object v1, p0, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;->random:Ljava/util/Random;

    iget-object v2, p0, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;->mBaseUrls:[Ljava/lang/String;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0

    .line 71
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getTileSourcePolicy()Lorg/osmdroid/tileprovider/tilesource/TileSourcePolicy;
    .locals 1

    .line 98
    iget-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;->mTileSourcePolicy:Lorg/osmdroid/tileprovider/tilesource/TileSourcePolicy;

    return-object v0
.end method

.method public abstract getTileURLString(J)Ljava/lang/String;
.end method

.method public release()V
    .locals 1

    .line 88
    iget-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;->mSemaphore:Ljava/util/concurrent/Semaphore;

    if-nez v0, :cond_0

    .line 89
    return-void

    .line 91
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 92
    return-void
.end method
