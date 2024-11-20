.class public Lorg/osmdroid/tileprovider/modules/MapTileFilesystemProvider$TileLoader;
.super Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$TileLoader;
.source "MapTileFilesystemProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/tileprovider/modules/MapTileFilesystemProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "TileLoader"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/osmdroid/tileprovider/modules/MapTileFilesystemProvider;


# direct methods
.method protected constructor <init>(Lorg/osmdroid/tileprovider/modules/MapTileFilesystemProvider;)V
    .locals 0
    .param p1, "this$0"    # Lorg/osmdroid/tileprovider/modules/MapTileFilesystemProvider;

    .line 122
    iput-object p1, p0, Lorg/osmdroid/tileprovider/modules/MapTileFilesystemProvider$TileLoader;->this$0:Lorg/osmdroid/tileprovider/modules/MapTileFilesystemProvider;

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

    .line 127
    const-string v0, "OsmDroid"

    iget-object v1, p0, Lorg/osmdroid/tileprovider/modules/MapTileFilesystemProvider$TileLoader;->this$0:Lorg/osmdroid/tileprovider/modules/MapTileFilesystemProvider;

    invoke-static {v1}, Lorg/osmdroid/tileprovider/modules/MapTileFilesystemProvider;->access$000(Lorg/osmdroid/tileprovider/modules/MapTileFilesystemProvider;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    .line 128
    .local v1, "tileSource":Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 129
    return-object v2

    .line 133
    :cond_0
    :try_start_0
    iget-object v3, p0, Lorg/osmdroid/tileprovider/modules/MapTileFilesystemProvider$TileLoader;->this$0:Lorg/osmdroid/tileprovider/modules/MapTileFilesystemProvider;

    invoke-static {v3}, Lorg/osmdroid/tileprovider/modules/MapTileFilesystemProvider;->access$100(Lorg/osmdroid/tileprovider/modules/MapTileFilesystemProvider;)Lorg/osmdroid/tileprovider/modules/TileWriter;

    move-result-object v3

    invoke-virtual {v3, v1, p1, p2}, Lorg/osmdroid/tileprovider/modules/TileWriter;->loadTile(Lorg/osmdroid/tileprovider/tilesource/ITileSource;J)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 134
    .local v3, "result":Landroid/graphics/drawable/Drawable;
    if-nez v3, :cond_1

    .line 135
    sget v4, Lorg/osmdroid/tileprovider/util/Counters;->fileCacheMiss:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lorg/osmdroid/tileprovider/util/Counters;->fileCacheMiss:I

    goto :goto_0

    .line 137
    :cond_1
    sget v4, Lorg/osmdroid/tileprovider/util/Counters;->fileCacheHit:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lorg/osmdroid/tileprovider/util/Counters;->fileCacheHit:I
    :try_end_0
    .catch Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase$LowMemoryException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    :goto_0
    return-object v3

    .line 145
    .end local v3    # "result":Landroid/graphics/drawable/Drawable;
    :catchall_0
    move-exception v3

    .line 146
    .local v3, "e":Ljava/lang/Throwable;
    const-string v4, "Error loading tile"

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 147
    return-object v2

    .line 140
    .end local v3    # "e":Ljava/lang/Throwable;
    :catch_0
    move-exception v2

    .line 142
    .local v2, "e":Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase$LowMemoryException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LowMemoryException downloading MapTile: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1, p2}, Lorg/osmdroid/util/MapTileIndex;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    sget v0, Lorg/osmdroid/tileprovider/util/Counters;->fileCacheOOM:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lorg/osmdroid/tileprovider/util/Counters;->fileCacheOOM:I

    .line 144
    new-instance v0, Lorg/osmdroid/tileprovider/modules/CantContinueException;

    invoke-direct {v0, v2}, Lorg/osmdroid/tileprovider/modules/CantContinueException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
