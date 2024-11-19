.class public abstract Lorg/mapsforge/map/android/util/MapViewerTemplate;
.super Landroid/app/Activity;
.source "MapViewerTemplate.java"


# instance fields
.field protected mapView:Lorg/mapsforge/map/android/view/MapView;

.field protected preferencesFacade:Lorg/mapsforge/map/model/common/PreferencesFacade;

.field protected renderThemeStyleMenu:Lorg/mapsforge/map/rendertheme/XmlRenderThemeStyleMenu;

.field protected tileCaches:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/mapsforge/map/layer/cache/TileCache;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mapsforge/map/android/util/MapViewerTemplate;->tileCaches:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected checkPermissionsAndCreateLayersAndControls()V
    .locals 0

    .line 267
    invoke-virtual {p0}, Lorg/mapsforge/map/android/util/MapViewerTemplate;->createLayers()V

    .line 268
    invoke-virtual {p0}, Lorg/mapsforge/map/android/util/MapViewerTemplate;->createControls()V

    .line 269
    return-void
.end method

.method protected createControls()V
    .locals 1

    .line 96
    iget-object v0, p0, Lorg/mapsforge/map/android/util/MapViewerTemplate;->mapView:Lorg/mapsforge/map/android/view/MapView;

    invoke-virtual {v0}, Lorg/mapsforge/map/android/view/MapView;->getModel()Lorg/mapsforge/map/model/Model;

    move-result-object v0

    iget-object v0, v0, Lorg/mapsforge/map/model/Model;->mapViewPosition:Lorg/mapsforge/map/model/IMapViewPosition;

    invoke-virtual {p0, v0}, Lorg/mapsforge/map/android/util/MapViewerTemplate;->initializePosition(Lorg/mapsforge/map/model/IMapViewPosition;)Lorg/mapsforge/map/model/IMapViewPosition;

    .line 97
    return-void
.end method

.method protected abstract createLayers()V
.end method

.method protected createMapViews()V
    .locals 2

    .line 134
    invoke-virtual {p0}, Lorg/mapsforge/map/android/util/MapViewerTemplate;->getMapView()Lorg/mapsforge/map/android/view/MapView;

    move-result-object v0

    iput-object v0, p0, Lorg/mapsforge/map/android/util/MapViewerTemplate;->mapView:Lorg/mapsforge/map/android/view/MapView;

    .line 135
    invoke-virtual {v0}, Lorg/mapsforge/map/android/view/MapView;->getModel()Lorg/mapsforge/map/model/Model;

    move-result-object v0

    iget-object v1, p0, Lorg/mapsforge/map/android/util/MapViewerTemplate;->preferencesFacade:Lorg/mapsforge/map/model/common/PreferencesFacade;

    invoke-virtual {v0, v1}, Lorg/mapsforge/map/model/Model;->init(Lorg/mapsforge/map/model/common/PreferencesFacade;)V

    .line 136
    iget-object v0, p0, Lorg/mapsforge/map/android/util/MapViewerTemplate;->mapView:Lorg/mapsforge/map/android/view/MapView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/mapsforge/map/android/view/MapView;->setClickable(Z)V

    .line 137
    iget-object v0, p0, Lorg/mapsforge/map/android/util/MapViewerTemplate;->mapView:Lorg/mapsforge/map/android/view/MapView;

    invoke-virtual {v0}, Lorg/mapsforge/map/android/view/MapView;->getMapScaleBar()Lorg/mapsforge/map/scalebar/MapScaleBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/mapsforge/map/scalebar/MapScaleBar;->setVisible(Z)V

    .line 138
    iget-object v0, p0, Lorg/mapsforge/map/android/util/MapViewerTemplate;->mapView:Lorg/mapsforge/map/android/view/MapView;

    invoke-virtual {p0}, Lorg/mapsforge/map/android/util/MapViewerTemplate;->hasZoomControls()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/mapsforge/map/android/view/MapView;->setBuiltInZoomControls(Z)V

    .line 139
    iget-object v0, p0, Lorg/mapsforge/map/android/util/MapViewerTemplate;->mapView:Lorg/mapsforge/map/android/view/MapView;

    invoke-virtual {v0}, Lorg/mapsforge/map/android/view/MapView;->getMapZoomControls()Lorg/mapsforge/map/android/input/MapZoomControls;

    move-result-object v0

    invoke-virtual {p0}, Lorg/mapsforge/map/android/util/MapViewerTemplate;->isZoomControlsAutoHide()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/mapsforge/map/android/input/MapZoomControls;->setAutoHide(Z)V

    .line 140
    iget-object v0, p0, Lorg/mapsforge/map/android/util/MapViewerTemplate;->mapView:Lorg/mapsforge/map/android/view/MapView;

    invoke-virtual {v0}, Lorg/mapsforge/map/android/view/MapView;->getMapZoomControls()Lorg/mapsforge/map/android/input/MapZoomControls;

    move-result-object v0

    invoke-virtual {p0}, Lorg/mapsforge/map/android/util/MapViewerTemplate;->getZoomLevelMin()B

    move-result v1

    invoke-virtual {v0, v1}, Lorg/mapsforge/map/android/input/MapZoomControls;->setZoomLevelMin(B)V

    .line 141
    iget-object v0, p0, Lorg/mapsforge/map/android/util/MapViewerTemplate;->mapView:Lorg/mapsforge/map/android/view/MapView;

    invoke-virtual {v0}, Lorg/mapsforge/map/android/view/MapView;->getMapZoomControls()Lorg/mapsforge/map/android/input/MapZoomControls;

    move-result-object v0

    invoke-virtual {p0}, Lorg/mapsforge/map/android/util/MapViewerTemplate;->getZoomLevelMax()B

    move-result v1

    invoke-virtual {v0, v1}, Lorg/mapsforge/map/android/input/MapZoomControls;->setZoomLevelMax(B)V

    .line 142
    return-void
.end method

.method protected createSharedPreferences()V
    .locals 3

    .line 149
    new-instance v0, Lorg/mapsforge/map/android/util/AndroidPreferences;

    invoke-virtual {p0}, Lorg/mapsforge/map/android/util/MapViewerTemplate;->getPersistableId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/mapsforge/map/android/util/MapViewerTemplate;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mapsforge/map/android/util/AndroidPreferences;-><init>(Landroid/content/SharedPreferences;)V

    iput-object v0, p0, Lorg/mapsforge/map/android/util/MapViewerTemplate;->preferencesFacade:Lorg/mapsforge/map/model/common/PreferencesFacade;

    .line 150
    return-void
.end method

.method protected abstract createTileCaches()V
.end method

.method protected getDefaultInitialPosition()Lorg/mapsforge/core/model/MapPosition;
    .locals 4

    .line 160
    new-instance v0, Lorg/mapsforge/core/model/MapPosition;

    new-instance v1, Lorg/mapsforge/core/model/LatLong;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3, v2, v3}, Lorg/mapsforge/core/model/LatLong;-><init>(DD)V

    invoke-virtual {p0}, Lorg/mapsforge/map/android/util/MapViewerTemplate;->getZoomLevelDefault()B

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/mapsforge/core/model/MapPosition;-><init>(Lorg/mapsforge/core/model/LatLong;B)V

    return-object v0
.end method

.method protected getHillsRenderConfig()Lorg/mapsforge/map/layer/hills/HillsRenderConfig;
    .locals 1

    .line 346
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getInitialPosition()Lorg/mapsforge/core/model/MapPosition;
    .locals 5

    .line 172
    invoke-virtual {p0}, Lorg/mapsforge/map/android/util/MapViewerTemplate;->getMapFile()Lorg/mapsforge/map/datastore/MapDataStore;

    move-result-object v0

    .line 174
    .local v0, "mapFile":Lorg/mapsforge/map/datastore/MapDataStore;
    invoke-virtual {v0}, Lorg/mapsforge/map/datastore/MapDataStore;->startPosition()Lorg/mapsforge/core/model/LatLong;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 175
    invoke-virtual {v0}, Lorg/mapsforge/map/datastore/MapDataStore;->startZoomLevel()Ljava/lang/Byte;

    move-result-object v1

    .line 176
    .local v1, "startZoomLevel":Ljava/lang/Byte;
    if-nez v1, :cond_0

    .line 178
    new-instance v2, Ljava/lang/Byte;

    const/16 v3, 0xc

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    move-object v1, v2

    .line 180
    :cond_0
    new-instance v2, Lorg/mapsforge/core/model/MapPosition;

    invoke-virtual {v0}, Lorg/mapsforge/map/datastore/MapDataStore;->startPosition()Lorg/mapsforge/core/model/LatLong;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    invoke-direct {v2, v3, v4}, Lorg/mapsforge/core/model/MapPosition;-><init>(Lorg/mapsforge/core/model/LatLong;B)V

    return-object v2

    .line 182
    .end local v1    # "startZoomLevel":Ljava/lang/Byte;
    :cond_1
    invoke-virtual {p0}, Lorg/mapsforge/map/android/util/MapViewerTemplate;->getDefaultInitialPosition()Lorg/mapsforge/core/model/MapPosition;

    move-result-object v1

    return-object v1
.end method

.method protected abstract getLayoutId()I
.end method

.method protected getMapFile()Lorg/mapsforge/map/datastore/MapDataStore;
    .locals 4

    .line 203
    new-instance v0, Lorg/mapsforge/map/reader/MapFile;

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lorg/mapsforge/map/android/util/MapViewerTemplate;->getMapFileDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {p0}, Lorg/mapsforge/map/android/util/MapViewerTemplate;->getMapFileName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/mapsforge/map/reader/MapFile;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method protected getMapFileDirectory()Ljava/io/File;
    .locals 1

    .line 193
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getMapFileName()Ljava/lang/String;
.end method

.method protected getMapView()Lorg/mapsforge/map/android/view/MapView;
    .locals 1

    .line 336
    invoke-virtual {p0}, Lorg/mapsforge/map/android/util/MapViewerTemplate;->getLayoutId()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/mapsforge/map/android/util/MapViewerTemplate;->setContentView(I)V

    .line 337
    invoke-virtual {p0}, Lorg/mapsforge/map/android/util/MapViewerTemplate;->getMapViewId()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/mapsforge/map/android/util/MapViewerTemplate;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/mapsforge/map/android/view/MapView;

    return-object v0
.end method

.method protected abstract getMapViewId()I
.end method

.method protected getMaxTextWidthFactor()F
    .locals 1

    .line 106
    const v0, 0x3f333333    # 0.7f

    return v0
.end method

.method protected getPersistableId()Ljava/lang/String;
    .locals 1

    .line 214
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getRenderTheme()Lorg/mapsforge/map/rendertheme/XmlRenderTheme;
.end method

.method protected getScreenRatio()F
    .locals 1

    .line 225
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method protected getZoomLevelDefault()B
    .locals 1

    .line 113
    const/16 v0, 0xc

    return v0
.end method

.method protected getZoomLevelMax()B
    .locals 1

    .line 127
    const/16 v0, 0x18

    return v0
.end method

.method protected getZoomLevelMin()B
    .locals 1

    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method protected hasZoomControls()Z
    .locals 1

    .line 234
    const/4 v0, 0x1

    return v0
.end method

.method protected initializePosition(Lorg/mapsforge/map/model/IMapViewPosition;)Lorg/mapsforge/map/model/IMapViewPosition;
    .locals 4
    .param p1, "mvp"    # Lorg/mapsforge/map/model/IMapViewPosition;

    .line 253
    invoke-interface {p1}, Lorg/mapsforge/map/model/IMapViewPosition;->getCenter()Lorg/mapsforge/core/model/LatLong;

    move-result-object v0

    .line 255
    .local v0, "center":Lorg/mapsforge/core/model/LatLong;
    new-instance v1, Lorg/mapsforge/core/model/LatLong;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3, v2, v3}, Lorg/mapsforge/core/model/LatLong;-><init>(DD)V

    invoke-virtual {v0, v1}, Lorg/mapsforge/core/model/LatLong;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 256
    invoke-virtual {p0}, Lorg/mapsforge/map/android/util/MapViewerTemplate;->getInitialPosition()Lorg/mapsforge/core/model/MapPosition;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/mapsforge/map/model/IMapViewPosition;->setMapPosition(Lorg/mapsforge/core/model/MapPosition;)V

    .line 258
    :cond_0
    invoke-virtual {p0}, Lorg/mapsforge/map/android/util/MapViewerTemplate;->getZoomLevelMax()B

    move-result v1

    invoke-interface {p1, v1}, Lorg/mapsforge/map/model/IMapViewPosition;->setZoomLevelMax(B)V

    .line 259
    invoke-virtual {p0}, Lorg/mapsforge/map/android/util/MapViewerTemplate;->getZoomLevelMin()B

    move-result v1

    invoke-interface {p1, v1}, Lorg/mapsforge/map/model/IMapViewPosition;->setZoomLevelMin(B)V

    .line 260
    return-object p1
.end method

.method protected isZoomControlsAutoHide()Z
    .locals 1

    .line 243
    const/4 v0, 0x1

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 278
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 279
    invoke-virtual {p0}, Lorg/mapsforge/map/android/util/MapViewerTemplate;->createSharedPreferences()V

    .line 280
    invoke-virtual {p0}, Lorg/mapsforge/map/android/util/MapViewerTemplate;->createMapViews()V

    .line 281
    invoke-virtual {p0}, Lorg/mapsforge/map/android/util/MapViewerTemplate;->createTileCaches()V

    .line 282
    invoke-virtual {p0}, Lorg/mapsforge/map/android/util/MapViewerTemplate;->checkPermissionsAndCreateLayersAndControls()V

    .line 283
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 301
    iget-object v0, p0, Lorg/mapsforge/map/android/util/MapViewerTemplate;->mapView:Lorg/mapsforge/map/android/view/MapView;

    invoke-virtual {v0}, Lorg/mapsforge/map/android/view/MapView;->destroyAll()V

    .line 302
    invoke-static {}, Lorg/mapsforge/map/android/graphics/AndroidGraphicFactory;->clearResourceMemoryCache()V

    .line 303
    iget-object v0, p0, Lorg/mapsforge/map/android/util/MapViewerTemplate;->tileCaches:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 304
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 305
    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 291
    iget-object v0, p0, Lorg/mapsforge/map/android/util/MapViewerTemplate;->mapView:Lorg/mapsforge/map/android/view/MapView;

    invoke-virtual {v0}, Lorg/mapsforge/map/android/view/MapView;->getModel()Lorg/mapsforge/map/model/Model;

    move-result-object v0

    iget-object v1, p0, Lorg/mapsforge/map/android/util/MapViewerTemplate;->preferencesFacade:Lorg/mapsforge/map/model/common/PreferencesFacade;

    invoke-virtual {v0, v1}, Lorg/mapsforge/map/model/Model;->save(Lorg/mapsforge/map/model/common/PreferencesFacade;)V

    .line 292
    iget-object v0, p0, Lorg/mapsforge/map/android/util/MapViewerTemplate;->preferencesFacade:Lorg/mapsforge/map/model/common/PreferencesFacade;

    invoke-interface {v0}, Lorg/mapsforge/map/model/common/PreferencesFacade;->save()V

    .line 293
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 294
    return-void
.end method

.method protected purgeTileCaches()V
    .locals 2

    .line 312
    iget-object v0, p0, Lorg/mapsforge/map/android/util/MapViewerTemplate;->tileCaches:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mapsforge/map/layer/cache/TileCache;

    .line 313
    .local v1, "tileCache":Lorg/mapsforge/map/layer/cache/TileCache;
    invoke-interface {v1}, Lorg/mapsforge/map/layer/cache/TileCache;->purge()V

    .line 314
    .end local v1    # "tileCache":Lorg/mapsforge/map/layer/cache/TileCache;
    goto :goto_0

    .line 315
    :cond_0
    iget-object v0, p0, Lorg/mapsforge/map/android/util/MapViewerTemplate;->tileCaches:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 316
    return-void
.end method

.method protected redrawLayers()V
    .locals 1

    .line 319
    iget-object v0, p0, Lorg/mapsforge/map/android/util/MapViewerTemplate;->mapView:Lorg/mapsforge/map/android/view/MapView;

    invoke-virtual {v0}, Lorg/mapsforge/map/android/view/MapView;->getLayerManager()Lorg/mapsforge/map/layer/LayerManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mapsforge/map/layer/LayerManager;->redrawLayers()V

    .line 320
    return-void
.end method

.method protected setContentView()V
    .locals 1

    .line 326
    iget-object v0, p0, Lorg/mapsforge/map/android/util/MapViewerTemplate;->mapView:Lorg/mapsforge/map/android/view/MapView;

    invoke-virtual {p0, v0}, Lorg/mapsforge/map/android/util/MapViewerTemplate;->setContentView(Landroid/view/View;)V

    .line 327
    return-void
.end method
