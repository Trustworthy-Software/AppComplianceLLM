.class public final Lorg/mapsforge/map/controller/LayerManagerController;
.super Ljava/lang/Object;
.source "LayerManagerController.java"

# interfaces
.implements Lorg/mapsforge/map/model/common/Observer;


# instance fields
.field private final layerManager:Lorg/mapsforge/map/layer/LayerManager;


# direct methods
.method private constructor <init>(Lorg/mapsforge/map/layer/LayerManager;)V
    .locals 0
    .param p1, "layerManager"    # Lorg/mapsforge/map/layer/LayerManager;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lorg/mapsforge/map/controller/LayerManagerController;->layerManager:Lorg/mapsforge/map/layer/LayerManager;

    .line 35
    return-void
.end method

.method public static create(Lorg/mapsforge/map/layer/LayerManager;Lorg/mapsforge/map/model/Model;)Lorg/mapsforge/map/controller/LayerManagerController;
    .locals 2
    .param p0, "layerManager"    # Lorg/mapsforge/map/layer/LayerManager;
    .param p1, "model"    # Lorg/mapsforge/map/model/Model;

    .line 23
    new-instance v0, Lorg/mapsforge/map/controller/LayerManagerController;

    invoke-direct {v0, p0}, Lorg/mapsforge/map/controller/LayerManagerController;-><init>(Lorg/mapsforge/map/layer/LayerManager;)V

    .line 25
    .local v0, "layerManagerController":Lorg/mapsforge/map/controller/LayerManagerController;
    iget-object v1, p1, Lorg/mapsforge/map/model/Model;->mapViewDimension:Lorg/mapsforge/map/model/MapViewDimension;

    invoke-virtual {v1, v0}, Lorg/mapsforge/map/model/MapViewDimension;->addObserver(Lorg/mapsforge/map/model/common/Observer;)V

    .line 26
    iget-object v1, p1, Lorg/mapsforge/map/model/Model;->mapViewPosition:Lorg/mapsforge/map/model/IMapViewPosition;

    invoke-interface {v1, v0}, Lorg/mapsforge/map/model/IMapViewPosition;->addObserver(Lorg/mapsforge/map/model/common/Observer;)V

    .line 28
    return-object v0
.end method


# virtual methods
.method public onChange()V
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/mapsforge/map/controller/LayerManagerController;->layerManager:Lorg/mapsforge/map/layer/LayerManager;

    invoke-virtual {v0}, Lorg/mapsforge/map/layer/LayerManager;->redrawLayers()V

    .line 40
    return-void
.end method
