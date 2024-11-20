.class public Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;
.super Lorg/osmdroid/tileprovider/tilesource/QuadTreeTileSource;
.source "BingMapTileSource.java"

# interfaces
.implements Lorg/osmdroid/tileprovider/tilesource/IStyledTileSource;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/osmdroid/tileprovider/tilesource/QuadTreeTileSource;",
        "Lorg/osmdroid/tileprovider/tilesource/IStyledTileSource<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final BASE_URL_PATTERN:Ljava/lang/String; = "https://dev.virtualearth.net/REST/V1/Imagery/Metadata/%s?mapVersion=v1&output=json&uriScheme=https&key=%s"

.field private static final BING_KEY:Ljava/lang/String; = "BING_KEY"

.field private static final FILENAME_ENDING:Ljava/lang/String; = ".jpeg"

.field public static final IMAGERYSET_AERIAL:Ljava/lang/String; = "Aerial"

.field public static final IMAGERYSET_AERIALWITHLABELS:Ljava/lang/String; = "AerialWithLabels"

.field public static final IMAGERYSET_ROAD:Ljava/lang/String; = "Road"

.field private static mBingMapKey:Ljava/lang/String;


# instance fields
.field private mBaseUrl:Ljava/lang/String;

.field private mImageryData:Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;

.field private mLocale:Ljava/lang/String;

.field private mStyle:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    const-string v0, ""

    sput-object v0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mBingMapKey:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 7
    .param p1, "aLocale"    # Ljava/lang/String;

    .line 84
    const-string v1, "BingMaps"

    const/4 v2, 0x0

    const/16 v3, 0x13

    const/16 v4, 0x100

    const-string v5, ".jpeg"

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/osmdroid/tileprovider/tilesource/QuadTreeTileSource;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;)V

    .line 66
    const-string v0, "Road"

    iput-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mStyle:Ljava/lang/String;

    .line 69
    invoke-static {}, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->getDefaultInstance()Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mImageryData:Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;

    .line 85
    iput-object p1, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mLocale:Ljava/lang/String;

    .line 86
    if-nez p1, :cond_0

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mLocale:Ljava/lang/String;

    .line 89
    :cond_0
    return-void
.end method

.method public static getBingKey()Ljava/lang/String;
    .locals 1

    .line 102
    sget-object v0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mBingMapKey:Ljava/lang/String;

    return-object v0
.end method

.method private getMetaData()Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;
    .locals 12

    .line 228
    const-string v0, "end getMetaData"

    const-string v1, "getMetaData"

    const-string v2, "OsmDroid"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const/4 v1, 0x0

    .line 232
    .local v1, "returnValue":Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;
    const/4 v3, 0x0

    .line 233
    .local v3, "in":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 234
    .local v4, "client":Ljava/net/HttpURLConnection;
    const/4 v5, 0x0

    .line 235
    .local v5, "dataStream":Ljava/io/ByteArrayOutputStream;
    const/4 v6, 0x0

    .line 237
    .local v6, "out":Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v7, Ljava/net/URL;

    const-string v8, "https://dev.virtualearth.net/REST/V1/Imagery/Metadata/%s?mapVersion=v1&output=json&uriScheme=https&key=%s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    iget-object v10, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mStyle:Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v10, v9, v11

    sget-object v10, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mBingMapKey:Ljava/lang/String;

    const/4 v11, 0x1

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    check-cast v7, Ljava/net/HttpURLConnection;

    move-object v4, v7

    .line 238
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "make request "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v7

    invoke-interface {v7}, Lorg/osmdroid/config/IConfigurationProvider;->getUserAgentHttpHeader()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v8

    invoke-interface {v8}, Lorg/osmdroid/config/IConfigurationProvider;->getUserAgentValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v7

    invoke-interface {v7}, Lorg/osmdroid/config/IConfigurationProvider;->getAdditionalHttpRequestProperties()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 241
    .local v8, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v4, v9, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 243
    :cond_0
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->connect()V

    .line 245
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    const/16 v8, 0xc8

    if-eq v7, v8, :cond_1

    .line 246
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot get response for url "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 250
    :cond_1
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    move-object v3, v7

    .line 251
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v5, v7

    .line 252
    new-instance v7, Ljava/io/BufferedOutputStream;

    const/16 v8, 0x2000

    invoke-direct {v7, v5, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    move-object v6, v7

    .line 253
    invoke-static {v3, v6}, Lorg/osmdroid/tileprovider/util/StreamUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 254
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->flush()V

    .line 256
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaData;->getInstanceFromJSON(Ljava/lang/String;)Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v7

    .line 261
    :goto_1
    if-eqz v4, :cond_2

    .line 263
    :try_start_1
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 266
    goto :goto_2

    .line 264
    :catch_0
    move-exception v7

    .line 265
    .local v7, "e":Ljava/lang/Exception;
    invoke-static {v2, v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 267
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_2
    if-eqz v3, :cond_3

    .line 269
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 272
    goto :goto_3

    .line 270
    :catch_1
    move-exception v7

    .line 271
    .restart local v7    # "e":Ljava/lang/Exception;
    invoke-static {v2, v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 273
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_3
    if-eqz v5, :cond_4

    .line 275
    :try_start_3
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 278
    goto :goto_4

    .line 276
    :catch_2
    move-exception v7

    .line 277
    .restart local v7    # "e":Ljava/lang/Exception;
    invoke-static {v2, v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 279
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_4
    if-eqz v6, :cond_8

    .line 281
    :try_start_4
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_8

    .line 282
    :catch_3
    move-exception v7

    goto :goto_9

    .line 261
    :catchall_0
    move-exception v7

    goto :goto_b

    .line 258
    :catch_4
    move-exception v7

    .line 259
    .restart local v7    # "e":Ljava/lang/Exception;
    :try_start_5
    const-string v8, "Error getting imagery meta data"

    invoke-static {v2, v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 261
    nop

    .end local v7    # "e":Ljava/lang/Exception;
    if-eqz v4, :cond_5

    .line 263
    :try_start_6
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 266
    goto :goto_5

    .line 264
    :catch_5
    move-exception v7

    .line 265
    .restart local v7    # "e":Ljava/lang/Exception;
    invoke-static {v2, v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 267
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_5
    :goto_5
    if-eqz v3, :cond_6

    .line 269
    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    .line 272
    goto :goto_6

    .line 270
    :catch_6
    move-exception v7

    .line 271
    .restart local v7    # "e":Ljava/lang/Exception;
    invoke-static {v2, v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 273
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_6
    :goto_6
    if-eqz v5, :cond_7

    .line 275
    :try_start_8
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    .line 278
    goto :goto_7

    .line 276
    :catch_7
    move-exception v7

    .line 277
    .restart local v7    # "e":Ljava/lang/Exception;
    invoke-static {v2, v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 279
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_7
    :goto_7
    if-eqz v6, :cond_8

    .line 281
    :try_start_9
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    .line 284
    :goto_8
    goto :goto_a

    .line 282
    :catch_8
    move-exception v7

    .line 283
    .restart local v7    # "e":Ljava/lang/Exception;
    :goto_9
    invoke-static {v2, v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 285
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_8
    :goto_a
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    nop

    .line 287
    return-object v1

    .line 261
    :goto_b
    if-eqz v4, :cond_9

    .line 263
    :try_start_a
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9

    .line 266
    goto :goto_c

    .line 264
    :catch_9
    move-exception v8

    .line 265
    .local v8, "e":Ljava/lang/Exception;
    invoke-static {v2, v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 267
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_9
    :goto_c
    if-eqz v3, :cond_a

    .line 269
    :try_start_b
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_a

    .line 272
    goto :goto_d

    .line 270
    :catch_a
    move-exception v8

    .line 271
    .restart local v8    # "e":Ljava/lang/Exception;
    invoke-static {v2, v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 273
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_a
    :goto_d
    if-eqz v5, :cond_b

    .line 275
    :try_start_c
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_b

    .line 278
    goto :goto_e

    .line 276
    :catch_b
    move-exception v8

    .line 277
    .restart local v8    # "e":Ljava/lang/Exception;
    invoke-static {v2, v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 279
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_b
    :goto_e
    if-eqz v6, :cond_c

    .line 281
    :try_start_d
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_c

    .line 284
    goto :goto_f

    .line 282
    :catch_c
    move-exception v8

    .line 283
    .restart local v8    # "e":Ljava/lang/Exception;
    invoke-static {v2, v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 285
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_c
    :goto_f
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    throw v7
.end method

.method public static retrieveBingKey(Landroid/content/Context;)V
    .locals 1
    .param p0, "aContext"    # Landroid/content/Context;

    .line 98
    const-string v0, "BING_KEY"

    invoke-static {p0, v0}, Lorg/osmdroid/tileprovider/util/ManifestUtil;->retrieveKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mBingMapKey:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public static setBingKey(Ljava/lang/String;)V
    .locals 0
    .param p0, "key"    # Ljava/lang/String;

    .line 106
    sput-object p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mBingMapKey:Ljava/lang/String;

    .line 107
    return-void
.end method


# virtual methods
.method public getBaseUrl()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mImageryData:Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;

    iget-boolean v0, v0, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_isInitialised:Z

    if-nez v0, :cond_0

    .line 114
    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->initMetaData()Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;

    .line 116
    :cond_0
    iget-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mBaseUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCopyrightNotice()Ljava/lang/String;
    .locals 1

    .line 170
    iget-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mImageryData:Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;

    iget-object v0, v0, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->copyright:Ljava/lang/String;

    return-object v0
.end method

.method public getMaximumZoomLevel()I
    .locals 1

    .line 144
    iget-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mImageryData:Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;

    iget v0, v0, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_zoomMax:I

    return v0
.end method

.method public getMinimumZoomLevel()I
    .locals 1

    .line 134
    iget-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mImageryData:Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;

    iget v0, v0, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_zoomMin:I

    return v0
.end method

.method public bridge synthetic getStyle()Ljava/lang/Object;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->getStyle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStyle()Ljava/lang/String;
    .locals 1

    .line 196
    iget-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mStyle:Ljava/lang/String;

    return-object v0
.end method

.method public getTileSizePixels()I
    .locals 1

    .line 154
    iget-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mImageryData:Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;

    iget v0, v0, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_imageHeight:I

    return v0
.end method

.method public getTileURLString(J)Ljava/lang/String;
    .locals 2
    .param p1, "pMapTileIndex"    # J

    .line 121
    iget-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mImageryData:Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;

    iget-boolean v0, v0, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_isInitialised:Z

    if-nez v0, :cond_0

    .line 122
    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->initMetaData()Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;

    .line 124
    :cond_0
    iget-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mUrl:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->quadTree(J)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initMetaData()Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;
    .locals 1

    .line 210
    iget-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mImageryData:Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;

    iget-boolean v0, v0, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_isInitialised:Z

    if-nez v0, :cond_1

    .line 211
    monitor-enter p0

    .line 212
    :try_start_0
    iget-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mImageryData:Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;

    iget-boolean v0, v0, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_isInitialised:Z

    if-nez v0, :cond_0

    .line 213
    invoke-direct {p0}, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->getMetaData()Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;

    move-result-object v0

    .line 214
    .local v0, "imageryData":Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;
    if-eqz v0, :cond_0

    .line 215
    iput-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mImageryData:Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;

    .line 216
    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->updateBaseUrl()V

    .line 219
    .end local v0    # "imageryData":Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 221
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mImageryData:Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;

    return-object v0
.end method

.method public pathBase()Ljava/lang/String;
    .locals 2

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mStyle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setStyle(Ljava/lang/Object;)V
    .locals 0

    .line 32
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->setStyle(Ljava/lang/String;)V

    return-void
.end method

.method public setStyle(Ljava/lang/String;)V
    .locals 3
    .param p1, "pStyle"    # Ljava/lang/String;

    .line 182
    iget-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mStyle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    iget-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mStyle:Ljava/lang/String;

    monitor-enter v0

    .line 185
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mUrl:Ljava/lang/String;

    .line 186
    iput-object v1, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mBaseUrl:Ljava/lang/String;

    .line 187
    iget-object v1, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mImageryData:Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_isInitialised:Z

    .line 188
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 190
    :cond_0
    :goto_0
    iput-object p1, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mStyle:Ljava/lang/String;

    .line 191
    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->pathBase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mName:Ljava/lang/String;

    .line 192
    return-void
.end method

.method protected updateBaseUrl()V
    .locals 6

    .line 295
    const-string v0, "updateBaseUrl"

    const-string v1, "OsmDroid"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mImageryData:Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;

    invoke-virtual {v0}, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->getSubDomain()Ljava/lang/String;

    move-result-object v0

    .line 297
    .local v0, "subDomain":Ljava/lang/String;
    iget-object v2, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mImageryData:Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;

    iget-object v2, v2, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_imageUrl:Ljava/lang/String;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 298
    .local v2, "idx":I
    if-lez v2, :cond_0

    .line 299
    iget-object v3, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mImageryData:Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;

    iget-object v3, v3, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_imageUrl:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mBaseUrl:Ljava/lang/String;

    goto :goto_0

    .line 301
    :cond_0
    iget-object v3, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mImageryData:Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;

    iget-object v3, v3, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_imageUrl:Ljava/lang/String;

    iput-object v3, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mBaseUrl:Ljava/lang/String;

    .line 304
    :goto_0
    iget-object v3, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mImageryData:Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;

    iget-object v3, v3, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_imageUrl:Ljava/lang/String;

    iput-object v3, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mUrl:Ljava/lang/String;

    .line 305
    if-eqz v0, :cond_1

    .line 306
    iget-object v3, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mBaseUrl:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mBaseUrl:Ljava/lang/String;

    .line 307
    iget-object v3, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mUrl:Ljava/lang/String;

    const-string v4, "%s"

    iget-object v5, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mLocale:Ljava/lang/String;

    filled-new-array {v0, v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mUrl:Ljava/lang/String;

    .line 309
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updated url = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    const-string v3, "end updateBaseUrl"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    return-void
.end method
