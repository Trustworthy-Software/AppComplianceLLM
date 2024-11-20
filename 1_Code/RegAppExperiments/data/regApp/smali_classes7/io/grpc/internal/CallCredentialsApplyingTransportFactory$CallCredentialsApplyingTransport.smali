.class Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;
.super Lio/grpc/internal/ForwardingConnectionClientTransport;
.source "CallCredentialsApplyingTransportFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/CallCredentialsApplyingTransportFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallCredentialsApplyingTransport"
.end annotation


# instance fields
.field private final applierListener:Lio/grpc/internal/MetadataApplierImpl$MetadataApplierListener;

.field private final authority:Ljava/lang/String;

.field private final delegate:Lio/grpc/internal/ConnectionClientTransport;

.field private final pendingApplier:Ljava/util/concurrent/atomic/AtomicInteger;

.field private savedShutdownNowStatus:Lio/grpc/Status;

.field private savedShutdownStatus:Lio/grpc/Status;

.field private volatile shutdownStatus:Lio/grpc/Status;

.field final synthetic this$0:Lio/grpc/internal/CallCredentialsApplyingTransportFactory;


# direct methods
.method constructor <init>(Lio/grpc/internal/CallCredentialsApplyingTransportFactory;Lio/grpc/internal/ConnectionClientTransport;Ljava/lang/String;)V
    .locals 1
    .param p2, "delegate"    # Lio/grpc/internal/ConnectionClientTransport;
    .param p3, "authority"    # Ljava/lang/String;

    .line 96
    iput-object p1, p0, Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;->this$0:Lio/grpc/internal/CallCredentialsApplyingTransportFactory;

    invoke-direct {p0}, Lio/grpc/internal/ForwardingConnectionClientTransport;-><init>()V

    .line 81
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const v0, -0x7fffffff

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;->pendingApplier:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 87
    new-instance p1, Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport$1;

    invoke-direct {p1, p0}, Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport$1;-><init>(Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;)V

    iput-object p1, p0, Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;->applierListener:Lio/grpc/internal/MetadataApplierImpl$MetadataApplierListener;

    .line 97
    const-string p1, "delegate"

    invoke-static {p2, p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/internal/ConnectionClientTransport;

    iput-object p1, p0, Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;->delegate:Lio/grpc/internal/ConnectionClientTransport;

    .line 98
    const-string p1, "authority"

    invoke-static {p3, p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;->authority:Ljava/lang/String;

    .line 99
    return-void
.end method

.method static synthetic access$000(Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;

    .line 77
    iget-object v0, p0, Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;->pendingApplier:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$100(Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;)V
    .locals 0
    .param p0, "x0"    # Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;

    .line 77
    invoke-direct {p0}, Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;->maybeShutdown()V

    return-void
.end method

.method static synthetic access$300(Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;)Lio/grpc/internal/ConnectionClientTransport;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;

    .line 77
    iget-object v0, p0, Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;->delegate:Lio/grpc/internal/ConnectionClientTransport;

    return-object v0
.end method

.method static synthetic access$400(Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;

    .line 77
    iget-object v0, p0, Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;->authority:Ljava/lang/String;

    return-object v0
.end method

.method private maybeShutdown()V
    .locals 3

    .line 223
    monitor-enter p0

    .line 224
    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;->pendingApplier:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    monitor-exit p0

    return-void

    .line 227
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;->savedShutdownStatus:Lio/grpc/Status;

    .line 228
    .local v0, "maybeShutdown":Lio/grpc/Status;
    iget-object v1, p0, Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;->savedShutdownNowStatus:Lio/grpc/Status;

    .line 229
    .local v1, "maybeShutdownNow":Lio/grpc/Status;
    const/4 v2, 0x0

    iput-object v2, p0, Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;->savedShutdownStatus:Lio/grpc/Status;

    .line 230
    iput-object v2, p0, Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;->savedShutdownNowStatus:Lio/grpc/Status;

    .line 231
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    if-eqz v0, :cond_1

    .line 233
    invoke-super {p0, v0}, Lio/grpc/internal/ForwardingConnectionClientTransport;->shutdown(Lio/grpc/Status;)V

    .line 235
    :cond_1
    if-eqz v1, :cond_2

    .line 236
    invoke-super {p0, v1}, Lio/grpc/internal/ForwardingConnectionClientTransport;->shutdownNow(Lio/grpc/Status;)V

    .line 238
    :cond_2
    return-void

    .line 231
    .end local v0    # "maybeShutdown":Lio/grpc/Status;
    .end local v1    # "maybeShutdownNow":Lio/grpc/Status;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method protected delegate()Lio/grpc/internal/ConnectionClientTransport;
    .locals 1

    .line 103
    iget-object v0, p0, Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;->delegate:Lio/grpc/internal/ConnectionClientTransport;

    return-object v0
.end method

.method public newStream(Lio/grpc/MethodDescriptor;Lio/grpc/Metadata;Lio/grpc/CallOptions;[Lio/grpc/ClientStreamTracer;)Lio/grpc/internal/ClientStream;
    .locals 9
    .param p2, "headers"    # Lio/grpc/Metadata;
    .param p3, "callOptions"    # Lio/grpc/CallOptions;
    .param p4, "tracers"    # [Lio/grpc/ClientStreamTracer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/MethodDescriptor<",
            "**>;",
            "Lio/grpc/Metadata;",
            "Lio/grpc/CallOptions;",
            "[",
            "Lio/grpc/ClientStreamTracer;",
            ")",
            "Lio/grpc/internal/ClientStream;"
        }
    .end annotation

    .line 111
    .local p1, "method":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<**>;"
    invoke-virtual {p3}, Lio/grpc/CallOptions;->getCredentials()Lio/grpc/CallCredentials;

    move-result-object v0

    .line 112
    .local v0, "creds":Lio/grpc/CallCredentials;
    if-nez v0, :cond_0

    .line 113
    iget-object v1, p0, Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;->this$0:Lio/grpc/internal/CallCredentialsApplyingTransportFactory;

    invoke-static {v1}, Lio/grpc/internal/CallCredentialsApplyingTransportFactory;->access$200(Lio/grpc/internal/CallCredentialsApplyingTransportFactory;)Lio/grpc/CallCredentials;

    move-result-object v0

    goto :goto_0

    .line 114
    :cond_0
    iget-object v1, p0, Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;->this$0:Lio/grpc/internal/CallCredentialsApplyingTransportFactory;

    invoke-static {v1}, Lio/grpc/internal/CallCredentialsApplyingTransportFactory;->access$200(Lio/grpc/internal/CallCredentialsApplyingTransportFactory;)Lio/grpc/CallCredentials;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 115
    new-instance v1, Lio/grpc/CompositeCallCredentials;

    iget-object v2, p0, Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;->this$0:Lio/grpc/internal/CallCredentialsApplyingTransportFactory;

    invoke-static {v2}, Lio/grpc/internal/CallCredentialsApplyingTransportFactory;->access$200(Lio/grpc/internal/CallCredentialsApplyingTransportFactory;)Lio/grpc/CallCredentials;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lio/grpc/CompositeCallCredentials;-><init>(Lio/grpc/CallCredentials;Lio/grpc/CallCredentials;)V

    move-object v0, v1

    .line 117
    :cond_1
    :goto_0
    if-eqz v0, :cond_4

    .line 118
    new-instance v8, Lio/grpc/internal/MetadataApplierImpl;

    iget-object v2, p0, Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;->delegate:Lio/grpc/internal/ConnectionClientTransport;

    iget-object v6, p0, Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;->applierListener:Lio/grpc/internal/MetadataApplierImpl$MetadataApplierListener;

    move-object v1, v8

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lio/grpc/internal/MetadataApplierImpl;-><init>(Lio/grpc/internal/ClientTransport;Lio/grpc/MethodDescriptor;Lio/grpc/Metadata;Lio/grpc/CallOptions;Lio/grpc/internal/MetadataApplierImpl$MetadataApplierListener;[Lio/grpc/ClientStreamTracer;)V

    .line 120
    .local v1, "applier":Lio/grpc/internal/MetadataApplierImpl;
    iget-object v2, p0, Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;->pendingApplier:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    if-lez v2, :cond_2

    .line 121
    iget-object v2, p0, Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;->applierListener:Lio/grpc/internal/MetadataApplierImpl$MetadataApplierListener;

    invoke-interface {v2}, Lio/grpc/internal/MetadataApplierImpl$MetadataApplierListener;->onComplete()V

    .line 122
    new-instance v2, Lio/grpc/internal/FailingClientStream;

    iget-object v3, p0, Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;->shutdownStatus:Lio/grpc/Status;

    invoke-direct {v2, v3, p4}, Lio/grpc/internal/FailingClientStream;-><init>(Lio/grpc/Status;[Lio/grpc/ClientStreamTracer;)V

    return-object v2

    .line 124
    :cond_2
    new-instance v2, Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport$2;

    invoke-direct {v2, p0, p1, p3}, Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport$2;-><init>(Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;Lio/grpc/MethodDescriptor;Lio/grpc/CallOptions;)V

    .line 159
    .local v2, "requestInfo":Lio/grpc/CallCredentials$RequestInfo;
    :try_start_0
    instance-of v3, v0, Lio/grpc/InternalMayRequireSpecificExecutor;

    if-eqz v3, :cond_3

    move-object v3, v0

    check-cast v3, Lio/grpc/InternalMayRequireSpecificExecutor;

    .line 160
    invoke-interface {v3}, Lio/grpc/InternalMayRequireSpecificExecutor;->isSpecificExecutorRequired()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 161
    invoke-virtual {p3}, Lio/grpc/CallOptions;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 162
    invoke-virtual {p3}, Lio/grpc/CallOptions;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    .local v3, "executor":Ljava/util/concurrent/Executor;
    goto :goto_1

    .line 164
    .end local v3    # "executor":Ljava/util/concurrent/Executor;
    :cond_3
    iget-object v3, p0, Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;->this$0:Lio/grpc/internal/CallCredentialsApplyingTransportFactory;

    invoke-static {v3}, Lio/grpc/internal/CallCredentialsApplyingTransportFactory;->access$500(Lio/grpc/internal/CallCredentialsApplyingTransportFactory;)Ljava/util/concurrent/Executor;

    move-result-object v3

    .line 167
    .restart local v3    # "executor":Ljava/util/concurrent/Executor;
    :goto_1
    invoke-virtual {v0, v2, v3, v1}, Lio/grpc/CallCredentials;->applyRequestMetadata(Lio/grpc/CallCredentials$RequestInfo;Ljava/util/concurrent/Executor;Lio/grpc/CallCredentials$MetadataApplier;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    .end local v3    # "executor":Ljava/util/concurrent/Executor;
    goto :goto_2

    .line 168
    :catchall_0
    move-exception v3

    .line 169
    .local v3, "t":Ljava/lang/Throwable;
    sget-object v4, Lio/grpc/Status;->UNAUTHENTICATED:Lio/grpc/Status;

    .line 170
    const-string v5, "Credentials should use fail() instead of throwing exceptions"

    invoke-virtual {v4, v5}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v4

    .line 171
    invoke-virtual {v4, v3}, Lio/grpc/Status;->withCause(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object v4

    .line 169
    invoke-virtual {v1, v4}, Lio/grpc/internal/MetadataApplierImpl;->fail(Lio/grpc/Status;)V

    .line 173
    .end local v3    # "t":Ljava/lang/Throwable;
    :goto_2
    invoke-virtual {v1}, Lio/grpc/internal/MetadataApplierImpl;->returnStream()Lio/grpc/internal/ClientStream;

    move-result-object v3

    return-object v3

    .line 175
    .end local v1    # "applier":Lio/grpc/internal/MetadataApplierImpl;
    .end local v2    # "requestInfo":Lio/grpc/CallCredentials$RequestInfo;
    :cond_4
    iget-object v1, p0, Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;->pendingApplier:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-ltz v1, :cond_5

    .line 176
    new-instance v1, Lio/grpc/internal/FailingClientStream;

    iget-object v2, p0, Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;->shutdownStatus:Lio/grpc/Status;

    invoke-direct {v1, v2, p4}, Lio/grpc/internal/FailingClientStream;-><init>(Lio/grpc/Status;[Lio/grpc/ClientStreamTracer;)V

    return-object v1

    .line 178
    :cond_5
    iget-object v1, p0, Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;->delegate:Lio/grpc/internal/ConnectionClientTransport;

    invoke-interface {v1, p1, p2, p3, p4}, Lio/grpc/internal/ConnectionClientTransport;->newStream(Lio/grpc/MethodDescriptor;Lio/grpc/Metadata;Lio/grpc/CallOptions;[Lio/grpc/ClientStreamTracer;)Lio/grpc/internal/ClientStream;

    move-result-object v1

    return-object v1
.end method

.method public shutdown(Lio/grpc/Status;)V
    .locals 2
    .param p1, "status"    # Lio/grpc/Status;

    .line 184
    const-string v0, "status"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    monitor-enter p0

    .line 186
    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;->pendingApplier:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-gez v0, :cond_1

    .line 187
    iput-object p1, p0, Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;->shutdownStatus:Lio/grpc/Status;

    .line 188
    iget-object v0, p0, Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;->pendingApplier:Ljava/util/concurrent/atomic/AtomicInteger;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 192
    iget-object v0, p0, Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;->pendingApplier:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    iput-object p1, p0, Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;->savedShutdownStatus:Lio/grpc/Status;

    .line 194
    monitor-exit p0

    return-void

    .line 196
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    invoke-super {p0, p1}, Lio/grpc/internal/ForwardingConnectionClientTransport;->shutdown(Lio/grpc/Status;)V

    .line 198
    return-void

    .line 190
    :cond_1
    :try_start_1
    monitor-exit p0

    return-void

    .line 196
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public shutdownNow(Lio/grpc/Status;)V
    .locals 2
    .param p1, "status"    # Lio/grpc/Status;

    .line 203
    const-string v0, "status"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    monitor-enter p0

    .line 205
    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;->pendingApplier:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-gez v0, :cond_0

    .line 206
    iput-object p1, p0, Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;->shutdownStatus:Lio/grpc/Status;

    .line 207
    iget-object v0, p0, Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;->pendingApplier:Ljava/util/concurrent/atomic/AtomicInteger;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    goto :goto_0

    .line 208
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;->savedShutdownNowStatus:Lio/grpc/Status;

    if-eqz v0, :cond_1

    .line 209
    monitor-exit p0

    return-void

    .line 211
    :cond_1
    :goto_0
    iget-object v0, p0, Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;->pendingApplier:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eqz v0, :cond_2

    .line 212
    iput-object p1, p0, Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;->savedShutdownNowStatus:Lio/grpc/Status;

    .line 214
    monitor-exit p0

    return-void

    .line 216
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    invoke-super {p0, p1}, Lio/grpc/internal/ForwardingConnectionClientTransport;->shutdownNow(Lio/grpc/Status;)V

    .line 218
    return-void

    .line 216
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
