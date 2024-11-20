.class final Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1MethodLookup;
.super Lio/grpc/internal/ContextRunnable;
.source "ServerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;->streamCreatedInternal(Lio/grpc/internal/ServerStream;Ljava/lang/String;Lio/grpc/Metadata;Lio/perfmark/Tag;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MethodLookup"
.end annotation


# instance fields
.field final synthetic this$1:Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;

.field final synthetic val$context:Lio/grpc/Context$CancellableContext;

.field final synthetic val$future:Lcom/google/common/util/concurrent/SettableFuture;

.field final synthetic val$headers:Lio/grpc/Metadata;

.field final synthetic val$jumpListener:Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;

.field final synthetic val$link:Lio/perfmark/Link;

.field final synthetic val$methodName:Ljava/lang/String;

.field final synthetic val$statsTraceCtx:Lio/grpc/internal/StatsTraceContext;

.field final synthetic val$stream:Lio/grpc/internal/ServerStream;

.field final synthetic val$tag:Lio/perfmark/Tag;

.field final synthetic val$wrappedExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;Lio/grpc/Context$CancellableContext;Lio/perfmark/Tag;Lio/perfmark/Link;Ljava/lang/String;Lio/grpc/internal/ServerStream;Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;Lcom/google/common/util/concurrent/SettableFuture;Lio/grpc/internal/StatsTraceContext;Lio/grpc/Metadata;Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p1, "this$1"    # Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 520
    iput-object p1, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1MethodLookup;->this$1:Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;

    iput-object p2, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1MethodLookup;->val$context:Lio/grpc/Context$CancellableContext;

    iput-object p3, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1MethodLookup;->val$tag:Lio/perfmark/Tag;

    iput-object p4, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1MethodLookup;->val$link:Lio/perfmark/Link;

    iput-object p5, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1MethodLookup;->val$methodName:Ljava/lang/String;

    iput-object p6, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1MethodLookup;->val$stream:Lio/grpc/internal/ServerStream;

    iput-object p7, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1MethodLookup;->val$jumpListener:Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;

    iput-object p8, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1MethodLookup;->val$future:Lcom/google/common/util/concurrent/SettableFuture;

    iput-object p9, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1MethodLookup;->val$statsTraceCtx:Lio/grpc/internal/StatsTraceContext;

    iput-object p10, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1MethodLookup;->val$headers:Lio/grpc/Metadata;

    iput-object p11, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1MethodLookup;->val$wrappedExecutor:Ljava/util/concurrent/Executor;

    .line 521
    invoke-direct {p0, p2}, Lio/grpc/internal/ContextRunnable;-><init>(Lio/grpc/Context;)V

    .line 522
    return-void
.end method

.method private maySwitchExecutor(Lio/grpc/ServerMethodDefinition;Lio/grpc/internal/ServerStream;Lio/grpc/Metadata;Lio/grpc/Context$CancellableContext;Lio/perfmark/Tag;)Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$ServerCallParameters;
    .locals 10
    .param p2, "stream"    # Lio/grpc/internal/ServerStream;
    .param p3, "headers"    # Lio/grpc/Metadata;
    .param p4, "context"    # Lio/grpc/Context$CancellableContext;
    .param p5, "tag"    # Lio/perfmark/Tag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ReqT:",
            "Ljava/lang/Object;",
            "RespT:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/ServerMethodDefinition<",
            "TReqT;TRespT;>;",
            "Lio/grpc/internal/ServerStream;",
            "Lio/grpc/Metadata;",
            "Lio/grpc/Context$CancellableContext;",
            "Lio/perfmark/Tag;",
            ")",
            "Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$ServerCallParameters<",
            "TReqT;TRespT;>;"
        }
    .end annotation

    .line 575
    .local p1, "methodDef":Lio/grpc/ServerMethodDefinition;, "Lio/grpc/ServerMethodDefinition<TReqT;TRespT;>;"
    new-instance v9, Lio/grpc/internal/ServerCallImpl;

    .line 577
    invoke-virtual {p1}, Lio/grpc/ServerMethodDefinition;->getMethodDescriptor()Lio/grpc/MethodDescriptor;

    move-result-object v2

    iget-object v0, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1MethodLookup;->this$1:Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;

    iget-object v0, v0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;->this$0:Lio/grpc/internal/ServerImpl;

    .line 580
    invoke-static {v0}, Lio/grpc/internal/ServerImpl;->access$1500(Lio/grpc/internal/ServerImpl;)Lio/grpc/DecompressorRegistry;

    move-result-object v5

    iget-object v0, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1MethodLookup;->this$1:Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;

    iget-object v0, v0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;->this$0:Lio/grpc/internal/ServerImpl;

    .line 581
    invoke-static {v0}, Lio/grpc/internal/ServerImpl;->access$2000(Lio/grpc/internal/ServerImpl;)Lio/grpc/CompressorRegistry;

    move-result-object v6

    iget-object v0, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1MethodLookup;->this$1:Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;

    iget-object v0, v0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;->this$0:Lio/grpc/internal/ServerImpl;

    .line 582
    invoke-static {v0}, Lio/grpc/internal/ServerImpl;->access$2100(Lio/grpc/internal/ServerImpl;)Lio/grpc/internal/CallTracer;

    move-result-object v7

    move-object v0, v9

    move-object v1, p2

    move-object v3, p3

    move-object v4, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lio/grpc/internal/ServerCallImpl;-><init>(Lio/grpc/internal/ServerStream;Lio/grpc/MethodDescriptor;Lio/grpc/Metadata;Lio/grpc/Context$CancellableContext;Lio/grpc/DecompressorRegistry;Lio/grpc/CompressorRegistry;Lio/grpc/internal/CallTracer;Lio/perfmark/Tag;)V

    .line 584
    .local v0, "call":Lio/grpc/internal/ServerCallImpl;, "Lio/grpc/internal/ServerCallImpl<TReqT;TRespT;>;"
    iget-object v1, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1MethodLookup;->this$1:Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;

    iget-object v1, v1, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;->this$0:Lio/grpc/internal/ServerImpl;

    invoke-static {v1}, Lio/grpc/internal/ServerImpl;->access$1300(Lio/grpc/internal/ServerImpl;)Lio/grpc/ServerCallExecutorSupplier;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 585
    iget-object v1, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1MethodLookup;->this$1:Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;

    iget-object v1, v1, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;->this$0:Lio/grpc/internal/ServerImpl;

    invoke-static {v1}, Lio/grpc/internal/ServerImpl;->access$1300(Lio/grpc/internal/ServerImpl;)Lio/grpc/ServerCallExecutorSupplier;

    move-result-object v1

    invoke-interface {v1, v0, p3}, Lio/grpc/ServerCallExecutorSupplier;->getExecutor(Lio/grpc/ServerCall;Lio/grpc/Metadata;)Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 586
    .local v1, "switchingExecutor":Ljava/util/concurrent/Executor;
    if-eqz v1, :cond_0

    .line 587
    iget-object v2, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1MethodLookup;->val$wrappedExecutor:Ljava/util/concurrent/Executor;

    check-cast v2, Lio/grpc/internal/SerializingExecutor;

    invoke-virtual {v2, v1}, Lio/grpc/internal/SerializingExecutor;->setExecutor(Ljava/util/concurrent/Executor;)V

    .line 590
    .end local v1    # "switchingExecutor":Ljava/util/concurrent/Executor;
    :cond_0
    new-instance v1, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$ServerCallParameters;

    iget-object v2, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1MethodLookup;->this$1:Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;

    invoke-virtual {p1}, Lio/grpc/ServerMethodDefinition;->getServerCallHandler()Lio/grpc/ServerCallHandler;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$ServerCallParameters;-><init>(Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;Lio/grpc/internal/ServerCallImpl;Lio/grpc/ServerCallHandler;)V

    return-object v1
.end method

.method private runInternal()V
    .locals 12

    .line 539
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1MethodLookup;->this$1:Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;

    iget-object v2, v2, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;->this$0:Lio/grpc/internal/ServerImpl;

    invoke-static {v2}, Lio/grpc/internal/ServerImpl;->access$1700(Lio/grpc/internal/ServerImpl;)Lio/grpc/HandlerRegistry;

    move-result-object v2

    iget-object v3, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1MethodLookup;->val$methodName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lio/grpc/HandlerRegistry;->lookupMethod(Ljava/lang/String;)Lio/grpc/ServerMethodDefinition;

    move-result-object v2

    .line 540
    .local v2, "method":Lio/grpc/ServerMethodDefinition;, "Lio/grpc/ServerMethodDefinition<**>;"
    if-nez v2, :cond_0

    .line 541
    iget-object v3, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1MethodLookup;->this$1:Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;

    iget-object v3, v3, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;->this$0:Lio/grpc/internal/ServerImpl;

    invoke-static {v3}, Lio/grpc/internal/ServerImpl;->access$1800(Lio/grpc/internal/ServerImpl;)Lio/grpc/HandlerRegistry;

    move-result-object v3

    iget-object v4, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1MethodLookup;->val$methodName:Ljava/lang/String;

    iget-object v5, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1MethodLookup;->val$stream:Lio/grpc/internal/ServerStream;

    invoke-interface {v5}, Lio/grpc/internal/ServerStream;->getAuthority()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lio/grpc/HandlerRegistry;->lookupMethod(Ljava/lang/String;Ljava/lang/String;)Lio/grpc/ServerMethodDefinition;

    move-result-object v3

    move-object v2, v3

    .line 543
    :cond_0
    if-nez v2, :cond_1

    .line 544
    sget-object v3, Lio/grpc/Status;->UNIMPLEMENTED:Lio/grpc/Status;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Method not found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1MethodLookup;->val$methodName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v3

    .line 551
    .local v3, "status":Lio/grpc/Status;
    iget-object v4, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1MethodLookup;->val$jumpListener:Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;

    invoke-static {}, Lio/grpc/internal/ServerImpl;->access$1600()Lio/grpc/internal/ServerStreamListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;->setListener(Lio/grpc/internal/ServerStreamListener;)V

    .line 552
    iget-object v4, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1MethodLookup;->val$stream:Lio/grpc/internal/ServerStream;

    new-instance v5, Lio/grpc/Metadata;

    invoke-direct {v5}, Lio/grpc/Metadata;-><init>()V

    invoke-interface {v4, v3, v5}, Lio/grpc/internal/ServerStream;->close(Lio/grpc/Status;Lio/grpc/Metadata;)V

    .line 553
    iget-object v4, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1MethodLookup;->val$context:Lio/grpc/Context$CancellableContext;

    invoke-virtual {v4, v1}, Lio/grpc/Context$CancellableContext;->cancel(Ljava/lang/Throwable;)Z

    .line 554
    iget-object v4, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1MethodLookup;->val$future:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v4, v0}, Lcom/google/common/util/concurrent/SettableFuture;->cancel(Z)Z

    .line 555
    return-void

    .line 557
    .end local v3    # "status":Lio/grpc/Status;
    :cond_1
    iget-object v3, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1MethodLookup;->this$1:Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;

    iget-object v4, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1MethodLookup;->val$stream:Lio/grpc/internal/ServerStream;

    iget-object v5, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1MethodLookup;->val$statsTraceCtx:Lio/grpc/internal/StatsTraceContext;

    invoke-static {v3, v4, v2, v5}, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;->access$1900(Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;Lio/grpc/internal/ServerStream;Lio/grpc/ServerMethodDefinition;Lio/grpc/internal/StatsTraceContext;)Lio/grpc/ServerMethodDefinition;

    move-result-object v7

    .line 558
    .local v7, "wrapMethod":Lio/grpc/ServerMethodDefinition;, "Lio/grpc/ServerMethodDefinition<**>;"
    iget-object v8, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1MethodLookup;->val$stream:Lio/grpc/internal/ServerStream;

    iget-object v9, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1MethodLookup;->val$headers:Lio/grpc/Metadata;

    iget-object v10, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1MethodLookup;->val$context:Lio/grpc/Context$CancellableContext;

    iget-object v11, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1MethodLookup;->val$tag:Lio/perfmark/Tag;

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1MethodLookup;->maySwitchExecutor(Lio/grpc/ServerMethodDefinition;Lio/grpc/internal/ServerStream;Lio/grpc/Metadata;Lio/grpc/Context$CancellableContext;Lio/perfmark/Tag;)Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$ServerCallParameters;

    move-result-object v3

    .line 559
    .local v3, "callParams":Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$ServerCallParameters;, "Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$ServerCallParameters<**>;"
    iget-object v4, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1MethodLookup;->val$future:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v4, v3}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 566
    nop

    .line 567
    .end local v2    # "method":Lio/grpc/ServerMethodDefinition;, "Lio/grpc/ServerMethodDefinition<**>;"
    return-void

    .line 560
    .end local v3    # "callParams":Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$ServerCallParameters;, "Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$ServerCallParameters<**>;"
    .end local v7    # "wrapMethod":Lio/grpc/ServerMethodDefinition;, "Lio/grpc/ServerMethodDefinition<**>;"
    :catchall_0
    move-exception v2

    .line 561
    .local v2, "t":Ljava/lang/Throwable;
    iget-object v3, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1MethodLookup;->val$jumpListener:Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;

    invoke-static {}, Lio/grpc/internal/ServerImpl;->access$1600()Lio/grpc/internal/ServerStreamListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;->setListener(Lio/grpc/internal/ServerStreamListener;)V

    .line 562
    iget-object v3, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1MethodLookup;->val$stream:Lio/grpc/internal/ServerStream;

    invoke-static {v2}, Lio/grpc/Status;->fromThrowable(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object v4

    new-instance v5, Lio/grpc/Metadata;

    invoke-direct {v5}, Lio/grpc/Metadata;-><init>()V

    invoke-interface {v3, v4, v5}, Lio/grpc/internal/ServerStream;->close(Lio/grpc/Status;Lio/grpc/Metadata;)V

    .line 563
    iget-object v3, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1MethodLookup;->val$context:Lio/grpc/Context$CancellableContext;

    invoke-virtual {v3, v1}, Lio/grpc/Context$CancellableContext;->cancel(Ljava/lang/Throwable;)Z

    .line 564
    iget-object v1, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1MethodLookup;->val$future:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v1, v0}, Lcom/google/common/util/concurrent/SettableFuture;->cancel(Z)Z

    .line 565
    throw v2
.end method


# virtual methods
.method public runInContext()V
    .locals 3

    .line 526
    iget-object v0, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1MethodLookup;->val$tag:Lio/perfmark/Tag;

    const-string v1, "ServerTransportListener$MethodLookup.startCall"

    invoke-static {v1, v0}, Lio/perfmark/PerfMark;->startTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    .line 527
    iget-object v0, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1MethodLookup;->val$link:Lio/perfmark/Link;

    invoke-static {v0}, Lio/perfmark/PerfMark;->linkIn(Lio/perfmark/Link;)V

    .line 529
    :try_start_0
    invoke-direct {p0}, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1MethodLookup;->runInternal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 531
    iget-object v0, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1MethodLookup;->val$tag:Lio/perfmark/Tag;

    invoke-static {v1, v0}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    .line 532
    nop

    .line 533
    return-void

    .line 531
    :catchall_0
    move-exception v0

    iget-object v2, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1MethodLookup;->val$tag:Lio/perfmark/Tag;

    invoke-static {v1, v2}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    throw v0
.end method
