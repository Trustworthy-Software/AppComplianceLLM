.class Lio/grpc/inprocess/InProcessTransport$4;
.super Ljava/lang/Object;
.source "InProcessTransport.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/inprocess/InProcessTransport;->start(Lio/grpc/internal/ManagedClientTransport$Listener;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/inprocess/InProcessTransport;


# direct methods
.method constructor <init>(Lio/grpc/inprocess/InProcessTransport;)V
    .locals 0
    .param p1, "this$0"    # Lio/grpc/inprocess/InProcessTransport;

    .line 206
    iput-object p1, p0, Lio/grpc/inprocess/InProcessTransport$4;->this$0:Lio/grpc/inprocess/InProcessTransport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 210
    iget-object v0, p0, Lio/grpc/inprocess/InProcessTransport$4;->this$0:Lio/grpc/inprocess/InProcessTransport;

    monitor-enter v0

    .line 211
    :try_start_0
    invoke-static {}, Lio/grpc/Attributes;->newBuilder()Lio/grpc/Attributes$Builder;

    move-result-object v1

    sget-object v2, Lio/grpc/Grpc;->TRANSPORT_ATTR_REMOTE_ADDR:Lio/grpc/Attributes$Key;

    iget-object v3, p0, Lio/grpc/inprocess/InProcessTransport$4;->this$0:Lio/grpc/inprocess/InProcessTransport;

    .line 212
    invoke-static {v3}, Lio/grpc/inprocess/InProcessTransport;->access$300(Lio/grpc/inprocess/InProcessTransport;)Ljava/net/SocketAddress;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lio/grpc/Attributes$Builder;->set(Lio/grpc/Attributes$Key;Ljava/lang/Object;)Lio/grpc/Attributes$Builder;

    move-result-object v1

    sget-object v2, Lio/grpc/Grpc;->TRANSPORT_ATTR_LOCAL_ADDR:Lio/grpc/Attributes$Key;

    iget-object v3, p0, Lio/grpc/inprocess/InProcessTransport$4;->this$0:Lio/grpc/inprocess/InProcessTransport;

    .line 213
    invoke-static {v3}, Lio/grpc/inprocess/InProcessTransport;->access$300(Lio/grpc/inprocess/InProcessTransport;)Ljava/net/SocketAddress;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lio/grpc/Attributes$Builder;->set(Lio/grpc/Attributes$Key;Ljava/lang/Object;)Lio/grpc/Attributes$Builder;

    move-result-object v1

    .line 214
    invoke-virtual {v1}, Lio/grpc/Attributes$Builder;->build()Lio/grpc/Attributes;

    move-result-object v1

    .line 215
    .local v1, "serverTransportAttrs":Lio/grpc/Attributes;
    iget-object v2, p0, Lio/grpc/inprocess/InProcessTransport$4;->this$0:Lio/grpc/inprocess/InProcessTransport;

    invoke-static {v2}, Lio/grpc/inprocess/InProcessTransport;->access$500(Lio/grpc/inprocess/InProcessTransport;)Lio/grpc/internal/ServerTransportListener;

    move-result-object v3

    invoke-interface {v3, v1}, Lio/grpc/internal/ServerTransportListener;->transportReady(Lio/grpc/Attributes;)Lio/grpc/Attributes;

    move-result-object v3

    invoke-static {v2, v3}, Lio/grpc/inprocess/InProcessTransport;->access$402(Lio/grpc/inprocess/InProcessTransport;Lio/grpc/Attributes;)Lio/grpc/Attributes;

    .line 216
    iget-object v2, p0, Lio/grpc/inprocess/InProcessTransport$4;->this$0:Lio/grpc/inprocess/InProcessTransport;

    invoke-static {v2}, Lio/grpc/inprocess/InProcessTransport;->access$000(Lio/grpc/inprocess/InProcessTransport;)Lio/grpc/internal/ManagedClientTransport$Listener;

    move-result-object v2

    invoke-interface {v2}, Lio/grpc/internal/ManagedClientTransport$Listener;->transportReady()V

    .line 217
    .end local v1    # "serverTransportAttrs":Lio/grpc/Attributes;
    monitor-exit v0

    .line 218
    return-void

    .line 217
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
