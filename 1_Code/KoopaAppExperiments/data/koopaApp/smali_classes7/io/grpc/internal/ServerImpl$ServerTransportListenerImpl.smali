.class final Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;
.super Ljava/lang/Object;
.source "ServerImpl.java"

# interfaces
.implements Lio/grpc/internal/ServerTransportListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/ServerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServerTransportListenerImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$ServerCallParameters;
    }
.end annotation


# instance fields
.field private attributes:Lio/grpc/Attributes;

.field private handshakeTimeoutFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lio/grpc/internal/ServerImpl;

.field private final transport:Lio/grpc/internal/ServerTransport;


# direct methods
.method constructor <init>(Lio/grpc/internal/ServerImpl;Lio/grpc/internal/ServerTransport;)V
    .locals 0
    .param p2, "transport"    # Lio/grpc/internal/ServerTransport;

    .line 412
    iput-object p1, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;->this$0:Lio/grpc/internal/ServerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 413
    iput-object p2, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;->transport:Lio/grpc/internal/ServerTransport;

    .line 414
    return-void
.end method

.method static synthetic access$1900(Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;Lio/grpc/internal/ServerStream;Lio/grpc/ServerMethodDefinition;Lio/grpc/internal/StatsTraceContext;)Lio/grpc/ServerMethodDefinition;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;
    .param p1, "x1"    # Lio/grpc/internal/ServerStream;
    .param p2, "x2"    # Lio/grpc/ServerMethodDefinition;
    .param p3, "x3"    # Lio/grpc/internal/StatsTraceContext;

    .line 407
    invoke-direct {p0, p1, p2, p3}, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;->wrapMethod(Lio/grpc/internal/ServerStream;Lio/grpc/ServerMethodDefinition;Lio/grpc/internal/StatsTraceContext;)Lio/grpc/ServerMethodDefinition;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;Ljava/lang/String;Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$ServerCallParameters;Lio/grpc/Metadata;)Lio/grpc/internal/ServerStreamListener;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$ServerCallParameters;
    .param p3, "x3"    # Lio/grpc/Metadata;

    .line 407
    invoke-direct {p0, p1, p2, p3}, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;->startWrappedCall(Ljava/lang/String;Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$ServerCallParameters;Lio/grpc/Metadata;)Lio/grpc/internal/ServerStreamListener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;)Lio/grpc/internal/ServerTransport;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;

    .line 407
    iget-object v0, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;->transport:Lio/grpc/internal/ServerTransport;

    return-object v0
.end method

.method private createContext(Lio/grpc/Metadata;Lio/grpc/internal/StatsTraceContext;)Lio/grpc/Context$CancellableContext;
    .locals 6
    .param p1, "headers"    # Lio/grpc/Metadata;
    .param p2, "statsTraceCtx"    # Lio/grpc/internal/StatsTraceContext;

    .line 650
    sget-object v0, Lio/grpc/internal/GrpcUtil;->TIMEOUT_KEY:Lio/grpc/Metadata$Key;

    invoke-virtual {p1, v0}, Lio/grpc/Metadata;->get(Lio/grpc/Metadata$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 652
    .local v0, "timeoutNanos":Ljava/lang/Long;
    iget-object v1, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;->this$0:Lio/grpc/internal/ServerImpl;

    .line 654
    invoke-static {v1}, Lio/grpc/internal/ServerImpl;->access$2300(Lio/grpc/internal/ServerImpl;)Lio/grpc/Context;

    move-result-object v1

    invoke-virtual {p2, v1}, Lio/grpc/internal/StatsTraceContext;->serverFilterContext(Lio/grpc/Context;)Lio/grpc/Context;

    move-result-object v1

    sget-object v2, Lio/grpc/InternalServer;->SERVER_CONTEXT_KEY:Lio/grpc/Context$Key;

    iget-object v3, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;->this$0:Lio/grpc/internal/ServerImpl;

    .line 655
    invoke-virtual {v1, v2, v3}, Lio/grpc/Context;->withValue(Lio/grpc/Context$Key;Ljava/lang/Object;)Lio/grpc/Context;

    move-result-object v1

    .line 657
    .local v1, "baseContext":Lio/grpc/Context;
    if-nez v0, :cond_0

    .line 658
    invoke-virtual {v1}, Lio/grpc/Context;->withCancellation()Lio/grpc/Context$CancellableContext;

    move-result-object v2

    return-object v2

    .line 661
    :cond_0
    nop

    .line 663
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;->this$0:Lio/grpc/internal/ServerImpl;

    invoke-static {v5}, Lio/grpc/internal/ServerImpl;->access$2400(Lio/grpc/internal/ServerImpl;)Lio/grpc/Deadline$Ticker;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lio/grpc/Deadline;->after(JLjava/util/concurrent/TimeUnit;Lio/grpc/Deadline$Ticker;)Lio/grpc/Deadline;

    move-result-object v2

    iget-object v3, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;->transport:Lio/grpc/internal/ServerTransport;

    .line 664
    invoke-interface {v3}, Lio/grpc/internal/ServerTransport;->getScheduledExecutorService()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v3

    .line 662
    invoke-virtual {v1, v2, v3}, Lio/grpc/Context;->withDeadline(Lio/grpc/Deadline;Ljava/util/concurrent/ScheduledExecutorService;)Lio/grpc/Context$CancellableContext;

    move-result-object v2

    .line 666
    .local v2, "context":Lio/grpc/Context$CancellableContext;
    return-object v2
.end method

.method private startWrappedCall(Ljava/lang/String;Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$ServerCallParameters;Lio/grpc/Metadata;)Lio/grpc/internal/ServerStreamListener;
    .locals 4
    .param p1, "fullMethodName"    # Ljava/lang/String;
    .param p3, "headers"    # Lio/grpc/Metadata;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<WReqT:",
            "Ljava/lang/Object;",
            "WRespT:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$ServerCallParameters<",
            "TWReqT;TWRespT;>;",
            "Lio/grpc/Metadata;",
            ")",
            "Lio/grpc/internal/ServerStreamListener;"
        }
    .end annotation

    .line 703
    .local p2, "params":Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$ServerCallParameters;, "Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$ServerCallParameters<TWReqT;TWRespT;>;"
    iget-object v0, p2, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$ServerCallParameters;->callHandler:Lio/grpc/ServerCallHandler;

    iget-object v1, p2, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$ServerCallParameters;->call:Lio/grpc/internal/ServerCallImpl;

    .line 704
    invoke-interface {v0, v1, p3}, Lio/grpc/ServerCallHandler;->startCall(Lio/grpc/ServerCall;Lio/grpc/Metadata;)Lio/grpc/ServerCall$Listener;

    move-result-object v0

    .line 705
    .local v0, "callListener":Lio/grpc/ServerCall$Listener;, "Lio/grpc/ServerCall$Listener<TWReqT;>;"
    if-eqz v0, :cond_0

    .line 709
    iget-object v1, p2, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$ServerCallParameters;->call:Lio/grpc/internal/ServerCallImpl;

    invoke-virtual {v1, v0}, Lio/grpc/internal/ServerCallImpl;->newServerStreamListener(Lio/grpc/ServerCall$Listener;)Lio/grpc/internal/ServerStreamListener;

    move-result-object v1

    return-object v1

    .line 706
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startCall() returned a null listener for method "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private streamCreatedInternal(Lio/grpc/internal/ServerStream;Ljava/lang/String;Lio/grpc/Metadata;Lio/perfmark/Tag;)V
    .locals 21
    .param p1, "stream"    # Lio/grpc/internal/ServerStream;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "headers"    # Lio/grpc/Metadata;
    .param p4, "tag"    # Lio/perfmark/Tag;

    .line 477
    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p3

    iget-object v0, v12, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;->this$0:Lio/grpc/internal/ServerImpl;

    invoke-static {v0}, Lio/grpc/internal/ServerImpl;->access$1300(Lio/grpc/internal/ServerImpl;)Lio/grpc/ServerCallExecutorSupplier;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, v12, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;->this$0:Lio/grpc/internal/ServerImpl;

    invoke-static {v0}, Lio/grpc/internal/ServerImpl;->access$1400(Lio/grpc/internal/ServerImpl;)Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 480
    :cond_0
    new-instance v0, Lio/grpc/internal/SerializeReentrantCallsDirectExecutor;

    invoke-direct {v0}, Lio/grpc/internal/SerializeReentrantCallsDirectExecutor;-><init>()V

    .line 481
    .local v0, "wrappedExecutor":Ljava/util/concurrent/Executor;
    invoke-interface/range {p1 .. p1}, Lio/grpc/internal/ServerStream;->optimizeForDirectExecutor()V

    move-object v15, v0

    goto :goto_1

    .line 478
    .end local v0    # "wrappedExecutor":Ljava/util/concurrent/Executor;
    :cond_1
    :goto_0
    new-instance v0, Lio/grpc/internal/SerializingExecutor;

    iget-object v1, v12, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;->this$0:Lio/grpc/internal/ServerImpl;

    invoke-static {v1}, Lio/grpc/internal/ServerImpl;->access$1400(Lio/grpc/internal/ServerImpl;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/grpc/internal/SerializingExecutor;-><init>(Ljava/util/concurrent/Executor;)V

    move-object v15, v0

    .line 484
    .local v15, "wrappedExecutor":Ljava/util/concurrent/Executor;
    :goto_1
    sget-object v0, Lio/grpc/internal/GrpcUtil;->MESSAGE_ENCODING_KEY:Lio/grpc/Metadata$Key;

    invoke-virtual {v14, v0}, Lio/grpc/Metadata;->containsKey(Lio/grpc/Metadata$Key;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 485
    sget-object v0, Lio/grpc/internal/GrpcUtil;->MESSAGE_ENCODING_KEY:Lio/grpc/Metadata$Key;

    invoke-virtual {v14, v0}, Lio/grpc/Metadata;->get(Lio/grpc/Metadata$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 486
    .local v0, "encoding":Ljava/lang/String;
    iget-object v1, v12, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;->this$0:Lio/grpc/internal/ServerImpl;

    invoke-static {v1}, Lio/grpc/internal/ServerImpl;->access$1500(Lio/grpc/internal/ServerImpl;)Lio/grpc/DecompressorRegistry;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/grpc/DecompressorRegistry;->lookupDecompressor(Ljava/lang/String;)Lio/grpc/Decompressor;

    move-result-object v1

    .line 487
    .local v1, "decompressor":Lio/grpc/Decompressor;
    if-nez v1, :cond_2

    .line 488
    invoke-static {}, Lio/grpc/internal/ServerImpl;->access$1600()Lio/grpc/internal/ServerStreamListener;

    move-result-object v2

    invoke-interface {v13, v2}, Lio/grpc/internal/ServerStream;->setListener(Lio/grpc/internal/ServerStreamListener;)V

    .line 489
    sget-object v2, Lio/grpc/Status;->UNIMPLEMENTED:Lio/grpc/Status;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v3

    .line 491
    const-string v4, "Can\'t find decompressor for %s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 490
    invoke-virtual {v2, v3}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v2

    new-instance v3, Lio/grpc/Metadata;

    invoke-direct {v3}, Lio/grpc/Metadata;-><init>()V

    .line 489
    invoke-interface {v13, v2, v3}, Lio/grpc/internal/ServerStream;->close(Lio/grpc/Status;Lio/grpc/Metadata;)V

    .line 493
    return-void

    .line 495
    :cond_2
    invoke-interface {v13, v1}, Lio/grpc/internal/ServerStream;->setDecompressor(Lio/grpc/Decompressor;)V

    .line 498
    .end local v0    # "encoding":Ljava/lang/String;
    .end local v1    # "decompressor":Lio/grpc/Decompressor;
    :cond_3
    nop

    .line 499
    invoke-interface/range {p1 .. p1}, Lio/grpc/internal/ServerStream;->statsTraceContext()Lio/grpc/internal/StatsTraceContext;

    move-result-object v0

    .line 498
    const-string v1, "statsTraceCtx not present from stream"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lio/grpc/internal/StatsTraceContext;

    .line 501
    .local v11, "statsTraceCtx":Lio/grpc/internal/StatsTraceContext;
    invoke-direct {v12, v14, v11}, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;->createContext(Lio/grpc/Metadata;Lio/grpc/internal/StatsTraceContext;)Lio/grpc/Context$CancellableContext;

    move-result-object v16

    .line 503
    .local v16, "context":Lio/grpc/Context$CancellableContext;
    invoke-static {}, Lio/perfmark/PerfMark;->linkOut()Lio/perfmark/Link;

    move-result-object v17

    .line 505
    .local v17, "link":Lio/perfmark/Link;
    new-instance v6, Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;

    iget-object v0, v12, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;->this$0:Lio/grpc/internal/ServerImpl;

    .line 507
    invoke-static {v0}, Lio/grpc/internal/ServerImpl;->access$1400(Lio/grpc/internal/ServerImpl;)Ljava/util/concurrent/Executor;

    move-result-object v2

    move-object v0, v6

    move-object v1, v15

    move-object/from16 v3, p1

    move-object/from16 v4, v16

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lio/grpc/internal/ServerStream;Lio/grpc/Context$CancellableContext;Lio/perfmark/Tag;)V

    move-object v10, v6

    .line 508
    .local v10, "jumpListener":Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;
    invoke-interface {v13, v10}, Lio/grpc/internal/ServerStream;->setListener(Lio/grpc/internal/ServerStreamListener;)V

    .line 509
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v18

    .line 644
    .local v18, "future":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$ServerCallParameters<**>;>;"
    new-instance v9, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1MethodLookup;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    move-object/from16 v3, p4

    move-object/from16 v4, v17

    move-object/from16 v5, p2

    move-object/from16 v6, p1

    move-object v7, v10

    move-object/from16 v8, v18

    move-object v12, v9

    move-object v9, v11

    move-object/from16 v19, v10

    .end local v10    # "jumpListener":Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;
    .local v19, "jumpListener":Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;
    move-object/from16 v10, p3

    move-object/from16 v20, v11

    .end local v11    # "statsTraceCtx":Lio/grpc/internal/StatsTraceContext;
    .local v20, "statsTraceCtx":Lio/grpc/internal/StatsTraceContext;
    move-object v11, v15

    invoke-direct/range {v0 .. v11}, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1MethodLookup;-><init>(Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;Lio/grpc/Context$CancellableContext;Lio/perfmark/Tag;Lio/perfmark/Link;Ljava/lang/String;Lio/grpc/internal/ServerStream;Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;Lcom/google/common/util/concurrent/SettableFuture;Lio/grpc/internal/StatsTraceContext;Lio/grpc/Metadata;Ljava/util/concurrent/Executor;)V

    invoke-interface {v15, v12}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 645
    new-instance v10, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1HandleServerCall;

    move-object v0, v10

    move-object/from16 v5, v18

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p1

    move-object/from16 v9, v19

    invoke-direct/range {v0 .. v9}, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1HandleServerCall;-><init>(Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;Lio/grpc/Context$CancellableContext;Lio/perfmark/Tag;Lio/perfmark/Link;Lcom/google/common/util/concurrent/SettableFuture;Ljava/lang/String;Lio/grpc/Metadata;Lio/grpc/internal/ServerStream;Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;)V

    invoke-interface {v15, v10}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 646
    return-void
.end method

.method private wrapMethod(Lio/grpc/internal/ServerStream;Lio/grpc/ServerMethodDefinition;Lio/grpc/internal/StatsTraceContext;)Lio/grpc/ServerMethodDefinition;
    .locals 5
    .param p1, "stream"    # Lio/grpc/internal/ServerStream;
    .param p3, "statsTraceCtx"    # Lio/grpc/internal/StatsTraceContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ReqT:",
            "Ljava/lang/Object;",
            "RespT:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/internal/ServerStream;",
            "Lio/grpc/ServerMethodDefinition<",
            "TReqT;TRespT;>;",
            "Lio/grpc/internal/StatsTraceContext;",
            ")",
            "Lio/grpc/ServerMethodDefinition<",
            "**>;"
        }
    .end annotation

    .line 673
    .local p2, "methodDef":Lio/grpc/ServerMethodDefinition;, "Lio/grpc/ServerMethodDefinition<TReqT;TRespT;>;"
    new-instance v0, Lio/grpc/internal/ServerCallInfoImpl;

    .line 675
    invoke-virtual {p2}, Lio/grpc/ServerMethodDefinition;->getMethodDescriptor()Lio/grpc/MethodDescriptor;

    move-result-object v1

    .line 676
    invoke-interface {p1}, Lio/grpc/internal/ServerStream;->getAttributes()Lio/grpc/Attributes;

    move-result-object v2

    .line 677
    invoke-interface {p1}, Lio/grpc/internal/ServerStream;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lio/grpc/internal/ServerCallInfoImpl;-><init>(Lio/grpc/MethodDescriptor;Lio/grpc/Attributes;Ljava/lang/String;)V

    .line 673
    invoke-virtual {p3, v0}, Lio/grpc/internal/StatsTraceContext;->serverCallStarted(Lio/grpc/ServerStreamTracer$ServerCallInfo;)V

    .line 678
    invoke-virtual {p2}, Lio/grpc/ServerMethodDefinition;->getServerCallHandler()Lio/grpc/ServerCallHandler;

    move-result-object v0

    .line 679
    .local v0, "handler":Lio/grpc/ServerCallHandler;, "Lio/grpc/ServerCallHandler<TReqT;TRespT;>;"
    iget-object v1, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;->this$0:Lio/grpc/internal/ServerImpl;

    invoke-static {v1}, Lio/grpc/internal/ServerImpl;->access$2500(Lio/grpc/internal/ServerImpl;)[Lio/grpc/ServerInterceptor;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 680
    .local v4, "interceptor":Lio/grpc/ServerInterceptor;
    invoke-static {v4, v0}, Lio/grpc/InternalServerInterceptors;->interceptCallHandlerCreate(Lio/grpc/ServerInterceptor;Lio/grpc/ServerCallHandler;)Lio/grpc/ServerCallHandler;

    move-result-object v0

    .line 679
    .end local v4    # "interceptor":Lio/grpc/ServerInterceptor;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 682
    :cond_0
    invoke-virtual {p2, v0}, Lio/grpc/ServerMethodDefinition;->withServerCallHandler(Lio/grpc/ServerCallHandler;)Lio/grpc/ServerMethodDefinition;

    move-result-object v1

    .line 683
    .local v1, "interceptedDef":Lio/grpc/ServerMethodDefinition;, "Lio/grpc/ServerMethodDefinition<TReqT;TRespT;>;"
    iget-object v2, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;->this$0:Lio/grpc/internal/ServerImpl;

    invoke-static {v2}, Lio/grpc/internal/ServerImpl;->access$2600(Lio/grpc/internal/ServerImpl;)Lio/grpc/BinaryLog;

    move-result-object v2

    if-nez v2, :cond_1

    .line 684
    move-object v2, v1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;->this$0:Lio/grpc/internal/ServerImpl;

    invoke-static {v2}, Lio/grpc/internal/ServerImpl;->access$2600(Lio/grpc/internal/ServerImpl;)Lio/grpc/BinaryLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lio/grpc/BinaryLog;->wrapMethodDefinition(Lio/grpc/ServerMethodDefinition;)Lio/grpc/ServerMethodDefinition;

    move-result-object v2

    .line 685
    .local v2, "wMethodDef":Lio/grpc/ServerMethodDefinition;, "Lio/grpc/ServerMethodDefinition<**>;"
    :goto_1
    return-object v2
.end method


# virtual methods
.method public init()V
    .locals 5

    .line 423
    iget-object v0, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;->this$0:Lio/grpc/internal/ServerImpl;

    invoke-static {v0}, Lio/grpc/internal/ServerImpl;->access$900(Lio/grpc/internal/ServerImpl;)J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;->transport:Lio/grpc/internal/ServerTransport;

    invoke-interface {v0}, Lio/grpc/internal/ServerTransport;->getScheduledExecutorService()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1TransportShutdownNow;

    invoke-direct {v1, p0}, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1TransportShutdownNow;-><init>(Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;)V

    iget-object v2, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;->this$0:Lio/grpc/internal/ServerImpl;

    .line 425
    invoke-static {v2}, Lio/grpc/internal/ServerImpl;->access$900(Lio/grpc/internal/ServerImpl;)J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;->handshakeTimeoutFuture:Ljava/util/concurrent/Future;

    goto :goto_0

    .line 428
    :cond_0
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1;

    invoke-direct {v1, p0}, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1;-><init>(Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    iput-object v0, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;->handshakeTimeoutFuture:Ljava/util/concurrent/Future;

    .line 432
    :goto_0
    iget-object v0, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;->this$0:Lio/grpc/internal/ServerImpl;

    invoke-static {v0}, Lio/grpc/internal/ServerImpl;->access$1000(Lio/grpc/internal/ServerImpl;)Lio/grpc/InternalChannelz;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;->this$0:Lio/grpc/internal/ServerImpl;

    iget-object v2, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;->transport:Lio/grpc/internal/ServerTransport;

    invoke-virtual {v0, v1, v2}, Lio/grpc/InternalChannelz;->addServerSocket(Lio/grpc/InternalInstrumented;Lio/grpc/InternalInstrumented;)V

    .line 433
    return-void
.end method

.method public streamCreated(Lio/grpc/internal/ServerStream;Ljava/lang/String;Lio/grpc/Metadata;)V
    .locals 3
    .param p1, "stream"    # Lio/grpc/internal/ServerStream;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "headers"    # Lio/grpc/Metadata;

    .line 463
    invoke-interface {p1}, Lio/grpc/internal/ServerStream;->streamId()I

    move-result v0

    int-to-long v0, v0

    invoke-static {p2, v0, v1}, Lio/perfmark/PerfMark;->createTag(Ljava/lang/String;J)Lio/perfmark/Tag;

    move-result-object v0

    .line 464
    .local v0, "tag":Lio/perfmark/Tag;
    const-string v1, "ServerTransportListener.streamCreated"

    invoke-static {v1, v0}, Lio/perfmark/PerfMark;->startTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    .line 466
    :try_start_0
    invoke-direct {p0, p1, p2, p3, v0}, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;->streamCreatedInternal(Lio/grpc/internal/ServerStream;Ljava/lang/String;Lio/grpc/Metadata;Lio/perfmark/Tag;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 468
    invoke-static {v1, v0}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    .line 469
    nop

    .line 470
    return-void

    .line 468
    :catchall_0
    move-exception v2

    invoke-static {v1, v0}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    throw v2
.end method

.method public transportReady(Lio/grpc/Attributes;)Lio/grpc/Attributes;
    .locals 4
    .param p1, "attributes"    # Lio/grpc/Attributes;

    .line 437
    iget-object v0, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;->handshakeTimeoutFuture:Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 438
    const/4 v0, 0x0

    iput-object v0, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;->handshakeTimeoutFuture:Ljava/util/concurrent/Future;

    .line 440
    iget-object v0, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;->this$0:Lio/grpc/internal/ServerImpl;

    invoke-static {v0}, Lio/grpc/internal/ServerImpl;->access$1100(Lio/grpc/internal/ServerImpl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/ServerTransportFilter;

    .line 441
    .local v1, "filter":Lio/grpc/ServerTransportFilter;
    invoke-virtual {v1, p1}, Lio/grpc/ServerTransportFilter;->transportReady(Lio/grpc/Attributes;)Lio/grpc/Attributes;

    move-result-object v2

    const-string v3, "Filter %s returned null"

    invoke-static {v2, v3, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object p1, v2

    check-cast p1, Lio/grpc/Attributes;

    .line 443
    .end local v1    # "filter":Lio/grpc/ServerTransportFilter;
    goto :goto_0

    .line 444
    :cond_0
    iput-object p1, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;->attributes:Lio/grpc/Attributes;

    .line 445
    return-object p1
.end method

.method public transportTerminated()V
    .locals 3

    .line 450
    iget-object v0, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;->handshakeTimeoutFuture:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    .line 451
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 452
    const/4 v0, 0x0

    iput-object v0, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;->handshakeTimeoutFuture:Ljava/util/concurrent/Future;

    .line 454
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;->this$0:Lio/grpc/internal/ServerImpl;

    invoke-static {v0}, Lio/grpc/internal/ServerImpl;->access$1100(Lio/grpc/internal/ServerImpl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/ServerTransportFilter;

    .line 455
    .local v1, "filter":Lio/grpc/ServerTransportFilter;
    iget-object v2, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;->attributes:Lio/grpc/Attributes;

    invoke-virtual {v1, v2}, Lio/grpc/ServerTransportFilter;->transportTerminated(Lio/grpc/Attributes;)V

    .line 456
    .end local v1    # "filter":Lio/grpc/ServerTransportFilter;
    goto :goto_0

    .line 457
    :cond_1
    iget-object v0, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;->this$0:Lio/grpc/internal/ServerImpl;

    iget-object v1, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;->transport:Lio/grpc/internal/ServerTransport;

    invoke-static {v0, v1}, Lio/grpc/internal/ServerImpl;->access$1200(Lio/grpc/internal/ServerImpl;Lio/grpc/internal/ServerTransport;)V

    .line 458
    return-void
.end method
