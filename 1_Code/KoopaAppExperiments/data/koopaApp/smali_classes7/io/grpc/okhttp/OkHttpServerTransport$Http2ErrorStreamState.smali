.class Lio/grpc/okhttp/OkHttpServerTransport$Http2ErrorStreamState;
.super Ljava/lang/Object;
.source "OkHttpServerTransport.java"

# interfaces
.implements Lio/grpc/okhttp/OkHttpServerTransport$StreamState;
.implements Lio/grpc/okhttp/OutboundFlowController$Stream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/okhttp/OkHttpServerTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Http2ErrorStreamState"
.end annotation


# instance fields
.field private final lock:Ljava/lang/Object;

.field private final outboundFlowState:Lio/grpc/okhttp/OutboundFlowController$StreamState;

.field private receivedEndOfStream:Z

.field private final streamId:I

.field private window:I


# direct methods
.method constructor <init>(ILjava/lang/Object;Lio/grpc/okhttp/OutboundFlowController;I)V
    .locals 1
    .param p1, "streamId"    # I
    .param p2, "lock"    # Ljava/lang/Object;
    .param p3, "outboundFlow"    # Lio/grpc/okhttp/OutboundFlowController;
    .param p4, "initialWindowSize"    # I

    .line 1133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1134
    iput p1, p0, Lio/grpc/okhttp/OkHttpServerTransport$Http2ErrorStreamState;->streamId:I

    .line 1135
    iput-object p2, p0, Lio/grpc/okhttp/OkHttpServerTransport$Http2ErrorStreamState;->lock:Ljava/lang/Object;

    .line 1136
    invoke-virtual {p3, p0, p1}, Lio/grpc/okhttp/OutboundFlowController;->createState(Lio/grpc/okhttp/OutboundFlowController$Stream;I)Lio/grpc/okhttp/OutboundFlowController$StreamState;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport$Http2ErrorStreamState;->outboundFlowState:Lio/grpc/okhttp/OutboundFlowController$StreamState;

    .line 1137
    iput p4, p0, Lio/grpc/okhttp/OkHttpServerTransport$Http2ErrorStreamState;->window:I

    .line 1138
    return-void
.end method

.method static synthetic access$3700(Lio/grpc/okhttp/OkHttpServerTransport$Http2ErrorStreamState;)I
    .locals 1
    .param p0, "x0"    # Lio/grpc/okhttp/OkHttpServerTransport$Http2ErrorStreamState;

    .line 1123
    iget v0, p0, Lio/grpc/okhttp/OkHttpServerTransport$Http2ErrorStreamState;->streamId:I

    return v0
.end method


# virtual methods
.method public getOutboundFlowState()Lio/grpc/okhttp/OutboundFlowController$StreamState;
    .locals 2

    .line 1174
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport$Http2ErrorStreamState;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1175
    :try_start_0
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport$Http2ErrorStreamState;->outboundFlowState:Lio/grpc/okhttp/OutboundFlowController$StreamState;

    monitor-exit v0

    return-object v1

    .line 1176
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hasReceivedEndOfStream()Z
    .locals 2

    .line 1158
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport$Http2ErrorStreamState;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1159
    :try_start_0
    iget-boolean v1, p0, Lio/grpc/okhttp/OkHttpServerTransport$Http2ErrorStreamState;->receivedEndOfStream:Z

    monitor-exit v0

    return v1

    .line 1160
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public inboundDataReceived(Lokio/Buffer;IZ)V
    .locals 3
    .param p1, "frame"    # Lokio/Buffer;
    .param p2, "windowConsumed"    # I
    .param p3, "endOfStream"    # Z

    .line 1144
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport$Http2ErrorStreamState;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1145
    if-eqz p3, :cond_0

    .line 1146
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lio/grpc/okhttp/OkHttpServerTransport$Http2ErrorStreamState;->receivedEndOfStream:Z

    .line 1148
    :cond_0
    iget v1, p0, Lio/grpc/okhttp/OkHttpServerTransport$Http2ErrorStreamState;->window:I

    sub-int/2addr v1, p2

    iput v1, p0, Lio/grpc/okhttp/OkHttpServerTransport$Http2ErrorStreamState;->window:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1150
    :try_start_1
    invoke-virtual {p1}, Lokio/Buffer;->size()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lokio/Buffer;->skip(J)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1153
    nop

    .line 1154
    :try_start_2
    monitor-exit v0

    .line 1155
    return-void

    .line 1151
    :catch_0
    move-exception v1

    .line 1152
    .local v1, "ex":Ljava/io/IOException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .end local p1    # "frame":Lokio/Buffer;
    .end local p2    # "windowConsumed":I
    .end local p3    # "endOfStream":Z
    throw v2

    .line 1154
    .end local v1    # "ex":Ljava/io/IOException;
    .restart local p1    # "frame":Lokio/Buffer;
    .restart local p2    # "windowConsumed":I
    .restart local p3    # "endOfStream":Z
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public inboundRstReceived(Lio/grpc/Status;)V
    .locals 0
    .param p1, "status"    # Lio/grpc/Status;

    .line 1171
    return-void
.end method

.method public inboundWindowAvailable()I
    .locals 2

    .line 1164
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport$Http2ErrorStreamState;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1165
    :try_start_0
    iget v1, p0, Lio/grpc/okhttp/OkHttpServerTransport$Http2ErrorStreamState;->window:I

    monitor-exit v0

    return v1

    .line 1166
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onSentBytes(I)V
    .locals 0
    .param p1, "frameBytes"    # I

    .line 1140
    return-void
.end method

.method public transportReportStatus(Lio/grpc/Status;)V
    .locals 0
    .param p1, "status"    # Lio/grpc/Status;

    .line 1169
    return-void
.end method
