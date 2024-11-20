.class final Lio/grpc/okhttp/AsyncSink;
.super Ljava/lang/Object;
.source "AsyncSink.java"

# interfaces
.implements Lokio/Sink;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/okhttp/AsyncSink$LimitControlFramesWriter;,
        Lio/grpc/okhttp/AsyncSink$WriteRunnable;
    }
.end annotation


# instance fields
.field private final buffer:Lokio/Buffer;

.field private closed:Z

.field private controlFramesExceeded:Z

.field private controlFramesInWrite:I

.field private flushEnqueued:Z

.field private final lock:Ljava/lang/Object;

.field private final maxQueuedControlFrames:I

.field private queuedControlFrames:I

.field private final serializingExecutor:Lio/grpc/internal/SerializingExecutor;

.field private sink:Lokio/Sink;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private socket:Ljava/net/Socket;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final transportExceptionHandler:Lio/grpc/okhttp/ExceptionHandlingFrameWriter$TransportExceptionHandler;

.field private writeEnqueued:Z


# direct methods
.method private constructor <init>(Lio/grpc/internal/SerializingExecutor;Lio/grpc/okhttp/ExceptionHandlingFrameWriter$TransportExceptionHandler;I)V
    .locals 1
    .param p1, "executor"    # Lio/grpc/internal/SerializingExecutor;
    .param p2, "exceptionHandler"    # Lio/grpc/okhttp/ExceptionHandlingFrameWriter$TransportExceptionHandler;
    .param p3, "maxQueuedControlFrames"    # I

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/grpc/okhttp/AsyncSink;->lock:Ljava/lang/Object;

    .line 45
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    iput-object v0, p0, Lio/grpc/okhttp/AsyncSink;->buffer:Lokio/Buffer;

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/grpc/okhttp/AsyncSink;->writeEnqueued:Z

    .line 52
    iput-boolean v0, p0, Lio/grpc/okhttp/AsyncSink;->flushEnqueued:Z

    .line 54
    iput-boolean v0, p0, Lio/grpc/okhttp/AsyncSink;->closed:Z

    .line 66
    const-string v0, "executor"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/SerializingExecutor;

    iput-object v0, p0, Lio/grpc/okhttp/AsyncSink;->serializingExecutor:Lio/grpc/internal/SerializingExecutor;

    .line 67
    const-string v0, "exceptionHandler"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/okhttp/ExceptionHandlingFrameWriter$TransportExceptionHandler;

    iput-object v0, p0, Lio/grpc/okhttp/AsyncSink;->transportExceptionHandler:Lio/grpc/okhttp/ExceptionHandlingFrameWriter$TransportExceptionHandler;

    .line 68
    iput p3, p0, Lio/grpc/okhttp/AsyncSink;->maxQueuedControlFrames:I

    .line 69
    return-void
.end method

.method static synthetic access$100(Lio/grpc/okhttp/AsyncSink;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lio/grpc/okhttp/AsyncSink;

    .line 42
    iget-object v0, p0, Lio/grpc/okhttp/AsyncSink;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lio/grpc/okhttp/AsyncSink;)Lokio/Buffer;
    .locals 1
    .param p0, "x0"    # Lio/grpc/okhttp/AsyncSink;

    .line 42
    iget-object v0, p0, Lio/grpc/okhttp/AsyncSink;->buffer:Lokio/Buffer;

    return-object v0
.end method

.method static synthetic access$302(Lio/grpc/okhttp/AsyncSink;Z)Z
    .locals 0
    .param p0, "x0"    # Lio/grpc/okhttp/AsyncSink;
    .param p1, "x1"    # Z

    .line 42
    iput-boolean p1, p0, Lio/grpc/okhttp/AsyncSink;->writeEnqueued:Z

    return p1
.end method

.method static synthetic access$400(Lio/grpc/okhttp/AsyncSink;)I
    .locals 1
    .param p0, "x0"    # Lio/grpc/okhttp/AsyncSink;

    .line 42
    iget v0, p0, Lio/grpc/okhttp/AsyncSink;->queuedControlFrames:I

    return v0
.end method

.method static synthetic access$420(Lio/grpc/okhttp/AsyncSink;I)I
    .locals 1
    .param p0, "x0"    # Lio/grpc/okhttp/AsyncSink;
    .param p1, "x1"    # I

    .line 42
    iget v0, p0, Lio/grpc/okhttp/AsyncSink;->queuedControlFrames:I

    sub-int/2addr v0, p1

    iput v0, p0, Lio/grpc/okhttp/AsyncSink;->queuedControlFrames:I

    return v0
.end method

.method static synthetic access$500(Lio/grpc/okhttp/AsyncSink;)Lokio/Sink;
    .locals 1
    .param p0, "x0"    # Lio/grpc/okhttp/AsyncSink;

    .line 42
    iget-object v0, p0, Lio/grpc/okhttp/AsyncSink;->sink:Lokio/Sink;

    return-object v0
.end method

.method static synthetic access$602(Lio/grpc/okhttp/AsyncSink;Z)Z
    .locals 0
    .param p0, "x0"    # Lio/grpc/okhttp/AsyncSink;
    .param p1, "x1"    # Z

    .line 42
    iput-boolean p1, p0, Lio/grpc/okhttp/AsyncSink;->flushEnqueued:Z

    return p1
.end method

.method static synthetic access$700(Lio/grpc/okhttp/AsyncSink;)Lio/grpc/okhttp/ExceptionHandlingFrameWriter$TransportExceptionHandler;
    .locals 1
    .param p0, "x0"    # Lio/grpc/okhttp/AsyncSink;

    .line 42
    iget-object v0, p0, Lio/grpc/okhttp/AsyncSink;->transportExceptionHandler:Lio/grpc/okhttp/ExceptionHandlingFrameWriter$TransportExceptionHandler;

    return-object v0
.end method

.method static synthetic access$800(Lio/grpc/okhttp/AsyncSink;)Ljava/net/Socket;
    .locals 1
    .param p0, "x0"    # Lio/grpc/okhttp/AsyncSink;

    .line 42
    iget-object v0, p0, Lio/grpc/okhttp/AsyncSink;->socket:Ljava/net/Socket;

    return-object v0
.end method

.method static synthetic access$908(Lio/grpc/okhttp/AsyncSink;)I
    .locals 2
    .param p0, "x0"    # Lio/grpc/okhttp/AsyncSink;

    .line 42
    iget v0, p0, Lio/grpc/okhttp/AsyncSink;->controlFramesInWrite:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lio/grpc/okhttp/AsyncSink;->controlFramesInWrite:I

    return v0
.end method

.method static sink(Lio/grpc/internal/SerializingExecutor;Lio/grpc/okhttp/ExceptionHandlingFrameWriter$TransportExceptionHandler;I)Lio/grpc/okhttp/AsyncSink;
    .locals 1
    .param p0, "executor"    # Lio/grpc/internal/SerializingExecutor;
    .param p1, "exceptionHandler"    # Lio/grpc/okhttp/ExceptionHandlingFrameWriter$TransportExceptionHandler;
    .param p2, "maxQueuedControlFrames"    # I

    .line 78
    new-instance v0, Lio/grpc/okhttp/AsyncSink;

    invoke-direct {v0, p0, p1, p2}, Lio/grpc/okhttp/AsyncSink;-><init>(Lio/grpc/internal/SerializingExecutor;Lio/grpc/okhttp/ExceptionHandlingFrameWriter$TransportExceptionHandler;I)V

    return-object v0
.end method


# virtual methods
.method becomeConnected(Lokio/Sink;Ljava/net/Socket;)V
    .locals 2
    .param p1, "sink"    # Lokio/Sink;
    .param p2, "socket"    # Ljava/net/Socket;

    .line 88
    iget-object v0, p0, Lio/grpc/okhttp/AsyncSink;->sink:Lokio/Sink;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "AsyncSink\'s becomeConnected should only be called once."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 89
    const-string v0, "sink"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokio/Sink;

    iput-object v0, p0, Lio/grpc/okhttp/AsyncSink;->sink:Lokio/Sink;

    .line 90
    const-string v0, "socket"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Socket;

    iput-object v0, p0, Lio/grpc/okhttp/AsyncSink;->socket:Ljava/net/Socket;

    .line 91
    return-void
.end method

.method public close()V
    .locals 2

    .line 203
    iget-boolean v0, p0, Lio/grpc/okhttp/AsyncSink;->closed:Z

    if-eqz v0, :cond_0

    .line 204
    return-void

    .line 206
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/okhttp/AsyncSink;->closed:Z

    .line 207
    iget-object v0, p0, Lio/grpc/okhttp/AsyncSink;->serializingExecutor:Lio/grpc/internal/SerializingExecutor;

    new-instance v1, Lio/grpc/okhttp/AsyncSink$3;

    invoke-direct {v1, p0}, Lio/grpc/okhttp/AsyncSink$3;-><init>(Lio/grpc/okhttp/AsyncSink;)V

    invoke-virtual {v0, v1}, Lio/grpc/internal/SerializingExecutor;->execute(Ljava/lang/Runnable;)V

    .line 234
    return-void
.end method

.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 161
    iget-boolean v0, p0, Lio/grpc/okhttp/AsyncSink;->closed:Z

    if-nez v0, :cond_1

    .line 164
    const-string v0, "AsyncSink.flush"

    invoke-static {v0}, Lio/perfmark/PerfMark;->startTask(Ljava/lang/String;)V

    .line 166
    :try_start_0
    iget-object v0, p0, Lio/grpc/okhttp/AsyncSink;->lock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 167
    :try_start_1
    iget-boolean v1, p0, Lio/grpc/okhttp/AsyncSink;->flushEnqueued:Z

    if-eqz v1, :cond_0

    .line 168
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 192
    const-string v0, "AsyncSink.flush"

    invoke-static {v0}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;)V

    .line 168
    return-void

    .line 170
    :cond_0
    const/4 v1, 0x1

    :try_start_2
    iput-boolean v1, p0, Lio/grpc/okhttp/AsyncSink;->flushEnqueued:Z

    .line 171
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 172
    :try_start_3
    iget-object v0, p0, Lio/grpc/okhttp/AsyncSink;->serializingExecutor:Lio/grpc/internal/SerializingExecutor;

    new-instance v1, Lio/grpc/okhttp/AsyncSink$2;

    invoke-direct {v1, p0}, Lio/grpc/okhttp/AsyncSink$2;-><init>(Lio/grpc/okhttp/AsyncSink;)V

    invoke-virtual {v0, v1}, Lio/grpc/internal/SerializingExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 192
    const-string v0, "AsyncSink.flush"

    invoke-static {v0}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;)V

    .line 193
    nop

    .line 194
    return-void

    .line 171
    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 192
    :catchall_1
    move-exception v0

    const-string v1, "AsyncSink.flush"

    invoke-static {v1}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method limitControlFramesWriter(Lio/grpc/okhttp/internal/framed/FrameWriter;)Lio/grpc/okhttp/internal/framed/FrameWriter;
    .locals 1
    .param p1, "delegate"    # Lio/grpc/okhttp/internal/framed/FrameWriter;

    .line 94
    new-instance v0, Lio/grpc/okhttp/AsyncSink$LimitControlFramesWriter;

    invoke-direct {v0, p0, p1}, Lio/grpc/okhttp/AsyncSink$LimitControlFramesWriter;-><init>(Lio/grpc/okhttp/AsyncSink;Lio/grpc/okhttp/internal/framed/FrameWriter;)V

    return-object v0
.end method

.method public timeout()Lokio/Timeout;
    .locals 1

    .line 198
    sget-object v0, Lokio/Timeout;->NONE:Lokio/Timeout;

    return-object v0
.end method

.method public write(Lokio/Buffer;J)V
    .locals 7
    .param p1, "source"    # Lokio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    const-string v0, "source"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-boolean v0, p0, Lio/grpc/okhttp/AsyncSink;->closed:Z

    if-nez v0, :cond_4

    .line 103
    const-string v0, "AsyncSink.write"

    invoke-static {v0}, Lio/perfmark/PerfMark;->startTask(Ljava/lang/String;)V

    .line 105
    const/4 v0, 0x0

    .line 106
    .local v0, "closeSocket":Z
    :try_start_0
    iget-object v1, p0, Lio/grpc/okhttp/AsyncSink;->lock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 107
    :try_start_1
    iget-object v2, p0, Lio/grpc/okhttp/AsyncSink;->buffer:Lokio/Buffer;

    invoke-virtual {v2, p1, p2, p3}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 109
    iget v2, p0, Lio/grpc/okhttp/AsyncSink;->queuedControlFrames:I

    iget v3, p0, Lio/grpc/okhttp/AsyncSink;->controlFramesInWrite:I

    add-int/2addr v2, v3

    iput v2, p0, Lio/grpc/okhttp/AsyncSink;->queuedControlFrames:I

    .line 110
    const/4 v3, 0x0

    iput v3, p0, Lio/grpc/okhttp/AsyncSink;->controlFramesInWrite:I

    .line 111
    iget-boolean v3, p0, Lio/grpc/okhttp/AsyncSink;->controlFramesExceeded:Z

    const/4 v4, 0x1

    if-nez v3, :cond_0

    iget v3, p0, Lio/grpc/okhttp/AsyncSink;->maxQueuedControlFrames:I

    if-le v2, v3, :cond_0

    .line 112
    iput-boolean v4, p0, Lio/grpc/okhttp/AsyncSink;->controlFramesExceeded:Z

    .line 113
    const/4 v0, 0x1

    goto :goto_0

    .line 115
    :cond_0
    iget-boolean v2, p0, Lio/grpc/okhttp/AsyncSink;->writeEnqueued:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lio/grpc/okhttp/AsyncSink;->flushEnqueued:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lio/grpc/okhttp/AsyncSink;->buffer:Lokio/Buffer;

    invoke-virtual {v2}, Lokio/Buffer;->completeSegmentByteCount()J

    move-result-wide v2

    const-wide/16 v5, 0x0

    cmp-long v2, v2, v5

    if-gtz v2, :cond_1

    goto :goto_2

    .line 118
    :cond_1
    iput-boolean v4, p0, Lio/grpc/okhttp/AsyncSink;->writeEnqueued:Z

    .line 120
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    if-eqz v0, :cond_2

    .line 123
    :try_start_2
    iget-object v1, p0, Lio/grpc/okhttp/AsyncSink;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 126
    goto :goto_1

    .line 124
    :catch_0
    move-exception v1

    .line 125
    .local v1, "e":Ljava/io/IOException;
    :try_start_3
    iget-object v2, p0, Lio/grpc/okhttp/AsyncSink;->transportExceptionHandler:Lio/grpc/okhttp/ExceptionHandlingFrameWriter$TransportExceptionHandler;

    invoke-interface {v2, v1}, Lio/grpc/okhttp/ExceptionHandlingFrameWriter$TransportExceptionHandler;->onException(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 155
    .end local v1    # "e":Ljava/io/IOException;
    :goto_1
    const-string v1, "AsyncSink.write"

    invoke-static {v1}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;)V

    .line 127
    return-void

    .line 129
    :cond_2
    :try_start_4
    iget-object v1, p0, Lio/grpc/okhttp/AsyncSink;->serializingExecutor:Lio/grpc/internal/SerializingExecutor;

    new-instance v2, Lio/grpc/okhttp/AsyncSink$1;

    invoke-direct {v2, p0}, Lio/grpc/okhttp/AsyncSink$1;-><init>(Lio/grpc/okhttp/AsyncSink;)V

    invoke-virtual {v1, v2}, Lio/grpc/internal/SerializingExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 155
    .end local v0    # "closeSocket":Z
    const-string v0, "AsyncSink.write"

    invoke-static {v0}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;)V

    .line 156
    nop

    .line 157
    return-void

    .line 116
    .restart local v0    # "closeSocket":Z
    :cond_3
    :goto_2
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 155
    const-string v1, "AsyncSink.write"

    invoke-static {v1}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;)V

    .line 116
    return-void

    .line 120
    :catchall_0
    move-exception v2

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .end local p1    # "source":Lokio/Buffer;
    .end local p2    # "byteCount":J
    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 155
    .end local v0    # "closeSocket":Z
    .restart local p1    # "source":Lokio/Buffer;
    .restart local p2    # "byteCount":J
    :catchall_1
    move-exception v0

    const-string v1, "AsyncSink.write"

    invoke-static {v1}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
