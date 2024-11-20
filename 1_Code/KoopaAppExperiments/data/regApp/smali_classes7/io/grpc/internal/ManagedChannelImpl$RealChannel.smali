.class Lio/grpc/internal/ManagedChannelImpl$RealChannel;
.super Lio/grpc/Channel;
.source "ManagedChannelImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/ManagedChannelImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RealChannel"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/internal/ManagedChannelImpl$RealChannel$PendingCall;
    }
.end annotation


# instance fields
.field private final authority:Ljava/lang/String;

.field private final clientCallImplChannel:Lio/grpc/Channel;

.field private final configSelector:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/grpc/InternalConfigSelector;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lio/grpc/internal/ManagedChannelImpl;


# direct methods
.method private constructor <init>(Lio/grpc/internal/ManagedChannelImpl;Ljava/lang/String;)V
    .locals 1
    .param p2, "authority"    # Ljava/lang/String;

    .line 968
    iput-object p1, p0, Lio/grpc/internal/ManagedChannelImpl$RealChannel;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-direct {p0}, Lio/grpc/Channel;-><init>()V

    .line 939
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 940
    invoke-static {}, Lio/grpc/internal/ManagedChannelImpl;->access$3500()Lio/grpc/InternalConfigSelector;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lio/grpc/internal/ManagedChannelImpl$RealChannel;->configSelector:Ljava/util/concurrent/atomic/AtomicReference;

    .line 945
    new-instance p1, Lio/grpc/internal/ManagedChannelImpl$RealChannel$1;

    invoke-direct {p1, p0}, Lio/grpc/internal/ManagedChannelImpl$RealChannel$1;-><init>(Lio/grpc/internal/ManagedChannelImpl$RealChannel;)V

    iput-object p1, p0, Lio/grpc/internal/ManagedChannelImpl$RealChannel;->clientCallImplChannel:Lio/grpc/Channel;

    .line 969
    const-string p1, "authority"

    invoke-static {p2, p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lio/grpc/internal/ManagedChannelImpl$RealChannel;->authority:Ljava/lang/String;

    .line 970
    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/internal/ManagedChannelImpl;Ljava/lang/String;Lio/grpc/internal/ManagedChannelImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lio/grpc/internal/ManagedChannelImpl;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lio/grpc/internal/ManagedChannelImpl$1;

    .line 936
    invoke-direct {p0, p1, p2}, Lio/grpc/internal/ManagedChannelImpl$RealChannel;-><init>(Lio/grpc/internal/ManagedChannelImpl;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3000(Lio/grpc/internal/ManagedChannelImpl$RealChannel;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl$RealChannel;

    .line 936
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$RealChannel;->configSelector:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic access$4100(Lio/grpc/internal/ManagedChannelImpl$RealChannel;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl$RealChannel;

    .line 936
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$RealChannel;->authority:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4500(Lio/grpc/internal/ManagedChannelImpl$RealChannel;Lio/grpc/MethodDescriptor;Lio/grpc/CallOptions;)Lio/grpc/ClientCall;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl$RealChannel;
    .param p1, "x1"    # Lio/grpc/MethodDescriptor;
    .param p2, "x2"    # Lio/grpc/CallOptions;

    .line 936
    invoke-direct {p0, p1, p2}, Lio/grpc/internal/ManagedChannelImpl$RealChannel;->newClientCall(Lio/grpc/MethodDescriptor;Lio/grpc/CallOptions;)Lio/grpc/ClientCall;

    move-result-object v0

    return-object v0
.end method

.method private newClientCall(Lio/grpc/MethodDescriptor;Lio/grpc/CallOptions;)Lio/grpc/ClientCall;
    .locals 8
    .param p2, "callOptions"    # Lio/grpc/CallOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ReqT:",
            "Ljava/lang/Object;",
            "RespT:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/MethodDescriptor<",
            "TReqT;TRespT;>;",
            "Lio/grpc/CallOptions;",
            ")",
            "Lio/grpc/ClientCall<",
            "TReqT;TRespT;>;"
        }
    .end annotation

    .line 1145
    .local p1, "method":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<TReqT;TRespT;>;"
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$RealChannel;->configSelector:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/InternalConfigSelector;

    .line 1146
    .local v0, "selector":Lio/grpc/InternalConfigSelector;
    if-nez v0, :cond_0

    .line 1147
    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImpl$RealChannel;->clientCallImplChannel:Lio/grpc/Channel;

    invoke-virtual {v1, p1, p2}, Lio/grpc/Channel;->newCall(Lio/grpc/MethodDescriptor;Lio/grpc/CallOptions;)Lio/grpc/ClientCall;

    move-result-object v1

    return-object v1

    .line 1149
    :cond_0
    instance-of v1, v0, Lio/grpc/internal/ManagedChannelServiceConfig$ServiceConfigConvertedSelector;

    if-eqz v1, :cond_2

    .line 1150
    move-object v1, v0

    check-cast v1, Lio/grpc/internal/ManagedChannelServiceConfig$ServiceConfigConvertedSelector;

    iget-object v1, v1, Lio/grpc/internal/ManagedChannelServiceConfig$ServiceConfigConvertedSelector;->config:Lio/grpc/internal/ManagedChannelServiceConfig;

    .line 1151
    invoke-virtual {v1, p1}, Lio/grpc/internal/ManagedChannelServiceConfig;->getMethodConfig(Lio/grpc/MethodDescriptor;)Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;

    move-result-object v1

    .line 1152
    .local v1, "methodInfo":Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;
    if-eqz v1, :cond_1

    .line 1153
    sget-object v2, Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;->KEY:Lio/grpc/CallOptions$Key;

    invoke-virtual {p2, v2, v1}, Lio/grpc/CallOptions;->withOption(Lio/grpc/CallOptions$Key;Ljava/lang/Object;)Lio/grpc/CallOptions;

    move-result-object p2

    .line 1155
    :cond_1
    iget-object v2, p0, Lio/grpc/internal/ManagedChannelImpl$RealChannel;->clientCallImplChannel:Lio/grpc/Channel;

    invoke-virtual {v2, p1, p2}, Lio/grpc/Channel;->newCall(Lio/grpc/MethodDescriptor;Lio/grpc/CallOptions;)Lio/grpc/ClientCall;

    move-result-object v2

    return-object v2

    .line 1157
    .end local v1    # "methodInfo":Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;
    :cond_2
    new-instance v7, Lio/grpc/internal/ManagedChannelImpl$ConfigSelectingClientCall;

    iget-object v3, p0, Lio/grpc/internal/ManagedChannelImpl$RealChannel;->clientCallImplChannel:Lio/grpc/Channel;

    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImpl$RealChannel;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    .line 1158
    invoke-static {v1}, Lio/grpc/internal/ManagedChannelImpl;->access$4600(Lio/grpc/internal/ManagedChannelImpl;)Ljava/util/concurrent/Executor;

    move-result-object v4

    move-object v1, v7

    move-object v2, v0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lio/grpc/internal/ManagedChannelImpl$ConfigSelectingClientCall;-><init>(Lio/grpc/InternalConfigSelector;Lio/grpc/Channel;Ljava/util/concurrent/Executor;Lio/grpc/MethodDescriptor;Lio/grpc/CallOptions;)V

    .line 1157
    return-object v7
.end method


# virtual methods
.method public authority()Ljava/lang/String;
    .locals 1

    .line 1081
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$RealChannel;->authority:Ljava/lang/String;

    return-object v0
.end method

.method public newCall(Lio/grpc/MethodDescriptor;Lio/grpc/CallOptions;)Lio/grpc/ClientCall;
    .locals 4
    .param p2, "callOptions"    # Lio/grpc/CallOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ReqT:",
            "Ljava/lang/Object;",
            "RespT:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/MethodDescriptor<",
            "TReqT;TRespT;>;",
            "Lio/grpc/CallOptions;",
            ")",
            "Lio/grpc/ClientCall<",
            "TReqT;TRespT;>;"
        }
    .end annotation

    .line 975
    .local p1, "method":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<TReqT;TRespT;>;"
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$RealChannel;->configSelector:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lio/grpc/internal/ManagedChannelImpl;->access$3500()Lio/grpc/InternalConfigSelector;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 976
    invoke-direct {p0, p1, p2}, Lio/grpc/internal/ManagedChannelImpl$RealChannel;->newClientCall(Lio/grpc/MethodDescriptor;Lio/grpc/CallOptions;)Lio/grpc/ClientCall;

    move-result-object v0

    return-object v0

    .line 978
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$RealChannel;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    iget-object v0, v0, Lio/grpc/internal/ManagedChannelImpl;->syncContext:Lio/grpc/SynchronizationContext;

    new-instance v1, Lio/grpc/internal/ManagedChannelImpl$RealChannel$2;

    invoke-direct {v1, p0}, Lio/grpc/internal/ManagedChannelImpl$RealChannel$2;-><init>(Lio/grpc/internal/ManagedChannelImpl$RealChannel;)V

    invoke-virtual {v0, v1}, Lio/grpc/SynchronizationContext;->execute(Ljava/lang/Runnable;)V

    .line 984
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$RealChannel;->configSelector:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lio/grpc/internal/ManagedChannelImpl;->access$3500()Lio/grpc/InternalConfigSelector;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 988
    invoke-direct {p0, p1, p2}, Lio/grpc/internal/ManagedChannelImpl$RealChannel;->newClientCall(Lio/grpc/MethodDescriptor;Lio/grpc/CallOptions;)Lio/grpc/ClientCall;

    move-result-object v0

    return-object v0

    .line 990
    :cond_1
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$RealChannel;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v0}, Lio/grpc/internal/ManagedChannelImpl;->access$1500(Lio/grpc/internal/ManagedChannelImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 992
    new-instance v0, Lio/grpc/internal/ManagedChannelImpl$RealChannel$3;

    invoke-direct {v0, p0}, Lio/grpc/internal/ManagedChannelImpl$RealChannel$3;-><init>(Lio/grpc/internal/ManagedChannelImpl$RealChannel;)V

    return-object v0

    .line 1007
    :cond_2
    invoke-static {}, Lio/grpc/Context;->current()Lio/grpc/Context;

    move-result-object v0

    .line 1008
    .local v0, "context":Lio/grpc/Context;
    new-instance v1, Lio/grpc/internal/ManagedChannelImpl$RealChannel$PendingCall;

    invoke-direct {v1, p0, v0, p1, p2}, Lio/grpc/internal/ManagedChannelImpl$RealChannel$PendingCall;-><init>(Lio/grpc/internal/ManagedChannelImpl$RealChannel;Lio/grpc/Context;Lio/grpc/MethodDescriptor;Lio/grpc/CallOptions;)V

    .line 1009
    .local v1, "pendingCall":Lio/grpc/internal/ManagedChannelImpl$RealChannel$PendingCall;, "Lio/grpc/internal/ManagedChannelImpl$RealChannel$PendingCall<TReqT;TRespT;>;"
    iget-object v2, p0, Lio/grpc/internal/ManagedChannelImpl$RealChannel;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    iget-object v2, v2, Lio/grpc/internal/ManagedChannelImpl;->syncContext:Lio/grpc/SynchronizationContext;

    new-instance v3, Lio/grpc/internal/ManagedChannelImpl$RealChannel$4;

    invoke-direct {v3, p0, v1}, Lio/grpc/internal/ManagedChannelImpl$RealChannel$4;-><init>(Lio/grpc/internal/ManagedChannelImpl$RealChannel;Lio/grpc/internal/ManagedChannelImpl$RealChannel$PendingCall;)V

    invoke-virtual {v2, v3}, Lio/grpc/SynchronizationContext;->execute(Ljava/lang/Runnable;)V

    .line 1023
    return-object v1
.end method

.method onConfigError()V
    .locals 2

    .line 1039
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$RealChannel;->configSelector:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lio/grpc/internal/ManagedChannelImpl;->access$3500()Lio/grpc/InternalConfigSelector;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 1040
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/grpc/internal/ManagedChannelImpl$RealChannel;->updateConfigSelector(Lio/grpc/InternalConfigSelector;)V

    .line 1042
    :cond_0
    return-void
.end method

.method shutdown()V
    .locals 2

    .line 1057
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$RealChannel;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    iget-object v0, v0, Lio/grpc/internal/ManagedChannelImpl;->syncContext:Lio/grpc/SynchronizationContext;

    new-instance v1, Lio/grpc/internal/ManagedChannelImpl$RealChannel$1RealChannelShutdown;

    invoke-direct {v1, p0}, Lio/grpc/internal/ManagedChannelImpl$RealChannel$1RealChannelShutdown;-><init>(Lio/grpc/internal/ManagedChannelImpl$RealChannel;)V

    invoke-virtual {v0, v1}, Lio/grpc/SynchronizationContext;->execute(Ljava/lang/Runnable;)V

    .line 1058
    return-void
.end method

.method shutdownNow()V
    .locals 2

    .line 1076
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$RealChannel;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    iget-object v0, v0, Lio/grpc/internal/ManagedChannelImpl;->syncContext:Lio/grpc/SynchronizationContext;

    new-instance v1, Lio/grpc/internal/ManagedChannelImpl$RealChannel$1RealChannelShutdownNow;

    invoke-direct {v1, p0}, Lio/grpc/internal/ManagedChannelImpl$RealChannel$1RealChannelShutdownNow;-><init>(Lio/grpc/internal/ManagedChannelImpl$RealChannel;)V

    invoke-virtual {v0, v1}, Lio/grpc/SynchronizationContext;->execute(Ljava/lang/Runnable;)V

    .line 1077
    return-void
.end method

.method updateConfigSelector(Lio/grpc/InternalConfigSelector;)V
    .locals 3
    .param p1, "config"    # Lio/grpc/InternalConfigSelector;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1028
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$RealChannel;->configSelector:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/InternalConfigSelector;

    .line 1029
    .local v0, "prevConfig":Lio/grpc/InternalConfigSelector;
    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImpl$RealChannel;->configSelector:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1030
    invoke-static {}, Lio/grpc/internal/ManagedChannelImpl;->access$3500()Lio/grpc/InternalConfigSelector;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImpl$RealChannel;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v1}, Lio/grpc/internal/ManagedChannelImpl;->access$4200(Lio/grpc/internal/ManagedChannelImpl;)Ljava/util/Collection;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1031
    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImpl$RealChannel;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v1}, Lio/grpc/internal/ManagedChannelImpl;->access$4200(Lio/grpc/internal/ManagedChannelImpl;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/grpc/internal/ManagedChannelImpl$RealChannel$PendingCall;

    .line 1032
    .local v2, "pendingCall":Lio/grpc/internal/ManagedChannelImpl$RealChannel$PendingCall;, "Lio/grpc/internal/ManagedChannelImpl$RealChannel$PendingCall<**>;"
    invoke-virtual {v2}, Lio/grpc/internal/ManagedChannelImpl$RealChannel$PendingCall;->reprocess()V

    .line 1033
    .end local v2    # "pendingCall":Lio/grpc/internal/ManagedChannelImpl$RealChannel$PendingCall;, "Lio/grpc/internal/ManagedChannelImpl$RealChannel$PendingCall<**>;"
    goto :goto_0

    .line 1035
    :cond_0
    return-void
.end method
