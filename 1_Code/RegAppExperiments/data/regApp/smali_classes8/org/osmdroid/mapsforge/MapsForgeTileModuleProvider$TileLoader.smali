.class Lorg/osmdroid/mapsforge/MapsForgeTileModuleProvider$TileLoader;
.super Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$TileLoader;
.source "MapsForgeTileModuleProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/mapsforge/MapsForgeTileModuleProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TileLoader"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/osmdroid/mapsforge/MapsForgeTileModuleProvider;


# direct methods
.method private constructor <init>(Lorg/osmdroid/mapsforge/MapsForgeTileModuleProvider;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lorg/osmdroid/mapsforge/MapsForgeTileModuleProvider$TileLoader;->this$0:Lorg/osmdroid/mapsforge/MapsForgeTileModuleProvider;

    invoke-direct {p0, p1}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$TileLoader;-><init>(Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/osmdroid/mapsforge/MapsForgeTileModuleProvider;Lorg/osmdroid/mapsforge/MapsForgeTileModuleProvider$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/osmdroid/mapsforge/MapsForgeTileModuleProvider;
    .param p2, "x1"    # Lorg/osmdroid/mapsforge/MapsForgeTileModuleProvider$1;

    .line 88
    invoke-direct {p0, p1}, Lorg/osmdroid/mapsforge/MapsForgeTileModuleProvider$TileLoader;-><init>(Lorg/osmdroid/mapsforge/MapsForgeTileModuleProvider;)V

    return-void
.end method


# virtual methods
.method public loadTile(J)Landroid/graphics/drawable/Drawable;
    .locals 12
    .param p1, "pMapTileIndex"    # J

    .line 93
    const/4 v0, 0x0

    .line 94
    .local v0, "dbgPrefix":Ljava/lang/String;
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v1

    invoke-interface {v1}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugTileProviders()Z

    move-result v1

    const-string v2, "OsmDroid"

    if-eqz v1, :cond_0

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MapsForgeTileModuleProvider.TileLoader.loadTile("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2}, Lorg/osmdroid/util/MapTileIndex;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "): "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "tileSource.renderTile"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_0
    iget-object v1, p0, Lorg/osmdroid/mapsforge/MapsForgeTileModuleProvider$TileLoader;->this$0:Lorg/osmdroid/mapsforge/MapsForgeTileModuleProvider;

    iget-object v1, v1, Lorg/osmdroid/mapsforge/MapsForgeTileModuleProvider;->tileSource:Lorg/osmdroid/mapsforge/MapsForgeTileSource;

    invoke-virtual {v1, p1, p2}, Lorg/osmdroid/mapsforge/MapsForgeTileSource;->renderTile(J)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 99
    .local v1, "image":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_3

    instance-of v3, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_3

    .line 100
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 101
    .local v3, "stream":Ljava/io/ByteArrayOutputStream;
    move-object v4, v1

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v4, v5, v6, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 102
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 104
    .local v4, "bitmapdata":[B
    :try_start_0
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    goto :goto_0

    .line 105
    :catch_0
    move-exception v5

    .line 109
    :goto_0
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v5

    invoke-interface {v5}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugTileProviders()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 110
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "save tile "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " bytes to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/osmdroid/mapsforge/MapsForgeTileModuleProvider$TileLoader;->this$0:Lorg/osmdroid/mapsforge/MapsForgeTileModuleProvider;

    iget-object v6, v6, Lorg/osmdroid/mapsforge/MapsForgeTileModuleProvider;->tileSource:Lorg/osmdroid/mapsforge/MapsForgeTileSource;

    .line 112
    invoke-virtual {v6, p1, p2}, Lorg/osmdroid/mapsforge/MapsForgeTileSource;->getTileRelativeFilenameString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 110
    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_1
    const/4 v5, 0x0

    .line 117
    .local v5, "bais":Ljava/io/ByteArrayInputStream;
    :try_start_1
    new-instance v10, Ljava/io/ByteArrayInputStream;

    invoke-direct {v10, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 118
    .end local v5    # "bais":Ljava/io/ByteArrayInputStream;
    .local v10, "bais":Ljava/io/ByteArrayInputStream;
    :try_start_2
    iget-object v5, p0, Lorg/osmdroid/mapsforge/MapsForgeTileModuleProvider$TileLoader;->this$0:Lorg/osmdroid/mapsforge/MapsForgeTileModuleProvider;

    iget-object v6, v5, Lorg/osmdroid/mapsforge/MapsForgeTileModuleProvider;->tilewriter:Lorg/osmdroid/tileprovider/modules/IFilesystemCache;

    iget-object v5, p0, Lorg/osmdroid/mapsforge/MapsForgeTileModuleProvider$TileLoader;->this$0:Lorg/osmdroid/mapsforge/MapsForgeTileModuleProvider;

    iget-object v7, v5, Lorg/osmdroid/mapsforge/MapsForgeTileModuleProvider;->tileSource:Lorg/osmdroid/mapsforge/MapsForgeTileSource;

    const/4 v11, 0x0

    move-wide v8, p1

    invoke-interface/range {v6 .. v11}, Lorg/osmdroid/tileprovider/modules/IFilesystemCache;->saveFile(Lorg/osmdroid/tileprovider/tilesource/ITileSource;JLjava/io/InputStream;Ljava/lang/Long;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 122
    nop

    .line 124
    :try_start_3
    invoke-virtual {v10}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_2

    .line 122
    :catchall_0
    move-exception v2

    move-object v5, v10

    goto :goto_3

    .line 119
    :catch_1
    move-exception v5

    goto :goto_1

    .line 122
    .end local v10    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v5    # "bais":Ljava/io/ByteArrayInputStream;
    :catchall_1
    move-exception v2

    goto :goto_3

    .line 119
    :catch_2
    move-exception v6

    move-object v10, v5

    move-object v5, v6

    .line 120
    .local v5, "ex":Ljava/lang/Exception;
    .restart local v10    # "bais":Ljava/io/ByteArrayInputStream;
    :goto_1
    :try_start_4
    const-string v6, "forge error storing tile cache"

    invoke-static {v2, v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 122
    nop

    .end local v5    # "ex":Ljava/lang/Exception;
    if-eqz v10, :cond_3

    .line 124
    :try_start_5
    invoke-virtual {v10}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 127
    :goto_2
    goto :goto_5

    .line 125
    :catch_3
    move-exception v2

    goto :goto_2

    .line 122
    .end local v10    # "bais":Ljava/io/ByteArrayInputStream;
    .local v5, "bais":Ljava/io/ByteArrayInputStream;
    :goto_3
    if-eqz v5, :cond_2

    .line 124
    :try_start_6
    invoke-virtual {v5}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 127
    goto :goto_4

    .line 125
    :catch_4
    move-exception v6

    .line 128
    :cond_2
    :goto_4
    throw v2

    .line 131
    .end local v3    # "stream":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "bitmapdata":[B
    .end local v5    # "bais":Ljava/io/ByteArrayInputStream;
    :cond_3
    :goto_5
    return-object v1
.end method
