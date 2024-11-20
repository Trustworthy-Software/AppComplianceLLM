.class Lio/grpc/internal/MigratingThreadDeframer$DeframeMessageProducer;
.super Ljava/lang/Object;
.source "MigratingThreadDeframer.java"

# interfaces
.implements Lio/grpc/internal/StreamListener$MessageProducer;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/MigratingThreadDeframer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DeframeMessageProducer"
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/internal/MigratingThreadDeframer;


# direct methods
.method constructor <init>(Lio/grpc/internal/MigratingThreadDeframer;)V
    .locals 0
    .param p1, "this$0"    # Lio/grpc/internal/MigratingThreadDeframer;

    .line 258
    iput-object p1, p0, Lio/grpc/internal/MigratingThreadDeframer$DeframeMessageProducer;->this$0:Lio/grpc/internal/MigratingThreadDeframer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    .line 287
    nop

    :goto_0
    iget-object v0, p0, Lio/grpc/internal/MigratingThreadDeframer$DeframeMessageProducer;->this$0:Lio/grpc/internal/MigratingThreadDeframer;

    invoke-static {v0}, Lio/grpc/internal/MigratingThreadDeframer;->access$600(Lio/grpc/internal/MigratingThreadDeframer;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 289
    :cond_0
    :try_start_0
    iget-object v1, p0, Lio/grpc/internal/MigratingThreadDeframer$DeframeMessageProducer;->this$0:Lio/grpc/internal/MigratingThreadDeframer;

    invoke-static {v1}, Lio/grpc/internal/MigratingThreadDeframer;->access$900(Lio/grpc/internal/MigratingThreadDeframer;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/internal/MigratingThreadDeframer$Op;

    .line 290
    .local v1, "op":Lio/grpc/internal/MigratingThreadDeframer$Op;
    if-eqz v1, :cond_1

    instance-of v2, v1, Ljava/io/Closeable;

    if-eqz v2, :cond_0

    .line 291
    :cond_1
    if-nez v1, :cond_2

    .line 292
    iget-object v2, p0, Lio/grpc/internal/MigratingThreadDeframer$DeframeMessageProducer;->this$0:Lio/grpc/internal/MigratingThreadDeframer;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lio/grpc/internal/MigratingThreadDeframer;->access$1002(Lio/grpc/internal/MigratingThreadDeframer;Z)Z

    .line 293
    monitor-exit v0

    return-void

    .line 295
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    move-object v0, v1

    check-cast v0, Ljava/io/Closeable;

    invoke-static {v0}, Lio/grpc/internal/GrpcUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 297
    .end local v1    # "op":Lio/grpc/internal/MigratingThreadDeframer$Op;
    goto :goto_0

    .line 295
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public next()Ljava/io/InputStream;
    .locals 6

    .line 262
    nop

    :goto_0
    iget-object v0, p0, Lio/grpc/internal/MigratingThreadDeframer$DeframeMessageProducer;->this$0:Lio/grpc/internal/MigratingThreadDeframer;

    invoke-static {v0}, Lio/grpc/internal/MigratingThreadDeframer;->access$500(Lio/grpc/internal/MigratingThreadDeframer;)Lio/grpc/internal/ApplicationThreadDeframerListener;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/internal/ApplicationThreadDeframerListener;->messageReadQueuePoll()Ljava/io/InputStream;

    move-result-object v0

    .line 263
    .local v0, "is":Ljava/io/InputStream;
    if-eqz v0, :cond_0

    .line 264
    return-object v0

    .line 267
    :cond_0
    iget-object v1, p0, Lio/grpc/internal/MigratingThreadDeframer$DeframeMessageProducer;->this$0:Lio/grpc/internal/MigratingThreadDeframer;

    invoke-static {v1}, Lio/grpc/internal/MigratingThreadDeframer;->access$600(Lio/grpc/internal/MigratingThreadDeframer;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 268
    :try_start_0
    iget-object v2, p0, Lio/grpc/internal/MigratingThreadDeframer$DeframeMessageProducer;->this$0:Lio/grpc/internal/MigratingThreadDeframer;

    invoke-static {v2}, Lio/grpc/internal/MigratingThreadDeframer;->access$900(Lio/grpc/internal/MigratingThreadDeframer;)Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/grpc/internal/MigratingThreadDeframer$Op;

    .line 269
    .local v2, "op":Lio/grpc/internal/MigratingThreadDeframer$Op;
    const/4 v3, 0x0

    if-nez v2, :cond_2

    .line 270
    iget-object v4, p0, Lio/grpc/internal/MigratingThreadDeframer$DeframeMessageProducer;->this$0:Lio/grpc/internal/MigratingThreadDeframer;

    invoke-static {v4}, Lio/grpc/internal/MigratingThreadDeframer;->access$400(Lio/grpc/internal/MigratingThreadDeframer;)Lio/grpc/internal/MessageDeframer;

    move-result-object v4

    invoke-virtual {v4}, Lio/grpc/internal/MessageDeframer;->hasPendingDeliveries()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 271
    const-string v4, "MigratingThreadDeframer.deframerOnTransportThread"

    invoke-static {v4}, Lio/perfmark/PerfMark;->event(Ljava/lang/String;)V

    .line 272
    iget-object v4, p0, Lio/grpc/internal/MigratingThreadDeframer$DeframeMessageProducer;->this$0:Lio/grpc/internal/MigratingThreadDeframer;

    invoke-static {v4}, Lio/grpc/internal/MigratingThreadDeframer;->access$700(Lio/grpc/internal/MigratingThreadDeframer;)Lio/grpc/internal/MigratingThreadDeframer$MigratingDeframerListener;

    move-result-object v4

    iget-object v5, p0, Lio/grpc/internal/MigratingThreadDeframer$DeframeMessageProducer;->this$0:Lio/grpc/internal/MigratingThreadDeframer;

    invoke-static {v5}, Lio/grpc/internal/MigratingThreadDeframer;->access$100(Lio/grpc/internal/MigratingThreadDeframer;)Lio/grpc/internal/MessageDeframer$Listener;

    move-result-object v5

    invoke-virtual {v4, v5}, Lio/grpc/internal/MigratingThreadDeframer$MigratingDeframerListener;->setDelegate(Lio/grpc/internal/MessageDeframer$Listener;)V

    .line 273
    iget-object v4, p0, Lio/grpc/internal/MigratingThreadDeframer$DeframeMessageProducer;->this$0:Lio/grpc/internal/MigratingThreadDeframer;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lio/grpc/internal/MigratingThreadDeframer;->access$802(Lio/grpc/internal/MigratingThreadDeframer;Z)Z

    .line 275
    :cond_1
    iget-object v4, p0, Lio/grpc/internal/MigratingThreadDeframer$DeframeMessageProducer;->this$0:Lio/grpc/internal/MigratingThreadDeframer;

    invoke-static {v4, v3}, Lio/grpc/internal/MigratingThreadDeframer;->access$1002(Lio/grpc/internal/MigratingThreadDeframer;Z)Z

    .line 276
    monitor-exit v1

    const/4 v1, 0x0

    return-object v1

    .line 278
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    invoke-interface {v2, v3}, Lio/grpc/internal/MigratingThreadDeframer$Op;->run(Z)V

    .line 280
    .end local v0    # "is":Ljava/io/InputStream;
    .end local v2    # "op":Lio/grpc/internal/MigratingThreadDeframer$Op;
    goto :goto_0

    .line 278
    .restart local v0    # "is":Ljava/io/InputStream;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
