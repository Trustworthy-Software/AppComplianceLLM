.class Lorg/mapsforge/map/layer/renderer/MapWorkerPool$MapWorker;
.super Ljava/lang/Object;
.source "MapWorkerPool.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapsforge/map/layer/renderer/MapWorkerPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MapWorker"
.end annotation


# instance fields
.field private final rendererJob:Lorg/mapsforge/map/layer/renderer/RendererJob;

.field final synthetic this$0:Lorg/mapsforge/map/layer/renderer/MapWorkerPool;


# direct methods
.method constructor <init>(Lorg/mapsforge/map/layer/renderer/MapWorkerPool;Lorg/mapsforge/map/layer/renderer/RendererJob;)V
    .locals 1
    .param p1, "this$0"    # Lorg/mapsforge/map/layer/renderer/MapWorkerPool;
    .param p2, "rendererJob"    # Lorg/mapsforge/map/layer/renderer/RendererJob;

    .line 132
    iput-object p1, p0, Lorg/mapsforge/map/layer/renderer/MapWorkerPool$MapWorker;->this$0:Lorg/mapsforge/map/layer/renderer/MapWorkerPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput-object p2, p0, Lorg/mapsforge/map/layer/renderer/MapWorkerPool$MapWorker;->rendererJob:Lorg/mapsforge/map/layer/renderer/RendererJob;

    .line 134
    iget-object v0, p2, Lorg/mapsforge/map/layer/renderer/RendererJob;->renderThemeFuture:Lorg/mapsforge/map/rendertheme/rule/RenderThemeFuture;

    invoke-virtual {v0}, Lorg/mapsforge/map/rendertheme/rule/RenderThemeFuture;->incrementRefCount()V

    .line 135
    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 139
    const/4 v0, 0x0

    .line 141
    .local v0, "bitmap":Lorg/mapsforge/core/graphics/TileBitmap;
    const-wide/16 v1, 0x0

    .line 142
    .local v1, "start":J
    :try_start_0
    iget-object v3, p0, Lorg/mapsforge/map/layer/renderer/MapWorkerPool$MapWorker;->this$0:Lorg/mapsforge/map/layer/renderer/MapWorkerPool;

    invoke-static {v3}, Lorg/mapsforge/map/layer/renderer/MapWorkerPool;->access$000(Lorg/mapsforge/map/layer/renderer/MapWorkerPool;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    .line 170
    iget-object v3, p0, Lorg/mapsforge/map/layer/renderer/MapWorkerPool$MapWorker;->rendererJob:Lorg/mapsforge/map/layer/renderer/RendererJob;

    iget-object v3, v3, Lorg/mapsforge/map/layer/renderer/RendererJob;->renderThemeFuture:Lorg/mapsforge/map/rendertheme/rule/RenderThemeFuture;

    invoke-virtual {v3}, Lorg/mapsforge/map/rendertheme/rule/RenderThemeFuture;->decrementRefCount()V

    .line 171
    iget-object v3, p0, Lorg/mapsforge/map/layer/renderer/MapWorkerPool$MapWorker;->this$0:Lorg/mapsforge/map/layer/renderer/MapWorkerPool;

    invoke-static {v3}, Lorg/mapsforge/map/layer/renderer/MapWorkerPool;->access$800(Lorg/mapsforge/map/layer/renderer/MapWorkerPool;)Lorg/mapsforge/map/layer/queue/JobQueue;

    move-result-object v3

    iget-object v4, p0, Lorg/mapsforge/map/layer/renderer/MapWorkerPool$MapWorker;->rendererJob:Lorg/mapsforge/map/layer/renderer/RendererJob;

    invoke-virtual {v3, v4}, Lorg/mapsforge/map/layer/queue/JobQueue;->remove(Lorg/mapsforge/map/layer/queue/Job;)V

    .line 172
    if-eqz v0, :cond_0

    .line 173
    invoke-interface {v0}, Lorg/mapsforge/core/graphics/TileBitmap;->decrementRefCount()V

    .line 143
    :cond_0
    return-void

    .line 145
    :cond_1
    :try_start_1
    sget-boolean v3, Lorg/mapsforge/map/layer/renderer/MapWorkerPool;->DEBUG_TIMING:Z

    if-eqz v3, :cond_2

    .line 146
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-wide v1, v3

    .line 147
    invoke-static {}, Lorg/mapsforge/map/layer/renderer/MapWorkerPool;->access$200()Ljava/util/logging/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ConcurrentJobs "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/mapsforge/map/layer/renderer/MapWorkerPool$MapWorker;->this$0:Lorg/mapsforge/map/layer/renderer/MapWorkerPool;

    invoke-static {v5}, Lorg/mapsforge/map/layer/renderer/MapWorkerPool;->access$100(Lorg/mapsforge/map/layer/renderer/MapWorkerPool;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 149
    :cond_2
    iget-object v3, p0, Lorg/mapsforge/map/layer/renderer/MapWorkerPool$MapWorker;->this$0:Lorg/mapsforge/map/layer/renderer/MapWorkerPool;

    invoke-static {v3}, Lorg/mapsforge/map/layer/renderer/MapWorkerPool;->access$300(Lorg/mapsforge/map/layer/renderer/MapWorkerPool;)Lorg/mapsforge/map/layer/renderer/DatabaseRenderer;

    move-result-object v3

    iget-object v4, p0, Lorg/mapsforge/map/layer/renderer/MapWorkerPool$MapWorker;->rendererJob:Lorg/mapsforge/map/layer/renderer/RendererJob;

    invoke-virtual {v3, v4}, Lorg/mapsforge/map/layer/renderer/DatabaseRenderer;->executeJob(Lorg/mapsforge/map/layer/renderer/RendererJob;)Lorg/mapsforge/core/graphics/TileBitmap;

    move-result-object v3

    move-object v0, v3

    .line 150
    iget-object v3, p0, Lorg/mapsforge/map/layer/renderer/MapWorkerPool$MapWorker;->this$0:Lorg/mapsforge/map/layer/renderer/MapWorkerPool;

    invoke-static {v3}, Lorg/mapsforge/map/layer/renderer/MapWorkerPool;->access$000(Lorg/mapsforge/map/layer/renderer/MapWorkerPool;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_4

    .line 170
    iget-object v3, p0, Lorg/mapsforge/map/layer/renderer/MapWorkerPool$MapWorker;->rendererJob:Lorg/mapsforge/map/layer/renderer/RendererJob;

    iget-object v3, v3, Lorg/mapsforge/map/layer/renderer/RendererJob;->renderThemeFuture:Lorg/mapsforge/map/rendertheme/rule/RenderThemeFuture;

    invoke-virtual {v3}, Lorg/mapsforge/map/rendertheme/rule/RenderThemeFuture;->decrementRefCount()V

    .line 171
    iget-object v3, p0, Lorg/mapsforge/map/layer/renderer/MapWorkerPool$MapWorker;->this$0:Lorg/mapsforge/map/layer/renderer/MapWorkerPool;

    invoke-static {v3}, Lorg/mapsforge/map/layer/renderer/MapWorkerPool;->access$800(Lorg/mapsforge/map/layer/renderer/MapWorkerPool;)Lorg/mapsforge/map/layer/queue/JobQueue;

    move-result-object v3

    iget-object v4, p0, Lorg/mapsforge/map/layer/renderer/MapWorkerPool$MapWorker;->rendererJob:Lorg/mapsforge/map/layer/renderer/RendererJob;

    invoke-virtual {v3, v4}, Lorg/mapsforge/map/layer/queue/JobQueue;->remove(Lorg/mapsforge/map/layer/queue/Job;)V

    .line 172
    if-eqz v0, :cond_3

    .line 173
    invoke-interface {v0}, Lorg/mapsforge/core/graphics/TileBitmap;->decrementRefCount()V

    .line 151
    :cond_3
    return-void

    .line 154
    :cond_4
    :try_start_2
    iget-object v3, p0, Lorg/mapsforge/map/layer/renderer/MapWorkerPool$MapWorker;->rendererJob:Lorg/mapsforge/map/layer/renderer/RendererJob;

    iget-boolean v3, v3, Lorg/mapsforge/map/layer/renderer/RendererJob;->labelsOnly:Z

    if-nez v3, :cond_5

    if-eqz v0, :cond_5

    .line 155
    iget-object v3, p0, Lorg/mapsforge/map/layer/renderer/MapWorkerPool$MapWorker;->this$0:Lorg/mapsforge/map/layer/renderer/MapWorkerPool;

    invoke-static {v3}, Lorg/mapsforge/map/layer/renderer/MapWorkerPool;->access$400(Lorg/mapsforge/map/layer/renderer/MapWorkerPool;)Lorg/mapsforge/map/layer/cache/TileCache;

    move-result-object v3

    iget-object v4, p0, Lorg/mapsforge/map/layer/renderer/MapWorkerPool$MapWorker;->rendererJob:Lorg/mapsforge/map/layer/renderer/RendererJob;

    invoke-interface {v3, v4, v0}, Lorg/mapsforge/map/layer/cache/TileCache;->put(Lorg/mapsforge/map/layer/queue/Job;Lorg/mapsforge/core/graphics/TileBitmap;)V

    .line 156
    iget-object v3, p0, Lorg/mapsforge/map/layer/renderer/MapWorkerPool$MapWorker;->this$0:Lorg/mapsforge/map/layer/renderer/MapWorkerPool;

    invoke-static {v3}, Lorg/mapsforge/map/layer/renderer/MapWorkerPool;->access$300(Lorg/mapsforge/map/layer/renderer/MapWorkerPool;)Lorg/mapsforge/map/layer/renderer/DatabaseRenderer;

    move-result-object v3

    iget-object v4, p0, Lorg/mapsforge/map/layer/renderer/MapWorkerPool$MapWorker;->rendererJob:Lorg/mapsforge/map/layer/renderer/RendererJob;

    iget-object v4, v4, Lorg/mapsforge/map/layer/renderer/RendererJob;->tile:Lorg/mapsforge/core/model/Tile;

    invoke-virtual {v3, v4}, Lorg/mapsforge/map/layer/renderer/DatabaseRenderer;->removeTileInProgress(Lorg/mapsforge/core/model/Tile;)V

    .line 158
    :cond_5
    iget-object v3, p0, Lorg/mapsforge/map/layer/renderer/MapWorkerPool$MapWorker;->this$0:Lorg/mapsforge/map/layer/renderer/MapWorkerPool;

    invoke-static {v3}, Lorg/mapsforge/map/layer/renderer/MapWorkerPool;->access$500(Lorg/mapsforge/map/layer/renderer/MapWorkerPool;)Lorg/mapsforge/map/layer/Layer;

    move-result-object v3

    invoke-virtual {v3}, Lorg/mapsforge/map/layer/Layer;->requestRedraw()V

    .line 160
    sget-boolean v3, Lorg/mapsforge/map/layer/renderer/MapWorkerPool;->DEBUG_TIMING:Z

    if-eqz v3, :cond_7

    .line 161
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 162
    .local v3, "end":J
    iget-object v5, p0, Lorg/mapsforge/map/layer/renderer/MapWorkerPool$MapWorker;->this$0:Lorg/mapsforge/map/layer/renderer/MapWorkerPool;

    invoke-static {v5}, Lorg/mapsforge/map/layer/renderer/MapWorkerPool;->access$600(Lorg/mapsforge/map/layer/renderer/MapWorkerPool;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v5

    .line 163
    .local v5, "te":J
    iget-object v7, p0, Lorg/mapsforge/map/layer/renderer/MapWorkerPool$MapWorker;->this$0:Lorg/mapsforge/map/layer/renderer/MapWorkerPool;

    invoke-static {v7}, Lorg/mapsforge/map/layer/renderer/MapWorkerPool;->access$700(Lorg/mapsforge/map/layer/renderer/MapWorkerPool;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v7

    sub-long v8, v3, v1

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide v7

    .line 164
    .local v7, "tt":J
    const-wide/16 v9, 0xa

    rem-long v9, v5, v9

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-nez v9, :cond_6

    .line 165
    invoke-static {}, Lorg/mapsforge/map/layer/renderer/MapWorkerPool;->access$200()Ljava/util/logging/Logger;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "TIMING "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    div-long v11, v7, v5

    long-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 167
    :cond_6
    iget-object v9, p0, Lorg/mapsforge/map/layer/renderer/MapWorkerPool$MapWorker;->this$0:Lorg/mapsforge/map/layer/renderer/MapWorkerPool;

    invoke-static {v9}, Lorg/mapsforge/map/layer/renderer/MapWorkerPool;->access$100(Lorg/mapsforge/map/layer/renderer/MapWorkerPool;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 170
    .end local v1    # "start":J
    .end local v3    # "end":J
    .end local v5    # "te":J
    .end local v7    # "tt":J
    :cond_7
    iget-object v1, p0, Lorg/mapsforge/map/layer/renderer/MapWorkerPool$MapWorker;->rendererJob:Lorg/mapsforge/map/layer/renderer/RendererJob;

    iget-object v1, v1, Lorg/mapsforge/map/layer/renderer/RendererJob;->renderThemeFuture:Lorg/mapsforge/map/rendertheme/rule/RenderThemeFuture;

    invoke-virtual {v1}, Lorg/mapsforge/map/rendertheme/rule/RenderThemeFuture;->decrementRefCount()V

    .line 171
    iget-object v1, p0, Lorg/mapsforge/map/layer/renderer/MapWorkerPool$MapWorker;->this$0:Lorg/mapsforge/map/layer/renderer/MapWorkerPool;

    invoke-static {v1}, Lorg/mapsforge/map/layer/renderer/MapWorkerPool;->access$800(Lorg/mapsforge/map/layer/renderer/MapWorkerPool;)Lorg/mapsforge/map/layer/queue/JobQueue;

    move-result-object v1

    iget-object v2, p0, Lorg/mapsforge/map/layer/renderer/MapWorkerPool$MapWorker;->rendererJob:Lorg/mapsforge/map/layer/renderer/RendererJob;

    invoke-virtual {v1, v2}, Lorg/mapsforge/map/layer/queue/JobQueue;->remove(Lorg/mapsforge/map/layer/queue/Job;)V

    .line 172
    if-eqz v0, :cond_8

    .line 173
    invoke-interface {v0}, Lorg/mapsforge/core/graphics/TileBitmap;->decrementRefCount()V

    .line 176
    :cond_8
    return-void

    .line 170
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/mapsforge/map/layer/renderer/MapWorkerPool$MapWorker;->rendererJob:Lorg/mapsforge/map/layer/renderer/RendererJob;

    iget-object v2, v2, Lorg/mapsforge/map/layer/renderer/RendererJob;->renderThemeFuture:Lorg/mapsforge/map/rendertheme/rule/RenderThemeFuture;

    invoke-virtual {v2}, Lorg/mapsforge/map/rendertheme/rule/RenderThemeFuture;->decrementRefCount()V

    .line 171
    iget-object v2, p0, Lorg/mapsforge/map/layer/renderer/MapWorkerPool$MapWorker;->this$0:Lorg/mapsforge/map/layer/renderer/MapWorkerPool;

    invoke-static {v2}, Lorg/mapsforge/map/layer/renderer/MapWorkerPool;->access$800(Lorg/mapsforge/map/layer/renderer/MapWorkerPool;)Lorg/mapsforge/map/layer/queue/JobQueue;

    move-result-object v2

    iget-object v3, p0, Lorg/mapsforge/map/layer/renderer/MapWorkerPool$MapWorker;->rendererJob:Lorg/mapsforge/map/layer/renderer/RendererJob;

    invoke-virtual {v2, v3}, Lorg/mapsforge/map/layer/queue/JobQueue;->remove(Lorg/mapsforge/map/layer/queue/Job;)V

    .line 172
    if-eqz v0, :cond_9

    .line 173
    invoke-interface {v0}, Lorg/mapsforge/core/graphics/TileBitmap;->decrementRefCount()V

    .line 175
    :cond_9
    throw v1
.end method
