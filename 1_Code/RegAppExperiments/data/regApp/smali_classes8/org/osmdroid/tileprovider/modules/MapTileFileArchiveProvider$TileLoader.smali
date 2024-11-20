.class public Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider$TileLoader;
.super Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$TileLoader;
.source "MapTileFileArchiveProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "TileLoader"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider;


# direct methods
.method protected constructor <init>(Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider;)V
    .locals 0
    .param p1, "this$0"    # Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider;

    .line 214
    iput-object p1, p0, Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider$TileLoader;->this$0:Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider;

    invoke-direct {p0, p1}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$TileLoader;-><init>(Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;)V

    return-void
.end method


# virtual methods
.method public loadTile(J)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1, "pMapTileIndex"    # J

    .line 219
    const-string v0, "OsmDroid"

    const/4 v1, 0x0

    .line 220
    .local v1, "returnValue":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider$TileLoader;->this$0:Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider;

    invoke-static {v2}, Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider;->access$000(Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    .line 221
    .local v2, "tileSource":Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    if-nez v2, :cond_0

    .line 222
    const/4 v0, 0x0

    return-object v0

    .line 225
    :cond_0
    const/4 v3, 0x0

    .line 227
    .local v3, "inputStream":Ljava/io/InputStream;
    :try_start_0
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v4

    invoke-interface {v4}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugMode()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 228
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Archives - Tile doesn\'t exist: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1, p2}, Lorg/osmdroid/util/MapTileIndex;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_1
    iget-object v4, p0, Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider$TileLoader;->this$0:Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider;

    invoke-static {v4, p1, p2, v2}, Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider;->access$100(Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider;JLorg/osmdroid/tileprovider/tilesource/ITileSource;)Ljava/io/InputStream;

    move-result-object v4

    move-object v3, v4

    .line 232
    if-eqz v3, :cond_3

    .line 233
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v4

    invoke-interface {v4}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugMode()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 234
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Use tile from archive: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1, p2}, Lorg/osmdroid/util/MapTileIndex;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_2
    invoke-interface {v2, v3}, Lorg/osmdroid/tileprovider/tilesource/ITileSource;->getDrawable(Ljava/io/InputStream;)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    move-object v1, v0

    .line 242
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_3
    if-eqz v3, :cond_4

    .line 243
    :goto_0
    invoke-static {v3}, Lorg/osmdroid/tileprovider/util/StreamUtils;->closeStream(Ljava/io/Closeable;)V

    goto :goto_1

    .line 239
    :catchall_0
    move-exception v4

    .line 240
    .local v4, "e":Ljava/lang/Throwable;
    :try_start_1
    const-string v5, "Error loading tile"

    invoke-static {v0, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 242
    nop

    .end local v4    # "e":Ljava/lang/Throwable;
    if-eqz v3, :cond_4

    .line 243
    goto :goto_0

    .line 247
    :cond_4
    :goto_1
    return-object v1

    .line 242
    :catchall_1
    move-exception v0

    if-eqz v3, :cond_5

    .line 243
    invoke-static {v3}, Lorg/osmdroid/tileprovider/util/StreamUtils;->closeStream(Ljava/io/Closeable;)V

    .line 245
    :cond_5
    throw v0
.end method
