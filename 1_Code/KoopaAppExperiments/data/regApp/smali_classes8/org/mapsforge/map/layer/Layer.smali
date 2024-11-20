.class public abstract Lorg/mapsforge/map/layer/Layer;
.super Ljava/lang/Object;
.source "Layer.java"


# instance fields
.field private assignedRedrawer:Lorg/mapsforge/map/layer/Redrawer;

.field protected displayModel:Lorg/mapsforge/map/model/DisplayModel;

.field private visible:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mapsforge/map/layer/Layer;->visible:Z

    return-void
.end method


# virtual methods
.method final declared-synchronized assign(Lorg/mapsforge/map/layer/Redrawer;)V
    .locals 2
    .param p1, "redrawer"    # Lorg/mapsforge/map/layer/Redrawer;

    monitor-enter p0

    .line 156
    :try_start_0
    iget-object v0, p0, Lorg/mapsforge/map/layer/Layer;->assignedRedrawer:Lorg/mapsforge/map/layer/Redrawer;

    if-nez v0, :cond_0

    .line 160
    iput-object p1, p0, Lorg/mapsforge/map/layer/Layer;->assignedRedrawer:Lorg/mapsforge/map/layer/Redrawer;

    .line 161
    invoke-virtual {p0}, Lorg/mapsforge/map/layer/Layer;->onAdd()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    monitor-exit p0

    return-void

    .line 157
    .end local p0    # "this":Lorg/mapsforge/map/layer/Layer;
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "layer already assigned"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    .end local p1    # "redrawer":Lorg/mapsforge/map/layer/Redrawer;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public abstract draw(Lorg/mapsforge/core/model/BoundingBox;BLorg/mapsforge/core/graphics/Canvas;Lorg/mapsforge/core/model/Point;)V
.end method

.method public declared-synchronized getDisplayModel()Lorg/mapsforge/map/model/DisplayModel;
    .locals 1

    monitor-enter p0

    .line 108
    :try_start_0
    iget-object v0, p0, Lorg/mapsforge/map/layer/Layer;->displayModel:Lorg/mapsforge/map/model/DisplayModel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 108
    .end local p0    # "this":Lorg/mapsforge/map/layer/Layer;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPosition()Lorg/mapsforge/core/model/LatLong;
    .locals 1

    .line 48
    const/4 v0, 0x0

    return-object v0
.end method

.method public final isVisible()Z
    .locals 1

    .line 55
    iget-boolean v0, p0, Lorg/mapsforge/map/layer/Layer;->visible:Z

    return v0
.end method

.method protected onAdd()V
    .locals 0

    .line 146
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 60
    return-void
.end method

.method public onLongPress(Lorg/mapsforge/core/model/LatLong;Lorg/mapsforge/core/model/Point;Lorg/mapsforge/core/model/Point;)Z
    .locals 1
    .param p1, "tapLatLong"    # Lorg/mapsforge/core/model/LatLong;
    .param p2, "layerXY"    # Lorg/mapsforge/core/model/Point;
    .param p3, "tapXY"    # Lorg/mapsforge/core/model/Point;

    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method protected onRemove()V
    .locals 0

    .line 153
    return-void
.end method

.method public onTap(Lorg/mapsforge/core/model/LatLong;Lorg/mapsforge/core/model/Point;Lorg/mapsforge/core/model/Point;)Z
    .locals 1
    .param p1, "tapLatLong"    # Lorg/mapsforge/core/model/LatLong;
    .param p2, "layerXY"    # Lorg/mapsforge/core/model/Point;
    .param p3, "tapXY"    # Lorg/mapsforge/core/model/Point;

    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public final declared-synchronized requestRedraw()V
    .locals 1

    monitor-enter p0

    .line 97
    :try_start_0
    iget-object v0, p0, Lorg/mapsforge/map/layer/Layer;->assignedRedrawer:Lorg/mapsforge/map/layer/Redrawer;

    if-eqz v0, :cond_0

    .line 98
    invoke-interface {v0}, Lorg/mapsforge/map/layer/Redrawer;->redrawLayers()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    .end local p0    # "this":Lorg/mapsforge/map/layer/Layer;
    :cond_0
    monitor-exit p0

    return-void

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDisplayModel(Lorg/mapsforge/map/model/DisplayModel;)V
    .locals 0
    .param p1, "displayModel"    # Lorg/mapsforge/map/model/DisplayModel;

    monitor-enter p0

    .line 118
    :try_start_0
    iput-object p1, p0, Lorg/mapsforge/map/layer/Layer;->displayModel:Lorg/mapsforge/map/model/DisplayModel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    monitor-exit p0

    return-void

    .line 117
    .end local p0    # "this":Lorg/mapsforge/map/layer/Layer;
    .end local p1    # "displayModel":Lorg/mapsforge/map/model/DisplayModel;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final setVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .line 127
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/mapsforge/map/layer/Layer;->setVisible(ZZ)V

    .line 128
    return-void
.end method

.method public setVisible(ZZ)V
    .locals 0
    .param p1, "visible"    # Z
    .param p2, "redraw"    # Z

    .line 134
    iput-boolean p1, p0, Lorg/mapsforge/map/layer/Layer;->visible:Z

    .line 136
    if-eqz p2, :cond_0

    .line 137
    invoke-virtual {p0}, Lorg/mapsforge/map/layer/Layer;->requestRedraw()V

    .line 139
    :cond_0
    return-void
.end method

.method final declared-synchronized unassign()V
    .locals 2

    monitor-enter p0

    .line 165
    :try_start_0
    iget-object v0, p0, Lorg/mapsforge/map/layer/Layer;->assignedRedrawer:Lorg/mapsforge/map/layer/Redrawer;

    if-eqz v0, :cond_0

    .line 169
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mapsforge/map/layer/Layer;->assignedRedrawer:Lorg/mapsforge/map/layer/Redrawer;

    .line 170
    invoke-virtual {p0}, Lorg/mapsforge/map/layer/Layer;->onRemove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    monitor-exit p0

    return-void

    .line 166
    .end local p0    # "this":Lorg/mapsforge/map/layer/Layer;
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "layer is not assigned"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 164
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
