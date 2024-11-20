.class public Lorg/mapsforge/map/layer/Layers;
.super Ljava/lang/Object;
.source "Layers.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lorg/mapsforge/map/layer/Layer;",
        ">;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field private final displayModel:Lorg/mapsforge/map/model/DisplayModel;

.field private final layersList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/mapsforge/map/layer/Layer;",
            ">;"
        }
    .end annotation
.end field

.field private final redrawer:Lorg/mapsforge/map/layer/Redrawer;


# direct methods
.method constructor <init>(Lorg/mapsforge/map/layer/Redrawer;Lorg/mapsforge/map/model/DisplayModel;)V
    .locals 1
    .param p1, "redrawer"    # Lorg/mapsforge/map/layer/Redrawer;
    .param p2, "displayModel"    # Lorg/mapsforge/map/model/DisplayModel;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lorg/mapsforge/map/layer/Layers;->redrawer:Lorg/mapsforge/map/layer/Redrawer;

    .line 54
    iput-object p2, p0, Lorg/mapsforge/map/layer/Layers;->displayModel:Lorg/mapsforge/map/model/DisplayModel;

    .line 56
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/mapsforge/map/layer/Layers;->layersList:Ljava/util/List;

    .line 57
    return-void
.end method

.method private static checkIsNull(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/mapsforge/map/layer/Layer;",
            ">;)V"
        }
    .end annotation

    .line 33
    .local p0, "layers":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/mapsforge/map/layer/Layer;>;"
    if-eqz p0, :cond_1

    .line 37
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mapsforge/map/layer/Layer;

    .line 38
    .local v1, "layer":Lorg/mapsforge/map/layer/Layer;
    invoke-static {v1}, Lorg/mapsforge/map/layer/Layers;->checkIsNull(Lorg/mapsforge/map/layer/Layer;)V

    .line 39
    .end local v1    # "layer":Lorg/mapsforge/map/layer/Layer;
    goto :goto_0

    .line 40
    :cond_0
    return-void

    .line 34
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "layers must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkIsNull(Lorg/mapsforge/map/layer/Layer;)V
    .locals 2
    .param p0, "layer"    # Lorg/mapsforge/map/layer/Layer;

    .line 43
    if-eqz p0, :cond_0

    .line 46
    return-void

    .line 44
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "layer must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public declared-synchronized add(ILorg/mapsforge/map/layer/Layer;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "layer"    # Lorg/mapsforge/map/layer/Layer;

    monitor-enter p0

    .line 70
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lorg/mapsforge/map/layer/Layers;->add(ILorg/mapsforge/map/layer/Layer;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    monitor-exit p0

    return-void

    .line 69
    .end local p0    # "this":Lorg/mapsforge/map/layer/Layers;
    .end local p1    # "index":I
    .end local p2    # "layer":Lorg/mapsforge/map/layer/Layer;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized add(ILorg/mapsforge/map/layer/Layer;Z)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "layer"    # Lorg/mapsforge/map/layer/Layer;
    .param p3, "redraw"    # Z

    monitor-enter p0

    .line 82
    :try_start_0
    invoke-static {p2}, Lorg/mapsforge/map/layer/Layers;->checkIsNull(Lorg/mapsforge/map/layer/Layer;)V

    .line 83
    iget-object v0, p0, Lorg/mapsforge/map/layer/Layers;->displayModel:Lorg/mapsforge/map/model/DisplayModel;

    invoke-virtual {p2, v0}, Lorg/mapsforge/map/layer/Layer;->setDisplayModel(Lorg/mapsforge/map/model/DisplayModel;)V

    .line 84
    iget-object v0, p0, Lorg/mapsforge/map/layer/Layers;->layersList:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 85
    iget-object v0, p0, Lorg/mapsforge/map/layer/Layers;->redrawer:Lorg/mapsforge/map/layer/Redrawer;

    invoke-virtual {p2, v0}, Lorg/mapsforge/map/layer/Layer;->assign(Lorg/mapsforge/map/layer/Redrawer;)V

    .line 86
    if-eqz p3, :cond_0

    .line 87
    iget-object v0, p0, Lorg/mapsforge/map/layer/Layers;->redrawer:Lorg/mapsforge/map/layer/Redrawer;

    invoke-interface {v0}, Lorg/mapsforge/map/layer/Redrawer;->redrawLayers()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    .end local p0    # "this":Lorg/mapsforge/map/layer/Layers;
    :cond_0
    monitor-exit p0

    return-void

    .line 81
    .end local p1    # "index":I
    .end local p2    # "layer":Lorg/mapsforge/map/layer/Layer;
    .end local p3    # "redraw":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized add(Lorg/mapsforge/map/layer/Layer;)V
    .locals 1
    .param p1, "layer"    # Lorg/mapsforge/map/layer/Layer;

    monitor-enter p0

    .line 101
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lorg/mapsforge/map/layer/Layers;->add(Lorg/mapsforge/map/layer/Layer;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    monitor-exit p0

    return-void

    .line 100
    .end local p0    # "this":Lorg/mapsforge/map/layer/Layers;
    .end local p1    # "layer":Lorg/mapsforge/map/layer/Layer;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized add(Lorg/mapsforge/map/layer/Layer;Z)V
    .locals 1
    .param p1, "layer"    # Lorg/mapsforge/map/layer/Layer;
    .param p2, "redraw"    # Z

    monitor-enter p0

    .line 112
    :try_start_0
    invoke-static {p1}, Lorg/mapsforge/map/layer/Layers;->checkIsNull(Lorg/mapsforge/map/layer/Layer;)V

    .line 113
    iget-object v0, p0, Lorg/mapsforge/map/layer/Layers;->displayModel:Lorg/mapsforge/map/model/DisplayModel;

    invoke-virtual {p1, v0}, Lorg/mapsforge/map/layer/Layer;->setDisplayModel(Lorg/mapsforge/map/model/DisplayModel;)V

    .line 115
    iget-object v0, p0, Lorg/mapsforge/map/layer/Layers;->layersList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    iget-object v0, p0, Lorg/mapsforge/map/layer/Layers;->redrawer:Lorg/mapsforge/map/layer/Redrawer;

    invoke-virtual {p1, v0}, Lorg/mapsforge/map/layer/Layer;->assign(Lorg/mapsforge/map/layer/Redrawer;)V

    .line 117
    if-eqz p2, :cond_0

    .line 118
    iget-object v0, p0, Lorg/mapsforge/map/layer/Layers;->redrawer:Lorg/mapsforge/map/layer/Redrawer;

    invoke-interface {v0}, Lorg/mapsforge/map/layer/Redrawer;->redrawLayers()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    .end local p0    # "this":Lorg/mapsforge/map/layer/Layers;
    :cond_0
    monitor-exit p0

    return-void

    .line 111
    .end local p1    # "layer":Lorg/mapsforge/map/layer/Layer;
    .end local p2    # "redraw":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addAll(ILjava/util/Collection;)V
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "Lorg/mapsforge/map/layer/Layer;",
            ">;)V"
        }
    .end annotation

    .local p2, "layers":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/mapsforge/map/layer/Layer;>;"
    monitor-enter p0

    .line 167
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lorg/mapsforge/map/layer/Layers;->addAll(ILjava/util/Collection;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    monitor-exit p0

    return-void

    .line 166
    .end local p0    # "this":Lorg/mapsforge/map/layer/Layers;
    .end local p1    # "index":I
    .end local p2    # "layers":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/mapsforge/map/layer/Layer;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addAll(ILjava/util/Collection;Z)V
    .locals 3
    .param p1, "index"    # I
    .param p3, "redraw"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "Lorg/mapsforge/map/layer/Layer;",
            ">;Z)V"
        }
    .end annotation

    .local p2, "layers":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/mapsforge/map/layer/Layer;>;"
    monitor-enter p0

    .line 179
    :try_start_0
    invoke-static {p2}, Lorg/mapsforge/map/layer/Layers;->checkIsNull(Ljava/util/Collection;)V

    .line 180
    iget-object v0, p0, Lorg/mapsforge/map/layer/Layers;->layersList:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 181
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mapsforge/map/layer/Layer;

    .line 182
    .local v1, "layer":Lorg/mapsforge/map/layer/Layer;
    iget-object v2, p0, Lorg/mapsforge/map/layer/Layers;->displayModel:Lorg/mapsforge/map/model/DisplayModel;

    invoke-virtual {v1, v2}, Lorg/mapsforge/map/layer/Layer;->setDisplayModel(Lorg/mapsforge/map/model/DisplayModel;)V

    .line 183
    iget-object v2, p0, Lorg/mapsforge/map/layer/Layers;->redrawer:Lorg/mapsforge/map/layer/Redrawer;

    invoke-virtual {v1, v2}, Lorg/mapsforge/map/layer/Layer;->assign(Lorg/mapsforge/map/layer/Redrawer;)V

    .line 184
    .end local v1    # "layer":Lorg/mapsforge/map/layer/Layer;
    goto :goto_0

    .line 185
    .end local p0    # "this":Lorg/mapsforge/map/layer/Layers;
    :cond_0
    if-eqz p3, :cond_1

    .line 186
    iget-object v0, p0, Lorg/mapsforge/map/layer/Layers;->redrawer:Lorg/mapsforge/map/layer/Redrawer;

    invoke-interface {v0}, Lorg/mapsforge/map/layer/Redrawer;->redrawLayers()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    :cond_1
    monitor-exit p0

    return-void

    .line 178
    .end local p1    # "index":I
    .end local p2    # "layers":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/mapsforge/map/layer/Layer;>;"
    .end local p3    # "redraw":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addAll(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/mapsforge/map/layer/Layer;",
            ">;)V"
        }
    .end annotation

    .local p1, "layers":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/mapsforge/map/layer/Layer;>;"
    monitor-enter p0

    .line 132
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lorg/mapsforge/map/layer/Layers;->addAll(Ljava/util/Collection;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    monitor-exit p0

    return-void

    .line 131
    .end local p0    # "this":Lorg/mapsforge/map/layer/Layers;
    .end local p1    # "layers":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/mapsforge/map/layer/Layer;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addAll(Ljava/util/Collection;Z)V
    .locals 3
    .param p2, "redraw"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/mapsforge/map/layer/Layer;",
            ">;Z)V"
        }
    .end annotation

    .local p1, "layers":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/mapsforge/map/layer/Layer;>;"
    monitor-enter p0

    .line 143
    :try_start_0
    invoke-static {p1}, Lorg/mapsforge/map/layer/Layers;->checkIsNull(Ljava/util/Collection;)V

    .line 144
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mapsforge/map/layer/Layer;

    .line 145
    .local v1, "layer":Lorg/mapsforge/map/layer/Layer;
    iget-object v2, p0, Lorg/mapsforge/map/layer/Layers;->displayModel:Lorg/mapsforge/map/model/DisplayModel;

    invoke-virtual {v1, v2}, Lorg/mapsforge/map/layer/Layer;->setDisplayModel(Lorg/mapsforge/map/model/DisplayModel;)V

    .line 146
    .end local v1    # "layer":Lorg/mapsforge/map/layer/Layer;
    goto :goto_0

    .line 147
    .end local p0    # "this":Lorg/mapsforge/map/layer/Layers;
    :cond_0
    iget-object v0, p0, Lorg/mapsforge/map/layer/Layers;->layersList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 148
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mapsforge/map/layer/Layer;

    .line 149
    .restart local v1    # "layer":Lorg/mapsforge/map/layer/Layer;
    iget-object v2, p0, Lorg/mapsforge/map/layer/Layers;->redrawer:Lorg/mapsforge/map/layer/Redrawer;

    invoke-virtual {v1, v2}, Lorg/mapsforge/map/layer/Layer;->assign(Lorg/mapsforge/map/layer/Redrawer;)V

    .line 150
    .end local v1    # "layer":Lorg/mapsforge/map/layer/Layer;
    goto :goto_1

    .line 151
    :cond_1
    if-eqz p2, :cond_2

    .line 152
    iget-object v0, p0, Lorg/mapsforge/map/layer/Layers;->redrawer:Lorg/mapsforge/map/layer/Redrawer;

    invoke-interface {v0}, Lorg/mapsforge/map/layer/Redrawer;->redrawLayers()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    :cond_2
    monitor-exit p0

    return-void

    .line 142
    .end local p1    # "layers":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/mapsforge/map/layer/Layer;>;"
    .end local p2    # "redraw":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    .line 199
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lorg/mapsforge/map/layer/Layers;->clear(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    monitor-exit p0

    return-void

    .line 198
    .end local p0    # "this":Lorg/mapsforge/map/layer/Layers;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clear(Z)V
    .locals 2
    .param p1, "redraw"    # Z

    monitor-enter p0

    .line 209
    :try_start_0
    iget-object v0, p0, Lorg/mapsforge/map/layer/Layers;->layersList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mapsforge/map/layer/Layer;

    .line 210
    .local v1, "layer":Lorg/mapsforge/map/layer/Layer;
    invoke-virtual {v1}, Lorg/mapsforge/map/layer/Layer;->unassign()V

    .line 211
    .end local v1    # "layer":Lorg/mapsforge/map/layer/Layer;
    goto :goto_0

    .line 212
    .end local p0    # "this":Lorg/mapsforge/map/layer/Layers;
    :cond_0
    iget-object v0, p0, Lorg/mapsforge/map/layer/Layers;->layersList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 213
    if-eqz p1, :cond_1

    .line 214
    iget-object v0, p0, Lorg/mapsforge/map/layer/Layers;->redrawer:Lorg/mapsforge/map/layer/Redrawer;

    invoke-interface {v0}, Lorg/mapsforge/map/layer/Redrawer;->redrawLayers()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    :cond_1
    monitor-exit p0

    return-void

    .line 208
    .end local p1    # "redraw":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized contains(Lorg/mapsforge/map/layer/Layer;)Z
    .locals 1
    .param p1, "layer"    # Lorg/mapsforge/map/layer/Layer;

    monitor-enter p0

    .line 222
    :try_start_0
    invoke-static {p1}, Lorg/mapsforge/map/layer/Layers;->checkIsNull(Lorg/mapsforge/map/layer/Layer;)V

    .line 223
    iget-object v0, p0, Lorg/mapsforge/map/layer/Layers;->layersList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 221
    .end local p0    # "this":Lorg/mapsforge/map/layer/Layers;
    .end local p1    # "layer":Lorg/mapsforge/map/layer/Layer;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized get(I)Lorg/mapsforge/map/layer/Layer;
    .locals 1
    .param p1, "index"    # I

    monitor-enter p0

    .line 230
    :try_start_0
    iget-object v0, p0, Lorg/mapsforge/map/layer/Layers;->layersList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mapsforge/map/layer/Layer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 230
    .end local p0    # "this":Lorg/mapsforge/map/layer/Layers;
    .end local p1    # "index":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized indexOf(Lorg/mapsforge/map/layer/Layer;)I
    .locals 1
    .param p1, "layer"    # Lorg/mapsforge/map/layer/Layer;

    monitor-enter p0

    .line 237
    :try_start_0
    invoke-static {p1}, Lorg/mapsforge/map/layer/Layers;->checkIsNull(Lorg/mapsforge/map/layer/Layer;)V

    .line 238
    iget-object v0, p0, Lorg/mapsforge/map/layer/Layers;->layersList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 236
    .end local p0    # "this":Lorg/mapsforge/map/layer/Layers;
    .end local p1    # "layer":Lorg/mapsforge/map/layer/Layer;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isEmpty()Z
    .locals 1

    monitor-enter p0

    .line 245
    :try_start_0
    iget-object v0, p0, Lorg/mapsforge/map/layer/Layers;->layersList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 245
    .end local p0    # "this":Lorg/mapsforge/map/layer/Layers;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/mapsforge/map/layer/Layer;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 253
    :try_start_0
    iget-object v0, p0, Lorg/mapsforge/map/layer/Layers;->layersList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 253
    .end local p0    # "this":Lorg/mapsforge/map/layer/Layers;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized remove(I)Lorg/mapsforge/map/layer/Layer;
    .locals 1
    .param p1, "index"    # I

    monitor-enter p0

    .line 266
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lorg/mapsforge/map/layer/Layers;->remove(IZ)Lorg/mapsforge/map/layer/Layer;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 266
    .end local p0    # "this":Lorg/mapsforge/map/layer/Layers;
    .end local p1    # "index":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized remove(IZ)Lorg/mapsforge/map/layer/Layer;
    .locals 2
    .param p1, "index"    # I
    .param p2, "redraw"    # Z

    monitor-enter p0

    .line 277
    :try_start_0
    iget-object v0, p0, Lorg/mapsforge/map/layer/Layers;->layersList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mapsforge/map/layer/Layer;

    .line 278
    .local v0, "layer":Lorg/mapsforge/map/layer/Layer;
    invoke-virtual {v0}, Lorg/mapsforge/map/layer/Layer;->unassign()V

    .line 279
    if-eqz p2, :cond_0

    .line 280
    iget-object v1, p0, Lorg/mapsforge/map/layer/Layers;->redrawer:Lorg/mapsforge/map/layer/Redrawer;

    invoke-interface {v1}, Lorg/mapsforge/map/layer/Redrawer;->redrawLayers()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    .end local p0    # "this":Lorg/mapsforge/map/layer/Layers;
    :cond_0
    monitor-exit p0

    return-object v0

    .line 276
    .end local v0    # "layer":Lorg/mapsforge/map/layer/Layer;
    .end local p1    # "index":I
    .end local p2    # "redraw":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized remove(Lorg/mapsforge/map/layer/Layer;)Z
    .locals 1
    .param p1, "layer"    # Lorg/mapsforge/map/layer/Layer;

    monitor-enter p0

    .line 295
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lorg/mapsforge/map/layer/Layers;->remove(Lorg/mapsforge/map/layer/Layer;Z)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 295
    .end local p0    # "this":Lorg/mapsforge/map/layer/Layers;
    .end local p1    # "layer":Lorg/mapsforge/map/layer/Layer;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized remove(Lorg/mapsforge/map/layer/Layer;Z)Z
    .locals 1
    .param p1, "layer"    # Lorg/mapsforge/map/layer/Layer;
    .param p2, "redraw"    # Z

    monitor-enter p0

    .line 306
    :try_start_0
    invoke-static {p1}, Lorg/mapsforge/map/layer/Layers;->checkIsNull(Lorg/mapsforge/map/layer/Layer;)V

    .line 307
    iget-object v0, p0, Lorg/mapsforge/map/layer/Layers;->layersList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 308
    invoke-virtual {p1}, Lorg/mapsforge/map/layer/Layer;->unassign()V

    .line 309
    if-eqz p2, :cond_0

    .line 310
    iget-object v0, p0, Lorg/mapsforge/map/layer/Layers;->redrawer:Lorg/mapsforge/map/layer/Redrawer;

    invoke-interface {v0}, Lorg/mapsforge/map/layer/Redrawer;->redrawLayers()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    .end local p0    # "this":Lorg/mapsforge/map/layer/Layers;
    :cond_0
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    .line 314
    :cond_1
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    .line 305
    .end local p1    # "layer":Lorg/mapsforge/map/layer/Layer;
    .end local p2    # "redraw":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized size()I
    .locals 1

    monitor-enter p0

    .line 321
    :try_start_0
    iget-object v0, p0, Lorg/mapsforge/map/layer/Layers;->layersList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 321
    .end local p0    # "this":Lorg/mapsforge/map/layer/Layers;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
