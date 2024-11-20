.class final Lio/grpc/internal/ManagedChannelImpl$ConfigSelectingClientCall;
.super Lio/grpc/ForwardingClientCall;
.source "ManagedChannelImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/ManagedChannelImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ConfigSelectingClientCall"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ReqT:",
        "Ljava/lang/Object;",
        "RespT:",
        "Ljava/lang/Object;",
        ">",
        "Lio/grpc/ForwardingClientCall<",
        "TReqT;TRespT;>;"
    }
.end annotation


# instance fields
.field private final callExecutor:Ljava/util/concurrent/Executor;

.field private callOptions:Lio/grpc/CallOptions;

.field private final channel:Lio/grpc/Channel;

.field private final configSelector:Lio/grpc/InternalConfigSelector;

.field private final context:Lio/grpc/Context;

.field private delegate:Lio/grpc/ClientCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/ClientCall<",
            "TReqT;TRespT;>;"
        }
    .end annotation
.end field

.field private final method:Lio/grpc/MethodDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/MethodDescriptor<",
            "TReqT;TRespT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/grpc/InternalConfigSelector;Lio/grpc/Channel;Ljava/util/concurrent/Executor;Lio/grpc/MethodDescriptor;Lio/grpc/CallOptions;)V
    .locals 1
    .param p1, "configSelector"    # Lio/grpc/InternalConfigSelector;
    .param p2, "channel"    # Lio/grpc/Channel;
    .param p3, "channelExecutor"    # Ljava/util/concurrent/Executor;
    .param p5, "callOptions"    # Lio/grpc/CallOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/InternalConfigSelector;",
            "Lio/grpc/Channel;",
            "Ljava/util/concurrent/Executor;",
            "Lio/grpc/MethodDescriptor<",
            "TReqT;TRespT;>;",
            "Lio/grpc/CallOptions;",
            ")V"
        }
    .end annotation

    .line 1180
    .local p0, "this":Lio/grpc/internal/ManagedChannelImpl$ConfigSelectingClientCall;, "Lio/grpc/internal/ManagedChannelImpl$ConfigSelectingClientCall<TReqT;TRespT;>;"
    .local p4, "method":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<TReqT;TRespT;>;"
    invoke-direct {p0}, Lio/grpc/ForwardingClientCall;-><init>()V

    .line 1181
    iput-object p1, p0, Lio/grpc/internal/ManagedChannelImpl$ConfigSelectingClientCall;->configSelector:Lio/grpc/InternalConfigSelector;

    .line 1182
    iput-object p2, p0, Lio/grpc/internal/ManagedChannelImpl$ConfigSelectingClientCall;->channel:Lio/grpc/Channel;

    .line 1183
    iput-object p4, p0, Lio/grpc/internal/ManagedChannelImpl$ConfigSelectingClientCall;->method:Lio/grpc/MethodDescriptor;

    .line 1184
    nop

    .line 1185
    invoke-virtual {p5}, Lio/grpc/CallOptions;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, p3

    goto :goto_0

    :cond_0
    invoke-virtual {p5}, Lio/grpc/CallOptions;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$ConfigSelectingClientCall;->callExecutor:Ljava/util/concurrent/Executor;

    .line 1186
    invoke-virtual {p5, v0}, Lio/grpc/CallOptions;->withExecutor(Ljava/util/concurrent/Executor;)Lio/grpc/CallOptions;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$ConfigSelectingClientCall;->callOptions:Lio/grpc/CallOptions;

    .line 1187
    invoke-static {}, Lio/grpc/Context;->current()Lio/grpc/Context;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$ConfigSelectingClientCall;->context:Lio/grpc/Context;

    .line 1188
    return-void
.end method

.method static synthetic access$4800(Lio/grpc/internal/ManagedChannelImpl$ConfigSelectingClientCall;)Lio/grpc/Context;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl$ConfigSelectingClientCall;

    .line 1165
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$ConfigSelectingClientCall;->context:Lio/grpc/Context;

    return-object v0
.end method

.method private executeCloseObserverInContext(Lio/grpc/ClientCall$Listener;Lio/grpc/Status;)V
    .locals 2
    .param p2, "status"    # Lio/grpc/Status;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/ClientCall$Listener<",
            "TRespT;>;",
            "Lio/grpc/Status;",
            ")V"
        }
    .end annotation

    .line 1234
    .local p0, "this":Lio/grpc/internal/ManagedChannelImpl$ConfigSelectingClientCall;, "Lio/grpc/internal/ManagedChannelImpl$ConfigSelectingClientCall<TReqT;TRespT;>;"
    .local p1, "observer":Lio/grpc/ClientCall$Listener;, "Lio/grpc/ClientCall$Listener<TRespT;>;"
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$ConfigSelectingClientCall;->callExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lio/grpc/internal/ManagedChannelImpl$ConfigSelectingClientCall$1CloseInContext;

    invoke-direct {v1, p0, p1, p2}, Lio/grpc/internal/ManagedChannelImpl$ConfigSelectingClientCall$1CloseInContext;-><init>(Lio/grpc/internal/ManagedChannelImpl$ConfigSelectingClientCall;Lio/grpc/ClientCall$Listener;Lio/grpc/Status;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1235
    return-void
.end method


# virtual methods
.method public cancel(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "cause"    # Ljava/lang/Throwable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1239
    .local p0, "this":Lio/grpc/internal/ManagedChannelImpl$ConfigSelectingClientCall;, "Lio/grpc/internal/ManagedChannelImpl$ConfigSelectingClientCall<TReqT;TRespT;>;"
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$ConfigSelectingClientCall;->delegate:Lio/grpc/ClientCall;

    if-eqz v0, :cond_0

    .line 1240
    invoke-virtual {v0, p1, p2}, Lio/grpc/ClientCall;->cancel(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1242
    :cond_0
    return-void
.end method

.method protected delegate()Lio/grpc/ClientCall;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/ClientCall<",
            "TReqT;TRespT;>;"
        }
    .end annotation

    .line 1192
    .local p0, "this":Lio/grpc/internal/ManagedChannelImpl$ConfigSelectingClientCall;, "Lio/grpc/internal/ManagedChannelImpl$ConfigSelectingClientCall<TReqT;TRespT;>;"
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$ConfigSelectingClientCall;->delegate:Lio/grpc/ClientCall;

    return-object v0
.end method

.method public start(Lio/grpc/ClientCall$Listener;Lio/grpc/Metadata;)V
    .locals 9
    .param p2, "headers"    # Lio/grpc/Metadata;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/ClientCall$Listener<",
            "TRespT;>;",
            "Lio/grpc/Metadata;",
            ")V"
        }
    .end annotation

    .line 1198
    .local p0, "this":Lio/grpc/internal/ManagedChannelImpl$ConfigSelectingClientCall;, "Lio/grpc/internal/ManagedChannelImpl$ConfigSelectingClientCall<TReqT;TRespT;>;"
    .local p1, "observer":Lio/grpc/ClientCall$Listener;, "Lio/grpc/ClientCall$Listener<TRespT;>;"
    new-instance v0, Lio/grpc/internal/PickSubchannelArgsImpl;

    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImpl$ConfigSelectingClientCall;->method:Lio/grpc/MethodDescriptor;

    iget-object v2, p0, Lio/grpc/internal/ManagedChannelImpl$ConfigSelectingClientCall;->callOptions:Lio/grpc/CallOptions;

    invoke-direct {v0, v1, p2, v2}, Lio/grpc/internal/PickSubchannelArgsImpl;-><init>(Lio/grpc/MethodDescriptor;Lio/grpc/Metadata;Lio/grpc/CallOptions;)V

    .line 1199
    .local v0, "args":Lio/grpc/LoadBalancer$PickSubchannelArgs;
    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImpl$ConfigSelectingClientCall;->configSelector:Lio/grpc/InternalConfigSelector;

    invoke-virtual {v1, v0}, Lio/grpc/InternalConfigSelector;->selectConfig(Lio/grpc/LoadBalancer$PickSubchannelArgs;)Lio/grpc/InternalConfigSelector$Result;

    move-result-object v1

    .line 1200
    .local v1, "result":Lio/grpc/InternalConfigSelector$Result;
    invoke-virtual {v1}, Lio/grpc/InternalConfigSelector$Result;->getStatus()Lio/grpc/Status;

    move-result-object v2

    .line 1201
    .local v2, "status":Lio/grpc/Status;
    invoke-virtual {v2}, Lio/grpc/Status;->isOk()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1202
    nop

    .line 1203
    invoke-static {v2}, Lio/grpc/internal/GrpcUtil;->replaceInappropriateControlPlaneStatus(Lio/grpc/Status;)Lio/grpc/Status;

    move-result-object v3

    .line 1202
    invoke-direct {p0, p1, v3}, Lio/grpc/internal/ManagedChannelImpl$ConfigSelectingClientCall;->executeCloseObserverInContext(Lio/grpc/ClientCall$Listener;Lio/grpc/Status;)V

    .line 1204
    invoke-static {}, Lio/grpc/internal/ManagedChannelImpl;->access$4700()Lio/grpc/ClientCall;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/internal/ManagedChannelImpl$ConfigSelectingClientCall;->delegate:Lio/grpc/ClientCall;

    .line 1205
    return-void

    .line 1207
    :cond_0
    invoke-virtual {v1}, Lio/grpc/InternalConfigSelector$Result;->getInterceptor()Lio/grpc/ClientInterceptor;

    move-result-object v3

    .line 1208
    .local v3, "interceptor":Lio/grpc/ClientInterceptor;
    invoke-virtual {v1}, Lio/grpc/InternalConfigSelector$Result;->getConfig()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/grpc/internal/ManagedChannelServiceConfig;

    .line 1209
    .local v4, "config":Lio/grpc/internal/ManagedChannelServiceConfig;
    iget-object v5, p0, Lio/grpc/internal/ManagedChannelImpl$ConfigSelectingClientCall;->method:Lio/grpc/MethodDescriptor;

    invoke-virtual {v4, v5}, Lio/grpc/internal/ManagedChannelServiceConfig;->getMethodConfig(Lio/grpc/MethodDescriptor;)Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;

    move-result-object v5

    .line 1210
    .local v5, "methodInfo":Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;
    if-eqz v5, :cond_1

    .line 1211
    iget-object v6, p0, Lio/grpc/internal/ManagedChannelImpl$ConfigSelectingClientCall;->callOptions:Lio/grpc/CallOptions;

    sget-object v7, Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;->KEY:Lio/grpc/CallOptions$Key;

    invoke-virtual {v6, v7, v5}, Lio/grpc/CallOptions;->withOption(Lio/grpc/CallOptions$Key;Ljava/lang/Object;)Lio/grpc/CallOptions;

    move-result-object v6

    iput-object v6, p0, Lio/grpc/internal/ManagedChannelImpl$ConfigSelectingClientCall;->callOptions:Lio/grpc/CallOptions;

    .line 1213
    :cond_1
    if-eqz v3, :cond_2

    .line 1214
    iget-object v6, p0, Lio/grpc/internal/ManagedChannelImpl$ConfigSelectingClientCall;->method:Lio/grpc/MethodDescriptor;

    iget-object v7, p0, Lio/grpc/internal/ManagedChannelImpl$ConfigSelectingClientCall;->callOptions:Lio/grpc/CallOptions;

    iget-object v8, p0, Lio/grpc/internal/ManagedChannelImpl$ConfigSelectingClientCall;->channel:Lio/grpc/Channel;

    invoke-interface {v3, v6, v7, v8}, Lio/grpc/ClientInterceptor;->interceptCall(Lio/grpc/MethodDescriptor;Lio/grpc/CallOptions;Lio/grpc/Channel;)Lio/grpc/ClientCall;

    move-result-object v6

    iput-object v6, p0, Lio/grpc/internal/ManagedChannelImpl$ConfigSelectingClientCall;->delegate:Lio/grpc/ClientCall;

    goto :goto_0

    .line 1216
    :cond_2
    iget-object v6, p0, Lio/grpc/internal/ManagedChannelImpl$ConfigSelectingClientCall;->channel:Lio/grpc/Channel;

    iget-object v7, p0, Lio/grpc/internal/ManagedChannelImpl$ConfigSelectingClientCall;->method:Lio/grpc/MethodDescriptor;

    iget-object v8, p0, Lio/grpc/internal/ManagedChannelImpl$ConfigSelectingClientCall;->callOptions:Lio/grpc/CallOptions;

    invoke-virtual {v6, v7, v8}, Lio/grpc/Channel;->newCall(Lio/grpc/MethodDescriptor;Lio/grpc/CallOptions;)Lio/grpc/ClientCall;

    move-result-object v6

    iput-object v6, p0, Lio/grpc/internal/ManagedChannelImpl$ConfigSelectingClientCall;->delegate:Lio/grpc/ClientCall;

    .line 1218
    :goto_0
    iget-object v6, p0, Lio/grpc/internal/ManagedChannelImpl$ConfigSelectingClientCall;->delegate:Lio/grpc/ClientCall;

    invoke-virtual {v6, p1, p2}, Lio/grpc/ClientCall;->start(Lio/grpc/ClientCall$Listener;Lio/grpc/Metadata;)V

    .line 1219
    return-void
.end method
