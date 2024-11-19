.class Lorg/mapsforge/map/layer/hills/HgtCache$MergeOverlapFuture;
.super Lorg/mapsforge/map/layer/hills/LazyFuture;
.source "HgtCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapsforge/map/layer/hills/HgtCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MergeOverlapFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/mapsforge/map/layer/hills/LazyFuture<",
        "Lorg/mapsforge/core/graphics/HillshadingBitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private hgtFileInfo:Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;

.field final loadFuture:Lorg/mapsforge/map/layer/hills/HgtCache$LoadUnmergedFuture;

.field final synthetic this$0:Lorg/mapsforge/map/layer/hills/HgtCache;


# direct methods
.method constructor <init>(Lorg/mapsforge/map/layer/hills/HgtCache;Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;)V
    .locals 1
    .param p1, "this$0"    # Lorg/mapsforge/map/layer/hills/HgtCache;
    .param p2, "hgtFileInfo"    # Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;

    .line 235
    new-instance v0, Lorg/mapsforge/map/layer/hills/HgtCache$LoadUnmergedFuture;

    invoke-direct {v0, p1, p2}, Lorg/mapsforge/map/layer/hills/HgtCache$LoadUnmergedFuture;-><init>(Lorg/mapsforge/map/layer/hills/HgtCache;Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;)V

    invoke-direct {p0, p1, p2, v0}, Lorg/mapsforge/map/layer/hills/HgtCache$MergeOverlapFuture;-><init>(Lorg/mapsforge/map/layer/hills/HgtCache;Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;Lorg/mapsforge/map/layer/hills/HgtCache$LoadUnmergedFuture;)V

    .line 236
    return-void
.end method

.method constructor <init>(Lorg/mapsforge/map/layer/hills/HgtCache;Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;Lorg/mapsforge/map/layer/hills/HgtCache$LoadUnmergedFuture;)V
    .locals 0
    .param p1, "this$0"    # Lorg/mapsforge/map/layer/hills/HgtCache;
    .param p2, "hgtFileInfo"    # Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;
    .param p3, "loadFuture"    # Lorg/mapsforge/map/layer/hills/HgtCache$LoadUnmergedFuture;

    .line 228
    iput-object p1, p0, Lorg/mapsforge/map/layer/hills/HgtCache$MergeOverlapFuture;->this$0:Lorg/mapsforge/map/layer/hills/HgtCache;

    invoke-direct {p0}, Lorg/mapsforge/map/layer/hills/LazyFuture;-><init>()V

    .line 230
    iput-object p2, p0, Lorg/mapsforge/map/layer/hills/HgtCache$MergeOverlapFuture;->hgtFileInfo:Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;

    .line 231
    iput-object p3, p0, Lorg/mapsforge/map/layer/hills/HgtCache$MergeOverlapFuture;->loadFuture:Lorg/mapsforge/map/layer/hills/HgtCache$LoadUnmergedFuture;

    .line 232
    return-void
.end method

.method private mergePaddingOnBitmap(Lorg/mapsforge/core/graphics/HillshadingBitmap;Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;Lorg/mapsforge/core/graphics/HillshadingBitmap$Border;)V
    .locals 4
    .param p1, "fresh"    # Lorg/mapsforge/core/graphics/HillshadingBitmap;
    .param p2, "neighbor"    # Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;
    .param p3, "border"    # Lorg/mapsforge/core/graphics/HillshadingBitmap$Border;

    .line 250
    invoke-interface {p1}, Lorg/mapsforge/core/graphics/HillshadingBitmap;->getPadding()I

    move-result v0

    .line 252
    .local v0, "padding":I
    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-void

    .line 253
    :cond_0
    if-eqz p2, :cond_1

    .line 254
    invoke-static {p2}, Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;->access$300(Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;)Lorg/mapsforge/map/layer/hills/HgtCache$LoadUnmergedFuture;

    move-result-object v1

    .line 255
    .local v1, "neighborUnmergedFuture":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lorg/mapsforge/core/graphics/HillshadingBitmap;>;"
    if-eqz v1, :cond_1

    .line 257
    :try_start_0
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mapsforge/core/graphics/HillshadingBitmap;

    .line 258
    .local v2, "other":Lorg/mapsforge/core/graphics/HillshadingBitmap;
    iget-object v3, p0, Lorg/mapsforge/map/layer/hills/HgtCache$MergeOverlapFuture;->this$0:Lorg/mapsforge/map/layer/hills/HgtCache;

    invoke-static {v3}, Lorg/mapsforge/map/layer/hills/HgtCache;->access$100(Lorg/mapsforge/map/layer/hills/HgtCache;)Lorg/mapsforge/core/graphics/GraphicFactory;

    move-result-object v3

    invoke-interface {v3}, Lorg/mapsforge/core/graphics/GraphicFactory;->createCanvas()Lorg/mapsforge/core/graphics/Canvas;

    move-result-object v3

    .line 260
    .local v3, "copyCanvas":Lorg/mapsforge/core/graphics/Canvas;
    invoke-static {p1, v2, p3, v0, v3}, Lorg/mapsforge/map/layer/hills/HgtCache;->mergeSameSized(Lorg/mapsforge/core/graphics/HillshadingBitmap;Lorg/mapsforge/core/graphics/HillshadingBitmap;Lorg/mapsforge/core/graphics/HillshadingBitmap$Border;ILorg/mapsforge/core/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    .end local v2    # "other":Lorg/mapsforge/core/graphics/HillshadingBitmap;
    .end local v3    # "copyCanvas":Lorg/mapsforge/core/graphics/Canvas;
    goto :goto_1

    .line 262
    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    .line 263
    .local v2, "e":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 267
    .end local v1    # "neighborUnmergedFuture":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lorg/mapsforge/core/graphics/HillshadingBitmap;>;"
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public bridge synthetic calculate()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 224
    invoke-virtual {p0}, Lorg/mapsforge/map/layer/hills/HgtCache$MergeOverlapFuture;->calculate()Lorg/mapsforge/core/graphics/HillshadingBitmap;

    move-result-object v0

    return-object v0
.end method

.method public calculate()Lorg/mapsforge/core/graphics/HillshadingBitmap;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 239
    iget-object v0, p0, Lorg/mapsforge/map/layer/hills/HgtCache$MergeOverlapFuture;->loadFuture:Lorg/mapsforge/map/layer/hills/HgtCache$LoadUnmergedFuture;

    invoke-virtual {v0}, Lorg/mapsforge/map/layer/hills/HgtCache$LoadUnmergedFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mapsforge/core/graphics/HillshadingBitmap;

    .line 241
    .local v0, "monoBitmap":Lorg/mapsforge/core/graphics/HillshadingBitmap;
    invoke-static {}, Lorg/mapsforge/core/graphics/HillshadingBitmap$Border;->values()[Lorg/mapsforge/core/graphics/HillshadingBitmap$Border;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 242
    .local v4, "border":Lorg/mapsforge/core/graphics/HillshadingBitmap$Border;
    iget-object v5, p0, Lorg/mapsforge/map/layer/hills/HgtCache$MergeOverlapFuture;->hgtFileInfo:Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;

    invoke-static {v5, v4}, Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;->access$200(Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;Lorg/mapsforge/core/graphics/HillshadingBitmap$Border;)Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;

    move-result-object v5

    .line 243
    .local v5, "neighbor":Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;
    invoke-direct {p0, v0, v5, v4}, Lorg/mapsforge/map/layer/hills/HgtCache$MergeOverlapFuture;->mergePaddingOnBitmap(Lorg/mapsforge/core/graphics/HillshadingBitmap;Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;Lorg/mapsforge/core/graphics/HillshadingBitmap$Border;)V

    .line 241
    .end local v4    # "border":Lorg/mapsforge/core/graphics/HillshadingBitmap$Border;
    .end local v5    # "neighbor":Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 246
    :cond_0
    return-object v0
.end method
