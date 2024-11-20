.class final Lio/grpc/internal/MetadataApplierImpl;
.super Lio/grpc/CallCredentials$MetadataApplier;
.source "MetadataApplierImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/internal/MetadataApplierImpl$MetadataApplierListener;
    }
.end annotation


# instance fields
.field private final callOptions:Lio/grpc/CallOptions;

.field private final ctx:Lio/grpc/Context;

.field delayedStream:Lio/grpc/internal/DelayedStream;

.field finalized:Z

.field private final listener:Lio/grpc/internal/MetadataApplierImpl$MetadataApplierListener;

.field private final lock:Ljava/lang/Object;

.field private final method:Lio/grpc/MethodDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/MethodDescriptor<",
            "**>;"
        }
    .end annotation
.end field

.field private final origHeaders:Lio/grpc/Metadata;

.field private returnedStream:Lio/grpc/internal/ClientStream;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final tracers:[Lio/grpc/ClientStreamTracer;

.field private final transport:Lio/grpc/internal/ClientTransport;


# direct methods
.method constructor <init>(Lio/grpc/internal/ClientTransport;Lio/grpc/MethodDescriptor;Lio/grpc/Metadata;Lio/grpc/CallOptions;Lio/grpc/internal/MetadataApplierImpl$MetadataApplierListener;[Lio/grpc/ClientStreamTracer;)V
    .locals 1
    .param p1, "transport"    # Lio/grpc/internal/ClientTransport;
    .param p3, "origHeaders"    # Lio/grpc/Metadata;
    .param p4, "callOptions"    # Lio/grpc/CallOptions;
    .param p5, "listener"    # Lio/grpc/internal/MetadataApplierImpl$MetadataApplierListener;
    .param p6, "tracers"    # [Lio/grpc/ClientStreamTracer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/internal/ClientTransport;",
            "Lio/grpc/MethodDescriptor<",
            "**>;",
            "Lio/grpc/Metadata;",
            "Lio/grpc/CallOptions;",
            "Lio/grpc/internal/MetadataApplierImpl$MetadataApplierListener;",
            "[",
            "Lio/grpc/ClientStreamTracer;",
            ")V"
        }
    .end annotation

    .line 56
    .local p2, "method":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<**>;"
    invoke-direct {p0}, Lio/grpc/CallCredentials$MetadataApplier;-><init>()V

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/grpc/internal/MetadataApplierImpl;->lock:Ljava/lang/Object;

    .line 57
    iput-object p1, p0, Lio/grpc/internal/MetadataApplierImpl;->transport:Lio/grpc/internal/ClientTransport;

    .line 58
    iput-object p2, p0, Lio/grpc/internal/MetadataApplierImpl;->method:Lio/grpc/MethodDescriptor;

    .line 59
    iput-object p3, p0, Lio/grpc/internal/MetadataApplierImpl;->origHeaders:Lio/grpc/Metadata;

    .line 60
    iput-object p4, p0, Lio/grpc/internal/MetadataApplierImpl;->callOptions:Lio/grpc/CallOptions;

    .line 61
    invoke-static {}, Lio/grpc/Context;->current()Lio/grpc/Context;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/MetadataApplierImpl;->ctx:Lio/grpc/Context;

    .line 62
    iput-object p5, p0, Lio/grpc/internal/MetadataApplierImpl;->listener:Lio/grpc/internal/MetadataApplierImpl$MetadataApplierListener;

    .line 63
    iput-object p6, p0, Lio/grpc/internal/MetadataApplierImpl;->tracers:[Lio/grpc/ClientStreamTracer;

    .line 64
    return-void
.end method

.method private finalizeWith(Lio/grpc/internal/ClientStream;)V
    .locals 4
    .param p1, "stream"    # Lio/grpc/internal/ClientStream;

    .line 90
    iget-boolean v0, p0, Lio/grpc/internal/MetadataApplierImpl;->finalized:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "already finalized"

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 91
    iput-boolean v1, p0, Lio/grpc/internal/MetadataApplierImpl;->finalized:Z

    .line 92
    const/4 v0, 0x0

    .line 93
    .local v0, "directStream":Z
    iget-object v2, p0, Lio/grpc/internal/MetadataApplierImpl;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 94
    :try_start_0
    iget-object v3, p0, Lio/grpc/internal/MetadataApplierImpl;->returnedStream:Lio/grpc/internal/ClientStream;

    if-nez v3, :cond_0

    .line 97
    iput-object p1, p0, Lio/grpc/internal/MetadataApplierImpl;->returnedStream:Lio/grpc/internal/ClientStream;

    .line 98
    const/4 v0, 0x1

    .line 100
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    if-eqz v0, :cond_1

    .line 102
    iget-object v1, p0, Lio/grpc/internal/MetadataApplierImpl;->listener:Lio/grpc/internal/MetadataApplierImpl$MetadataApplierListener;

    invoke-interface {v1}, Lio/grpc/internal/MetadataApplierImpl$MetadataApplierListener;->onComplete()V

    .line 103
    return-void

    .line 107
    :cond_1
    iget-object v2, p0, Lio/grpc/internal/MetadataApplierImpl;->delayedStream:Lio/grpc/internal/DelayedStream;

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    const-string v2, "delayedStream is null"

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 108
    iget-object v1, p0, Lio/grpc/internal/MetadataApplierImpl;->delayedStream:Lio/grpc/internal/DelayedStream;

    invoke-virtual {v1, p1}, Lio/grpc/internal/DelayedStream;->setStream(Lio/grpc/internal/ClientStream;)Ljava/lang/Runnable;

    move-result-object v1

    .line 109
    .local v1, "slow":Ljava/lang/Runnable;
    if-eqz v1, :cond_3

    .line 111
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 113
    :cond_3
    iget-object v2, p0, Lio/grpc/internal/MetadataApplierImpl;->listener:Lio/grpc/internal/MetadataApplierImpl$MetadataApplierListener;

    invoke-interface {v2}, Lio/grpc/internal/MetadataApplierImpl$MetadataApplierListener;->onComplete()V

    .line 114
    return-void

    .line 100
    .end local v1    # "slow":Ljava/lang/Runnable;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public apply(Lio/grpc/Metadata;)V
    .locals 6
    .param p1, "headers"    # Lio/grpc/Metadata;

    .line 68
    iget-boolean v0, p0, Lio/grpc/internal/MetadataApplierImpl;->finalized:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "apply() or fail() already called"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 69
    const-string v0, "headers"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v0, p0, Lio/grpc/internal/MetadataApplierImpl;->origHeaders:Lio/grpc/Metadata;

    invoke-virtual {v0, p1}, Lio/grpc/Metadata;->merge(Lio/grpc/Metadata;)V

    .line 72
    iget-object v0, p0, Lio/grpc/internal/MetadataApplierImpl;->ctx:Lio/grpc/Context;

    invoke-virtual {v0}, Lio/grpc/Context;->attach()Lio/grpc/Context;

    move-result-object v0

    .line 74
    .local v0, "origCtx":Lio/grpc/Context;
    :try_start_0
    iget-object v1, p0, Lio/grpc/internal/MetadataApplierImpl;->transport:Lio/grpc/internal/ClientTransport;

    iget-object v2, p0, Lio/grpc/internal/MetadataApplierImpl;->method:Lio/grpc/MethodDescriptor;

    iget-object v3, p0, Lio/grpc/internal/MetadataApplierImpl;->origHeaders:Lio/grpc/Metadata;

    iget-object v4, p0, Lio/grpc/internal/MetadataApplierImpl;->callOptions:Lio/grpc/CallOptions;

    iget-object v5, p0, Lio/grpc/internal/MetadataApplierImpl;->tracers:[Lio/grpc/ClientStreamTracer;

    invoke-interface {v1, v2, v3, v4, v5}, Lio/grpc/internal/ClientTransport;->newStream(Lio/grpc/MethodDescriptor;Lio/grpc/Metadata;Lio/grpc/CallOptions;[Lio/grpc/ClientStreamTracer;)Lio/grpc/internal/ClientStream;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    .local v1, "realStream":Lio/grpc/internal/ClientStream;
    iget-object v2, p0, Lio/grpc/internal/MetadataApplierImpl;->ctx:Lio/grpc/Context;

    invoke-virtual {v2, v0}, Lio/grpc/Context;->detach(Lio/grpc/Context;)V

    .line 77
    nop

    .line 78
    invoke-direct {p0, v1}, Lio/grpc/internal/MetadataApplierImpl;->finalizeWith(Lio/grpc/internal/ClientStream;)V

    .line 79
    return-void

    .line 76
    .end local v1    # "realStream":Lio/grpc/internal/ClientStream;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lio/grpc/internal/MetadataApplierImpl;->ctx:Lio/grpc/Context;

    invoke-virtual {v2, v0}, Lio/grpc/Context;->detach(Lio/grpc/Context;)V

    throw v1
.end method

.method public fail(Lio/grpc/Status;)V
    .locals 3
    .param p1, "status"    # Lio/grpc/Status;

    .line 83
    invoke-virtual {p1}, Lio/grpc/Status;->isOk()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Cannot fail with OK status"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 84
    iget-boolean v0, p0, Lio/grpc/internal/MetadataApplierImpl;->finalized:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "apply() or fail() already called"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 85
    new-instance v0, Lio/grpc/internal/FailingClientStream;

    .line 86
    invoke-static {p1}, Lio/grpc/internal/GrpcUtil;->replaceInappropriateControlPlaneStatus(Lio/grpc/Status;)Lio/grpc/Status;

    move-result-object v1

    iget-object v2, p0, Lio/grpc/internal/MetadataApplierImpl;->tracers:[Lio/grpc/ClientStreamTracer;

    invoke-direct {v0, v1, v2}, Lio/grpc/internal/FailingClientStream;-><init>(Lio/grpc/Status;[Lio/grpc/ClientStreamTracer;)V

    .line 85
    invoke-direct {p0, v0}, Lio/grpc/internal/MetadataApplierImpl;->finalizeWith(Lio/grpc/internal/ClientStream;)V

    .line 87
    return-void
.end method

.method returnStream()Lio/grpc/internal/ClientStream;
    .locals 2

    .line 120
    iget-object v0, p0, Lio/grpc/internal/MetadataApplierImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 121
    :try_start_0
    iget-object v1, p0, Lio/grpc/internal/MetadataApplierImpl;->returnedStream:Lio/grpc/internal/ClientStream;

    if-nez v1, :cond_0

    .line 123
    new-instance v1, Lio/grpc/internal/DelayedStream;

    invoke-direct {v1}, Lio/grpc/internal/DelayedStream;-><init>()V

    iput-object v1, p0, Lio/grpc/internal/MetadataApplierImpl;->delayedStream:Lio/grpc/internal/DelayedStream;

    .line 124
    iput-object v1, p0, Lio/grpc/internal/MetadataApplierImpl;->returnedStream:Lio/grpc/internal/ClientStream;

    monitor-exit v0

    return-object v1

    .line 126
    :cond_0
    monitor-exit v0

    return-object v1

    .line 128
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
