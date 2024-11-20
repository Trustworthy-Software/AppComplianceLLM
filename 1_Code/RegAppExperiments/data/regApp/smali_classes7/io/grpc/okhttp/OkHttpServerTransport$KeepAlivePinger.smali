.class final Lio/grpc/okhttp/OkHttpServerTransport$KeepAlivePinger;
.super Ljava/lang/Object;
.source "OkHttpServerTransport.java"

# interfaces
.implements Lio/grpc/internal/KeepAliveManager$KeepAlivePinger;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/okhttp/OkHttpServerTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "KeepAlivePinger"
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/okhttp/OkHttpServerTransport;


# direct methods
.method private constructor <init>(Lio/grpc/okhttp/OkHttpServerTransport;)V
    .locals 0

    .line 1084
    iput-object p1, p0, Lio/grpc/okhttp/OkHttpServerTransport$KeepAlivePinger;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/okhttp/OkHttpServerTransport;Lio/grpc/okhttp/OkHttpServerTransport$1;)V
    .locals 0
    .param p1, "x0"    # Lio/grpc/okhttp/OkHttpServerTransport;
    .param p2, "x1"    # Lio/grpc/okhttp/OkHttpServerTransport$1;

    .line 1084
    invoke-direct {p0, p1}, Lio/grpc/okhttp/OkHttpServerTransport$KeepAlivePinger;-><init>(Lio/grpc/okhttp/OkHttpServerTransport;)V

    return-void
.end method


# virtual methods
.method public onPingTimeout()V
    .locals 4

    .line 1096
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport$KeepAlivePinger;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v0}, Lio/grpc/okhttp/OkHttpServerTransport;->access$300(Lio/grpc/okhttp/OkHttpServerTransport;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1097
    :try_start_0
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport$KeepAlivePinger;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    sget-object v2, Lio/grpc/Status;->UNAVAILABLE:Lio/grpc/Status;

    const-string v3, "Keepalive failed. Considering connection dead"

    .line 1098
    invoke-virtual {v2, v3}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v2

    .line 1097
    invoke-static {v1, v2}, Lio/grpc/okhttp/OkHttpServerTransport;->access$402(Lio/grpc/okhttp/OkHttpServerTransport;Lio/grpc/Status;)Lio/grpc/Status;

    .line 1099
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport$KeepAlivePinger;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v1}, Lio/grpc/okhttp/OkHttpServerTransport;->access$700(Lio/grpc/okhttp/OkHttpServerTransport;)Ljava/net/Socket;

    move-result-object v1

    invoke-static {v1}, Lio/grpc/internal/GrpcUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 1100
    monitor-exit v0

    .line 1101
    return-void

    .line 1100
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public ping()V
    .locals 4

    .line 1087
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport$KeepAlivePinger;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v0}, Lio/grpc/okhttp/OkHttpServerTransport;->access$300(Lio/grpc/okhttp/OkHttpServerTransport;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1088
    :try_start_0
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport$KeepAlivePinger;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v1}, Lio/grpc/okhttp/OkHttpServerTransport;->access$3000(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    move-result-object v1

    const v2, 0xdead

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3, v2}, Lio/grpc/okhttp/ExceptionHandlingFrameWriter;->ping(ZII)V

    .line 1089
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport$KeepAlivePinger;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v1}, Lio/grpc/okhttp/OkHttpServerTransport;->access$3000(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/okhttp/ExceptionHandlingFrameWriter;->flush()V

    .line 1090
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1091
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport$KeepAlivePinger;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v0}, Lio/grpc/okhttp/OkHttpServerTransport;->access$3200(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/internal/TransportTracer;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/internal/TransportTracer;->reportKeepAliveSent()V

    .line 1092
    return-void

    .line 1090
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
