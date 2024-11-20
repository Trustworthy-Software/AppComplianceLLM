.class Lio/grpc/internal/DelayedStream;
.super Ljava/lang/Object;
.source "DelayedStream.java"

# interfaces
.implements Lio/grpc/internal/ClientStream;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/internal/DelayedStream$DelayedStreamListener;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private delayedListener:Lio/grpc/internal/DelayedStream$DelayedStreamListener;

.field private error:Lio/grpc/Status;

.field private listener:Lio/grpc/internal/ClientStreamListener;

.field private volatile passThrough:Z

.field private pendingCalls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private preStartPendingCalls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private realStream:Lio/grpc/internal/ClientStream;

.field private startTimeNanos:J

.field private streamSetTimeNanos:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 44
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/grpc/internal/DelayedStream;->pendingCalls:Ljava/util/List;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/grpc/internal/DelayedStream;->preStartPendingCalls:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lio/grpc/internal/DelayedStream;)Lio/grpc/internal/ClientStream;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/DelayedStream;

    .line 44
    iget-object v0, p0, Lio/grpc/internal/DelayedStream;->realStream:Lio/grpc/internal/ClientStream;

    return-object v0
.end method

.method static synthetic access$100(Lio/grpc/internal/DelayedStream;)V
    .locals 0
    .param p0, "x0"    # Lio/grpc/internal/DelayedStream;

    .line 44
    invoke-direct {p0}, Lio/grpc/internal/DelayedStream;->drainPendingCalls()V

    return-void
.end method

.method private delayOrExecute(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 199
    iget-object v0, p0, Lio/grpc/internal/DelayedStream;->listener:Lio/grpc/internal/ClientStreamListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "May only be called after start"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 200
    monitor-enter p0

    .line 201
    :try_start_0
    iget-boolean v0, p0, Lio/grpc/internal/DelayedStream;->passThrough:Z

    if-nez v0, :cond_1

    .line 202
    iget-object v0, p0, Lio/grpc/internal/DelayedStream;->pendingCalls:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    monitor-exit p0

    return-void

    .line 205
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 207
    return-void

    .line 205
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private drainPendingCalls()V
    .locals 4

    .line 160
    iget-object v0, p0, Lio/grpc/internal/DelayedStream;->realStream:Lio/grpc/internal/ClientStream;

    if-eqz v0, :cond_4

    .line 161
    iget-boolean v0, p0, Lio/grpc/internal/DelayedStream;->passThrough:Z

    if-nez v0, :cond_3

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 163
    .local v0, "toRun":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Runnable;>;"
    const/4 v1, 0x0

    .line 165
    .local v1, "delayedListener":Lio/grpc/internal/DelayedStream$DelayedStreamListener;
    :goto_0
    monitor-enter p0

    .line 166
    :try_start_0
    iget-object v2, p0, Lio/grpc/internal/DelayedStream;->pendingCalls:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 167
    const/4 v2, 0x0

    iput-object v2, p0, Lio/grpc/internal/DelayedStream;->pendingCalls:Ljava/util/List;

    .line 168
    const/4 v2, 0x1

    iput-boolean v2, p0, Lio/grpc/internal/DelayedStream;->passThrough:Z

    .line 169
    iget-object v2, p0, Lio/grpc/internal/DelayedStream;->delayedListener:Lio/grpc/internal/DelayedStream$DelayedStreamListener;

    move-object v1, v2

    .line 170
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    if-eqz v1, :cond_0

    .line 187
    invoke-virtual {v1}, Lio/grpc/internal/DelayedStream$DelayedStreamListener;->drainPendingCallbacks()V

    .line 189
    :cond_0
    return-void

    .line 175
    :cond_1
    move-object v2, v0

    .line 176
    .local v2, "tmp":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Runnable;>;"
    :try_start_1
    iget-object v3, p0, Lio/grpc/internal/DelayedStream;->pendingCalls:Ljava/util/List;

    move-object v0, v3

    .line 177
    iput-object v2, p0, Lio/grpc/internal/DelayedStream;->pendingCalls:Ljava/util/List;

    .line 178
    .end local v2    # "tmp":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Runnable;>;"
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 179
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    .line 182
    .local v3, "runnable":Ljava/lang/Runnable;
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 183
    .end local v3    # "runnable":Ljava/lang/Runnable;
    goto :goto_1

    .line 184
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 178
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 161
    .end local v0    # "toRun":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Runnable;>;"
    .end local v1    # "delayedListener":Lio/grpc/internal/DelayedStream$DelayedStreamListener;
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 160
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private internalStart(Lio/grpc/internal/ClientStreamListener;)V
    .locals 2
    .param p1, "listener"    # Lio/grpc/internal/ClientStreamListener;

    .line 253
    iget-object v0, p0, Lio/grpc/internal/DelayedStream;->preStartPendingCalls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 254
    .local v1, "runnable":Ljava/lang/Runnable;
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 255
    .end local v1    # "runnable":Ljava/lang/Runnable;
    goto :goto_0

    .line 256
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lio/grpc/internal/DelayedStream;->preStartPendingCalls:Ljava/util/List;

    .line 257
    iget-object v0, p0, Lio/grpc/internal/DelayedStream;->realStream:Lio/grpc/internal/ClientStream;

    invoke-interface {v0, p1}, Lio/grpc/internal/ClientStream;->start(Lio/grpc/internal/ClientStreamListener;)V

    .line 258
    return-void
.end method

.method private setRealStream(Lio/grpc/internal/ClientStream;)V
    .locals 3
    .param p1, "realStream"    # Lio/grpc/internal/ClientStream;

    .line 338
    iget-object v0, p0, Lio/grpc/internal/DelayedStream;->realStream:Lio/grpc/internal/ClientStream;

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "realStream already set to %s"

    invoke-static {v1, v2, v0}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 339
    iput-object p1, p0, Lio/grpc/internal/DelayedStream;->realStream:Lio/grpc/internal/ClientStream;

    .line 340
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lio/grpc/internal/DelayedStream;->streamSetTimeNanos:J

    .line 341
    return-void
.end method


# virtual methods
.method public appendTimeoutInsight(Lio/grpc/internal/InsightBuilder;)V
    .locals 5
    .param p1, "insight"    # Lio/grpc/internal/InsightBuilder;

    .line 102
    monitor-enter p0

    .line 103
    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/DelayedStream;->listener:Lio/grpc/internal/ClientStreamListener;

    if-nez v0, :cond_0

    .line 104
    monitor-exit p0

    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/DelayedStream;->realStream:Lio/grpc/internal/ClientStream;

    if-eqz v0, :cond_1

    .line 107
    const-string v0, "buffered_nanos"

    iget-wide v1, p0, Lio/grpc/internal/DelayedStream;->streamSetTimeNanos:J

    iget-wide v3, p0, Lio/grpc/internal/DelayedStream;->startTimeNanos:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lio/grpc/internal/InsightBuilder;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)Lio/grpc/internal/InsightBuilder;

    .line 108
    iget-object v0, p0, Lio/grpc/internal/DelayedStream;->realStream:Lio/grpc/internal/ClientStream;

    invoke-interface {v0, p1}, Lio/grpc/internal/ClientStream;->appendTimeoutInsight(Lio/grpc/internal/InsightBuilder;)V

    goto :goto_0

    .line 110
    :cond_1
    const-string v0, "buffered_nanos"

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iget-wide v3, p0, Lio/grpc/internal/DelayedStream;->startTimeNanos:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lio/grpc/internal/InsightBuilder;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)Lio/grpc/internal/InsightBuilder;

    .line 111
    const-string v0, "waiting_for_connection"

    invoke-virtual {p1, v0}, Lio/grpc/internal/InsightBuilder;->append(Ljava/lang/Object;)Lio/grpc/internal/InsightBuilder;

    .line 113
    :goto_0
    monitor-exit p0

    .line 114
    return-void

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public cancel(Lio/grpc/Status;)V
    .locals 4
    .param p1, "reason"    # Lio/grpc/Status;

    .line 307
    iget-object v0, p0, Lio/grpc/internal/DelayedStream;->listener:Lio/grpc/internal/ClientStreamListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "May only be called after start"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 308
    const-string v0, "reason"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    const/4 v0, 0x1

    .line 310
    .local v0, "delegateToRealStream":Z
    monitor-enter p0

    .line 312
    :try_start_0
    iget-object v1, p0, Lio/grpc/internal/DelayedStream;->realStream:Lio/grpc/internal/ClientStream;

    if-nez v1, :cond_1

    .line 313
    sget-object v1, Lio/grpc/internal/NoopClientStream;->INSTANCE:Lio/grpc/internal/NoopClientStream;

    invoke-direct {p0, v1}, Lio/grpc/internal/DelayedStream;->setRealStream(Lio/grpc/internal/ClientStream;)V

    .line 314
    const/4 v0, 0x0

    .line 315
    iput-object p1, p0, Lio/grpc/internal/DelayedStream;->error:Lio/grpc/Status;

    .line 317
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    if-eqz v0, :cond_2

    .line 319
    new-instance v1, Lio/grpc/internal/DelayedStream$8;

    invoke-direct {v1, p0, p1}, Lio/grpc/internal/DelayedStream$8;-><init>(Lio/grpc/internal/DelayedStream;Lio/grpc/Status;)V

    invoke-direct {p0, v1}, Lio/grpc/internal/DelayedStream;->delayOrExecute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 326
    :cond_2
    invoke-direct {p0}, Lio/grpc/internal/DelayedStream;->drainPendingCalls()V

    .line 327
    invoke-virtual {p0, p1}, Lio/grpc/internal/DelayedStream;->onEarlyCancellation(Lio/grpc/Status;)V

    .line 329
    iget-object v1, p0, Lio/grpc/internal/DelayedStream;->listener:Lio/grpc/internal/ClientStreamListener;

    sget-object v2, Lio/grpc/internal/ClientStreamListener$RpcProgress;->PROCESSED:Lio/grpc/internal/ClientStreamListener$RpcProgress;

    new-instance v3, Lio/grpc/Metadata;

    invoke-direct {v3}, Lio/grpc/Metadata;-><init>()V

    invoke-interface {v1, p1, v2, v3}, Lio/grpc/internal/ClientStreamListener;->closed(Lio/grpc/Status;Lio/grpc/internal/ClientStreamListener$RpcProgress;Lio/grpc/Metadata;)V

    .line 331
    :goto_1
    return-void

    .line 317
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public flush()V
    .locals 2

    .line 291
    iget-object v0, p0, Lio/grpc/internal/DelayedStream;->listener:Lio/grpc/internal/ClientStreamListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "May only be called after start"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 292
    iget-boolean v0, p0, Lio/grpc/internal/DelayedStream;->passThrough:Z

    if-eqz v0, :cond_1

    .line 293
    iget-object v0, p0, Lio/grpc/internal/DelayedStream;->realStream:Lio/grpc/internal/ClientStream;

    invoke-interface {v0}, Lio/grpc/internal/ClientStream;->flush()V

    goto :goto_1

    .line 295
    :cond_1
    new-instance v0, Lio/grpc/internal/DelayedStream$7;

    invoke-direct {v0, p0}, Lio/grpc/internal/DelayedStream$7;-><init>(Lio/grpc/internal/DelayedStream;)V

    invoke-direct {p0, v0}, Lio/grpc/internal/DelayedStream;->delayOrExecute(Ljava/lang/Runnable;)V

    .line 302
    :goto_1
    return-void
.end method

.method public getAttributes()Lio/grpc/Attributes;
    .locals 2

    .line 263
    monitor-enter p0

    .line 264
    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/DelayedStream;->realStream:Lio/grpc/internal/ClientStream;

    .line 265
    .local v0, "savedRealStream":Lio/grpc/internal/ClientStream;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    if-eqz v0, :cond_0

    .line 267
    invoke-interface {v0}, Lio/grpc/internal/ClientStream;->getAttributes()Lio/grpc/Attributes;

    move-result-object v1

    return-object v1

    .line 269
    :cond_0
    sget-object v1, Lio/grpc/Attributes;->EMPTY:Lio/grpc/Attributes;

    return-object v1

    .line 265
    .end local v0    # "savedRealStream":Lio/grpc/internal/ClientStream;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method getRealStream()Lio/grpc/internal/ClientStream;
    .locals 1

    .line 442
    iget-object v0, p0, Lio/grpc/internal/DelayedStream;->realStream:Lio/grpc/internal/ClientStream;

    return-object v0
.end method

.method public halfClose()V
    .locals 2

    .line 345
    iget-object v0, p0, Lio/grpc/internal/DelayedStream;->listener:Lio/grpc/internal/ClientStreamListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "May only be called after start"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 346
    new-instance v0, Lio/grpc/internal/DelayedStream$9;

    invoke-direct {v0, p0}, Lio/grpc/internal/DelayedStream$9;-><init>(Lio/grpc/internal/DelayedStream;)V

    invoke-direct {p0, v0}, Lio/grpc/internal/DelayedStream;->delayOrExecute(Ljava/lang/Runnable;)V

    .line 352
    return-void
.end method

.method public isReady()Z
    .locals 1

    .line 418
    iget-boolean v0, p0, Lio/grpc/internal/DelayedStream;->passThrough:Z

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lio/grpc/internal/DelayedStream;->realStream:Lio/grpc/internal/ClientStream;

    invoke-interface {v0}, Lio/grpc/internal/ClientStream;->isReady()Z

    move-result v0

    return v0

    .line 421
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onEarlyCancellation(Lio/grpc/Status;)V
    .locals 0
    .param p1, "reason"    # Lio/grpc/Status;

    .line 334
    return-void
.end method

.method public optimizeForDirectExecutor()V
    .locals 2

    .line 371
    iget-object v0, p0, Lio/grpc/internal/DelayedStream;->listener:Lio/grpc/internal/ClientStreamListener;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "May only be called before start"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 372
    iget-object v0, p0, Lio/grpc/internal/DelayedStream;->preStartPendingCalls:Ljava/util/List;

    new-instance v1, Lio/grpc/internal/DelayedStream$11;

    invoke-direct {v1, p0}, Lio/grpc/internal/DelayedStream$11;-><init>(Lio/grpc/internal/DelayedStream;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 378
    return-void
.end method

.method public request(I)V
    .locals 2
    .param p1, "numMessages"    # I

    .line 356
    iget-object v0, p0, Lio/grpc/internal/DelayedStream;->listener:Lio/grpc/internal/ClientStreamListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "May only be called after start"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 357
    iget-boolean v0, p0, Lio/grpc/internal/DelayedStream;->passThrough:Z

    if-eqz v0, :cond_1

    .line 358
    iget-object v0, p0, Lio/grpc/internal/DelayedStream;->realStream:Lio/grpc/internal/ClientStream;

    invoke-interface {v0, p1}, Lio/grpc/internal/ClientStream;->request(I)V

    goto :goto_1

    .line 360
    :cond_1
    new-instance v0, Lio/grpc/internal/DelayedStream$10;

    invoke-direct {v0, p0, p1}, Lio/grpc/internal/DelayedStream$10;-><init>(Lio/grpc/internal/DelayedStream;I)V

    invoke-direct {p0, v0}, Lio/grpc/internal/DelayedStream;->delayOrExecute(Ljava/lang/Runnable;)V

    .line 367
    :goto_1
    return-void
.end method

.method public setAuthority(Ljava/lang/String;)V
    .locals 2
    .param p1, "authority"    # Ljava/lang/String;

    .line 211
    iget-object v0, p0, Lio/grpc/internal/DelayedStream;->listener:Lio/grpc/internal/ClientStreamListener;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "May only be called before start"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 212
    const-string v0, "authority"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    iget-object v0, p0, Lio/grpc/internal/DelayedStream;->preStartPendingCalls:Ljava/util/List;

    new-instance v1, Lio/grpc/internal/DelayedStream$5;

    invoke-direct {v1, p0, p1}, Lio/grpc/internal/DelayedStream$5;-><init>(Lio/grpc/internal/DelayedStream;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    return-void
.end method

.method public setCompressor(Lio/grpc/Compressor;)V
    .locals 2
    .param p1, "compressor"    # Lio/grpc/Compressor;

    .line 382
    iget-object v0, p0, Lio/grpc/internal/DelayedStream;->listener:Lio/grpc/internal/ClientStreamListener;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "May only be called before start"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 383
    const-string v0, "compressor"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    iget-object v0, p0, Lio/grpc/internal/DelayedStream;->preStartPendingCalls:Ljava/util/List;

    new-instance v1, Lio/grpc/internal/DelayedStream$12;

    invoke-direct {v1, p0, p1}, Lio/grpc/internal/DelayedStream$12;-><init>(Lio/grpc/internal/DelayedStream;Lio/grpc/Compressor;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 390
    return-void
.end method

.method public setDeadline(Lio/grpc/Deadline;)V
    .locals 2
    .param p1, "deadline"    # Lio/grpc/Deadline;

    .line 91
    iget-object v0, p0, Lio/grpc/internal/DelayedStream;->listener:Lio/grpc/internal/ClientStreamListener;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "May only be called before start"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 92
    iget-object v0, p0, Lio/grpc/internal/DelayedStream;->preStartPendingCalls:Ljava/util/List;

    new-instance v1, Lio/grpc/internal/DelayedStream$3;

    invoke-direct {v1, p0, p1}, Lio/grpc/internal/DelayedStream$3;-><init>(Lio/grpc/internal/DelayedStream;Lio/grpc/Deadline;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    return-void
.end method

.method public setDecompressorRegistry(Lio/grpc/DecompressorRegistry;)V
    .locals 2
    .param p1, "decompressorRegistry"    # Lio/grpc/DecompressorRegistry;

    .line 406
    iget-object v0, p0, Lio/grpc/internal/DelayedStream;->listener:Lio/grpc/internal/ClientStreamListener;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "May only be called before start"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 407
    const-string v0, "decompressorRegistry"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    iget-object v0, p0, Lio/grpc/internal/DelayedStream;->preStartPendingCalls:Ljava/util/List;

    new-instance v1, Lio/grpc/internal/DelayedStream$14;

    invoke-direct {v1, p0, p1}, Lio/grpc/internal/DelayedStream$14;-><init>(Lio/grpc/internal/DelayedStream;Lio/grpc/DecompressorRegistry;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 414
    return-void
.end method

.method public setFullStreamDecompression(Z)V
    .locals 2
    .param p1, "fullStreamDecompression"    # Z

    .line 394
    iget-object v0, p0, Lio/grpc/internal/DelayedStream;->listener:Lio/grpc/internal/ClientStreamListener;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "May only be called before start"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 395
    iget-object v0, p0, Lio/grpc/internal/DelayedStream;->preStartPendingCalls:Ljava/util/List;

    new-instance v1, Lio/grpc/internal/DelayedStream$13;

    invoke-direct {v1, p0, p1}, Lio/grpc/internal/DelayedStream$13;-><init>(Lio/grpc/internal/DelayedStream;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 402
    return-void
.end method

.method public setMaxInboundMessageSize(I)V
    .locals 2
    .param p1, "maxSize"    # I

    .line 69
    iget-object v0, p0, Lio/grpc/internal/DelayedStream;->listener:Lio/grpc/internal/ClientStreamListener;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "May only be called before start"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 70
    iget-object v0, p0, Lio/grpc/internal/DelayedStream;->preStartPendingCalls:Ljava/util/List;

    new-instance v1, Lio/grpc/internal/DelayedStream$1;

    invoke-direct {v1, p0, p1}, Lio/grpc/internal/DelayedStream$1;-><init>(Lio/grpc/internal/DelayedStream;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    return-void
.end method

.method public setMaxOutboundMessageSize(I)V
    .locals 2
    .param p1, "maxSize"    # I

    .line 80
    iget-object v0, p0, Lio/grpc/internal/DelayedStream;->listener:Lio/grpc/internal/ClientStreamListener;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "May only be called before start"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 81
    iget-object v0, p0, Lio/grpc/internal/DelayedStream;->preStartPendingCalls:Ljava/util/List;

    new-instance v1, Lio/grpc/internal/DelayedStream$2;

    invoke-direct {v1, p0, p1}, Lio/grpc/internal/DelayedStream$2;-><init>(Lio/grpc/internal/DelayedStream;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    return-void
.end method

.method public setMessageCompression(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .line 427
    iget-object v0, p0, Lio/grpc/internal/DelayedStream;->listener:Lio/grpc/internal/ClientStreamListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "May only be called after start"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 428
    iget-boolean v0, p0, Lio/grpc/internal/DelayedStream;->passThrough:Z

    if-eqz v0, :cond_1

    .line 429
    iget-object v0, p0, Lio/grpc/internal/DelayedStream;->realStream:Lio/grpc/internal/ClientStream;

    invoke-interface {v0, p1}, Lio/grpc/internal/ClientStream;->setMessageCompression(Z)V

    goto :goto_1

    .line 431
    :cond_1
    new-instance v0, Lio/grpc/internal/DelayedStream$15;

    invoke-direct {v0, p0, p1}, Lio/grpc/internal/DelayedStream$15;-><init>(Lio/grpc/internal/DelayedStream;Z)V

    invoke-direct {p0, v0}, Lio/grpc/internal/DelayedStream;->delayOrExecute(Ljava/lang/Runnable;)V

    .line 438
    :goto_1
    return-void
.end method

.method final setStream(Lio/grpc/internal/ClientStream;)Ljava/lang/Runnable;
    .locals 3
    .param p1, "stream"    # Lio/grpc/internal/ClientStream;
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .line 128
    monitor-enter p0

    .line 130
    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/DelayedStream;->realStream:Lio/grpc/internal/ClientStream;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 131
    monitor-exit p0

    return-object v1

    .line 133
    :cond_0
    const-string v0, "stream"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/ClientStream;

    invoke-direct {p0, v0}, Lio/grpc/internal/DelayedStream;->setRealStream(Lio/grpc/internal/ClientStream;)V

    .line 134
    iget-object v0, p0, Lio/grpc/internal/DelayedStream;->listener:Lio/grpc/internal/ClientStreamListener;

    .line 135
    .local v0, "savedListener":Lio/grpc/internal/ClientStreamListener;
    if-nez v0, :cond_2

    .line 136
    iget-object v2, p0, Lio/grpc/internal/DelayedStream;->pendingCalls:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 137
    iput-object v1, p0, Lio/grpc/internal/DelayedStream;->pendingCalls:Ljava/util/List;

    .line 138
    const/4 v2, 0x1

    iput-boolean v2, p0, Lio/grpc/internal/DelayedStream;->passThrough:Z

    goto :goto_0

    .line 136
    :cond_1
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    .end local p1    # "stream":Lio/grpc/internal/ClientStream;
    throw v1

    .line 140
    .restart local p1    # "stream":Lio/grpc/internal/ClientStream;
    :cond_2
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    if-nez v0, :cond_3

    .line 142
    return-object v1

    .line 144
    :cond_3
    invoke-direct {p0, v0}, Lio/grpc/internal/DelayedStream;->internalStart(Lio/grpc/internal/ClientStreamListener;)V

    .line 145
    new-instance v1, Lio/grpc/internal/DelayedStream$4;

    invoke-direct {v1, p0}, Lio/grpc/internal/DelayedStream$4;-><init>(Lio/grpc/internal/DelayedStream;)V

    return-object v1

    .line 140
    .end local v0    # "savedListener":Lio/grpc/internal/ClientStreamListener;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public start(Lio/grpc/internal/ClientStreamListener;)V
    .locals 4
    .param p1, "listener"    # Lio/grpc/internal/ClientStreamListener;

    .line 223
    const-string v0, "listener"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    iget-object v0, p0, Lio/grpc/internal/DelayedStream;->listener:Lio/grpc/internal/ClientStreamListener;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "already started"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 228
    monitor-enter p0

    .line 230
    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/DelayedStream;->error:Lio/grpc/Status;

    .line 231
    .local v0, "savedError":Lio/grpc/Status;
    iget-boolean v1, p0, Lio/grpc/internal/DelayedStream;->passThrough:Z

    .line 232
    .local v1, "savedPassThrough":Z
    if-nez v1, :cond_1

    .line 233
    new-instance v2, Lio/grpc/internal/DelayedStream$DelayedStreamListener;

    invoke-direct {v2, p1}, Lio/grpc/internal/DelayedStream$DelayedStreamListener;-><init>(Lio/grpc/internal/ClientStreamListener;)V

    iput-object v2, p0, Lio/grpc/internal/DelayedStream;->delayedListener:Lio/grpc/internal/DelayedStream$DelayedStreamListener;

    move-object p1, v2

    .line 235
    :cond_1
    iput-object p1, p0, Lio/grpc/internal/DelayedStream;->listener:Lio/grpc/internal/ClientStreamListener;

    .line 236
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, p0, Lio/grpc/internal/DelayedStream;->startTimeNanos:J

    .line 237
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    if-eqz v0, :cond_2

    .line 239
    sget-object v2, Lio/grpc/internal/ClientStreamListener$RpcProgress;->PROCESSED:Lio/grpc/internal/ClientStreamListener$RpcProgress;

    new-instance v3, Lio/grpc/Metadata;

    invoke-direct {v3}, Lio/grpc/Metadata;-><init>()V

    invoke-interface {p1, v0, v2, v3}, Lio/grpc/internal/ClientStreamListener;->closed(Lio/grpc/Status;Lio/grpc/internal/ClientStreamListener$RpcProgress;Lio/grpc/Metadata;)V

    .line 240
    return-void

    .line 243
    :cond_2
    if-eqz v1, :cond_3

    .line 244
    invoke-direct {p0, p1}, Lio/grpc/internal/DelayedStream;->internalStart(Lio/grpc/internal/ClientStreamListener;)V

    .line 246
    :cond_3
    return-void

    .line 237
    .end local v0    # "savedError":Lio/grpc/Status;
    .end local v1    # "savedPassThrough":Z
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public writeMessage(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "message"    # Ljava/io/InputStream;

    .line 275
    iget-object v0, p0, Lio/grpc/internal/DelayedStream;->listener:Lio/grpc/internal/ClientStreamListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "May only be called after start"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 276
    const-string v0, "message"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    iget-boolean v0, p0, Lio/grpc/internal/DelayedStream;->passThrough:Z

    if-eqz v0, :cond_1

    .line 278
    iget-object v0, p0, Lio/grpc/internal/DelayedStream;->realStream:Lio/grpc/internal/ClientStream;

    invoke-interface {v0, p1}, Lio/grpc/internal/ClientStream;->writeMessage(Ljava/io/InputStream;)V

    goto :goto_1

    .line 280
    :cond_1
    new-instance v0, Lio/grpc/internal/DelayedStream$6;

    invoke-direct {v0, p0, p1}, Lio/grpc/internal/DelayedStream$6;-><init>(Lio/grpc/internal/DelayedStream;Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Lio/grpc/internal/DelayedStream;->delayOrExecute(Ljava/lang/Runnable;)V

    .line 287
    :goto_1
    return-void
.end method
