.class public Lorg/mapsforge/map/model/Model;
.super Ljava/lang/Object;
.source "Model.java"

# interfaces
.implements Lorg/mapsforge/map/model/common/Persistable;


# instance fields
.field public final displayModel:Lorg/mapsforge/map/model/DisplayModel;

.field public final frameBufferModel:Lorg/mapsforge/map/model/FrameBufferModel;

.field public final mapViewDimension:Lorg/mapsforge/map/model/MapViewDimension;

.field public final mapViewPosition:Lorg/mapsforge/map/model/IMapViewPosition;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lorg/mapsforge/map/model/DisplayModel;

    invoke-direct {v0}, Lorg/mapsforge/map/model/DisplayModel;-><init>()V

    iput-object v0, p0, Lorg/mapsforge/map/model/Model;->displayModel:Lorg/mapsforge/map/model/DisplayModel;

    .line 25
    new-instance v1, Lorg/mapsforge/map/model/FrameBufferModel;

    invoke-direct {v1}, Lorg/mapsforge/map/model/FrameBufferModel;-><init>()V

    iput-object v1, p0, Lorg/mapsforge/map/model/Model;->frameBufferModel:Lorg/mapsforge/map/model/FrameBufferModel;

    .line 26
    new-instance v1, Lorg/mapsforge/map/model/MapViewDimension;

    invoke-direct {v1}, Lorg/mapsforge/map/model/MapViewDimension;-><init>()V

    iput-object v1, p0, Lorg/mapsforge/map/model/Model;->mapViewDimension:Lorg/mapsforge/map/model/MapViewDimension;

    .line 30
    sget-boolean v1, Lorg/mapsforge/core/util/Parameters;->MAP_VIEW_POSITION2:Z

    if-eqz v1, :cond_0

    .line 31
    new-instance v1, Lorg/mapsforge/map/model/MapViewPosition2;

    invoke-direct {v1, v0}, Lorg/mapsforge/map/model/MapViewPosition2;-><init>(Lorg/mapsforge/map/model/DisplayModel;)V

    iput-object v1, p0, Lorg/mapsforge/map/model/Model;->mapViewPosition:Lorg/mapsforge/map/model/IMapViewPosition;

    goto :goto_0

    .line 33
    :cond_0
    new-instance v1, Lorg/mapsforge/map/model/MapViewPosition;

    invoke-direct {v1, v0}, Lorg/mapsforge/map/model/MapViewPosition;-><init>(Lorg/mapsforge/map/model/DisplayModel;)V

    iput-object v1, p0, Lorg/mapsforge/map/model/Model;->mapViewPosition:Lorg/mapsforge/map/model/IMapViewPosition;

    .line 35
    :goto_0
    return-void
.end method


# virtual methods
.method public init(Lorg/mapsforge/map/model/common/PreferencesFacade;)V
    .locals 1
    .param p1, "preferencesFacade"    # Lorg/mapsforge/map/model/common/PreferencesFacade;

    .line 39
    iget-object v0, p0, Lorg/mapsforge/map/model/Model;->mapViewPosition:Lorg/mapsforge/map/model/IMapViewPosition;

    invoke-interface {v0, p1}, Lorg/mapsforge/map/model/IMapViewPosition;->init(Lorg/mapsforge/map/model/common/PreferencesFacade;)V

    .line 40
    return-void
.end method

.method public save(Lorg/mapsforge/map/model/common/PreferencesFacade;)V
    .locals 1
    .param p1, "preferencesFacade"    # Lorg/mapsforge/map/model/common/PreferencesFacade;

    .line 44
    iget-object v0, p0, Lorg/mapsforge/map/model/Model;->mapViewPosition:Lorg/mapsforge/map/model/IMapViewPosition;

    invoke-interface {v0, p1}, Lorg/mapsforge/map/model/IMapViewPosition;->save(Lorg/mapsforge/map/model/common/PreferencesFacade;)V

    .line 45
    return-void
.end method
