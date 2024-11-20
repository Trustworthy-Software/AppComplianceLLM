.class final Lio/grpc/internal/MigratingThreadDeframer;
.super Ljava/lang/Object;
.source "MigratingThreadDeframer.java"

# interfaces
.implements Lio/grpc/internal/ThreadOptimizedDeframer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/internal/MigratingThreadDeframer$MigratingDeframerListener;,
        Lio/grpc/internal/MigratingThreadDeframer$DeframeMessageProducer;,
        Lio/grpc/internal/MigratingThreadDeframer$Op;
    }
.end annotation


# instance fields
.field private final appListener:Lio/grpc/internal/ApplicationThreadDeframerListener;

.field private final deframer:Lio/grpc/internal/MessageDeframer;

.field private deframerOnTransportThread:Z

.field private final lock:Ljava/lang/Object;

.field private final messageProducer:Lio/grpc/internal/MigratingThreadDeframer$DeframeMessageProducer;

.field private messageProducerEnqueued:Z

.field private final migratingListener:Lio/grpc/internal/MigratingThreadDeframer$MigratingDeframerListener;

.field private final opQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lio/grpc/internal/MigratingThreadDeframer$Op;",
            ">;"
        }
    .end annotation
.end field

.field private final transportExecutor:Lio/grpc/internal/ApplicationThreadDeframerListener$TransportExecutor;

.field private final transportListener:Lio/grpc/internal/MessageDeframer$Listener;


# direct methods
.method public constructor <init>(Lio/grpc/internal/MessageDeframer$Listener;Lio/grpc/internal/ApplicationThreadDeframerListener$TransportExecutor;Lio/grpc/internal/MessageDeframer;)V
    .locals 2
    .param p1, "listener"    # Lio/grpc/internal/MessageDeframer$Listener;
    .param p2, "transportExecutor"    # Lio/grpc/internal/ApplicationThreadDeframerListener$TransportExecutor;
    .param p3, "deframer"    # Lio/grpc/internal/MessageDeframer;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lio/grpc/internal/MigratingThreadDeframer$DeframeMessageProducer;

    invoke-direct {v0, p0}, Lio/grpc/internal/MigratingThreadDeframer$DeframeMessageProducer;-><init>(Lio/grpc/internal/MigratingThreadDeframer;)V

    iput-object v0, p0, Lio/grpc/internal/MigratingThreadDeframer;->messageProducer:Lio/grpc/internal/MigratingThreadDeframer$DeframeMessageProducer;

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/grpc/internal/MigratingThreadDeframer;->lock:Ljava/lang/Object;

    .line 55
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lio/grpc/internal/MigratingThreadDeframer;->opQueue:Ljava/util/Queue;

    .line 64
    new-instance v0, Lio/grpc/internal/SquelchLateMessagesAvailableDeframerListener;

    .line 65
    const-string v1, "listener"

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/internal/MessageDeframer$Listener;

    invoke-direct {v0, v1}, Lio/grpc/internal/SquelchLateMessagesAvailableDeframerListener;-><init>(Lio/grpc/internal/MessageDeframer$Listener;)V

    iput-object v0, p0, Lio/grpc/internal/MigratingThreadDeframer;->transportListener:Lio/grpc/internal/MessageDeframer$Listener;

    .line 66
    const-string v1, "transportExecutor"

    invoke-static {p2, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/internal/ApplicationThreadDeframerListener$TransportExecutor;

    iput-object v1, p0, Lio/grpc/internal/MigratingThreadDeframer;->transportExecutor:Lio/grpc/internal/ApplicationThreadDeframerListener$TransportExecutor;

    .line 67
    new-instance v1, Lio/grpc/internal/ApplicationThreadDeframerListener;

    invoke-direct {v1, v0, p2}, Lio/grpc/internal/ApplicationThreadDeframerListener;-><init>(Lio/grpc/internal/MessageDeframer$Listener;Lio/grpc/internal/ApplicationThreadDeframerListener$TransportExecutor;)V

    iput-object v1, p0, Lio/grpc/internal/MigratingThreadDeframer;->appListener:Lio/grpc/internal/ApplicationThreadDeframerListener;

    .line 69
    new-instance v0, Lio/grpc/internal/MigratingThreadDeframer$MigratingDeframerListener;

    invoke-direct {v0, v1}, Lio/grpc/internal/MigratingThreadDeframer$MigratingDeframerListener;-><init>(Lio/grpc/internal/MessageDeframer$Listener;)V

    iput-object v0, p0, Lio/grpc/internal/MigratingThreadDeframer;->migratingListener:Lio/grpc/internal/MigratingThreadDeframer$MigratingDeframerListener;

    .line 70
    invoke-virtual {p3, v0}, Lio/grpc/internal/MessageDeframer;->setListener(Lio/grpc/internal/MessageDeframer$Listener;)V

    .line 71
    iput-object p3, p0, Lio/grpc/internal/MigratingThreadDeframer;->deframer:Lio/grpc/internal/MessageDeframer;

    .line 72
    return-void
.end method

.method static synthetic access$000(Lio/grpc/internal/MigratingThreadDeframer;)Lio/grpc/internal/MigratingThreadDeframer$DeframeMessageProducer;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/MigratingThreadDeframer;

    .line 34
    iget-object v0, p0, Lio/grpc/internal/MigratingThreadDeframer;->messageProducer:Lio/grpc/internal/MigratingThreadDeframer$DeframeMessageProducer;

    return-object v0
.end method

.method static synthetic access$100(Lio/grpc/internal/MigratingThreadDeframer;)Lio/grpc/internal/MessageDeframer$Listener;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/MigratingThreadDeframer;

    .line 34
    iget-object v0, p0, Lio/grpc/internal/MigratingThreadDeframer;->transportListener:Lio/grpc/internal/MessageDeframer$Listener;

    return-object v0
.end method

.method static synthetic access$1002(Lio/grpc/internal/MigratingThreadDeframer;Z)Z
    .locals 0
    .param p0, "x0"    # Lio/grpc/internal/MigratingThreadDeframer;
    .param p1, "x1"    # Z

    .line 34
    iput-boolean p1, p0, Lio/grpc/internal/MigratingThreadDeframer;->messageProducerEnqueued:Z

    return p1
.end method

.method static synthetic access$200(Lio/grpc/internal/MigratingThreadDeframer;I)V
    .locals 0
    .param p0, "x0"    # Lio/grpc/internal/MigratingThreadDeframer;
    .param p1, "x1"    # I

    .line 34
    invoke-direct {p0, p1}, Lio/grpc/internal/MigratingThreadDeframer;->requestFromTransportThread(I)V

    return-void
.end method

.method static synthetic access$300(Lio/grpc/internal/MigratingThreadDeframer;)Lio/grpc/internal/ApplicationThreadDeframerListener$TransportExecutor;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/MigratingThreadDeframer;

    .line 34
    iget-object v0, p0, Lio/grpc/internal/MigratingThreadDeframer;->transportExecutor:Lio/grpc/internal/ApplicationThreadDeframerListener$TransportExecutor;

    return-object v0
.end method

.method static synthetic access$400(Lio/grpc/internal/MigratingThreadDeframer;)Lio/grpc/internal/MessageDeframer;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/MigratingThreadDeframer;

    .line 34
    iget-object v0, p0, Lio/grpc/internal/MigratingThreadDeframer;->deframer:Lio/grpc/internal/MessageDeframer;

    return-object v0
.end method

.method static synthetic access$500(Lio/grpc/internal/MigratingThreadDeframer;)Lio/grpc/internal/ApplicationThreadDeframerListener;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/MigratingThreadDeframer;

    .line 34
    iget-object v0, p0, Lio/grpc/internal/MigratingThreadDeframer;->appListener:Lio/grpc/internal/ApplicationThreadDeframerListener;

    return-object v0
.end method

.method static synthetic access$600(Lio/grpc/internal/MigratingThreadDeframer;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/MigratingThreadDeframer;

    .line 34
    iget-object v0, p0, Lio/grpc/internal/MigratingThreadDeframer;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$700(Lio/grpc/internal/MigratingThreadDeframer;)Lio/grpc/internal/MigratingThreadDeframer$MigratingDeframerListener;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/MigratingThreadDeframer;

    .line 34
    iget-object v0, p0, Lio/grpc/internal/MigratingThreadDeframer;->migratingListener:Lio/grpc/internal/MigratingThreadDeframer$MigratingDeframerListener;

    return-object v0
.end method

.method static synthetic access$802(Lio/grpc/internal/MigratingThreadDeframer;Z)Z
    .locals 0
    .param p0, "x0"    # Lio/grpc/internal/MigratingThreadDeframer;
    .param p1, "x1"    # Z

    .line 34
    iput-boolean p1, p0, Lio/grpc/internal/MigratingThreadDeframer;->deframerOnTransportThread:Z

    return p1
.end method

.method static synthetic access$900(Lio/grpc/internal/MigratingThreadDeframer;)Ljava/util/Queue;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/MigratingThreadDeframer;

    .line 34
    iget-object v0, p0, Lio/grpc/internal/MigratingThreadDeframer;->opQueue:Ljava/util/Queue;

    return-object v0
.end method

.method private requestFromTransportThread(I)V
    .locals 1
    .param p1, "numMessages"    # I

    .line 201
    new-instance v0, Lio/grpc/internal/MigratingThreadDeframer$1RequestAgainOp;

    invoke-direct {v0, p0, p1}, Lio/grpc/internal/MigratingThreadDeframer$1RequestAgainOp;-><init>(Lio/grpc/internal/MigratingThreadDeframer;I)V

    invoke-direct {p0, v0}, Lio/grpc/internal/MigratingThreadDeframer;->runWhereAppropriate(Lio/grpc/internal/MigratingThreadDeframer$Op;)Z

    .line 202
    return-void
.end method

.method private runWhereAppropriate(Lio/grpc/internal/MigratingThreadDeframer$Op;)Z
    .locals 1
    .param p1, "op"    # Lio/grpc/internal/MigratingThreadDeframer$Op;

    .line 90
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lio/grpc/internal/MigratingThreadDeframer;->runWhereAppropriate(Lio/grpc/internal/MigratingThreadDeframer$Op;Z)Z

    move-result v0

    return v0
.end method

.method private runWhereAppropriate(Lio/grpc/internal/MigratingThreadDeframer$Op;Z)Z
    .locals 5
    .param p1, "op"    # Lio/grpc/internal/MigratingThreadDeframer$Op;
    .param p2, "currentThreadIsTransportThread"    # Z

    .line 96
    iget-object v0, p0, Lio/grpc/internal/MigratingThreadDeframer;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 97
    :try_start_0
    iget-boolean v1, p0, Lio/grpc/internal/MigratingThreadDeframer;->deframerOnTransportThread:Z

    .line 98
    .local v1, "deframerOnTransportThreadCopy":Z
    iget-boolean v2, p0, Lio/grpc/internal/MigratingThreadDeframer;->messageProducerEnqueued:Z

    .line 99
    .local v2, "alreadyEnqueued":Z
    const/4 v3, 0x1

    if-nez v1, :cond_0

    .line 100
    iget-object v4, p0, Lio/grpc/internal/MigratingThreadDeframer;->opQueue:Ljava/util/Queue;

    invoke-interface {v4, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 101
    iput-boolean v3, p0, Lio/grpc/internal/MigratingThreadDeframer;->messageProducerEnqueued:Z

    .line 103
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 104
    if-eqz v1, :cond_1

    .line 105
    invoke-interface {p1, v3}, Lio/grpc/internal/MigratingThreadDeframer$Op;->run(Z)V

    .line 106
    return v3

    .line 108
    :cond_1
    if-nez v2, :cond_3

    .line 109
    if-eqz p2, :cond_2

    .line 110
    const-string v0, "MigratingThreadDeframer.messageAvailable"

    invoke-static {v0}, Lio/perfmark/PerfMark;->startTask(Ljava/lang/String;)V

    .line 112
    :try_start_1
    iget-object v0, p0, Lio/grpc/internal/MigratingThreadDeframer;->transportListener:Lio/grpc/internal/MessageDeframer$Listener;

    iget-object v3, p0, Lio/grpc/internal/MigratingThreadDeframer;->messageProducer:Lio/grpc/internal/MigratingThreadDeframer$DeframeMessageProducer;

    invoke-interface {v0, v3}, Lio/grpc/internal/MessageDeframer$Listener;->messagesAvailable(Lio/grpc/internal/StreamListener$MessageProducer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 114
    const-string v0, "MigratingThreadDeframer.messageAvailable"

    invoke-static {v0}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;)V

    .line 115
    nop

    .line 114
    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v3, "MigratingThreadDeframer.messageAvailable"

    invoke-static {v3}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_2
    invoke-static {}, Lio/perfmark/PerfMark;->linkOut()Lio/perfmark/Link;

    move-result-object v0

    .line 120
    .local v0, "link":Lio/perfmark/Link;
    iget-object v3, p0, Lio/grpc/internal/MigratingThreadDeframer;->transportExecutor:Lio/grpc/internal/ApplicationThreadDeframerListener$TransportExecutor;

    new-instance v4, Lio/grpc/internal/MigratingThreadDeframer$1;

    invoke-direct {v4, p0, v0}, Lio/grpc/internal/MigratingThreadDeframer$1;-><init>(Lio/grpc/internal/MigratingThreadDeframer;Lio/perfmark/Link;)V

    invoke-interface {v3, v4}, Lio/grpc/internal/ApplicationThreadDeframerListener$TransportExecutor;->runOnTransportThread(Ljava/lang/Runnable;)V

    .line 133
    .end local v0    # "link":Lio/perfmark/Link;
    :cond_3
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 103
    .end local v1    # "deframerOnTransportThreadCopy":Z
    .end local v2    # "alreadyEnqueued":Z
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 253
    new-instance v0, Lio/grpc/internal/MigratingThreadDeframer$1CloseOp;

    invoke-direct {v0, p0}, Lio/grpc/internal/MigratingThreadDeframer$1CloseOp;-><init>(Lio/grpc/internal/MigratingThreadDeframer;)V

    invoke-direct {p0, v0}, Lio/grpc/internal/MigratingThreadDeframer;->runWhereAppropriate(Lio/grpc/internal/MigratingThreadDeframer$Op;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 254
    iget-object v0, p0, Lio/grpc/internal/MigratingThreadDeframer;->deframer:Lio/grpc/internal/MessageDeframer;

    invoke-virtual {v0}, Lio/grpc/internal/MessageDeframer;->stopDelivery()V

    .line 256
    :cond_0
    return-void
.end method

.method public closeWhenComplete()V
    .locals 1

    .line 242
    new-instance v0, Lio/grpc/internal/MigratingThreadDeframer$1CloseWhenCompleteOp;

    invoke-direct {v0, p0}, Lio/grpc/internal/MigratingThreadDeframer$1CloseWhenCompleteOp;-><init>(Lio/grpc/internal/MigratingThreadDeframer;)V

    invoke-direct {p0, v0}, Lio/grpc/internal/MigratingThreadDeframer;->runWhereAppropriate(Lio/grpc/internal/MigratingThreadDeframer$Op;)Z

    .line 243
    return-void
.end method

.method public deframe(Lio/grpc/internal/ReadableBuffer;)V
    .locals 1
    .param p1, "data"    # Lio/grpc/internal/ReadableBuffer;

    .line 231
    new-instance v0, Lio/grpc/internal/MigratingThreadDeframer$1DeframeOp;

    invoke-direct {v0, p0, p1}, Lio/grpc/internal/MigratingThreadDeframer$1DeframeOp;-><init>(Lio/grpc/internal/MigratingThreadDeframer;Lio/grpc/internal/ReadableBuffer;)V

    invoke-direct {p0, v0}, Lio/grpc/internal/MigratingThreadDeframer;->runWhereAppropriate(Lio/grpc/internal/MigratingThreadDeframer$Op;)Z

    .line 232
    return-void
.end method

.method public request(I)V
    .locals 2
    .param p1, "numMessages"    # I

    .line 174
    new-instance v0, Lio/grpc/internal/MigratingThreadDeframer$1RequestOp;

    invoke-direct {v0, p0, p1}, Lio/grpc/internal/MigratingThreadDeframer$1RequestOp;-><init>(Lio/grpc/internal/MigratingThreadDeframer;I)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lio/grpc/internal/MigratingThreadDeframer;->runWhereAppropriate(Lio/grpc/internal/MigratingThreadDeframer$Op;Z)Z

    .line 175
    return-void
.end method

.method public setDecompressor(Lio/grpc/Decompressor;)V
    .locals 1
    .param p1, "decompressor"    # Lio/grpc/Decompressor;

    .line 81
    iget-object v0, p0, Lio/grpc/internal/MigratingThreadDeframer;->deframer:Lio/grpc/internal/MessageDeframer;

    invoke-virtual {v0, p1}, Lio/grpc/internal/MessageDeframer;->setDecompressor(Lio/grpc/Decompressor;)V

    .line 82
    return-void
.end method

.method public setFullStreamDecompressor(Lio/grpc/internal/GzipInflatingBuffer;)V
    .locals 1
    .param p1, "fullStreamDecompressor"    # Lio/grpc/internal/GzipInflatingBuffer;

    .line 86
    iget-object v0, p0, Lio/grpc/internal/MigratingThreadDeframer;->deframer:Lio/grpc/internal/MessageDeframer;

    invoke-virtual {v0, p1}, Lio/grpc/internal/MessageDeframer;->setFullStreamDecompressor(Lio/grpc/internal/GzipInflatingBuffer;)V

    .line 87
    return-void
.end method

.method public setMaxInboundMessageSize(I)V
    .locals 1
    .param p1, "messageSize"    # I

    .line 76
    iget-object v0, p0, Lio/grpc/internal/MigratingThreadDeframer;->deframer:Lio/grpc/internal/MessageDeframer;

    invoke-virtual {v0, p1}, Lio/grpc/internal/MessageDeframer;->setMaxInboundMessageSize(I)V

    .line 77
    return-void
.end method
