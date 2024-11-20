.class public Lorg/osmdroid/mapsforge/MapsForgeTileSource;
.super Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase;
.source "MapsForgeTileSource.java"


# static fields
.field public static MAX_ZOOM:I = 0x0

.field public static MIN_ZOOM:I = 0x0

.field public static final TILE_SIZE_PIXELS:I = 0x100


# instance fields
.field private hillsRenderConfig:Lorg/mapsforge/map/layer/hills/HillsRenderConfig;

.field private mXmlRenderTheme:Lorg/mapsforge/map/rendertheme/XmlRenderTheme;

.field private mapDatabase:Lorg/mapsforge/map/datastore/MultiMapDataStore;

.field private final model:Lorg/mapsforge/map/model/DisplayModel;

.field private renderer:Lorg/mapsforge/map/layer/renderer/DirectRenderer;

.field private final scale:F

.field private theme:Lorg/mapsforge/map/rendertheme/rule/RenderThemeFuture;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const/4 v0, 0x3

    sput v0, Lorg/osmdroid/mapsforge/MapsForgeTileSource;->MIN_ZOOM:I

    .line 39
    const/16 v0, 0x1d

    sput v0, Lorg/osmdroid/mapsforge/MapsForgeTileSource;->MAX_ZOOM:I

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;III[Ljava/io/File;Lorg/mapsforge/map/rendertheme/XmlRenderTheme;Lorg/mapsforge/map/datastore/MultiMapDataStore$DataPolicy;Lorg/mapsforge/map/layer/hills/HillsRenderConfig;)V
    .locals 10
    .param p1, "cacheTileSourceName"    # Ljava/lang/String;
    .param p2, "minZoom"    # I
    .param p3, "maxZoom"    # I
    .param p4, "tileSizePixels"    # I
    .param p5, "file"    # [Ljava/io/File;
    .param p6, "xmlRenderTheme"    # Lorg/mapsforge/map/rendertheme/XmlRenderTheme;
    .param p7, "dataPolicy"    # Lorg/mapsforge/map/datastore/MultiMapDataStore$DataPolicy;
    .param p8, "hillsRenderConfig"    # Lorg/mapsforge/map/layer/hills/HillsRenderConfig;

    .line 117
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lorg/osmdroid/mapsforge/MapsForgeTileSource;-><init>(Ljava/lang/String;III[Ljava/io/File;Lorg/mapsforge/map/rendertheme/XmlRenderTheme;Lorg/mapsforge/map/datastore/MultiMapDataStore$DataPolicy;Lorg/mapsforge/map/layer/hills/HillsRenderConfig;Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;III[Ljava/io/File;Lorg/mapsforge/map/rendertheme/XmlRenderTheme;Lorg/mapsforge/map/datastore/MultiMapDataStore$DataPolicy;Lorg/mapsforge/map/layer/hills/HillsRenderConfig;Ljava/lang/String;)V
    .locals 12
    .param p1, "cacheTileSourceName"    # Ljava/lang/String;
    .param p2, "minZoom"    # I
    .param p3, "maxZoom"    # I
    .param p4, "tileSizePixels"    # I
    .param p5, "file"    # [Ljava/io/File;
    .param p6, "xmlRenderTheme"    # Lorg/mapsforge/map/rendertheme/XmlRenderTheme;
    .param p7, "dataPolicy"    # Lorg/mapsforge/map/datastore/MultiMapDataStore$DataPolicy;
    .param p8, "hillsRenderConfig"    # Lorg/mapsforge/map/layer/hills/HillsRenderConfig;
    .param p9, "language"    # Ljava/lang/String;

    .line 65
    move-object v7, p0

    move-object/from16 v8, p5

    const-string v5, ".png"

    const-string v6, "\u00a9 OpenStreetMap contributors"

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    invoke-direct/range {v0 .. v6}, Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    .line 41
    new-instance v0, Lorg/mapsforge/map/model/DisplayModel;

    invoke-direct {v0}, Lorg/mapsforge/map/model/DisplayModel;-><init>()V

    iput-object v0, v7, Lorg/osmdroid/mapsforge/MapsForgeTileSource;->model:Lorg/mapsforge/map/model/DisplayModel;

    .line 42
    invoke-static {}, Lorg/mapsforge/map/model/DisplayModel;->getDefaultUserScaleFactor()F

    move-result v0

    iput v0, v7, Lorg/osmdroid/mapsforge/MapsForgeTileSource;->scale:F

    .line 43
    const/4 v0, 0x0

    iput-object v0, v7, Lorg/osmdroid/mapsforge/MapsForgeTileSource;->theme:Lorg/mapsforge/map/rendertheme/rule/RenderThemeFuture;

    .line 44
    iput-object v0, v7, Lorg/osmdroid/mapsforge/MapsForgeTileSource;->mXmlRenderTheme:Lorg/mapsforge/map/rendertheme/XmlRenderTheme;

    .line 67
    new-instance v0, Lorg/mapsforge/map/datastore/MultiMapDataStore;

    move-object/from16 v1, p7

    invoke-direct {v0, v1}, Lorg/mapsforge/map/datastore/MultiMapDataStore;-><init>(Lorg/mapsforge/map/datastore/MultiMapDataStore$DataPolicy;)V

    iput-object v0, v7, Lorg/osmdroid/mapsforge/MapsForgeTileSource;->mapDatabase:Lorg/mapsforge/map/datastore/MultiMapDataStore;

    .line 68
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v8

    if-ge v0, v2, :cond_0

    .line 69
    iget-object v2, v7, Lorg/osmdroid/mapsforge/MapsForgeTileSource;->mapDatabase:Lorg/mapsforge/map/datastore/MultiMapDataStore;

    new-instance v3, Lorg/mapsforge/map/reader/MapFile;

    aget-object v4, v8, v0

    move-object/from16 v5, p9

    invoke-direct {v3, v4, v5}, Lorg/mapsforge/map/reader/MapFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v4}, Lorg/mapsforge/map/datastore/MultiMapDataStore;->addMapDataStore(Lorg/mapsforge/map/datastore/MapDataStore;ZZ)V

    .line 68
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v5, p9

    .line 71
    .end local v0    # "i":I
    sget-object v0, Lorg/mapsforge/map/android/graphics/AndroidGraphicFactory;->INSTANCE:Lorg/mapsforge/map/android/graphics/AndroidGraphicFactory;

    if-eqz v0, :cond_4

    .line 86
    new-instance v0, Lorg/mapsforge/map/layer/renderer/DirectRenderer;

    iget-object v2, v7, Lorg/osmdroid/mapsforge/MapsForgeTileSource;->mapDatabase:Lorg/mapsforge/map/datastore/MultiMapDataStore;

    sget-object v3, Lorg/mapsforge/map/android/graphics/AndroidGraphicFactory;->INSTANCE:Lorg/mapsforge/map/android/graphics/AndroidGraphicFactory;

    const/4 v4, 0x1

    move-object/from16 v6, p8

    invoke-direct {v0, v2, v3, v4, v6}, Lorg/mapsforge/map/layer/renderer/DirectRenderer;-><init>(Lorg/mapsforge/map/datastore/MapDataStore;Lorg/mapsforge/core/graphics/GraphicFactory;ZLorg/mapsforge/map/layer/hills/HillsRenderConfig;)V

    iput-object v0, v7, Lorg/osmdroid/mapsforge/MapsForgeTileSource;->renderer:Lorg/mapsforge/map/layer/renderer/DirectRenderer;

    .line 88
    sget v2, Lorg/osmdroid/mapsforge/MapsForgeTileSource;->MIN_ZOOM:I

    .line 89
    .end local p2    # "minZoom":I
    .local v2, "minZoom":I
    invoke-virtual {v0}, Lorg/mapsforge/map/layer/renderer/DirectRenderer;->getZoomLevelMax()B

    move-result v0

    .line 91
    .end local p3    # "maxZoom":I
    .local v0, "maxZoom":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "min="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " max="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " tilesize="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v4, p4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v9, "OsmDroid"

    invoke-static {v9, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    if-nez p6, :cond_1

    .line 94
    sget-object v3, Lorg/mapsforge/map/rendertheme/InternalRenderTheme;->OSMARENDER:Lorg/mapsforge/map/rendertheme/InternalRenderTheme;

    .end local p6    # "xmlRenderTheme":Lorg/mapsforge/map/rendertheme/XmlRenderTheme;
    .local v3, "xmlRenderTheme":Lorg/mapsforge/map/rendertheme/XmlRenderTheme;
    goto :goto_1

    .line 93
    .end local v3    # "xmlRenderTheme":Lorg/mapsforge/map/rendertheme/XmlRenderTheme;
    .restart local p6    # "xmlRenderTheme":Lorg/mapsforge/map/rendertheme/XmlRenderTheme;
    :cond_1
    move-object/from16 v3, p6

    .line 96
    .end local p6    # "xmlRenderTheme":Lorg/mapsforge/map/rendertheme/XmlRenderTheme;
    .restart local v3    # "xmlRenderTheme":Lorg/mapsforge/map/rendertheme/XmlRenderTheme;
    :goto_1
    iget-object v9, v7, Lorg/osmdroid/mapsforge/MapsForgeTileSource;->mXmlRenderTheme:Lorg/mapsforge/map/rendertheme/XmlRenderTheme;

    if-ne v3, v9, :cond_2

    iget-object v9, v7, Lorg/osmdroid/mapsforge/MapsForgeTileSource;->theme:Lorg/mapsforge/map/rendertheme/rule/RenderThemeFuture;

    if-nez v9, :cond_3

    .line 97
    :cond_2
    new-instance v9, Lorg/mapsforge/map/rendertheme/rule/RenderThemeFuture;

    sget-object v10, Lorg/mapsforge/map/android/graphics/AndroidGraphicFactory;->INSTANCE:Lorg/mapsforge/map/android/graphics/AndroidGraphicFactory;

    iget-object v11, v7, Lorg/osmdroid/mapsforge/MapsForgeTileSource;->model:Lorg/mapsforge/map/model/DisplayModel;

    invoke-direct {v9, v10, v3, v11}, Lorg/mapsforge/map/rendertheme/rule/RenderThemeFuture;-><init>(Lorg/mapsforge/core/graphics/GraphicFactory;Lorg/mapsforge/map/rendertheme/XmlRenderTheme;Lorg/mapsforge/map/model/DisplayModel;)V

    iput-object v9, v7, Lorg/osmdroid/mapsforge/MapsForgeTileSource;->theme:Lorg/mapsforge/map/rendertheme/rule/RenderThemeFuture;

    .line 99
    new-instance v9, Ljava/lang/Thread;

    iget-object v10, v7, Lorg/osmdroid/mapsforge/MapsForgeTileSource;->theme:Lorg/mapsforge/map/rendertheme/rule/RenderThemeFuture;

    invoke-direct {v9, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    .line 101
    :cond_3
    return-void

    .line 72
    .end local v0    # "maxZoom":I
    .end local v2    # "minZoom":I
    .end local v3    # "xmlRenderTheme":Lorg/mapsforge/map/rendertheme/XmlRenderTheme;
    .restart local p2    # "minZoom":I
    .restart local p3    # "maxZoom":I
    .restart local p6    # "xmlRenderTheme":Lorg/mapsforge/map/rendertheme/XmlRenderTheme;
    :cond_4
    move/from16 v4, p4

    move-object/from16 v6, p8

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Must call MapsForgeTileSource.createInstance(context.getApplication()); once before MapsForgeTileSource.createFromFiles()."

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createFromFiles([Ljava/io/File;)Lorg/osmdroid/mapsforge/MapsForgeTileSource;
    .locals 14
    .param p0, "file"    # [Ljava/io/File;

    .line 145
    sget v10, Lorg/osmdroid/mapsforge/MapsForgeTileSource;->MIN_ZOOM:I

    .line 146
    .local v10, "minZoomLevel":I
    sget v11, Lorg/osmdroid/mapsforge/MapsForgeTileSource;->MAX_ZOOM:I

    .line 147
    .local v11, "maxZoomLevel":I
    const/16 v12, 0x100

    .line 149
    .local v12, "tileSizePixels":I
    new-instance v13, Lorg/osmdroid/mapsforge/MapsForgeTileSource;

    sget-object v0, Lorg/mapsforge/map/rendertheme/InternalRenderTheme;->OSMARENDER:Lorg/mapsforge/map/rendertheme/InternalRenderTheme;

    invoke-virtual {v0}, Lorg/mapsforge/map/rendertheme/InternalRenderTheme;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v6, Lorg/mapsforge/map/rendertheme/InternalRenderTheme;->OSMARENDER:Lorg/mapsforge/map/rendertheme/InternalRenderTheme;

    sget-object v7, Lorg/mapsforge/map/datastore/MultiMapDataStore$DataPolicy;->RETURN_ALL:Lorg/mapsforge/map/datastore/MultiMapDataStore$DataPolicy;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, v13

    move v2, v10

    move v3, v11

    move v4, v12

    move-object v5, p0

    invoke-direct/range {v0 .. v9}, Lorg/osmdroid/mapsforge/MapsForgeTileSource;-><init>(Ljava/lang/String;III[Ljava/io/File;Lorg/mapsforge/map/rendertheme/XmlRenderTheme;Lorg/mapsforge/map/datastore/MultiMapDataStore$DataPolicy;Lorg/mapsforge/map/layer/hills/HillsRenderConfig;Ljava/lang/String;)V

    return-object v13
.end method

.method public static createFromFiles([Ljava/io/File;Lorg/mapsforge/map/rendertheme/XmlRenderTheme;Ljava/lang/String;)Lorg/osmdroid/mapsforge/MapsForgeTileSource;
    .locals 14
    .param p0, "file"    # [Ljava/io/File;
    .param p1, "theme"    # Lorg/mapsforge/map/rendertheme/XmlRenderTheme;
    .param p2, "themeName"    # Ljava/lang/String;

    .line 166
    sget v10, Lorg/osmdroid/mapsforge/MapsForgeTileSource;->MIN_ZOOM:I

    .line 167
    .local v10, "minZoomLevel":I
    sget v11, Lorg/osmdroid/mapsforge/MapsForgeTileSource;->MAX_ZOOM:I

    .line 168
    .local v11, "maxZoomLevel":I
    const/16 v12, 0x100

    .line 170
    .local v12, "tileSizePixels":I
    new-instance v13, Lorg/osmdroid/mapsforge/MapsForgeTileSource;

    sget-object v7, Lorg/mapsforge/map/datastore/MultiMapDataStore$DataPolicy;->RETURN_ALL:Lorg/mapsforge/map/datastore/MultiMapDataStore$DataPolicy;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, v13

    move-object/from16 v1, p2

    move v2, v10

    move v3, v11

    move v4, v12

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v9}, Lorg/osmdroid/mapsforge/MapsForgeTileSource;-><init>(Ljava/lang/String;III[Ljava/io/File;Lorg/mapsforge/map/rendertheme/XmlRenderTheme;Lorg/mapsforge/map/datastore/MultiMapDataStore$DataPolicy;Lorg/mapsforge/map/layer/hills/HillsRenderConfig;Ljava/lang/String;)V

    return-object v13
.end method

.method public static createFromFiles([Ljava/io/File;Lorg/mapsforge/map/rendertheme/XmlRenderTheme;Ljava/lang/String;Ljava/lang/String;)Lorg/osmdroid/mapsforge/MapsForgeTileSource;
    .locals 14
    .param p0, "file"    # [Ljava/io/File;
    .param p1, "theme"    # Lorg/mapsforge/map/rendertheme/XmlRenderTheme;
    .param p2, "themeName"    # Ljava/lang/String;
    .param p3, "language"    # Ljava/lang/String;

    .line 188
    sget v10, Lorg/osmdroid/mapsforge/MapsForgeTileSource;->MIN_ZOOM:I

    .line 189
    .local v10, "minZoomLevel":I
    sget v11, Lorg/osmdroid/mapsforge/MapsForgeTileSource;->MAX_ZOOM:I

    .line 190
    .local v11, "maxZoomLevel":I
    const/16 v12, 0x100

    .line 192
    .local v12, "tileSizePixels":I
    new-instance v13, Lorg/osmdroid/mapsforge/MapsForgeTileSource;

    sget-object v7, Lorg/mapsforge/map/datastore/MultiMapDataStore$DataPolicy;->RETURN_ALL:Lorg/mapsforge/map/datastore/MultiMapDataStore$DataPolicy;

    const/4 v8, 0x0

    move-object v0, v13

    move-object/from16 v1, p2

    move v2, v10

    move v3, v11

    move v4, v12

    move-object v5, p0

    move-object v6, p1

    move-object/from16 v9, p3

    invoke-direct/range {v0 .. v9}, Lorg/osmdroid/mapsforge/MapsForgeTileSource;-><init>(Ljava/lang/String;III[Ljava/io/File;Lorg/mapsforge/map/rendertheme/XmlRenderTheme;Lorg/mapsforge/map/datastore/MultiMapDataStore$DataPolicy;Lorg/mapsforge/map/layer/hills/HillsRenderConfig;Ljava/lang/String;)V

    return-object v13
.end method

.method public static createFromFiles([Ljava/io/File;Lorg/mapsforge/map/rendertheme/XmlRenderTheme;Ljava/lang/String;Lorg/mapsforge/map/datastore/MultiMapDataStore$DataPolicy;Lorg/mapsforge/map/layer/hills/HillsRenderConfig;)Lorg/osmdroid/mapsforge/MapsForgeTileSource;
    .locals 14
    .param p0, "file"    # [Ljava/io/File;
    .param p1, "theme"    # Lorg/mapsforge/map/rendertheme/XmlRenderTheme;
    .param p2, "themeName"    # Ljava/lang/String;
    .param p3, "dataPolicy"    # Lorg/mapsforge/map/datastore/MultiMapDataStore$DataPolicy;
    .param p4, "hillsRenderConfig"    # Lorg/mapsforge/map/layer/hills/HillsRenderConfig;

    .line 211
    sget v10, Lorg/osmdroid/mapsforge/MapsForgeTileSource;->MIN_ZOOM:I

    .line 212
    .local v10, "minZoomLevel":I
    sget v11, Lorg/osmdroid/mapsforge/MapsForgeTileSource;->MAX_ZOOM:I

    .line 213
    .local v11, "maxZoomLevel":I
    const/16 v12, 0x100

    .line 215
    .local v12, "tileSizePixels":I
    new-instance v13, Lorg/osmdroid/mapsforge/MapsForgeTileSource;

    const/4 v9, 0x0

    move-object v0, v13

    move-object/from16 v1, p2

    move v2, v10

    move v3, v11

    move v4, v12

    move-object v5, p0

    move-object v6, p1

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    invoke-direct/range {v0 .. v9}, Lorg/osmdroid/mapsforge/MapsForgeTileSource;-><init>(Ljava/lang/String;III[Ljava/io/File;Lorg/mapsforge/map/rendertheme/XmlRenderTheme;Lorg/mapsforge/map/datastore/MultiMapDataStore$DataPolicy;Lorg/mapsforge/map/layer/hills/HillsRenderConfig;Ljava/lang/String;)V

    return-object v13
.end method

.method public static createFromFiles([Ljava/io/File;Lorg/mapsforge/map/rendertheme/XmlRenderTheme;Ljava/lang/String;Lorg/mapsforge/map/datastore/MultiMapDataStore$DataPolicy;Lorg/mapsforge/map/layer/hills/HillsRenderConfig;Ljava/lang/String;)Lorg/osmdroid/mapsforge/MapsForgeTileSource;
    .locals 14
    .param p0, "file"    # [Ljava/io/File;
    .param p1, "theme"    # Lorg/mapsforge/map/rendertheme/XmlRenderTheme;
    .param p2, "themeName"    # Ljava/lang/String;
    .param p3, "dataPolicy"    # Lorg/mapsforge/map/datastore/MultiMapDataStore$DataPolicy;
    .param p4, "hillsRenderConfig"    # Lorg/mapsforge/map/layer/hills/HillsRenderConfig;
    .param p5, "language"    # Ljava/lang/String;

    .line 235
    sget v10, Lorg/osmdroid/mapsforge/MapsForgeTileSource;->MIN_ZOOM:I

    .line 236
    .local v10, "minZoomLevel":I
    sget v11, Lorg/osmdroid/mapsforge/MapsForgeTileSource;->MAX_ZOOM:I

    .line 237
    .local v11, "maxZoomLevel":I
    const/16 v12, 0x100

    .line 239
    .local v12, "tileSizePixels":I
    new-instance v13, Lorg/osmdroid/mapsforge/MapsForgeTileSource;

    move-object v0, v13

    move-object/from16 v1, p2

    move v2, v10

    move v3, v11

    move v4, v12

    move-object v5, p0

    move-object v6, p1

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    invoke-direct/range {v0 .. v9}, Lorg/osmdroid/mapsforge/MapsForgeTileSource;-><init>(Ljava/lang/String;III[Ljava/io/File;Lorg/mapsforge/map/rendertheme/XmlRenderTheme;Lorg/mapsforge/map/datastore/MultiMapDataStore$DataPolicy;Lorg/mapsforge/map/layer/hills/HillsRenderConfig;Ljava/lang/String;)V

    return-object v13
.end method

.method public static createInstance(Landroid/app/Application;)V
    .locals 0
    .param p0, "app"    # Landroid/app/Application;

    .line 273
    invoke-static {p0}, Lorg/mapsforge/map/android/graphics/AndroidGraphicFactory;->createInstance(Landroid/app/Application;)V

    .line 274
    return-void
.end method


# virtual methods
.method public addTileRefresher(Lorg/mapsforge/map/layer/renderer/DirectRenderer$TileRefresher;)V
    .locals 1
    .param p1, "pDirectTileRefresher"    # Lorg/mapsforge/map/layer/renderer/DirectRenderer$TileRefresher;

    .line 290
    if-eqz p1, :cond_0

    .line 291
    iget-object v0, p0, Lorg/osmdroid/mapsforge/MapsForgeTileSource;->renderer:Lorg/mapsforge/map/layer/renderer/DirectRenderer;

    invoke-virtual {v0, p1}, Lorg/mapsforge/map/layer/renderer/DirectRenderer;->addTileRefresher(Lorg/mapsforge/map/layer/renderer/DirectRenderer$TileRefresher;)V

    .line 293
    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 2

    .line 278
    iget-object v0, p0, Lorg/osmdroid/mapsforge/MapsForgeTileSource;->theme:Lorg/mapsforge/map/rendertheme/rule/RenderThemeFuture;

    invoke-virtual {v0}, Lorg/mapsforge/map/rendertheme/rule/RenderThemeFuture;->decrementRefCount()V

    .line 279
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osmdroid/mapsforge/MapsForgeTileSource;->theme:Lorg/mapsforge/map/rendertheme/rule/RenderThemeFuture;

    .line 280
    iput-object v0, p0, Lorg/osmdroid/mapsforge/MapsForgeTileSource;->renderer:Lorg/mapsforge/map/layer/renderer/DirectRenderer;

    .line 281
    iget-object v1, p0, Lorg/osmdroid/mapsforge/MapsForgeTileSource;->mapDatabase:Lorg/mapsforge/map/datastore/MultiMapDataStore;

    if-eqz v1, :cond_0

    .line 282
    invoke-virtual {v1}, Lorg/mapsforge/map/datastore/MultiMapDataStore;->close()V

    .line 283
    :cond_0
    iput-object v0, p0, Lorg/osmdroid/mapsforge/MapsForgeTileSource;->mapDatabase:Lorg/mapsforge/map/datastore/MultiMapDataStore;

    .line 284
    return-void
.end method

.method public getBounds()Lorg/mapsforge/core/model/BoundingBox;
    .locals 1

    .line 121
    iget-object v0, p0, Lorg/osmdroid/mapsforge/MapsForgeTileSource;->mapDatabase:Lorg/mapsforge/map/datastore/MultiMapDataStore;

    invoke-virtual {v0}, Lorg/mapsforge/map/datastore/MultiMapDataStore;->boundingBox()Lorg/mapsforge/core/model/BoundingBox;

    move-result-object v0

    return-object v0
.end method

.method public getBoundsOsmdroid()Lorg/osmdroid/util/BoundingBox;
    .locals 15

    .line 125
    iget-object v0, p0, Lorg/osmdroid/mapsforge/MapsForgeTileSource;->mapDatabase:Lorg/mapsforge/map/datastore/MultiMapDataStore;

    invoke-virtual {v0}, Lorg/mapsforge/map/datastore/MultiMapDataStore;->boundingBox()Lorg/mapsforge/core/model/BoundingBox;

    move-result-object v0

    .line 126
    .local v0, "boundingBox":Lorg/mapsforge/core/model/BoundingBox;
    invoke-static {}, Lorg/osmdroid/views/MapView;->getTileSystem()Lorg/osmdroid/util/TileSystem;

    move-result-object v1

    invoke-virtual {v1}, Lorg/osmdroid/util/TileSystem;->getMaxLatitude()D

    move-result-wide v1

    iget-wide v3, v0, Lorg/mapsforge/core/model/BoundingBox;->maxLatitude:D

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    .line 127
    .local v1, "latNorth":D
    invoke-static {}, Lorg/osmdroid/views/MapView;->getTileSystem()Lorg/osmdroid/util/TileSystem;

    move-result-object v3

    invoke-virtual {v3}, Lorg/osmdroid/util/TileSystem;->getMinLatitude()D

    move-result-wide v3

    iget-wide v5, v0, Lorg/mapsforge/core/model/BoundingBox;->minLatitude:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    .line 128
    .local v3, "latSouth":D
    new-instance v14, Lorg/osmdroid/util/BoundingBox;

    iget-wide v8, v0, Lorg/mapsforge/core/model/BoundingBox;->maxLongitude:D

    iget-wide v12, v0, Lorg/mapsforge/core/model/BoundingBox;->minLongitude:D

    move-object v5, v14

    move-wide v6, v1

    move-wide v10, v3

    invoke-direct/range {v5 .. v13}, Lorg/osmdroid/util/BoundingBox;-><init>(DDDD)V

    return-object v14
.end method

.method public declared-synchronized renderTile(J)Landroid/graphics/drawable/Drawable;
    .locals 10
    .param p1, "pMapTileIndex"    # J

    monitor-enter p0

    .line 246
    :try_start_0
    new-instance v1, Lorg/mapsforge/core/model/Tile;

    invoke-static {p1, p2}, Lorg/osmdroid/util/MapTileIndex;->getX(J)I

    move-result v0

    invoke-static {p1, p2}, Lorg/osmdroid/util/MapTileIndex;->getY(J)I

    move-result v2

    invoke-static {p1, p2}, Lorg/osmdroid/util/MapTileIndex;->getZoom(J)I

    move-result v3

    int-to-byte v3, v3

    const/16 v4, 0x100

    invoke-direct {v1, v0, v2, v3, v4}, Lorg/mapsforge/core/model/Tile;-><init>(IIBI)V

    .line 247
    .local v1, "tile":Lorg/mapsforge/core/model/Tile;
    iget-object v0, p0, Lorg/osmdroid/mapsforge/MapsForgeTileSource;->model:Lorg/mapsforge/map/model/DisplayModel;

    invoke-virtual {v0, v4}, Lorg/mapsforge/map/model/DisplayModel;->setFixedTileSize(I)V

    .line 258
    iget-object v0, p0, Lorg/osmdroid/mapsforge/MapsForgeTileSource;->mapDatabase:Lorg/mapsforge/map/datastore/MultiMapDataStore;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v8, 0x0

    if-nez v0, :cond_0

    .line 259
    monitor-exit p0

    return-object v8

    .line 262
    :cond_0
    :try_start_1
    new-instance v9, Lorg/mapsforge/map/layer/renderer/RendererJob;

    iget-object v2, p0, Lorg/osmdroid/mapsforge/MapsForgeTileSource;->mapDatabase:Lorg/mapsforge/map/datastore/MultiMapDataStore;

    iget-object v3, p0, Lorg/osmdroid/mapsforge/MapsForgeTileSource;->theme:Lorg/mapsforge/map/rendertheme/rule/RenderThemeFuture;

    iget-object v4, p0, Lorg/osmdroid/mapsforge/MapsForgeTileSource;->model:Lorg/mapsforge/map/model/DisplayModel;

    iget v5, p0, Lorg/osmdroid/mapsforge/MapsForgeTileSource;->scale:F

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v7}, Lorg/mapsforge/map/layer/renderer/RendererJob;-><init>(Lorg/mapsforge/core/model/Tile;Lorg/mapsforge/map/datastore/MapDataStore;Lorg/mapsforge/map/rendertheme/rule/RenderThemeFuture;Lorg/mapsforge/map/model/DisplayModel;FZZ)V

    move-object v0, v9

    .line 263
    .local v0, "mapGeneratorJob":Lorg/mapsforge/map/layer/renderer/RendererJob;
    iget-object v2, p0, Lorg/osmdroid/mapsforge/MapsForgeTileSource;->renderer:Lorg/mapsforge/map/layer/renderer/DirectRenderer;

    invoke-virtual {v2, v0}, Lorg/mapsforge/map/layer/renderer/DirectRenderer;->executeJob(Lorg/mapsforge/map/layer/renderer/RendererJob;)Lorg/mapsforge/core/graphics/TileBitmap;

    move-result-object v2

    check-cast v2, Lorg/mapsforge/map/android/graphics/AndroidTileBitmap;

    .line 264
    .local v2, "bmp":Lorg/mapsforge/map/android/graphics/AndroidTileBitmap;
    if-eqz v2, :cond_1

    .line 265
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {v2}, Lorg/mapsforge/map/android/graphics/AndroidGraphicFactory;->getBitmap(Lorg/mapsforge/core/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v3

    .line 268
    .end local v0    # "mapGeneratorJob":Lorg/mapsforge/map/layer/renderer/RendererJob;
    .end local v2    # "bmp":Lorg/mapsforge/map/android/graphics/AndroidTileBitmap;
    .end local p0    # "this":Lorg/osmdroid/mapsforge/MapsForgeTileSource;
    :cond_1
    goto :goto_0

    .line 266
    :catch_0
    move-exception v0

    .line 267
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_2
    const-string v2, "OsmDroid"

    const-string v3, "###################### Mapsforge tile generation failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 269
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    monitor-exit p0

    return-object v8

    .line 245
    .end local v1    # "tile":Lorg/mapsforge/core/model/Tile;
    .end local p1    # "pMapTileIndex":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
