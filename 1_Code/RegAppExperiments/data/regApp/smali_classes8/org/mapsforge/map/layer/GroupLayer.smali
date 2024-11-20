.class public Lorg/mapsforge/map/layer/GroupLayer;
.super Lorg/mapsforge/map/layer/Layer;
.source "GroupLayer.java"


# instance fields
.field public final layers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/mapsforge/map/layer/Layer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lorg/mapsforge/map/layer/Layer;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mapsforge/map/layer/GroupLayer;->layers:Ljava/util/List;

    .line 38
    return-void
.end method


# virtual methods
.method public draw(Lorg/mapsforge/core/model/BoundingBox;BLorg/mapsforge/core/graphics/Canvas;Lorg/mapsforge/core/model/Point;)V
    .locals 2
    .param p1, "boundingBox"    # Lorg/mapsforge/core/model/BoundingBox;
    .param p2, "zoomLevel"    # B
    .param p3, "canvas"    # Lorg/mapsforge/core/graphics/Canvas;
    .param p4, "topLeftPoint"    # Lorg/mapsforge/core/model/Point;

    .line 42
    iget-object v0, p0, Lorg/mapsforge/map/layer/GroupLayer;->layers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mapsforge/map/layer/Layer;

    .line 43
    .local v1, "layer":Lorg/mapsforge/map/layer/Layer;
    invoke-virtual {v1, p1, p2, p3, p4}, Lorg/mapsforge/map/layer/Layer;->draw(Lorg/mapsforge/core/model/BoundingBox;BLorg/mapsforge/core/graphics/Canvas;Lorg/mapsforge/core/model/Point;)V

    .line 44
    .end local v1    # "layer":Lorg/mapsforge/map/layer/Layer;
    goto :goto_0

    .line 45
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 49
    iget-object v0, p0, Lorg/mapsforge/map/layer/GroupLayer;->layers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mapsforge/map/layer/Layer;

    .line 50
    .local v1, "layer":Lorg/mapsforge/map/layer/Layer;
    invoke-virtual {v1}, Lorg/mapsforge/map/layer/Layer;->onDestroy()V

    .line 51
    .end local v1    # "layer":Lorg/mapsforge/map/layer/Layer;
    goto :goto_0

    .line 52
    :cond_0
    return-void
.end method

.method public onLongPress(Lorg/mapsforge/core/model/LatLong;Lorg/mapsforge/core/model/Point;Lorg/mapsforge/core/model/Point;)Z
    .locals 4
    .param p1, "tapLatLong"    # Lorg/mapsforge/core/model/LatLong;
    .param p2, "layerXY"    # Lorg/mapsforge/core/model/Point;
    .param p3, "tapXY"    # Lorg/mapsforge/core/model/Point;

    .line 59
    iget-object v0, p0, Lorg/mapsforge/map/layer/GroupLayer;->layers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 60
    iget-object v2, p0, Lorg/mapsforge/map/layer/GroupLayer;->layers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mapsforge/map/layer/Layer;

    .line 61
    .local v2, "layer":Lorg/mapsforge/map/layer/Layer;
    invoke-virtual {v2, p1, p2, p3}, Lorg/mapsforge/map/layer/Layer;->onLongPress(Lorg/mapsforge/core/model/LatLong;Lorg/mapsforge/core/model/Point;Lorg/mapsforge/core/model/Point;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 62
    return v1

    .line 59
    .end local v2    # "layer":Lorg/mapsforge/map/layer/Layer;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 65
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onTap(Lorg/mapsforge/core/model/LatLong;Lorg/mapsforge/core/model/Point;Lorg/mapsforge/core/model/Point;)Z
    .locals 4
    .param p1, "tapLatLong"    # Lorg/mapsforge/core/model/LatLong;
    .param p2, "layerXY"    # Lorg/mapsforge/core/model/Point;
    .param p3, "tapXY"    # Lorg/mapsforge/core/model/Point;

    .line 73
    iget-object v0, p0, Lorg/mapsforge/map/layer/GroupLayer;->layers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 74
    iget-object v2, p0, Lorg/mapsforge/map/layer/GroupLayer;->layers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mapsforge/map/layer/Layer;

    .line 75
    .local v2, "layer":Lorg/mapsforge/map/layer/Layer;
    invoke-virtual {v2, p1, p2, p3}, Lorg/mapsforge/map/layer/Layer;->onTap(Lorg/mapsforge/core/model/LatLong;Lorg/mapsforge/core/model/Point;Lorg/mapsforge/core/model/Point;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 76
    return v1

    .line 73
    .end local v2    # "layer":Lorg/mapsforge/map/layer/Layer;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 79
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized setDisplayModel(Lorg/mapsforge/map/model/DisplayModel;)V
    .locals 2
    .param p1, "displayModel"    # Lorg/mapsforge/map/model/DisplayModel;

    monitor-enter p0

    .line 84
    :try_start_0
    invoke-super {p0, p1}, Lorg/mapsforge/map/layer/Layer;->setDisplayModel(Lorg/mapsforge/map/model/DisplayModel;)V

    .line 85
    iget-object v0, p0, Lorg/mapsforge/map/layer/GroupLayer;->layers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mapsforge/map/layer/Layer;

    .line 86
    .local v1, "layer":Lorg/mapsforge/map/layer/Layer;
    invoke-virtual {v1, p1}, Lorg/mapsforge/map/layer/Layer;->setDisplayModel(Lorg/mapsforge/map/model/DisplayModel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    .end local v1    # "layer":Lorg/mapsforge/map/layer/Layer;
    goto :goto_0

    .line 88
    .end local p0    # "this":Lorg/mapsforge/map/layer/GroupLayer;
    :cond_0
    monitor-exit p0

    return-void

    .line 83
    .end local p1    # "displayModel":Lorg/mapsforge/map/model/DisplayModel;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
