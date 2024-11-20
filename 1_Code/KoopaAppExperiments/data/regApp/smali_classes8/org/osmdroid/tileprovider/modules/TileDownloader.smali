.class public Lorg/osmdroid/tileprovider/modules/TileDownloader;
.super Ljava/lang/Object;
.source "TileDownloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/osmdroid/tileprovider/modules/TileDownloader$CompatibilitySocketFactory;
    }
.end annotation


# instance fields
.field private compatibilitySocketFactorySet:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public computeExpirationTime(Ljava/lang/String;Ljava/lang/String;J)J
    .locals 8
    .param p1, "pHttpExpiresHeader"    # Ljava/lang/String;
    .param p2, "pHttpCacheControlHeader"    # Ljava/lang/String;
    .param p3, "pNow"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 265
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/osmdroid/config/IConfigurationProvider;->getExpirationOverrideDuration()Ljava/lang/Long;

    move-result-object v0

    .line 266
    .local v0, "override":Ljava/lang/Long;
    if-eqz v0, :cond_0

    .line 267
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    add-long/2addr v1, p3

    return-wide v1

    .line 270
    :cond_0
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v1

    invoke-interface {v1}, Lorg/osmdroid/config/IConfigurationProvider;->getExpirationExtendedDuration()J

    move-result-wide v1

    .line 271
    .local v1, "extension":J
    invoke-virtual {p0, p2}, Lorg/osmdroid/tileprovider/modules/TileDownloader;->getHttpCacheControlDuration(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    .line 272
    .local v3, "cacheControlDuration":Ljava/lang/Long;
    if-eqz v3, :cond_1

    .line 273
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    add-long/2addr v4, p3

    add-long/2addr v4, v1

    return-wide v4

    .line 276
    :cond_1
    invoke-virtual {p0, p1}, Lorg/osmdroid/tileprovider/modules/TileDownloader;->getHttpExpiresTime(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    .line 277
    .local v4, "httpExpiresTime":Ljava/lang/Long;
    if-eqz v4, :cond_2

    .line 278
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    add-long/2addr v5, v1

    return-wide v5

    .line 281
    :cond_2
    const-wide/32 v5, 0x240c8400

    add-long/2addr v5, p3

    add-long/2addr v5, v1

    return-wide v5
.end method

.method public downloadTile(JILjava/lang/String;Lorg/osmdroid/tileprovider/modules/IFilesystemCache;Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;)Landroid/graphics/drawable/Drawable;
    .locals 27
    .param p1, "pMapTileIndex"    # J
    .param p3, "redirectCount"    # I
    .param p4, "targetUrl"    # Ljava/lang/String;
    .param p5, "pFilesystemCache"    # Lorg/osmdroid/tileprovider/modules/IFilesystemCache;
    .param p6, "pTileSource"    # Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/osmdroid/tileprovider/modules/CantContinueException;
        }
    .end annotation

    .line 59
    move/from16 v1, p3

    const-string v2, "https://"

    const-string v3, " : "

    const/4 v4, 0x3

    const/4 v5, 0x0

    if-le v1, v4, :cond_0

    .line 60
    return-object v5

    .line 63
    :cond_0
    const/4 v4, 0x0

    .line 64
    .local v4, "userAgent":Ljava/lang/String;
    invoke-virtual/range {p6 .. p6}, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;->getTileSourcePolicy()Lorg/osmdroid/tileprovider/tilesource/TileSourcePolicy;

    move-result-object v6

    invoke-virtual {v6}, Lorg/osmdroid/tileprovider/tilesource/TileSourcePolicy;->normalizesUserAgent()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 65
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v6

    invoke-interface {v6}, Lorg/osmdroid/config/IConfigurationProvider;->getNormalizedUserAgent()Ljava/lang/String;

    move-result-object v4

    .line 67
    :cond_1
    if-nez v4, :cond_2

    .line 68
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v6

    invoke-interface {v6}, Lorg/osmdroid/config/IConfigurationProvider;->getUserAgentValue()Ljava/lang/String;

    move-result-object v4

    .line 70
    :cond_2
    invoke-virtual/range {p6 .. p6}, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;->getTileSourcePolicy()Lorg/osmdroid/tileprovider/tilesource/TileSourcePolicy;

    move-result-object v6

    invoke-virtual {v6, v4}, Lorg/osmdroid/tileprovider/tilesource/TileSourcePolicy;->acceptsUserAgent(Ljava/lang/String;)Z

    move-result v6

    const-string v7, "OsmDroid"

    if-nez v6, :cond_3

    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Please configure a relevant user agent; current value is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    return-object v5

    .line 74
    :cond_3
    const/4 v6, 0x0

    .line 75
    .local v6, "in":Ljava/io/InputStream;
    const/4 v8, 0x0

    .line 76
    .local v8, "out":Ljava/io/OutputStream;
    const/4 v9, 0x0

    .line 77
    .local v9, "c":Ljava/net/HttpURLConnection;
    const/4 v10, 0x0

    .line 78
    .local v10, "byteStream":Ljava/io/ByteArrayInputStream;
    const/4 v11, 0x0

    .line 80
    .local v11, "dataStream":Ljava/io/ByteArrayOutputStream;
    move-object/from16 v12, p4

    .line 82
    .local v12, "tileURLString":Ljava/lang/String;
    const/4 v13, 0x1

    :try_start_0
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v14

    invoke-interface {v14}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugMode()Z

    move-result v14
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_18
    .catch Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase$LowMemoryException; {:try_start_0 .. :try_end_0} :catch_17
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_16
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_15
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-eqz v14, :cond_4

    .line 83
    :try_start_1
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Downloading Maptile from url: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v7, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase$LowMemoryException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 195
    .end local v12    # "tileURLString":Ljava/lang/String;
    :catchall_0
    move-exception v0

    move-object/from16 v14, p6

    move-object v2, v0

    move-object/from16 v16, v4

    goto/16 :goto_12

    .line 192
    :catch_0
    move-exception v0

    move-object/from16 v14, p6

    move-object v2, v0

    move-object/from16 v16, v4

    goto/16 :goto_15

    .line 189
    :catch_1
    move-exception v0

    move-object/from16 v14, p6

    move-object v2, v0

    move-object/from16 v16, v4

    goto/16 :goto_17

    .line 184
    :catch_2
    move-exception v0

    move-object/from16 v14, p6

    move-object v2, v0

    move-object/from16 v16, v4

    goto/16 :goto_19

    .line 181
    :catch_3
    move-exception v0

    move-object/from16 v14, p6

    move-object v2, v0

    move-object/from16 v16, v4

    goto/16 :goto_1b

    .line 86
    .restart local v12    # "tileURLString":Ljava/lang/String;
    :cond_4
    :goto_0
    :try_start_2
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_18
    .catch Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase$LowMemoryException; {:try_start_2 .. :try_end_2} :catch_17
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_16
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_15
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    if-eqz v14, :cond_5

    .line 87
    nop

    .line 199
    invoke-static {v6}, Lorg/osmdroid/tileprovider/util/StreamUtils;->closeStream(Ljava/io/Closeable;)V

    .line 200
    invoke-static {v8}, Lorg/osmdroid/tileprovider/util/StreamUtils;->closeStream(Ljava/io/Closeable;)V

    .line 201
    invoke-static {v10}, Lorg/osmdroid/tileprovider/util/StreamUtils;->closeStream(Ljava/io/Closeable;)V

    .line 202
    invoke-static {v11}, Lorg/osmdroid/tileprovider/util/StreamUtils;->closeStream(Ljava/io/Closeable;)V

    .line 204
    :try_start_3
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 206
    goto :goto_1

    .line 205
    :catch_4
    move-exception v0

    .line 87
    :goto_1
    return-object v5

    .line 94
    :cond_5
    nop

    .line 101
    :try_start_4
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v14

    invoke-interface {v14}, Lorg/osmdroid/config/IConfigurationProvider;->getHttpProxy()Ljava/net/Proxy;

    move-result-object v14
    :try_end_4
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_18
    .catch Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase$LowMemoryException; {:try_start_4 .. :try_end_4} :catch_17
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_16
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_15
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    if-eqz v14, :cond_6

    .line 102
    :try_start_5
    new-instance v14, Ljava/net/URL;

    invoke-direct {v14, v12}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v15

    invoke-interface {v15}, Lorg/osmdroid/config/IConfigurationProvider;->getHttpProxy()Ljava/net/Proxy;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v14

    check-cast v14, Ljava/net/HttpURLConnection;
    :try_end_5
    .catch Ljava/net/UnknownHostException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase$LowMemoryException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v9, v14

    goto :goto_2

    .line 104
    :cond_6
    :try_start_6
    new-instance v14, Ljava/net/URL;

    invoke-direct {v14, v12}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v14

    check-cast v14, Ljava/net/HttpURLConnection;

    move-object v9, v14

    .line 106
    :goto_2
    invoke-virtual {v9, v13}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 107
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v14

    invoke-interface {v14}, Lorg/osmdroid/config/IConfigurationProvider;->getUserAgentHttpHeader()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v14

    invoke-interface {v14}, Lorg/osmdroid/config/IConfigurationProvider;->getAdditionalHttpRequestProperties()Ljava/util/Map;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15
    :try_end_6
    .catch Ljava/net/UnknownHostException; {:try_start_6 .. :try_end_6} :catch_18
    .catch Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase$LowMemoryException; {:try_start_6 .. :try_end_6} :catch_17
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_16
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_15
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    if-eqz v15, :cond_7

    :try_start_7
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    .line 109
    .local v15, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v5, v16

    check-cast v5, Ljava/lang/String;

    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v13, v16

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v9, v5, v13}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/net/UnknownHostException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase$LowMemoryException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 110
    .end local v15    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x0

    const/4 v13, 0x1

    goto :goto_3

    .line 111
    :cond_7
    :try_start_8
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->connect()V

    .line 114
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5
    :try_end_8
    .catch Ljava/net/UnknownHostException; {:try_start_8 .. :try_end_8} :catch_18
    .catch Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase$LowMemoryException; {:try_start_8 .. :try_end_8} :catch_17
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_16
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_15
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    const/16 v13, 0xc8

    if-eq v5, v13, :cond_f

    .line 115
    :try_start_9
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5
    :try_end_9
    .catch Ljava/net/UnknownHostException; {:try_start_9 .. :try_end_9} :catch_a
    .catch Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase$LowMemoryException; {:try_start_9 .. :try_end_9} :catch_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_8
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    const-string v13, " HTTP response: "

    sparse-switch v5, :sswitch_data_0

    move-object/from16 v16, v4

    .end local v4    # "userAgent":Ljava/lang/String;
    .local v16, "userAgent":Ljava/lang/String;
    goto/16 :goto_8

    .line 120
    .end local v16    # "userAgent":Ljava/lang/String;
    .restart local v4    # "userAgent":Ljava/lang/String;
    :sswitch_0
    :try_start_a
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v5

    invoke-interface {v5}, Lorg/osmdroid/config/IConfigurationProvider;->isMapTileDownloaderFollowRedirects()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 122
    const-string v5, "Location"

    invoke-virtual {v9, v5}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 123
    .local v5, "redirectUrl":Ljava/lang/String;
    if-eqz v5, :cond_c

    .line 124
    const-string v14, "/"

    invoke-virtual {v5, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 126
    new-instance v14, Ljava/net/URL;

    move-object/from16 v15, p4

    invoke-direct {v14, v15}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 127
    .local v14, "old":Ljava/net/URL;
    invoke-virtual {v14}, Ljava/net/URL;->getPort()I

    move-result v16
    :try_end_a
    .catch Ljava/net/UnknownHostException; {:try_start_a .. :try_end_a} :catch_a
    .catch Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase$LowMemoryException; {:try_start_a .. :try_end_a} :catch_9
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_8
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move/from16 v17, v16

    .line 128
    .local v17, "port":I
    move-object/from16 v16, v4

    .end local v4    # "userAgent":Ljava/lang/String;
    .restart local v16    # "userAgent":Ljava/lang/String;
    :try_start_b
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    .line 129
    .local v4, "secure":Z
    move-object/from16 v18, v2

    const/4 v2, -0x1

    move/from16 v15, v17

    .end local v17    # "port":I
    .local v15, "port":I
    if-ne v15, v2, :cond_9

    .line 130
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    move/from16 v17, v15

    .end local v15    # "port":I
    .restart local v17    # "port":I
    const-string v15, "http://"

    invoke-virtual {v2, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 131
    const/16 v17, 0x50

    move/from16 v2, v17

    goto :goto_4

    .line 133
    :cond_8
    const/16 v17, 0x1bb

    move/from16 v2, v17

    goto :goto_4

    .line 129
    .end local v17    # "port":I
    .restart local v15    # "port":I
    :cond_9
    move/from16 v17, v15

    .end local v15    # "port":I
    .restart local v17    # "port":I
    move/from16 v2, v17

    .line 136
    .end local v17    # "port":I
    .local v2, "port":I
    :goto_4
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v4, :cond_a

    move-object/from16 v26, v18

    move/from16 v18, v4

    move-object/from16 v4, v26

    goto :goto_5

    :cond_a
    const-string v17, "http"

    move/from16 v18, v4

    move-object/from16 v4, v17

    .end local v4    # "secure":Z
    .local v18, "secure":Z
    :goto_5
    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v14}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v15, ":"

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    goto :goto_6

    .line 124
    .end local v2    # "port":I
    .end local v14    # "old":Ljava/net/URL;
    .end local v16    # "userAgent":Ljava/lang/String;
    .end local v18    # "secure":Z
    .local v4, "userAgent":Ljava/lang/String;
    :cond_b
    move-object/from16 v16, v4

    .line 138
    .end local v4    # "userAgent":Ljava/lang/String;
    .restart local v16    # "userAgent":Ljava/lang/String;
    :goto_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Http redirect for MapTile: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {p1 .. p2}, Lorg/osmdroid/util/MapTileIndex;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " to url "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    add-int/lit8 v22, v1, 0x1

    move-object/from16 v19, p0

    move-wide/from16 v20, p1

    move-object/from16 v23, v5

    move-object/from16 v24, p5

    move-object/from16 v25, p6

    invoke-virtual/range {v19 .. v25}, Lorg/osmdroid/tileprovider/modules/TileDownloader;->downloadTile(JILjava/lang/String;Lorg/osmdroid/tileprovider/modules/IFilesystemCache;Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;)Landroid/graphics/drawable/Drawable;

    move-result-object v2
    :try_end_b
    .catch Ljava/net/UnknownHostException; {:try_start_b .. :try_end_b} :catch_13
    .catch Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase$LowMemoryException; {:try_start_b .. :try_end_b} :catch_12
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_11
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_10
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 199
    invoke-static {v6}, Lorg/osmdroid/tileprovider/util/StreamUtils;->closeStream(Ljava/io/Closeable;)V

    .line 200
    invoke-static {v8}, Lorg/osmdroid/tileprovider/util/StreamUtils;->closeStream(Ljava/io/Closeable;)V

    .line 201
    invoke-static {v10}, Lorg/osmdroid/tileprovider/util/StreamUtils;->closeStream(Ljava/io/Closeable;)V

    .line 202
    invoke-static {v11}, Lorg/osmdroid/tileprovider/util/StreamUtils;->closeStream(Ljava/io/Closeable;)V

    .line 204
    :try_start_c
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5

    .line 206
    goto :goto_7

    .line 205
    :catch_5
    move-exception v0

    .line 139
    :goto_7
    return-object v2

    .line 123
    .end local v16    # "userAgent":Ljava/lang/String;
    .restart local v4    # "userAgent":Ljava/lang/String;
    :cond_c
    move-object/from16 v16, v4

    .end local v4    # "userAgent":Ljava/lang/String;
    .restart local v16    # "userAgent":Ljava/lang/String;
    goto/16 :goto_a

    .line 120
    .end local v5    # "redirectUrl":Ljava/lang/String;
    .end local v16    # "userAgent":Ljava/lang/String;
    .restart local v4    # "userAgent":Ljava/lang/String;
    :cond_d
    move-object/from16 v16, v4

    .line 144
    .end local v4    # "userAgent":Ljava/lang/String;
    .restart local v16    # "userAgent":Ljava/lang/String;
    :goto_8
    :try_start_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Problem downloading MapTile: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {p1 .. p2}, Lorg/osmdroid/util/MapTileIndex;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v2

    invoke-interface {v2}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugMapTileDownloader()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 146
    invoke-static {v7, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_e
    sget v2, Lorg/osmdroid/tileprovider/util/Counters;->tileDownloadErrors:I

    const/4 v4, 0x1

    add-int/2addr v2, v4

    sput v2, Lorg/osmdroid/tileprovider/util/Counters;->tileDownloadErrors:I

    .line 149
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v2
    :try_end_d
    .catch Ljava/net/UnknownHostException; {:try_start_d .. :try_end_d} :catch_13
    .catch Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase$LowMemoryException; {:try_start_d .. :try_end_d} :catch_12
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_11
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_10
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 150
    .end local v6    # "in":Ljava/io/InputStream;
    .local v2, "in":Ljava/io/InputStream;
    nop

    .line 199
    invoke-static {v2}, Lorg/osmdroid/tileprovider/util/StreamUtils;->closeStream(Ljava/io/Closeable;)V

    .line 200
    invoke-static {v8}, Lorg/osmdroid/tileprovider/util/StreamUtils;->closeStream(Ljava/io/Closeable;)V

    .line 201
    invoke-static {v10}, Lorg/osmdroid/tileprovider/util/StreamUtils;->closeStream(Ljava/io/Closeable;)V

    .line 202
    invoke-static {v11}, Lorg/osmdroid/tileprovider/util/StreamUtils;->closeStream(Ljava/io/Closeable;)V

    .line 204
    :try_start_e
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6

    .line 206
    goto :goto_9

    .line 205
    :catch_6
    move-exception v0

    .line 150
    :goto_9
    const/4 v3, 0x0

    return-object v3

    .line 195
    .end local v2    # "in":Ljava/io/InputStream;
    .end local v12    # "tileURLString":Ljava/lang/String;
    .end local v16    # "userAgent":Ljava/lang/String;
    .restart local v4    # "userAgent":Ljava/lang/String;
    .restart local v6    # "in":Ljava/io/InputStream;
    :catchall_1
    move-exception v0

    move-object/from16 v16, v4

    move-object/from16 v14, p6

    goto/16 :goto_11

    .line 192
    :catch_7
    move-exception v0

    move-object/from16 v16, v4

    move-object/from16 v14, p6

    goto/16 :goto_14

    .line 189
    :catch_8
    move-exception v0

    move-object/from16 v16, v4

    move-object/from16 v14, p6

    goto/16 :goto_16

    .line 184
    :catch_9
    move-exception v0

    move-object/from16 v16, v4

    move-object/from16 v14, p6

    goto/16 :goto_18

    .line 181
    :catch_a
    move-exception v0

    move-object/from16 v16, v4

    move-object/from16 v14, p6

    goto/16 :goto_1a

    .line 114
    .restart local v12    # "tileURLString":Ljava/lang/String;
    :cond_f
    move-object/from16 v16, v4

    .line 155
    .end local v4    # "userAgent":Ljava/lang/String;
    .restart local v16    # "userAgent":Ljava/lang/String;
    :goto_a
    :try_start_f
    const-string v2, "Content-Type"

    invoke-virtual {v9, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 156
    .local v2, "mime":Ljava/lang/String;
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v4

    invoke-interface {v4}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugMapTileDownloader()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 157
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " success, mime is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_10
    if-eqz v2, :cond_11

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "image"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_11

    .line 160
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " success, however the mime type does not appear to be an image "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_11
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    move-object v6, v4

    .line 165
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v11, v4

    .line 166
    new-instance v4, Ljava/io/BufferedOutputStream;

    const/16 v5, 0x2000

    invoke-direct {v4, v11, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    move-object v8, v4

    .line 167
    invoke-virtual/range {p6 .. p6}, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;->getTileSourcePolicy()Lorg/osmdroid/tileprovider/tilesource/TileSourcePolicy;

    move-result-object v4

    .line 168
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 167
    invoke-virtual {v4, v9, v13, v14}, Lorg/osmdroid/tileprovider/tilesource/TileSourcePolicy;->computeExpirationTime(Ljava/net/HttpURLConnection;J)J

    move-result-wide v4

    .line 169
    .local v4, "expirationTime":J
    invoke-static {v6, v8}, Lorg/osmdroid/tileprovider/util/StreamUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 170
    invoke-virtual {v8}, Ljava/io/OutputStream;->flush()V

    .line 171
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v13

    .line 172
    .local v13, "data":[B
    new-instance v14, Ljava/io/ByteArrayInputStream;

    invoke-direct {v14, v13}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v10, v14

    .line 176
    if-eqz p5, :cond_12

    .line 177
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v17, p5

    move-object/from16 v18, p6

    move-wide/from16 v19, p1

    move-object/from16 v21, v10

    invoke-interface/range {v17 .. v22}, Lorg/osmdroid/tileprovider/modules/IFilesystemCache;->saveFile(Lorg/osmdroid/tileprovider/tilesource/ITileSource;JLjava/io/InputStream;Ljava/lang/Long;)Z

    .line 178
    invoke-virtual {v10}, Ljava/io/ByteArrayInputStream;->reset()V
    :try_end_f
    .catch Ljava/net/UnknownHostException; {:try_start_f .. :try_end_f} :catch_13
    .catch Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase$LowMemoryException; {:try_start_f .. :try_end_f} :catch_12
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_f} :catch_11
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_10
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 180
    :cond_12
    move-object/from16 v14, p6

    :try_start_10
    invoke-virtual {v14, v10}, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;->getDrawable(Ljava/io/InputStream;)Landroid/graphics/drawable/Drawable;

    move-result-object v3
    :try_end_10
    .catch Ljava/net/UnknownHostException; {:try_start_10 .. :try_end_10} :catch_f
    .catch Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase$LowMemoryException; {:try_start_10 .. :try_end_10} :catch_e
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_10} :catch_d
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_c
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 199
    invoke-static {v6}, Lorg/osmdroid/tileprovider/util/StreamUtils;->closeStream(Ljava/io/Closeable;)V

    .line 200
    invoke-static {v8}, Lorg/osmdroid/tileprovider/util/StreamUtils;->closeStream(Ljava/io/Closeable;)V

    .line 201
    invoke-static {v10}, Lorg/osmdroid/tileprovider/util/StreamUtils;->closeStream(Ljava/io/Closeable;)V

    .line 202
    invoke-static {v11}, Lorg/osmdroid/tileprovider/util/StreamUtils;->closeStream(Ljava/io/Closeable;)V

    .line 204
    :try_start_11
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_b

    .line 206
    goto :goto_b

    .line 205
    :catch_b
    move-exception v0

    .line 180
    :goto_b
    return-object v3

    .line 195
    .end local v2    # "mime":Ljava/lang/String;
    .end local v4    # "expirationTime":J
    .end local v12    # "tileURLString":Ljava/lang/String;
    .end local v13    # "data":[B
    :catchall_2
    move-exception v0

    goto :goto_c

    .line 192
    :catch_c
    move-exception v0

    goto :goto_d

    .line 189
    :catch_d
    move-exception v0

    goto :goto_e

    .line 184
    :catch_e
    move-exception v0

    goto :goto_f

    .line 181
    :catch_f
    move-exception v0

    goto :goto_10

    .line 195
    :catchall_3
    move-exception v0

    move-object/from16 v14, p6

    :goto_c
    move-object v2, v0

    goto :goto_12

    .line 192
    :catch_10
    move-exception v0

    move-object/from16 v14, p6

    :goto_d
    move-object v2, v0

    goto :goto_15

    .line 189
    :catch_11
    move-exception v0

    move-object/from16 v14, p6

    :goto_e
    move-object v2, v0

    goto/16 :goto_17

    .line 184
    :catch_12
    move-exception v0

    move-object/from16 v14, p6

    :goto_f
    move-object v2, v0

    goto/16 :goto_19

    .line 181
    :catch_13
    move-exception v0

    move-object/from16 v14, p6

    :goto_10
    move-object v2, v0

    goto/16 :goto_1b

    .line 195
    .end local v16    # "userAgent":Ljava/lang/String;
    .local v4, "userAgent":Ljava/lang/String;
    :catchall_4
    move-exception v0

    move-object/from16 v14, p6

    move-object/from16 v16, v4

    :goto_11
    move-object v2, v0

    .line 196
    .end local v4    # "userAgent":Ljava/lang/String;
    .local v2, "e":Ljava/lang/Throwable;
    .restart local v16    # "userAgent":Ljava/lang/String;
    :goto_12
    :try_start_12
    sget v3, Lorg/osmdroid/tileprovider/util/Counters;->tileDownloadErrors:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    sput v3, Lorg/osmdroid/tileprovider/util/Counters;->tileDownloadErrors:I

    .line 197
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error downloading MapTile: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p1 .. p2}, Lorg/osmdroid/util/MapTileIndex;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    .line 199
    nop

    .end local v2    # "e":Ljava/lang/Throwable;
    invoke-static {v6}, Lorg/osmdroid/tileprovider/util/StreamUtils;->closeStream(Ljava/io/Closeable;)V

    .line 200
    invoke-static {v8}, Lorg/osmdroid/tileprovider/util/StreamUtils;->closeStream(Ljava/io/Closeable;)V

    .line 201
    invoke-static {v10}, Lorg/osmdroid/tileprovider/util/StreamUtils;->closeStream(Ljava/io/Closeable;)V

    .line 202
    invoke-static {v11}, Lorg/osmdroid/tileprovider/util/StreamUtils;->closeStream(Ljava/io/Closeable;)V

    .line 204
    :try_start_13
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_14

    .line 206
    :goto_13
    goto/16 :goto_1c

    .line 205
    :catch_14
    move-exception v0

    .line 207
    goto/16 :goto_1c

    .line 192
    .end local v16    # "userAgent":Ljava/lang/String;
    .restart local v4    # "userAgent":Ljava/lang/String;
    :catch_15
    move-exception v0

    move-object/from16 v14, p6

    move-object/from16 v16, v4

    :goto_14
    move-object v2, v0

    .line 193
    .end local v4    # "userAgent":Ljava/lang/String;
    .local v2, "e":Ljava/io/IOException;
    .restart local v16    # "userAgent":Ljava/lang/String;
    :goto_15
    :try_start_14
    sget v4, Lorg/osmdroid/tileprovider/util/Counters;->tileDownloadErrors:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    sput v4, Lorg/osmdroid/tileprovider/util/Counters;->tileDownloadErrors:I

    .line 194
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IOException downloading MapTile: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p1 .. p2}, Lorg/osmdroid/util/MapTileIndex;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    .line 199
    nop

    .end local v2    # "e":Ljava/io/IOException;
    invoke-static {v6}, Lorg/osmdroid/tileprovider/util/StreamUtils;->closeStream(Ljava/io/Closeable;)V

    .line 200
    invoke-static {v8}, Lorg/osmdroid/tileprovider/util/StreamUtils;->closeStream(Ljava/io/Closeable;)V

    .line 201
    invoke-static {v10}, Lorg/osmdroid/tileprovider/util/StreamUtils;->closeStream(Ljava/io/Closeable;)V

    .line 202
    invoke-static {v11}, Lorg/osmdroid/tileprovider/util/StreamUtils;->closeStream(Ljava/io/Closeable;)V

    .line 204
    :try_start_15
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_14

    goto :goto_13

    .line 189
    .end local v16    # "userAgent":Ljava/lang/String;
    .restart local v4    # "userAgent":Ljava/lang/String;
    :catch_16
    move-exception v0

    move-object/from16 v14, p6

    move-object/from16 v16, v4

    :goto_16
    move-object v2, v0

    .line 190
    .end local v4    # "userAgent":Ljava/lang/String;
    .local v2, "e":Ljava/io/FileNotFoundException;
    .restart local v16    # "userAgent":Ljava/lang/String;
    :goto_17
    :try_start_16
    sget v4, Lorg/osmdroid/tileprovider/util/Counters;->tileDownloadErrors:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    sput v4, Lorg/osmdroid/tileprovider/util/Counters;->tileDownloadErrors:I

    .line 191
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Tile not found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p1 .. p2}, Lorg/osmdroid/util/MapTileIndex;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_5

    .line 199
    nop

    .end local v2    # "e":Ljava/io/FileNotFoundException;
    invoke-static {v6}, Lorg/osmdroid/tileprovider/util/StreamUtils;->closeStream(Ljava/io/Closeable;)V

    .line 200
    invoke-static {v8}, Lorg/osmdroid/tileprovider/util/StreamUtils;->closeStream(Ljava/io/Closeable;)V

    .line 201
    invoke-static {v10}, Lorg/osmdroid/tileprovider/util/StreamUtils;->closeStream(Ljava/io/Closeable;)V

    .line 202
    invoke-static {v11}, Lorg/osmdroid/tileprovider/util/StreamUtils;->closeStream(Ljava/io/Closeable;)V

    .line 204
    :try_start_17
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_14

    goto/16 :goto_13

    .line 184
    .end local v16    # "userAgent":Ljava/lang/String;
    .restart local v4    # "userAgent":Ljava/lang/String;
    :catch_17
    move-exception v0

    move-object/from16 v14, p6

    move-object/from16 v16, v4

    :goto_18
    move-object v2, v0

    .line 186
    .end local v4    # "userAgent":Ljava/lang/String;
    .local v2, "e":Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase$LowMemoryException;
    .restart local v16    # "userAgent":Ljava/lang/String;
    :goto_19
    :try_start_18
    sget v4, Lorg/osmdroid/tileprovider/util/Counters;->countOOM:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    sput v4, Lorg/osmdroid/tileprovider/util/Counters;->countOOM:I

    .line 187
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LowMemoryException downloading MapTile: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p1 .. p2}, Lorg/osmdroid/util/MapTileIndex;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    new-instance v3, Lorg/osmdroid/tileprovider/modules/CantContinueException;

    invoke-direct {v3, v2}, Lorg/osmdroid/tileprovider/modules/CantContinueException;-><init>(Ljava/lang/Throwable;)V

    .end local v6    # "in":Ljava/io/InputStream;
    .end local v8    # "out":Ljava/io/OutputStream;
    .end local v9    # "c":Ljava/net/HttpURLConnection;
    .end local v10    # "byteStream":Ljava/io/ByteArrayInputStream;
    .end local v11    # "dataStream":Ljava/io/ByteArrayOutputStream;
    .end local v16    # "userAgent":Ljava/lang/String;
    .end local p1    # "pMapTileIndex":J
    .end local p3    # "redirectCount":I
    .end local p4    # "targetUrl":Ljava/lang/String;
    .end local p5    # "pFilesystemCache":Lorg/osmdroid/tileprovider/modules/IFilesystemCache;
    .end local p6    # "pTileSource":Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;
    throw v3

    .line 199
    .end local v2    # "e":Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase$LowMemoryException;
    .restart local v6    # "in":Ljava/io/InputStream;
    .restart local v8    # "out":Ljava/io/OutputStream;
    .restart local v9    # "c":Ljava/net/HttpURLConnection;
    .restart local v10    # "byteStream":Ljava/io/ByteArrayInputStream;
    .restart local v11    # "dataStream":Ljava/io/ByteArrayOutputStream;
    .restart local v16    # "userAgent":Ljava/lang/String;
    .restart local p1    # "pMapTileIndex":J
    .restart local p3    # "redirectCount":I
    .restart local p4    # "targetUrl":Ljava/lang/String;
    .restart local p5    # "pFilesystemCache":Lorg/osmdroid/tileprovider/modules/IFilesystemCache;
    .restart local p6    # "pTileSource":Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;
    :catchall_5
    move-exception v0

    move-object v2, v0

    goto :goto_1d

    .line 181
    .end local v16    # "userAgent":Ljava/lang/String;
    .restart local v4    # "userAgent":Ljava/lang/String;
    :catch_18
    move-exception v0

    move-object/from16 v14, p6

    move-object/from16 v16, v4

    :goto_1a
    move-object v2, v0

    .line 182
    .end local v4    # "userAgent":Ljava/lang/String;
    .local v2, "e":Ljava/net/UnknownHostException;
    .restart local v16    # "userAgent":Ljava/lang/String;
    :goto_1b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UnknownHostException downloading MapTile: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p1 .. p2}, Lorg/osmdroid/util/MapTileIndex;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    sget v3, Lorg/osmdroid/tileprovider/util/Counters;->tileDownloadErrors:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    sput v3, Lorg/osmdroid/tileprovider/util/Counters;->tileDownloadErrors:I
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_5

    .line 199
    .end local v2    # "e":Ljava/net/UnknownHostException;
    invoke-static {v6}, Lorg/osmdroid/tileprovider/util/StreamUtils;->closeStream(Ljava/io/Closeable;)V

    .line 200
    invoke-static {v8}, Lorg/osmdroid/tileprovider/util/StreamUtils;->closeStream(Ljava/io/Closeable;)V

    .line 201
    invoke-static {v10}, Lorg/osmdroid/tileprovider/util/StreamUtils;->closeStream(Ljava/io/Closeable;)V

    .line 202
    invoke-static {v11}, Lorg/osmdroid/tileprovider/util/StreamUtils;->closeStream(Ljava/io/Closeable;)V

    .line 204
    :try_start_19
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_14

    goto/16 :goto_13

    .line 209
    :goto_1c
    const/4 v2, 0x0

    return-object v2

    .line 199
    :goto_1d
    invoke-static {v6}, Lorg/osmdroid/tileprovider/util/StreamUtils;->closeStream(Ljava/io/Closeable;)V

    .line 200
    invoke-static {v8}, Lorg/osmdroid/tileprovider/util/StreamUtils;->closeStream(Ljava/io/Closeable;)V

    .line 201
    invoke-static {v10}, Lorg/osmdroid/tileprovider/util/StreamUtils;->closeStream(Ljava/io/Closeable;)V

    .line 202
    invoke-static {v11}, Lorg/osmdroid/tileprovider/util/StreamUtils;->closeStream(Ljava/io/Closeable;)V

    .line 204
    :try_start_1a
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_19

    .line 206
    goto :goto_1e

    .line 205
    :catch_19
    move-exception v0

    .line 207
    :goto_1e
    throw v2

    :sswitch_data_0
    .sparse-switch
        0x12d -> :sswitch_0
        0x12e -> :sswitch_0
        0x133 -> :sswitch_0
        0x134 -> :sswitch_0
    .end sparse-switch
.end method

.method public downloadTile(JLorg/osmdroid/tileprovider/modules/IFilesystemCache;Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p1, "pMapTileIndex"    # J
    .param p3, "pFilesystemCache"    # Lorg/osmdroid/tileprovider/modules/IFilesystemCache;
    .param p4, "pTileSource"    # Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/osmdroid/tileprovider/modules/CantContinueException;
        }
    .end annotation

    .line 48
    const/4 v3, 0x0

    invoke-virtual {p4, p1, p2}, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;->getTileURLString(J)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-wide v1, p1

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lorg/osmdroid/tileprovider/modules/TileDownloader;->downloadTile(JILjava/lang/String;Lorg/osmdroid/tileprovider/modules/IFilesystemCache;Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getHttpCacheControlDuration(Ljava/lang/String;)Ljava/lang/Long;
    .locals 7
    .param p1, "pHttpCacheControlHeader"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 238
    const-string v0, "max-age="

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 240
    :try_start_0
    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 241
    .local v1, "parts":[Ljava/lang/String;
    move-object v2, v0

    .line 242
    .local v2, "maxAge":Ljava/lang/String;
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v1, v4

    .line 243
    .local v5, "part":Ljava/lang/String;
    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 244
    .local v6, "pos":I
    if-nez v6, :cond_0

    .line 245
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 246
    .local v0, "durationString":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 242
    .end local v0    # "durationString":Ljava/lang/String;
    .end local v5    # "part":Ljava/lang/String;
    .end local v6    # "pos":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 253
    .end local v1    # "parts":[Ljava/lang/String;
    .end local v2    # "maxAge":Ljava/lang/String;
    :cond_1
    goto :goto_1

    .line 249
    :catch_0
    move-exception v0

    .line 250
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v1

    invoke-interface {v1}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugMapTileDownloader()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 251
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to parse cache control tag for tile, server returned "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OsmDroid"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 255
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_2
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHttpExpiresTime(Ljava/lang/String;)Ljava/lang/Long;
    .locals 3
    .param p1, "pHttpExpiresHeader"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 219
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 221
    :try_start_0
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/osmdroid/config/IConfigurationProvider;->getHttpHeaderDateTimeFormat()Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 222
    .local v0, "dateExpires":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 223
    .end local v0    # "dateExpires":Ljava/util/Date;
    :catch_0
    move-exception v0

    .line 224
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v1

    invoke-interface {v1}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugMapTileDownloader()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 225
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to parse expiration tag for tile, server returned "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OsmDroid"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 228
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
