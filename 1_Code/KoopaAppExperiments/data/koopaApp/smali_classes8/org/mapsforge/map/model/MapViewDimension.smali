.class public Lorg/mapsforge/map/model/MapViewDimension;
.super Lorg/mapsforge/map/model/common/Observable;
.source "MapViewDimension.java"


# instance fields
.field private dimension:Lorg/mapsforge/core/model/Dimension;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lorg/mapsforge/map/model/common/Observable;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized getDimension()Lorg/mapsforge/core/model/Dimension;
    .locals 1

    monitor-enter p0

    .line 27
    :try_start_0
    iget-object v0, p0, Lorg/mapsforge/map/model/MapViewDimension;->dimension:Lorg/mapsforge/core/model/Dimension;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 27
    .end local p0    # "this":Lorg/mapsforge/map/model/MapViewDimension;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setDimension(Lorg/mapsforge/core/model/Dimension;)V
    .locals 1
    .param p1, "dimension"    # Lorg/mapsforge/core/model/Dimension;

    .line 31
    monitor-enter p0

    .line 32
    :try_start_0
    iput-object p1, p0, Lorg/mapsforge/map/model/MapViewDimension;->dimension:Lorg/mapsforge/core/model/Dimension;

    .line 33
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    invoke-virtual {p0}, Lorg/mapsforge/map/model/MapViewDimension;->notifyObservers()V

    .line 35
    return-void

    .line 33
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
