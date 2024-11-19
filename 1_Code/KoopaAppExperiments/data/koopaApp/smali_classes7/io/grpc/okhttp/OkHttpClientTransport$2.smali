.class Lio/grpc/okhttp/OkHttpClientTransport$2;
.super Ljava/lang/Object;
.source "OkHttpClientTransport.java"

# interfaces
.implements Lio/grpc/internal/TransportTracer$FlowControlReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/okhttp/OkHttpClientTransport;->initTransportTracer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/okhttp/OkHttpClientTransport;


# direct methods
.method constructor <init>(Lio/grpc/okhttp/OkHttpClientTransport;)V
    .locals 0
    .param p1, "this$0"    # Lio/grpc/okhttp/OkHttpClientTransport;

    .line 326
    iput-object p1, p0, Lio/grpc/okhttp/OkHttpClientTransport$2;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public read()Lio/grpc/internal/TransportTracer$FlowControlWindows;
    .locals 6

    .line 329
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport$2;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    invoke-static {v0}, Lio/grpc/okhttp/OkHttpClientTransport;->access$100(Lio/grpc/okhttp/OkHttpClientTransport;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 330
    :try_start_0
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientTransport$2;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    invoke-static {v1}, Lio/grpc/okhttp/OkHttpClientTransport;->access$200(Lio/grpc/okhttp/OkHttpClientTransport;)Lio/grpc/okhttp/OutboundFlowController;

    move-result-object v1

    if-nez v1, :cond_0

    const-wide/16 v1, -0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientTransport$2;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    invoke-static {v1}, Lio/grpc/okhttp/OkHttpClientTransport;->access$200(Lio/grpc/okhttp/OkHttpClientTransport;)Lio/grpc/okhttp/OutboundFlowController;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lio/grpc/okhttp/OutboundFlowController;->windowUpdate(Lio/grpc/okhttp/OutboundFlowController$StreamState;I)I

    move-result v1

    int-to-long v1, v1

    .line 333
    .local v1, "local":J
    :goto_0
    iget-object v3, p0, Lio/grpc/okhttp/OkHttpClientTransport$2;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    invoke-static {v3}, Lio/grpc/okhttp/OkHttpClientTransport;->access$300(Lio/grpc/okhttp/OkHttpClientTransport;)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    float-to-long v3, v3

    .line 334
    .local v3, "remote":J
    new-instance v5, Lio/grpc/internal/TransportTracer$FlowControlWindows;

    invoke-direct {v5, v1, v2, v3, v4}, Lio/grpc/internal/TransportTracer$FlowControlWindows;-><init>(JJ)V

    monitor-exit v0

    return-object v5

    .line 335
    .end local v1    # "local":J
    .end local v3    # "remote":J
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
