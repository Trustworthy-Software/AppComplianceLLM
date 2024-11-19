.class Lorg/mapsforge/map/layer/hills/HgtCache;
.super Ljava/lang/Object;
.source "HgtCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;,
        Lorg/mapsforge/map/layer/hills/HgtCache$MergeOverlapFuture;,
        Lorg/mapsforge/map/layer/hills/HgtCache$LoadUnmergedFuture;,
        Lorg/mapsforge/map/layer/hills/HgtCache$Lru;,
        Lorg/mapsforge/map/layer/hills/HgtCache$TileKey;
    }
.end annotation


# instance fields
.field final algorithm:Lorg/mapsforge/map/layer/hills/ShadingAlgorithm;

.field final demFolder:Ljava/io/File;

.field private final graphicsFactory:Lorg/mapsforge/core/graphics/GraphicFactory;

.field private hgtFiles:Lorg/mapsforge/map/layer/hills/LazyFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mapsforge/map/layer/hills/LazyFuture<",
            "Ljava/util/Map<",
            "Lorg/mapsforge/map/layer/hills/HgtCache$TileKey;",
            "Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field final interpolatorOverlap:Z

.field final mainCacheSize:I

.field private final mainLru:Lorg/mapsforge/map/layer/hills/HgtCache$Lru;

.field final neighborCacheSize:I

.field private problems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final secondaryLru:Lorg/mapsforge/map/layer/hills/HgtCache$Lru;


# direct methods
.method constructor <init>(Ljava/io/File;ZLorg/mapsforge/core/graphics/GraphicFactory;Lorg/mapsforge/map/layer/hills/ShadingAlgorithm;II)V
    .locals 1
    .param p1, "demFolder"    # Ljava/io/File;
    .param p2, "interpolationOverlap"    # Z
    .param p3, "graphicsFactory"    # Lorg/mapsforge/core/graphics/GraphicFactory;
    .param p4, "algorithm"    # Lorg/mapsforge/map/layer/hills/ShadingAlgorithm;
    .param p5, "mainCacheSize"    # I
    .param p6, "neighborCacheSize"    # I

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mapsforge/map/layer/hills/HgtCache;->problems:Ljava/util/List;

    .line 142
    iput-object p1, p0, Lorg/mapsforge/map/layer/hills/HgtCache;->demFolder:Ljava/io/File;

    .line 143
    iput-boolean p2, p0, Lorg/mapsforge/map/layer/hills/HgtCache;->interpolatorOverlap:Z

    .line 144
    iput-object p3, p0, Lorg/mapsforge/map/layer/hills/HgtCache;->graphicsFactory:Lorg/mapsforge/core/graphics/GraphicFactory;

    .line 145
    iput-object p4, p0, Lorg/mapsforge/map/layer/hills/HgtCache;->algorithm:Lorg/mapsforge/map/layer/hills/ShadingAlgorithm;

    .line 146
    iput p5, p0, Lorg/mapsforge/map/layer/hills/HgtCache;->mainCacheSize:I

    .line 147
    iput p6, p0, Lorg/mapsforge/map/layer/hills/HgtCache;->neighborCacheSize:I

    .line 149
    new-instance v0, Lorg/mapsforge/map/layer/hills/HgtCache$Lru;

    invoke-direct {v0, p0, p5}, Lorg/mapsforge/map/layer/hills/HgtCache$Lru;-><init>(Lorg/mapsforge/map/layer/hills/HgtCache;I)V

    iput-object v0, p0, Lorg/mapsforge/map/layer/hills/HgtCache;->mainLru:Lorg/mapsforge/map/layer/hills/HgtCache$Lru;

    .line 150
    if-eqz p2, :cond_0

    new-instance v0, Lorg/mapsforge/map/layer/hills/HgtCache$Lru;

    invoke-direct {v0, p0, p6}, Lorg/mapsforge/map/layer/hills/HgtCache$Lru;-><init>(Lorg/mapsforge/map/layer/hills/HgtCache;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lorg/mapsforge/map/layer/hills/HgtCache;->secondaryLru:Lorg/mapsforge/map/layer/hills/HgtCache$Lru;

    .line 152
    new-instance v0, Lorg/mapsforge/map/layer/hills/HgtCache$1;

    invoke-direct {v0, p0}, Lorg/mapsforge/map/layer/hills/HgtCache$1;-><init>(Lorg/mapsforge/map/layer/hills/HgtCache;)V

    iput-object v0, p0, Lorg/mapsforge/map/layer/hills/HgtCache;->hgtFiles:Lorg/mapsforge/map/layer/hills/LazyFuture;

    .line 199
    return-void
.end method

.method static synthetic access$000(Lorg/mapsforge/map/layer/hills/HgtCache;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/mapsforge/map/layer/hills/HgtCache;

    .line 39
    iget-object v0, p0, Lorg/mapsforge/map/layer/hills/HgtCache;->problems:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lorg/mapsforge/map/layer/hills/HgtCache;)Lorg/mapsforge/core/graphics/GraphicFactory;
    .locals 1
    .param p0, "x0"    # Lorg/mapsforge/map/layer/hills/HgtCache;

    .line 39
    iget-object v0, p0, Lorg/mapsforge/map/layer/hills/HgtCache;->graphicsFactory:Lorg/mapsforge/core/graphics/GraphicFactory;

    return-object v0
.end method

.method static synthetic access$400(Lorg/mapsforge/map/layer/hills/HgtCache;)Lorg/mapsforge/map/layer/hills/HgtCache$Lru;
    .locals 1
    .param p0, "x0"    # Lorg/mapsforge/map/layer/hills/HgtCache;

    .line 39
    iget-object v0, p0, Lorg/mapsforge/map/layer/hills/HgtCache;->secondaryLru:Lorg/mapsforge/map/layer/hills/HgtCache$Lru;

    return-object v0
.end method

.method static synthetic access$500(Lorg/mapsforge/map/layer/hills/HgtCache;)Lorg/mapsforge/map/layer/hills/HgtCache$Lru;
    .locals 1
    .param p0, "x0"    # Lorg/mapsforge/map/layer/hills/HgtCache;

    .line 39
    iget-object v0, p0, Lorg/mapsforge/map/layer/hills/HgtCache;->mainLru:Lorg/mapsforge/map/layer/hills/HgtCache$Lru;

    return-object v0
.end method

.method static synthetic access$600(Lorg/mapsforge/map/layer/hills/HgtCache;)Lorg/mapsforge/map/layer/hills/LazyFuture;
    .locals 1
    .param p0, "x0"    # Lorg/mapsforge/map/layer/hills/HgtCache;

    .line 39
    iget-object v0, p0, Lorg/mapsforge/map/layer/hills/HgtCache;->hgtFiles:Lorg/mapsforge/map/layer/hills/LazyFuture;

    return-object v0
.end method

.method static mergeSameSized(Lorg/mapsforge/core/graphics/HillshadingBitmap;Lorg/mapsforge/core/graphics/HillshadingBitmap;Lorg/mapsforge/core/graphics/HillshadingBitmap$Border;ILorg/mapsforge/core/graphics/Canvas;)V
    .locals 6
    .param p0, "center"    # Lorg/mapsforge/core/graphics/HillshadingBitmap;
    .param p1, "neighbor"    # Lorg/mapsforge/core/graphics/HillshadingBitmap;
    .param p2, "border"    # Lorg/mapsforge/core/graphics/HillshadingBitmap$Border;
    .param p3, "padding"    # I
    .param p4, "copyCanvas"    # Lorg/mapsforge/core/graphics/Canvas;

    .line 453
    sget-object v0, Lorg/mapsforge/core/graphics/HillshadingBitmap$Border;->EAST:Lorg/mapsforge/core/graphics/HillshadingBitmap$Border;

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    .line 454
    move-object v0, p0

    .line 455
    .local v0, "sink":Lorg/mapsforge/core/graphics/HillshadingBitmap;
    move-object v2, p1

    .line 456
    .local v2, "source":Lorg/mapsforge/core/graphics/HillshadingBitmap;
    invoke-interface {p4, v0}, Lorg/mapsforge/core/graphics/Canvas;->setBitmap(Lorg/mapsforge/core/graphics/Bitmap;)V

    .line 457
    invoke-interface {v0}, Lorg/mapsforge/core/graphics/HillshadingBitmap;->getWidth()I

    move-result v3

    sub-int/2addr v3, p3

    invoke-interface {v0}, Lorg/mapsforge/core/graphics/HillshadingBitmap;->getHeight()I

    move-result v4

    mul-int/lit8 v5, p3, 0x2

    sub-int/2addr v4, v5

    invoke-interface {p4, v3, p3, p3, v4}, Lorg/mapsforge/core/graphics/Canvas;->setClip(IIII)V

    .line 458
    invoke-interface {v2}, Lorg/mapsforge/core/graphics/HillshadingBitmap;->getWidth()I

    move-result v3

    mul-int/lit8 v4, p3, 0x2

    sub-int/2addr v3, v4

    invoke-interface {p4, v2, v3, v1}, Lorg/mapsforge/core/graphics/Canvas;->drawBitmap(Lorg/mapsforge/core/graphics/Bitmap;II)V

    goto :goto_0

    .line 459
    .end local v0    # "sink":Lorg/mapsforge/core/graphics/HillshadingBitmap;
    .end local v2    # "source":Lorg/mapsforge/core/graphics/HillshadingBitmap;
    :cond_0
    sget-object v0, Lorg/mapsforge/core/graphics/HillshadingBitmap$Border;->WEST:Lorg/mapsforge/core/graphics/HillshadingBitmap$Border;

    if-ne p2, v0, :cond_1

    .line 460
    move-object v0, p0

    .line 461
    .restart local v0    # "sink":Lorg/mapsforge/core/graphics/HillshadingBitmap;
    move-object v2, p1

    .line 462
    .restart local v2    # "source":Lorg/mapsforge/core/graphics/HillshadingBitmap;
    invoke-interface {p4, v0}, Lorg/mapsforge/core/graphics/Canvas;->setBitmap(Lorg/mapsforge/core/graphics/Bitmap;)V

    .line 463
    invoke-interface {v0}, Lorg/mapsforge/core/graphics/HillshadingBitmap;->getHeight()I

    move-result v3

    mul-int/lit8 v4, p3, 0x2

    sub-int/2addr v3, v4

    invoke-interface {p4, v1, p3, p3, v3}, Lorg/mapsforge/core/graphics/Canvas;->setClip(IIII)V

    .line 464
    mul-int/lit8 v3, p3, 0x2

    invoke-interface {v2}, Lorg/mapsforge/core/graphics/HillshadingBitmap;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-interface {p4, v2, v3, v1}, Lorg/mapsforge/core/graphics/Canvas;->drawBitmap(Lorg/mapsforge/core/graphics/Bitmap;II)V

    goto :goto_0

    .line 465
    .end local v0    # "sink":Lorg/mapsforge/core/graphics/HillshadingBitmap;
    .end local v2    # "source":Lorg/mapsforge/core/graphics/HillshadingBitmap;
    :cond_1
    sget-object v0, Lorg/mapsforge/core/graphics/HillshadingBitmap$Border;->NORTH:Lorg/mapsforge/core/graphics/HillshadingBitmap$Border;

    if-ne p2, v0, :cond_2

    .line 466
    move-object v0, p0

    .line 467
    .restart local v0    # "sink":Lorg/mapsforge/core/graphics/HillshadingBitmap;
    move-object v2, p1

    .line 468
    .restart local v2    # "source":Lorg/mapsforge/core/graphics/HillshadingBitmap;
    invoke-interface {p4, v0}, Lorg/mapsforge/core/graphics/Canvas;->setBitmap(Lorg/mapsforge/core/graphics/Bitmap;)V

    .line 469
    invoke-interface {v0}, Lorg/mapsforge/core/graphics/HillshadingBitmap;->getWidth()I

    move-result v3

    mul-int/lit8 v4, p3, 0x2

    sub-int/2addr v3, v4

    invoke-interface {p4, p3, v1, v3, p3}, Lorg/mapsforge/core/graphics/Canvas;->setClip(IIII)V

    .line 470
    mul-int/lit8 v3, p3, 0x2

    invoke-interface {v2}, Lorg/mapsforge/core/graphics/HillshadingBitmap;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-interface {p4, v2, v1, v3}, Lorg/mapsforge/core/graphics/Canvas;->drawBitmap(Lorg/mapsforge/core/graphics/Bitmap;II)V

    goto :goto_0

    .line 471
    .end local v0    # "sink":Lorg/mapsforge/core/graphics/HillshadingBitmap;
    .end local v2    # "source":Lorg/mapsforge/core/graphics/HillshadingBitmap;
    :cond_2
    sget-object v0, Lorg/mapsforge/core/graphics/HillshadingBitmap$Border;->SOUTH:Lorg/mapsforge/core/graphics/HillshadingBitmap$Border;

    if-ne p2, v0, :cond_3

    .line 472
    move-object v0, p0

    .line 473
    .restart local v0    # "sink":Lorg/mapsforge/core/graphics/HillshadingBitmap;
    move-object v2, p1

    .line 474
    .restart local v2    # "source":Lorg/mapsforge/core/graphics/HillshadingBitmap;
    invoke-interface {p4, v0}, Lorg/mapsforge/core/graphics/Canvas;->setBitmap(Lorg/mapsforge/core/graphics/Bitmap;)V

    .line 475
    invoke-interface {v0}, Lorg/mapsforge/core/graphics/HillshadingBitmap;->getHeight()I

    move-result v3

    sub-int/2addr v3, p3

    invoke-interface {v0}, Lorg/mapsforge/core/graphics/HillshadingBitmap;->getWidth()I

    move-result v4

    mul-int/lit8 v5, p3, 0x2

    sub-int/2addr v4, v5

    invoke-interface {p4, p3, v3, v4, p3}, Lorg/mapsforge/core/graphics/Canvas;->setClip(IIII)V

    .line 476
    invoke-interface {v2}, Lorg/mapsforge/core/graphics/HillshadingBitmap;->getHeight()I

    move-result v3

    mul-int/lit8 v4, p3, 0x2

    sub-int/2addr v3, v4

    invoke-interface {p4, v2, v1, v3}, Lorg/mapsforge/core/graphics/Canvas;->drawBitmap(Lorg/mapsforge/core/graphics/Bitmap;II)V

    .line 478
    .end local v0    # "sink":Lorg/mapsforge/core/graphics/HillshadingBitmap;
    .end local v2    # "source":Lorg/mapsforge/core/graphics/HillshadingBitmap;
    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public getHillshadingBitmap(IIDD)Lorg/mapsforge/core/graphics/HillshadingBitmap;
    .locals 3
    .param p1, "northInt"    # I
    .param p2, "eastInt"    # I
    .param p3, "pxPerLat"    # D
    .param p5, "pxPerLng"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 441
    iget-object v0, p0, Lorg/mapsforge/map/layer/hills/HgtCache;->hgtFiles:Lorg/mapsforge/map/layer/hills/LazyFuture;

    invoke-virtual {v0}, Lorg/mapsforge/map/layer/hills/LazyFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    new-instance v1, Lorg/mapsforge/map/layer/hills/HgtCache$TileKey;

    invoke-direct {v1, p1, p2}, Lorg/mapsforge/map/layer/hills/HgtCache$TileKey;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;

    .line 442
    .local v0, "hgtFileInfo":Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;
    if-nez v0, :cond_0

    .line 443
    const/4 v1, 0x0

    return-object v1

    .line 445
    :cond_0
    invoke-virtual {v0, p3, p4, p5, p6}, Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;->getBitmapFuture(DD)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 446
    .local v1, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lorg/mapsforge/core/graphics/HillshadingBitmap;>;"
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mapsforge/core/graphics/HillshadingBitmap;

    return-object v2
.end method

.method indexOnThread()V
    .locals 1

    .line 202
    iget-object v0, p0, Lorg/mapsforge/map/layer/hills/HgtCache;->hgtFiles:Lorg/mapsforge/map/layer/hills/LazyFuture;

    invoke-virtual {v0}, Lorg/mapsforge/map/layer/hills/LazyFuture;->withRunningThread()Lorg/mapsforge/map/layer/hills/LatchedLazyFuture;

    .line 203
    return-void
.end method
