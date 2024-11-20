.class Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;
.super Lorg/mapsforge/core/model/BoundingBox;
.source "HgtCache.java"

# interfaces
.implements Lorg/mapsforge/map/layer/hills/ShadingAlgorithm$RawHillTileSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapsforge/map/layer/hills/HgtCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HgtFileInfo"
.end annotation


# instance fields
.field final file:Ljava/io/File;

.field final size:J

.field final synthetic this$0:Lorg/mapsforge/map/layer/hills/HgtCache;

.field weakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/util/concurrent/Future<",
            "Lorg/mapsforge/core/graphics/HillshadingBitmap;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/mapsforge/map/layer/hills/HgtCache;Ljava/io/File;DDDD)V
    .locals 11
    .param p1, "this$0"    # Lorg/mapsforge/map/layer/hills/HgtCache;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "minLatitude"    # D
    .param p5, "minLongitude"    # D
    .param p7, "maxLatitude"    # D
    .param p9, "maxLongitude"    # D

    .line 277
    move-object v9, p0

    move-object v10, p1

    iput-object v10, v9, Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;->this$0:Lorg/mapsforge/map/layer/hills/HgtCache;

    .line 278
    move-object v0, p0

    move-wide v1, p3

    move-wide/from16 v3, p5

    move-wide/from16 v5, p7

    move-wide/from16 v7, p9

    invoke-direct/range {v0 .. v8}, Lorg/mapsforge/core/model/BoundingBox;-><init>(DDDD)V

    .line 273
    const/4 v0, 0x0

    iput-object v0, v9, Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;->weakRef:Ljava/lang/ref/WeakReference;

    .line 279
    move-object v0, p2

    iput-object v0, v9, Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;->file:Ljava/io/File;

    .line 280
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v1

    iput-wide v1, v9, Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;->size:J

    .line 281
    return-void
.end method

.method static synthetic access$200(Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;Lorg/mapsforge/core/graphics/HillshadingBitmap$Border;)Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;
    .locals 1
    .param p0, "x0"    # Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;
    .param p1, "x1"    # Lorg/mapsforge/core/graphics/HillshadingBitmap$Border;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 271
    invoke-direct {p0, p1}, Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;->getNeighbor(Lorg/mapsforge/core/graphics/HillshadingBitmap$Border;)Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;)Lorg/mapsforge/map/layer/hills/HgtCache$LoadUnmergedFuture;
    .locals 1
    .param p0, "x0"    # Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;

    .line 271
    invoke-direct {p0}, Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;->getUnmergedAsMergePartner()Lorg/mapsforge/map/layer/hills/HgtCache$LoadUnmergedFuture;

    move-result-object v0

    return-object v0
.end method

.method private getForHires()Lorg/mapsforge/map/layer/hills/HgtCache$MergeOverlapFuture;
    .locals 5

    .line 304
    iget-object v0, p0, Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;->weakRef:Ljava/lang/ref/WeakReference;

    .line 305
    .local v0, "weak":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/util/concurrent/Future<Lorg/mapsforge/core/graphics/HillshadingBitmap;>;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;

    .line 308
    .local v1, "candidate":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lorg/mapsforge/core/graphics/HillshadingBitmap;>;"
    :goto_0
    instance-of v2, v1, Lorg/mapsforge/map/layer/hills/HgtCache$MergeOverlapFuture;

    if-eqz v2, :cond_1

    .line 309
    move-object v2, v1

    check-cast v2, Lorg/mapsforge/map/layer/hills/HgtCache$MergeOverlapFuture;

    .local v2, "ret":Lorg/mapsforge/map/layer/hills/HgtCache$MergeOverlapFuture;
    goto :goto_1

    .line 310
    .end local v2    # "ret":Lorg/mapsforge/map/layer/hills/HgtCache$MergeOverlapFuture;
    :cond_1
    instance-of v2, v1, Lorg/mapsforge/map/layer/hills/HgtCache$LoadUnmergedFuture;

    if-eqz v2, :cond_2

    .line 311
    move-object v2, v1

    check-cast v2, Lorg/mapsforge/map/layer/hills/HgtCache$LoadUnmergedFuture;

    .line 312
    .local v2, "loadFuture":Lorg/mapsforge/map/layer/hills/HgtCache$LoadUnmergedFuture;
    new-instance v3, Lorg/mapsforge/map/layer/hills/HgtCache$MergeOverlapFuture;

    iget-object v4, p0, Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;->this$0:Lorg/mapsforge/map/layer/hills/HgtCache;

    invoke-direct {v3, v4, p0, v2}, Lorg/mapsforge/map/layer/hills/HgtCache$MergeOverlapFuture;-><init>(Lorg/mapsforge/map/layer/hills/HgtCache;Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;Lorg/mapsforge/map/layer/hills/HgtCache$LoadUnmergedFuture;)V

    .line 313
    .local v3, "ret":Lorg/mapsforge/map/layer/hills/HgtCache$MergeOverlapFuture;
    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, p0, Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;->weakRef:Ljava/lang/ref/WeakReference;

    .line 314
    iget-object v4, p0, Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;->this$0:Lorg/mapsforge/map/layer/hills/HgtCache;

    invoke-static {v4}, Lorg/mapsforge/map/layer/hills/HgtCache;->access$400(Lorg/mapsforge/map/layer/hills/HgtCache;)Lorg/mapsforge/map/layer/hills/HgtCache$Lru;

    move-result-object v4

    invoke-virtual {v4, v2}, Lorg/mapsforge/map/layer/hills/HgtCache$Lru;->evict(Ljava/util/concurrent/Future;)V

    .line 315
    .end local v2    # "loadFuture":Lorg/mapsforge/map/layer/hills/HgtCache$LoadUnmergedFuture;
    move-object v2, v3

    goto :goto_1

    .line 316
    .end local v3    # "ret":Lorg/mapsforge/map/layer/hills/HgtCache$MergeOverlapFuture;
    :cond_2
    new-instance v2, Lorg/mapsforge/map/layer/hills/HgtCache$MergeOverlapFuture;

    iget-object v3, p0, Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;->this$0:Lorg/mapsforge/map/layer/hills/HgtCache;

    invoke-direct {v2, v3, p0}, Lorg/mapsforge/map/layer/hills/HgtCache$MergeOverlapFuture;-><init>(Lorg/mapsforge/map/layer/hills/HgtCache;Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;)V

    .line 318
    .local v2, "ret":Lorg/mapsforge/map/layer/hills/HgtCache$MergeOverlapFuture;
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;->weakRef:Ljava/lang/ref/WeakReference;

    .line 320
    :goto_1
    iget-object v3, p0, Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;->this$0:Lorg/mapsforge/map/layer/hills/HgtCache;

    invoke-static {v3}, Lorg/mapsforge/map/layer/hills/HgtCache;->access$500(Lorg/mapsforge/map/layer/hills/HgtCache;)Lorg/mapsforge/map/layer/hills/HgtCache$Lru;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/mapsforge/map/layer/hills/HgtCache$Lru;->markUsed(Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;

    .line 323
    return-object v2
.end method

.method private getForLores()Ljava/util/concurrent/Future;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "Lorg/mapsforge/core/graphics/HillshadingBitmap;",
            ">;"
        }
    .end annotation

    .line 358
    iget-object v0, p0, Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;->weakRef:Ljava/lang/ref/WeakReference;

    .line 359
    .local v0, "weak":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/util/concurrent/Future<Lorg/mapsforge/core/graphics/HillshadingBitmap;>;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;

    .line 361
    .local v1, "candidate":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lorg/mapsforge/core/graphics/HillshadingBitmap;>;"
    :goto_0
    if-nez v1, :cond_1

    .line 362
    new-instance v2, Lorg/mapsforge/map/layer/hills/HgtCache$LoadUnmergedFuture;

    iget-object v3, p0, Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;->this$0:Lorg/mapsforge/map/layer/hills/HgtCache;

    invoke-direct {v2, v3, p0}, Lorg/mapsforge/map/layer/hills/HgtCache$LoadUnmergedFuture;-><init>(Lorg/mapsforge/map/layer/hills/HgtCache;Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;)V

    move-object v1, v2

    .line 363
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;->weakRef:Ljava/lang/ref/WeakReference;

    .line 365
    :cond_1
    iget-object v2, p0, Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;->this$0:Lorg/mapsforge/map/layer/hills/HgtCache;

    invoke-static {v2}, Lorg/mapsforge/map/layer/hills/HgtCache;->access$500(Lorg/mapsforge/map/layer/hills/HgtCache;)Lorg/mapsforge/map/layer/hills/HgtCache$Lru;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/mapsforge/map/layer/hills/HgtCache$Lru;->markUsed(Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;

    move-result-object v2

    .line 366
    .local v2, "evicted":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lorg/mapsforge/core/graphics/HillshadingBitmap;>;"
    iget-object v3, p0, Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;->this$0:Lorg/mapsforge/map/layer/hills/HgtCache;

    invoke-static {v3}, Lorg/mapsforge/map/layer/hills/HgtCache;->access$400(Lorg/mapsforge/map/layer/hills/HgtCache;)Lorg/mapsforge/map/layer/hills/HgtCache$Lru;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;->this$0:Lorg/mapsforge/map/layer/hills/HgtCache;

    invoke-static {v3}, Lorg/mapsforge/map/layer/hills/HgtCache;->access$400(Lorg/mapsforge/map/layer/hills/HgtCache;)Lorg/mapsforge/map/layer/hills/HgtCache$Lru;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/mapsforge/map/layer/hills/HgtCache$Lru;->markUsed(Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;

    .line 367
    :cond_2
    return-object v1
.end method

.method private getNeighbor(Lorg/mapsforge/core/graphics/HillshadingBitmap$Border;)Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;
    .locals 5
    .param p1, "border"    # Lorg/mapsforge/core/graphics/HillshadingBitmap$Border;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 418
    iget-object v0, p0, Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;->this$0:Lorg/mapsforge/map/layer/hills/HgtCache;

    invoke-static {v0}, Lorg/mapsforge/map/layer/hills/HgtCache;->access$600(Lorg/mapsforge/map/layer/hills/HgtCache;)Lorg/mapsforge/map/layer/hills/LazyFuture;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mapsforge/map/layer/hills/LazyFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 419
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Lorg/mapsforge/map/layer/hills/HgtCache$TileKey;Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;>;"
    sget-object v1, Lorg/mapsforge/map/layer/hills/HgtCache$2;->$SwitchMap$org$mapsforge$core$graphics$HillshadingBitmap$Border:[I

    invoke-virtual {p1}, Lorg/mapsforge/core/graphics/HillshadingBitmap$Border;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 429
    const/4 v1, 0x0

    return-object v1

    .line 427
    :pswitch_0
    new-instance v1, Lorg/mapsforge/map/layer/hills/HgtCache$TileKey;

    iget-wide v2, p0, Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;->maxLatitude:D

    double-to-int v2, v2

    iget-wide v3, p0, Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;->minLongitude:D

    double-to-int v3, v3

    add-int/lit8 v3, v3, -0x1

    invoke-direct {v1, v2, v3}, Lorg/mapsforge/map/layer/hills/HgtCache$TileKey;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;

    return-object v1

    .line 425
    :pswitch_1
    new-instance v1, Lorg/mapsforge/map/layer/hills/HgtCache$TileKey;

    iget-wide v2, p0, Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;->maxLatitude:D

    double-to-int v2, v2

    iget-wide v3, p0, Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;->minLongitude:D

    double-to-int v3, v3

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/mapsforge/map/layer/hills/HgtCache$TileKey;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;

    return-object v1

    .line 423
    :pswitch_2
    new-instance v1, Lorg/mapsforge/map/layer/hills/HgtCache$TileKey;

    iget-wide v2, p0, Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;->maxLatitude:D

    double-to-int v2, v2

    add-int/lit8 v2, v2, -0x1

    iget-wide v3, p0, Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;->minLongitude:D

    double-to-int v3, v3

    invoke-direct {v1, v2, v3}, Lorg/mapsforge/map/layer/hills/HgtCache$TileKey;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;

    return-object v1

    .line 421
    :pswitch_3
    new-instance v1, Lorg/mapsforge/map/layer/hills/HgtCache$TileKey;

    iget-wide v2, p0, Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;->maxLatitude:D

    double-to-int v2, v2

    add-int/lit8 v2, v2, 0x1

    iget-wide v3, p0, Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;->minLongitude:D

    double-to-int v3, v3

    invoke-direct {v1, v2, v3}, Lorg/mapsforge/map/layer/hills/HgtCache$TileKey;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getUnmergedAsMergePartner()Lorg/mapsforge/map/layer/hills/HgtCache$LoadUnmergedFuture;
    .locals 4

    .line 332
    iget-object v0, p0, Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;->weakRef:Ljava/lang/ref/WeakReference;

    .line 333
    .local v0, "weak":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/util/concurrent/Future<Lorg/mapsforge/core/graphics/HillshadingBitmap;>;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;

    .line 337
    .local v1, "candidate":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lorg/mapsforge/core/graphics/HillshadingBitmap;>;"
    :goto_0
    instance-of v2, v1, Lorg/mapsforge/map/layer/hills/HgtCache$LoadUnmergedFuture;

    if-eqz v2, :cond_1

    .line 338
    iget-object v2, p0, Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;->this$0:Lorg/mapsforge/map/layer/hills/HgtCache;

    invoke-static {v2}, Lorg/mapsforge/map/layer/hills/HgtCache;->access$400(Lorg/mapsforge/map/layer/hills/HgtCache;)Lorg/mapsforge/map/layer/hills/HgtCache$Lru;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/mapsforge/map/layer/hills/HgtCache$Lru;->markUsed(Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;

    .line 339
    move-object v2, v1

    check-cast v2, Lorg/mapsforge/map/layer/hills/HgtCache$LoadUnmergedFuture;

    .local v2, "ret":Lorg/mapsforge/map/layer/hills/HgtCache$LoadUnmergedFuture;
    goto :goto_1

    .line 340
    .end local v2    # "ret":Lorg/mapsforge/map/layer/hills/HgtCache$LoadUnmergedFuture;
    :cond_1
    instance-of v2, v1, Lorg/mapsforge/map/layer/hills/HgtCache$MergeOverlapFuture;

    if-eqz v2, :cond_2

    .line 341
    iget-object v2, p0, Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;->this$0:Lorg/mapsforge/map/layer/hills/HgtCache;

    invoke-static {v2}, Lorg/mapsforge/map/layer/hills/HgtCache;->access$500(Lorg/mapsforge/map/layer/hills/HgtCache;)Lorg/mapsforge/map/layer/hills/HgtCache$Lru;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/mapsforge/map/layer/hills/HgtCache$Lru;->markUsed(Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;

    .line 342
    move-object v2, v1

    check-cast v2, Lorg/mapsforge/map/layer/hills/HgtCache$MergeOverlapFuture;

    iget-object v2, v2, Lorg/mapsforge/map/layer/hills/HgtCache$MergeOverlapFuture;->loadFuture:Lorg/mapsforge/map/layer/hills/HgtCache$LoadUnmergedFuture;

    .restart local v2    # "ret":Lorg/mapsforge/map/layer/hills/HgtCache$LoadUnmergedFuture;
    goto :goto_1

    .line 344
    .end local v2    # "ret":Lorg/mapsforge/map/layer/hills/HgtCache$LoadUnmergedFuture;
    :cond_2
    new-instance v2, Lorg/mapsforge/map/layer/hills/HgtCache$LoadUnmergedFuture;

    iget-object v3, p0, Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;->this$0:Lorg/mapsforge/map/layer/hills/HgtCache;

    invoke-direct {v2, v3, p0}, Lorg/mapsforge/map/layer/hills/HgtCache$LoadUnmergedFuture;-><init>(Lorg/mapsforge/map/layer/hills/HgtCache;Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;)V

    .line 345
    .local v2, "created":Lorg/mapsforge/map/layer/hills/HgtCache$LoadUnmergedFuture;
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;->weakRef:Ljava/lang/ref/WeakReference;

    .line 346
    iget-object v3, p0, Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;->this$0:Lorg/mapsforge/map/layer/hills/HgtCache;

    invoke-static {v3}, Lorg/mapsforge/map/layer/hills/HgtCache;->access$400(Lorg/mapsforge/map/layer/hills/HgtCache;)Lorg/mapsforge/map/layer/hills/HgtCache$Lru;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/mapsforge/map/layer/hills/HgtCache$Lru;->markUsed(Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;

    .line 347
    move-object v3, v2

    .line 349
    .local v2, "ret":Lorg/mapsforge/map/layer/hills/HgtCache$LoadUnmergedFuture;
    :goto_1
    return-object v2
.end method


# virtual methods
.method public eastLng()D
    .locals 2

    .line 413
    iget-wide v0, p0, Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;->maxLongitude:D

    return-wide v0
.end method

.method getBitmapFuture(DD)Ljava/util/concurrent/Future;
    .locals 3
    .param p1, "pxPerLat"    # D
    .param p3, "pxPerLng"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD)",
            "Ljava/util/concurrent/Future<",
            "Lorg/mapsforge/core/graphics/HillshadingBitmap;",
            ">;"
        }
    .end annotation

    .line 284
    iget-object v0, p0, Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;->this$0:Lorg/mapsforge/map/layer/hills/HgtCache;

    iget-boolean v0, v0, Lorg/mapsforge/map/layer/hills/HgtCache;->interpolatorOverlap:Z

    if-eqz v0, :cond_2

    .line 286
    iget-object v0, p0, Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;->this$0:Lorg/mapsforge/map/layer/hills/HgtCache;

    iget-object v0, v0, Lorg/mapsforge/map/layer/hills/HgtCache;->algorithm:Lorg/mapsforge/map/layer/hills/ShadingAlgorithm;

    invoke-interface {v0, p0}, Lorg/mapsforge/map/layer/hills/ShadingAlgorithm;->getAxisLenght(Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;)I

    move-result v0

    .line 287
    .local v0, "axisLen":I
    int-to-double v1, v0

    cmpl-double v1, p1, v1

    if-gtz v1, :cond_1

    int-to-double v1, v0

    cmpl-double v1, p3, v1

    if-lez v1, :cond_0

    goto :goto_0

    .line 290
    :cond_0
    invoke-direct {p0}, Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;->getForLores()Ljava/util/concurrent/Future;

    move-result-object v1

    return-object v1

    .line 288
    :cond_1
    :goto_0
    invoke-direct {p0}, Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;->getForHires()Lorg/mapsforge/map/layer/hills/HgtCache$MergeOverlapFuture;

    move-result-object v1

    return-object v1

    .line 293
    .end local v0    # "axisLen":I
    :cond_2
    invoke-direct {p0}, Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;->getForLores()Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .line 393
    iget-object v0, p0, Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;->file:Ljava/io/File;

    return-object v0
.end method

.method public getFinishedConverted()Lorg/mapsforge/core/graphics/HillshadingBitmap;
    .locals 3

    .line 372
    iget-object v0, p0, Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;->weakRef:Ljava/lang/ref/WeakReference;

    .line 373
    .local v0, "weak":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/util/concurrent/Future<Lorg/mapsforge/core/graphics/HillshadingBitmap;>;>;"
    if-eqz v0, :cond_0

    .line 374
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;

    .line 375
    .local v1, "hillshadingBitmapFuture":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lorg/mapsforge/core/graphics/HillshadingBitmap;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 377
    :try_start_0
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mapsforge/core/graphics/HillshadingBitmap;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 378
    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    .line 379
    .local v2, "e":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 383
    .end local v1    # "hillshadingBitmapFuture":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lorg/mapsforge/core/graphics/HillshadingBitmap;>;"
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getSize()J
    .locals 2

    .line 388
    iget-wide v0, p0, Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;->size:J

    return-wide v0
.end method

.method public northLat()D
    .locals 2

    .line 398
    iget-wide v0, p0, Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;->maxLatitude:D

    return-wide v0
.end method

.method public southLat()D
    .locals 2

    .line 403
    iget-wide v0, p0, Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;->minLatitude:D

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 434
    iget-object v0, p0, Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;->weakRef:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 435
    .local v0, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lorg/mapsforge/core/graphics/HillshadingBitmap;>;"
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[lt:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;->minLatitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, p0, Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;->maxLatitude:D

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " ln:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, p0, Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;->minLongitude:D

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;->maxLongitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez v0, :cond_1

    const-string v2, ""

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "done"

    goto :goto_1

    :cond_2
    const-string v2, "wip"

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public westLng()D
    .locals 2

    .line 408
    iget-wide v0, p0, Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;->minLongitude:D

    return-wide v0
.end method
