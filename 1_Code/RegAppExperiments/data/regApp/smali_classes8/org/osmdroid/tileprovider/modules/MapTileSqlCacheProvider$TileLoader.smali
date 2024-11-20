.class public Lorg/osmdroid/tileprovider/modules/MapTileSqlCacheProvider$TileLoader;
.super Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$TileLoader;
.source "MapTileSqlCacheProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/tileprovider/modules/MapTileSqlCacheProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "TileLoader"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/osmdroid/tileprovider/modules/MapTileSqlCacheProvider;


# direct methods
.method protected constructor <init>(Lorg/osmdroid/tileprovider/modules/MapTileSqlCacheProvider;)V
    .locals 0
    .param p1, "this$0"    # Lorg/osmdroid/tileprovider/modules/MapTileSqlCacheProvider;

    .line 151
    iput-object p1, p0, Lorg/osmdroid/tileprovider/modules/MapTileSqlCacheProvider$TileLoader;->this$0:Lorg/osmdroid/tileprovider/modules/MapTileSqlCacheProvider;

    invoke-direct {p0, p1}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$TileLoader;-><init>(Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;)V

    return-void
.end method


# virtual methods
.method public loadTile(J)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "pMapTileIndex"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/osmdroid/tileprovider/modules/CantContinueException;
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileSqlCacheProvider$TileLoader;->this$0:Lorg/osmdroid/tileprovider/modules/MapTileSqlCacheProvider;

    invoke-static {v0}, Lorg/osmdroid/tileprovider/modules/MapTileSqlCacheProvider;->access$000(Lorg/osmdroid/tileprovider/modules/MapTileSqlCacheProvider;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    .line 157
    .local v0, "tileSource":Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 158
    return-object v1

    .line 161
    :cond_0
    iget-object v2, p0, Lorg/osmdroid/tileprovider/modules/MapTileSqlCacheProvider$TileLoader;->this$0:Lorg/osmdroid/tileprovider/modules/MapTileSqlCacheProvider;

    invoke-static {v2}, Lorg/osmdroid/tileprovider/modules/MapTileSqlCacheProvider;->access$100(Lorg/osmdroid/tileprovider/modules/MapTileSqlCacheProvider;)Lorg/osmdroid/tileprovider/modules/SqlTileWriter;

    move-result-object v2

    const-string v3, "OsmDroid"

    if-eqz v2, :cond_2

    .line 163
    :try_start_0
    iget-object v2, p0, Lorg/osmdroid/tileprovider/modules/MapTileSqlCacheProvider$TileLoader;->this$0:Lorg/osmdroid/tileprovider/modules/MapTileSqlCacheProvider;

    invoke-static {v2}, Lorg/osmdroid/tileprovider/modules/MapTileSqlCacheProvider;->access$100(Lorg/osmdroid/tileprovider/modules/MapTileSqlCacheProvider;)Lorg/osmdroid/tileprovider/modules/SqlTileWriter;

    move-result-object v2

    invoke-virtual {v2, v0, p1, p2}, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->loadTile(Lorg/osmdroid/tileprovider/tilesource/ITileSource;J)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 164
    .local v2, "result":Landroid/graphics/drawable/Drawable;
    if-nez v2, :cond_1

    .line 165
    sget v4, Lorg/osmdroid/tileprovider/util/Counters;->fileCacheMiss:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lorg/osmdroid/tileprovider/util/Counters;->fileCacheMiss:I

    goto :goto_0

    .line 167
    :cond_1
    sget v4, Lorg/osmdroid/tileprovider/util/Counters;->fileCacheHit:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lorg/osmdroid/tileprovider/util/Counters;->fileCacheHit:I
    :try_end_0
    .catch Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase$LowMemoryException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    :goto_0
    return-object v2

    .line 175
    .end local v2    # "result":Landroid/graphics/drawable/Drawable;
    :catchall_0
    move-exception v2

    .line 176
    .local v2, "e":Ljava/lang/Throwable;
    const-string v4, "Error loading tile"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 177
    return-object v1

    .line 170
    .end local v2    # "e":Ljava/lang/Throwable;
    :catch_0
    move-exception v1

    .line 172
    .local v1, "e":Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase$LowMemoryException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LowMemoryException downloading MapTile: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1, p2}, Lorg/osmdroid/util/MapTileIndex;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    sget v2, Lorg/osmdroid/tileprovider/util/Counters;->fileCacheOOM:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lorg/osmdroid/tileprovider/util/Counters;->fileCacheOOM:I

    .line 174
    new-instance v2, Lorg/osmdroid/tileprovider/modules/CantContinueException;

    invoke-direct {v2, v1}, Lorg/osmdroid/tileprovider/modules/CantContinueException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 180
    .end local v1    # "e":Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase$LowMemoryException;
    :cond_2
    const-string v2, "TileLoader failed to load tile due to mWriter being null (map shutdown?)"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    return-object v1
.end method
