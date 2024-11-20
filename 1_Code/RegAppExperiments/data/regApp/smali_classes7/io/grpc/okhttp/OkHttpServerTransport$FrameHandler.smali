.class Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;
.super Ljava/lang/Object;
.source "OkHttpServerTransport.java"

# interfaces
.implements Lio/grpc/okhttp/internal/framed/FrameReader$Handler;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/okhttp/OkHttpServerTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FrameHandler"
.end annotation


# instance fields
.field private connectionUnacknowledgedBytesRead:I

.field private final frameLogger:Lio/grpc/okhttp/OkHttpFrameLogger;

.field private final frameReader:Lio/grpc/okhttp/internal/framed/FrameReader;

.field private receivedSettings:Z

.field final synthetic this$0:Lio/grpc/okhttp/OkHttpServerTransport;


# direct methods
.method public constructor <init>(Lio/grpc/okhttp/OkHttpServerTransport;Lio/grpc/okhttp/internal/framed/FrameReader;)V
    .locals 3
    .param p1, "this$0"    # Lio/grpc/okhttp/OkHttpServerTransport;
    .param p2, "frameReader"    # Lio/grpc/okhttp/internal/framed/FrameReader;

    .line 541
    iput-object p1, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 535
    new-instance v0, Lio/grpc/okhttp/OkHttpFrameLogger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-class v2, Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-direct {v0, v1, v2}, Lio/grpc/okhttp/OkHttpFrameLogger;-><init>(Ljava/util/logging/Level;Ljava/lang/Class;)V

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->frameLogger:Lio/grpc/okhttp/OkHttpFrameLogger;

    .line 542
    iput-object p2, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->frameReader:Lio/grpc/okhttp/internal/framed/FrameReader;

    .line 543
    return-void
.end method

.method private connectionError(Lio/grpc/okhttp/internal/framed/ErrorCode;Ljava/lang/String;)V
    .locals 3
    .param p1, "errorCode"    # Lio/grpc/okhttp/internal/framed/ErrorCode;
    .param p2, "moreDetail"    # Ljava/lang/String;

    .line 1001
    iget v0, p1, Lio/grpc/okhttp/internal/framed/ErrorCode;->httpCode:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Lio/grpc/internal/GrpcUtil$Http2Error;->statusForCode(J)Lio/grpc/Status;

    move-result-object v0

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v1

    .line 1002
    const-string v2, "HTTP2 connection error: %s \'%s\'"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    .line 1003
    .local v0, "status":Lio/grpc/Status;
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    const/4 v2, 0x0

    invoke-static {v1, p1, p2, v0, v2}, Lio/grpc/okhttp/OkHttpServerTransport;->access$500(Lio/grpc/okhttp/OkHttpServerTransport;Lio/grpc/okhttp/internal/framed/ErrorCode;Ljava/lang/String;Lio/grpc/Status;Z)V

    .line 1004
    return-void
.end method

.method private headerBlockSize(Ljava/util/List;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/grpc/okhttp/internal/framed/Header;",
            ">;)I"
        }
    .end annotation

    .line 790
    .local p1, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lio/grpc/okhttp/internal/framed/Header;>;"
    const-wide/16 v0, 0x0

    .line 791
    .local v0, "size":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 792
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/grpc/okhttp/internal/framed/Header;

    .line 793
    .local v3, "header":Lio/grpc/okhttp/internal/framed/Header;
    iget-object v4, v3, Lio/grpc/okhttp/internal/framed/Header;->name:Lokio/ByteString;

    invoke-virtual {v4}, Lokio/ByteString;->size()I

    move-result v4

    add-int/lit8 v4, v4, 0x20

    iget-object v5, v3, Lio/grpc/okhttp/internal/framed/Header;->value:Lokio/ByteString;

    invoke-virtual {v5}, Lokio/ByteString;->size()I

    move-result v5

    add-int/2addr v4, v5

    int-to-long v4, v4

    add-long/2addr v0, v4

    .line 791
    .end local v3    # "header":Lio/grpc/okhttp/internal/framed/Header;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 795
    .end local v2    # "i":I
    :cond_0
    const-wide/32 v2, 0x7fffffff

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 796
    long-to-int v2, v0

    return v2
.end method

.method private respondWithGrpcError(IZLio/grpc/Status$Code;Ljava/lang/String;)V
    .locals 5
    .param p1, "streamId"    # I
    .param p2, "inFinished"    # Z
    .param p3, "statusCode"    # Lio/grpc/Status$Code;
    .param p4, "msg"    # Ljava/lang/String;

    .line 1069
    new-instance v0, Lio/grpc/Metadata;

    invoke-direct {v0}, Lio/grpc/Metadata;-><init>()V

    .line 1070
    .local v0, "metadata":Lio/grpc/Metadata;
    sget-object v1, Lio/grpc/InternalStatus;->CODE_KEY:Lio/grpc/Metadata$Key;

    invoke-virtual {p3}, Lio/grpc/Status$Code;->toStatus()Lio/grpc/Status;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/grpc/Metadata;->put(Lio/grpc/Metadata$Key;Ljava/lang/Object;)V

    .line 1071
    sget-object v1, Lio/grpc/InternalStatus;->MESSAGE_KEY:Lio/grpc/Metadata$Key;

    invoke-virtual {v0, v1, p4}, Lio/grpc/Metadata;->put(Lio/grpc/Metadata$Key;Ljava/lang/Object;)V

    .line 1072
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/grpc/okhttp/Headers;->createResponseTrailers(Lio/grpc/Metadata;Z)Ljava/util/List;

    move-result-object v1

    .line 1074
    .local v1, "headers":Ljava/util/List;, "Ljava/util/List<Lio/grpc/okhttp/internal/framed/Header;>;"
    iget-object v2, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v2}, Lio/grpc/okhttp/OkHttpServerTransport;->access$300(Lio/grpc/okhttp/OkHttpServerTransport;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1075
    :try_start_0
    iget-object v3, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v3}, Lio/grpc/okhttp/OkHttpServerTransport;->access$3000(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4, p1, v1}, Lio/grpc/okhttp/ExceptionHandlingFrameWriter;->synReply(ZILjava/util/List;)V

    .line 1076
    if-nez p2, :cond_0

    .line 1077
    iget-object v3, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v3}, Lio/grpc/okhttp/OkHttpServerTransport;->access$3000(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    move-result-object v3

    sget-object v4, Lio/grpc/okhttp/internal/framed/ErrorCode;->NO_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    invoke-virtual {v3, p1, v4}, Lio/grpc/okhttp/ExceptionHandlingFrameWriter;->rstStream(ILio/grpc/okhttp/internal/framed/ErrorCode;)V

    .line 1079
    :cond_0
    iget-object v3, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v3}, Lio/grpc/okhttp/OkHttpServerTransport;->access$3000(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    move-result-object v3

    invoke-virtual {v3}, Lio/grpc/okhttp/ExceptionHandlingFrameWriter;->flush()V

    .line 1080
    monitor-exit v2

    .line 1081
    return-void

    .line 1080
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private respondWithHttpError(IZILio/grpc/Status$Code;Ljava/lang/String;)V
    .locals 8
    .param p1, "streamId"    # I
    .param p2, "inFinished"    # Z
    .param p3, "httpCode"    # I
    .param p4, "statusCode"    # Lio/grpc/Status$Code;
    .param p5, "msg"    # Ljava/lang/String;

    .line 1030
    new-instance v0, Lio/grpc/Metadata;

    invoke-direct {v0}, Lio/grpc/Metadata;-><init>()V

    .line 1031
    .local v0, "metadata":Lio/grpc/Metadata;
    sget-object v1, Lio/grpc/InternalStatus;->CODE_KEY:Lio/grpc/Metadata$Key;

    invoke-virtual {p4}, Lio/grpc/Status$Code;->toStatus()Lio/grpc/Status;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/grpc/Metadata;->put(Lio/grpc/Metadata$Key;Ljava/lang/Object;)V

    .line 1032
    sget-object v1, Lio/grpc/InternalStatus;->MESSAGE_KEY:Lio/grpc/Metadata$Key;

    invoke-virtual {v0, v1, p5}, Lio/grpc/Metadata;->put(Lio/grpc/Metadata$Key;Ljava/lang/Object;)V

    .line 1033
    const-string v1, "text/plain; charset=utf-8"

    .line 1034
    invoke-static {p3, v1, v0}, Lio/grpc/okhttp/Headers;->createHttpResponseHeaders(ILjava/lang/String;Lio/grpc/Metadata;)Ljava/util/List;

    move-result-object v1

    .line 1035
    .local v1, "headers":Ljava/util/List;, "Ljava/util/List<Lio/grpc/okhttp/internal/framed/Header;>;"
    new-instance v2, Lokio/Buffer;

    invoke-direct {v2}, Lokio/Buffer;-><init>()V

    invoke-virtual {v2, p5}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;

    move-result-object v2

    .line 1037
    .local v2, "data":Lokio/Buffer;
    iget-object v3, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v3}, Lio/grpc/okhttp/OkHttpServerTransport;->access$300(Lio/grpc/okhttp/OkHttpServerTransport;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 1038
    :try_start_0
    new-instance v4, Lio/grpc/okhttp/OkHttpServerTransport$Http2ErrorStreamState;

    iget-object v5, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    .line 1039
    invoke-static {v5}, Lio/grpc/okhttp/OkHttpServerTransport;->access$300(Lio/grpc/okhttp/OkHttpServerTransport;)Ljava/lang/Object;

    move-result-object v5

    iget-object v6, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v6}, Lio/grpc/okhttp/OkHttpServerTransport;->access$3100(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/okhttp/OutboundFlowController;

    move-result-object v6

    iget-object v7, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v7}, Lio/grpc/okhttp/OkHttpServerTransport;->access$1100(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/okhttp/OkHttpServerTransport$Config;

    move-result-object v7

    iget v7, v7, Lio/grpc/okhttp/OkHttpServerTransport$Config;->flowControlWindow:I

    invoke-direct {v4, p1, v5, v6, v7}, Lio/grpc/okhttp/OkHttpServerTransport$Http2ErrorStreamState;-><init>(ILjava/lang/Object;Lio/grpc/okhttp/OutboundFlowController;I)V

    .line 1040
    .local v4, "stream":Lio/grpc/okhttp/OkHttpServerTransport$Http2ErrorStreamState;
    iget-object v5, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v5}, Lio/grpc/okhttp/OkHttpServerTransport;->access$2000(Lio/grpc/okhttp/OkHttpServerTransport;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1041
    iget-object v5, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v5}, Lio/grpc/okhttp/OkHttpServerTransport;->access$000(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/internal/KeepAliveEnforcer;

    move-result-object v5

    invoke-virtual {v5}, Lio/grpc/internal/KeepAliveEnforcer;->onTransportActive()V

    .line 1042
    iget-object v5, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v5}, Lio/grpc/okhttp/OkHttpServerTransport;->access$3400(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/internal/MaxConnectionIdleManager;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1043
    iget-object v5, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v5}, Lio/grpc/okhttp/OkHttpServerTransport;->access$3400(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/internal/MaxConnectionIdleManager;

    move-result-object v5

    invoke-virtual {v5}, Lio/grpc/internal/MaxConnectionIdleManager;->onTransportActive()V

    .line 1046
    :cond_0
    iget-object v5, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v5}, Lio/grpc/okhttp/OkHttpServerTransport;->access$2000(Lio/grpc/okhttp/OkHttpServerTransport;)Ljava/util/Map;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1047
    const/4 v5, 0x1

    if-eqz p2, :cond_1

    .line 1048
    new-instance v6, Lokio/Buffer;

    invoke-direct {v6}, Lokio/Buffer;-><init>()V

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7, v5}, Lio/grpc/okhttp/OkHttpServerTransport$Http2ErrorStreamState;->inboundDataReceived(Lokio/Buffer;IZ)V

    .line 1050
    :cond_1
    iget-object v6, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v6}, Lio/grpc/okhttp/OkHttpServerTransport;->access$3000(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    move-result-object v6

    invoke-virtual {v6, p1, v1}, Lio/grpc/okhttp/ExceptionHandlingFrameWriter;->headers(ILjava/util/List;)V

    .line 1051
    iget-object v6, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v6}, Lio/grpc/okhttp/OkHttpServerTransport;->access$3100(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/okhttp/OutboundFlowController;

    move-result-object v6

    .line 1052
    invoke-virtual {v4}, Lio/grpc/okhttp/OkHttpServerTransport$Http2ErrorStreamState;->getOutboundFlowState()Lio/grpc/okhttp/OutboundFlowController$StreamState;

    move-result-object v7

    .line 1051
    invoke-virtual {v6, v5, v7, v2, v5}, Lio/grpc/okhttp/OutboundFlowController;->data(ZLio/grpc/okhttp/OutboundFlowController$StreamState;Lokio/Buffer;Z)V

    .line 1053
    iget-object v5, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v5}, Lio/grpc/okhttp/OkHttpServerTransport;->access$3100(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/okhttp/OutboundFlowController;

    move-result-object v5

    .line 1054
    invoke-virtual {v4}, Lio/grpc/okhttp/OkHttpServerTransport$Http2ErrorStreamState;->getOutboundFlowState()Lio/grpc/okhttp/OutboundFlowController$StreamState;

    move-result-object v6

    new-instance v7, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler$$ExternalSyntheticLambda0;

    invoke-direct {v7, p0, v4}, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler$$ExternalSyntheticLambda0;-><init>(Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;Lio/grpc/okhttp/OkHttpServerTransport$Http2ErrorStreamState;)V

    .line 1053
    invoke-virtual {v5, v6, v7}, Lio/grpc/okhttp/OutboundFlowController;->notifyWhenNoPendingData(Lio/grpc/okhttp/OutboundFlowController$StreamState;Ljava/lang/Runnable;)V

    .line 1055
    .end local v4    # "stream":Lio/grpc/okhttp/OkHttpServerTransport$Http2ErrorStreamState;
    monitor-exit v3

    .line 1056
    return-void

    .line 1055
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private rstOkAtEndOfHttpError(Lio/grpc/okhttp/OkHttpServerTransport$Http2ErrorStreamState;)V
    .locals 4
    .param p1, "stream"    # Lio/grpc/okhttp/OkHttpServerTransport$Http2ErrorStreamState;

    .line 1059
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v0}, Lio/grpc/okhttp/OkHttpServerTransport;->access$300(Lio/grpc/okhttp/OkHttpServerTransport;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1060
    :try_start_0
    invoke-virtual {p1}, Lio/grpc/okhttp/OkHttpServerTransport$Http2ErrorStreamState;->hasReceivedEndOfStream()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1061
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v1}, Lio/grpc/okhttp/OkHttpServerTransport;->access$3000(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    move-result-object v1

    invoke-static {p1}, Lio/grpc/okhttp/OkHttpServerTransport$Http2ErrorStreamState;->access$3700(Lio/grpc/okhttp/OkHttpServerTransport$Http2ErrorStreamState;)I

    move-result v2

    sget-object v3, Lio/grpc/okhttp/internal/framed/ErrorCode;->NO_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    invoke-virtual {v1, v2, v3}, Lio/grpc/okhttp/ExceptionHandlingFrameWriter;->rstStream(ILio/grpc/okhttp/internal/framed/ErrorCode;)V

    .line 1063
    :cond_0
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {p1}, Lio/grpc/okhttp/OkHttpServerTransport$Http2ErrorStreamState;->access$3700(Lio/grpc/okhttp/OkHttpServerTransport$Http2ErrorStreamState;)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lio/grpc/okhttp/OkHttpServerTransport;->streamClosed(IZ)V

    .line 1064
    monitor-exit v0

    .line 1065
    return-void

    .line 1064
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private streamError(ILio/grpc/okhttp/internal/framed/ErrorCode;Ljava/lang/String;)V
    .locals 5
    .param p1, "streamId"    # I
    .param p2, "errorCode"    # Lio/grpc/okhttp/internal/framed/ErrorCode;
    .param p3, "reason"    # Ljava/lang/String;

    .line 1011
    sget-object v0, Lio/grpc/okhttp/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    if-ne p2, v0, :cond_0

    .line 1012
    invoke-static {}, Lio/grpc/okhttp/OkHttpServerTransport;->access$600()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "Responding with RST_STREAM {0}: {1}"

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1015
    :cond_0
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v0}, Lio/grpc/okhttp/OkHttpServerTransport;->access$300(Lio/grpc/okhttp/OkHttpServerTransport;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1016
    :try_start_0
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v1}, Lio/grpc/okhttp/OkHttpServerTransport;->access$3000(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lio/grpc/okhttp/ExceptionHandlingFrameWriter;->rstStream(ILio/grpc/okhttp/internal/framed/ErrorCode;)V

    .line 1017
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v1}, Lio/grpc/okhttp/OkHttpServerTransport;->access$3000(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/okhttp/ExceptionHandlingFrameWriter;->flush()V

    .line 1018
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v1}, Lio/grpc/okhttp/OkHttpServerTransport;->access$2000(Lio/grpc/okhttp/OkHttpServerTransport;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/okhttp/OkHttpServerTransport$StreamState;

    .line 1019
    .local v1, "stream":Lio/grpc/okhttp/OkHttpServerTransport$StreamState;
    if-eqz v1, :cond_1

    .line 1020
    sget-object v2, Lio/grpc/Status;->INTERNAL:Lio/grpc/Status;

    const-string v3, "Responded with RST_STREAM %s: %s"

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object v4

    .line 1022
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1021
    invoke-virtual {v2, v3}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v2

    .line 1020
    invoke-interface {v1, v2}, Lio/grpc/okhttp/OkHttpServerTransport$StreamState;->transportReportStatus(Lio/grpc/Status;)V

    .line 1023
    iget-object v2, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lio/grpc/okhttp/OkHttpServerTransport;->streamClosed(IZ)V

    .line 1025
    .end local v1    # "stream":Lio/grpc/okhttp/OkHttpServerTransport$StreamState;
    :cond_1
    monitor-exit v0

    .line 1026
    return-void

    .line 1025
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public ackSettings()V
    .locals 0

    .line 937
    return-void
.end method

.method public alternateService(ILjava/lang/String;Lokio/ByteString;Ljava/lang/String;IJ)V
    .locals 0
    .param p1, "streamId"    # I
    .param p2, "origin"    # Ljava/lang/String;
    .param p3, "protocol"    # Lokio/ByteString;
    .param p4, "host"    # Ljava/lang/String;
    .param p5, "port"    # I
    .param p6, "maxAge"    # J

    .line 995
    return-void
.end method

.method public data(ZILokio/BufferedSource;I)V
    .locals 6
    .param p1, "inFinished"    # Z
    .param p2, "streamId"    # I
    .param p3, "in"    # Lokio/BufferedSource;
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 805
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->frameLogger:Lio/grpc/okhttp/OkHttpFrameLogger;

    sget-object v1, Lio/grpc/okhttp/OkHttpFrameLogger$Direction;->INBOUND:Lio/grpc/okhttp/OkHttpFrameLogger$Direction;

    .line 806
    invoke-interface {p3}, Lokio/BufferedSource;->getBuffer()Lokio/Buffer;

    move-result-object v3

    .line 805
    move v2, p2

    move v4, p4

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lio/grpc/okhttp/OkHttpFrameLogger;->logData(Lio/grpc/okhttp/OkHttpFrameLogger$Direction;ILokio/Buffer;IZ)V

    .line 807
    if-nez p2, :cond_0

    .line 808
    sget-object v0, Lio/grpc/okhttp/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    const-string v1, "Stream 0 is reserved for control messages. RFC7540 section 5.1.1"

    invoke-direct {p0, v0, v1}, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->connectionError(Lio/grpc/okhttp/internal/framed/ErrorCode;Ljava/lang/String;)V

    .line 810
    return-void

    .line 812
    :cond_0
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_1

    .line 814
    sget-object v0, Lio/grpc/okhttp/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    const-string v1, "Clients cannot open even numbered streams. RFC7540 section 5.1.1"

    invoke-direct {p0, v0, v1}, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->connectionError(Lio/grpc/okhttp/internal/framed/ErrorCode;Ljava/lang/String;)V

    .line 816
    return-void

    .line 822
    :cond_1
    int-to-long v0, p4

    invoke-interface {p3, v0, v1}, Lokio/BufferedSource;->require(J)V

    .line 824
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v0}, Lio/grpc/okhttp/OkHttpServerTransport;->access$300(Lio/grpc/okhttp/OkHttpServerTransport;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 825
    :try_start_0
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v1}, Lio/grpc/okhttp/OkHttpServerTransport;->access$2000(Lio/grpc/okhttp/OkHttpServerTransport;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/okhttp/OkHttpServerTransport$StreamState;

    .line 826
    .local v1, "stream":Lio/grpc/okhttp/OkHttpServerTransport$StreamState;
    if-nez v1, :cond_2

    .line 827
    int-to-long v2, p4

    invoke-interface {p3, v2, v3}, Lokio/BufferedSource;->skip(J)V

    .line 828
    sget-object v2, Lio/grpc/okhttp/internal/framed/ErrorCode;->STREAM_CLOSED:Lio/grpc/okhttp/internal/framed/ErrorCode;

    const-string v3, "Received data for closed stream"

    invoke-direct {p0, p2, v2, v3}, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->streamError(ILio/grpc/okhttp/internal/framed/ErrorCode;Ljava/lang/String;)V

    .line 829
    monitor-exit v0

    return-void

    .line 831
    :cond_2
    invoke-interface {v1}, Lio/grpc/okhttp/OkHttpServerTransport$StreamState;->hasReceivedEndOfStream()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 832
    int-to-long v2, p4

    invoke-interface {p3, v2, v3}, Lokio/BufferedSource;->skip(J)V

    .line 833
    sget-object v2, Lio/grpc/okhttp/internal/framed/ErrorCode;->STREAM_CLOSED:Lio/grpc/okhttp/internal/framed/ErrorCode;

    const-string v3, "Received DATA for half-closed (remote) stream. RFC7540 section 5.1"

    invoke-direct {p0, p2, v2, v3}, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->streamError(ILio/grpc/okhttp/internal/framed/ErrorCode;Ljava/lang/String;)V

    .line 835
    monitor-exit v0

    return-void

    .line 837
    :cond_3
    invoke-interface {v1}, Lio/grpc/okhttp/OkHttpServerTransport$StreamState;->inboundWindowAvailable()I

    move-result v2

    if-ge v2, p4, :cond_4

    .line 838
    int-to-long v2, p4

    invoke-interface {p3, v2, v3}, Lokio/BufferedSource;->skip(J)V

    .line 839
    sget-object v2, Lio/grpc/okhttp/internal/framed/ErrorCode;->FLOW_CONTROL_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    const-string v3, "Received DATA size exceeded window size. RFC7540 section 6.9"

    invoke-direct {p0, p2, v2, v3}, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->streamError(ILio/grpc/okhttp/internal/framed/ErrorCode;Ljava/lang/String;)V

    .line 841
    monitor-exit v0

    return-void

    .line 843
    :cond_4
    new-instance v2, Lokio/Buffer;

    invoke-direct {v2}, Lokio/Buffer;-><init>()V

    .line 844
    .local v2, "buf":Lokio/Buffer;
    invoke-interface {p3}, Lokio/BufferedSource;->getBuffer()Lokio/Buffer;

    move-result-object v3

    int-to-long v4, p4

    invoke-virtual {v2, v3, v4, v5}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 845
    invoke-interface {v1, v2, p4, p1}, Lio/grpc/okhttp/OkHttpServerTransport$StreamState;->inboundDataReceived(Lokio/Buffer;IZ)V

    .line 846
    .end local v1    # "stream":Lio/grpc/okhttp/OkHttpServerTransport$StreamState;
    .end local v2    # "buf":Lokio/Buffer;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 849
    iget v0, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->connectionUnacknowledgedBytesRead:I

    add-int/2addr v0, p4

    iput v0, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->connectionUnacknowledgedBytesRead:I

    .line 850
    int-to-float v0, v0

    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    .line 851
    invoke-static {v1}, Lio/grpc/okhttp/OkHttpServerTransport;->access$1100(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/okhttp/OkHttpServerTransport$Config;

    move-result-object v1

    iget v1, v1, Lio/grpc/okhttp/OkHttpServerTransport$Config;->flowControlWindow:I

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_5

    .line 852
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v0}, Lio/grpc/okhttp/OkHttpServerTransport;->access$300(Lio/grpc/okhttp/OkHttpServerTransport;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 853
    :try_start_1
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v1}, Lio/grpc/okhttp/OkHttpServerTransport;->access$3000(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    move-result-object v1

    iget v2, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->connectionUnacknowledgedBytesRead:I

    int-to-long v2, v2

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2, v3}, Lio/grpc/okhttp/ExceptionHandlingFrameWriter;->windowUpdate(IJ)V

    .line 854
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v1}, Lio/grpc/okhttp/OkHttpServerTransport;->access$3000(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/okhttp/ExceptionHandlingFrameWriter;->flush()V

    .line 855
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 856
    iput v4, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->connectionUnacknowledgedBytesRead:I

    goto :goto_0

    .line 855
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 858
    :cond_5
    :goto_0
    return-void

    .line 846
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public goAway(ILio/grpc/okhttp/internal/framed/ErrorCode;Lokio/ByteString;)V
    .locals 6
    .param p1, "lastGoodStreamId"    # I
    .param p2, "errorCode"    # Lio/grpc/okhttp/internal/framed/ErrorCode;
    .param p3, "debugData"    # Lokio/ByteString;

    .line 941
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->frameLogger:Lio/grpc/okhttp/OkHttpFrameLogger;

    sget-object v1, Lio/grpc/okhttp/OkHttpFrameLogger$Direction;->INBOUND:Lio/grpc/okhttp/OkHttpFrameLogger$Direction;

    invoke-virtual {v0, v1, p1, p2, p3}, Lio/grpc/okhttp/OkHttpFrameLogger;->logGoAway(Lio/grpc/okhttp/OkHttpFrameLogger$Direction;ILio/grpc/okhttp/internal/framed/ErrorCode;Lokio/ByteString;)V

    .line 943
    const-string v0, "Received GOAWAY: %s \'%s\'"

    invoke-virtual {p3}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v1

    filled-new-array {p2, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 944
    .local v0, "description":Ljava/lang/String;
    iget v1, p2, Lio/grpc/okhttp/internal/framed/ErrorCode;->httpCode:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Lio/grpc/internal/GrpcUtil$Http2Error;->statusForCode(J)Lio/grpc/Status;

    move-result-object v1

    .line 945
    invoke-virtual {v1, v0}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v1

    .line 946
    .local v1, "status":Lio/grpc/Status;
    sget-object v2, Lio/grpc/okhttp/internal/framed/ErrorCode;->NO_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    invoke-virtual {v2, p2}, Lio/grpc/okhttp/internal/framed/ErrorCode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 947
    invoke-static {}, Lio/grpc/okhttp/OkHttpServerTransport;->access$600()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "Received GOAWAY: {0} {1}"

    .line 948
    invoke-virtual {p3}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v5

    filled-new-array {p2, v5}, [Ljava/lang/Object;

    move-result-object v5

    .line 947
    invoke-virtual {v2, v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 950
    :cond_0
    iget-object v2, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v2}, Lio/grpc/okhttp/OkHttpServerTransport;->access$300(Lio/grpc/okhttp/OkHttpServerTransport;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 951
    :try_start_0
    iget-object v3, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v3, v1}, Lio/grpc/okhttp/OkHttpServerTransport;->access$402(Lio/grpc/okhttp/OkHttpServerTransport;Lio/grpc/Status;)Lio/grpc/Status;

    .line 952
    monitor-exit v2

    .line 953
    return-void

    .line 952
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public headers(ZZIILjava/util/List;Lio/grpc/okhttp/internal/framed/HeadersMode;)V
    .locals 31
    .param p1, "outFinished"    # Z
    .param p2, "inFinished"    # Z
    .param p3, "streamId"    # I
    .param p4, "associatedStreamId"    # I
    .param p6, "headersMode"    # Lio/grpc/okhttp/internal/framed/HeadersMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZII",
            "Ljava/util/List<",
            "Lio/grpc/okhttp/internal/framed/Header;",
            ">;",
            "Lio/grpc/okhttp/internal/framed/HeadersMode;",
            ")V"
        }
    .end annotation

    .line 605
    .local p5, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lio/grpc/okhttp/internal/framed/Header;>;"
    move-object/from16 v7, p0

    move/from16 v8, p2

    move/from16 v15, p3

    move-object/from16 v14, p5

    iget-object v0, v7, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->frameLogger:Lio/grpc/okhttp/OkHttpFrameLogger;

    sget-object v1, Lio/grpc/okhttp/OkHttpFrameLogger$Direction;->INBOUND:Lio/grpc/okhttp/OkHttpFrameLogger$Direction;

    invoke-virtual {v0, v1, v15, v14, v8}, Lio/grpc/okhttp/OkHttpFrameLogger;->logHeaders(Lio/grpc/okhttp/OkHttpFrameLogger$Direction;ILjava/util/List;Z)V

    .line 608
    and-int/lit8 v0, v15, 0x1

    if-nez v0, :cond_0

    .line 610
    sget-object v0, Lio/grpc/okhttp/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    const-string v1, "Clients cannot open even numbered streams. RFC7540 section 5.1.1"

    invoke-direct {v7, v0, v1}, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->connectionError(Lio/grpc/okhttp/internal/framed/ErrorCode;Ljava/lang/String;)V

    .line 612
    return-void

    .line 615
    :cond_0
    iget-object v0, v7, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v0}, Lio/grpc/okhttp/OkHttpServerTransport;->access$300(Lio/grpc/okhttp/OkHttpServerTransport;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 616
    :try_start_0
    iget-object v0, v7, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v0}, Lio/grpc/okhttp/OkHttpServerTransport;->access$900(Lio/grpc/okhttp/OkHttpServerTransport;)I

    move-result v0

    if-le v15, v0, :cond_1

    .line 617
    monitor-exit v1

    return-void

    .line 619
    :cond_1
    iget-object v0, v7, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v0}, Lio/grpc/okhttp/OkHttpServerTransport;->access$1000(Lio/grpc/okhttp/OkHttpServerTransport;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v15, v0, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    move/from16 v20, v0

    .line 620
    .local v20, "newStream":Z
    if-eqz v20, :cond_3

    .line 621
    iget-object v0, v7, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v0, v15}, Lio/grpc/okhttp/OkHttpServerTransport;->access$1002(Lio/grpc/okhttp/OkHttpServerTransport;I)I

    .line 623
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    .line 625
    invoke-direct {v7, v14}, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->headerBlockSize(Ljava/util/List;)I

    move-result v13

    .line 626
    .local v13, "metadataSize":I
    iget-object v0, v7, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v0}, Lio/grpc/okhttp/OkHttpServerTransport;->access$1100(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/okhttp/OkHttpServerTransport$Config;

    move-result-object v0

    iget v0, v0, Lio/grpc/okhttp/OkHttpServerTransport$Config;->maxInboundMetadataSize:I

    if-le v13, v0, :cond_4

    .line 627
    const/16 v4, 0x1af

    sget-object v5, Lio/grpc/Status$Code;->RESOURCE_EXHAUSTED:Lio/grpc/Status$Code;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "Request metadata larger than %d: %d"

    iget-object v2, v7, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    .line 631
    invoke-static {v2}, Lio/grpc/okhttp/OkHttpServerTransport;->access$1100(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/okhttp/OkHttpServerTransport$Config;

    move-result-object v2

    iget v2, v2, Lio/grpc/okhttp/OkHttpServerTransport$Config;->maxInboundMetadataSize:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 632
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 628
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 627
    move-object/from16 v1, p0

    move/from16 v2, p3

    move/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->respondWithHttpError(IZILio/grpc/Status$Code;Ljava/lang/String;)V

    .line 633
    return-void

    .line 636
    :cond_4
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    invoke-static {v14, v0}, Lio/grpc/okhttp/OkHttpServerTransport;->access$1200(Ljava/util/List;Lokio/ByteString;)V

    .line 638
    const/4 v0, 0x0

    .line 639
    .local v0, "httpMethod":Lokio/ByteString;
    const/4 v1, 0x0

    .line 640
    .local v1, "scheme":Lokio/ByteString;
    const/4 v4, 0x0

    .line 641
    .local v4, "path":Lokio/ByteString;
    const/4 v5, 0x0

    move-object v12, v0

    move-object/from16 v21, v1

    move-object v11, v4

    move-object v9, v5

    .line 642
    .end local v0    # "httpMethod":Lokio/ByteString;
    .end local v1    # "scheme":Lokio/ByteString;
    .end local v4    # "path":Lokio/ByteString;
    .local v9, "authority":Lokio/ByteString;
    .local v11, "path":Lokio/ByteString;
    .local v12, "httpMethod":Lokio/ByteString;
    .local v21, "scheme":Lokio/ByteString;
    :goto_1
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x3a

    if-lez v0, :cond_9

    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/okhttp/internal/framed/Header;

    iget-object v0, v0, Lio/grpc/okhttp/internal/framed/Header;->name:Lokio/ByteString;

    invoke-virtual {v0, v2}, Lokio/ByteString;->getByte(I)B

    move-result v0

    if-ne v0, v1, :cond_9

    .line 643
    invoke-interface {v14, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/okhttp/internal/framed/Header;

    .line 644
    .local v0, "header":Lio/grpc/okhttp/internal/framed/Header;
    invoke-static {}, Lio/grpc/okhttp/OkHttpServerTransport;->access$1300()Lokio/ByteString;

    move-result-object v1

    iget-object v4, v0, Lio/grpc/okhttp/internal/framed/Header;->name:Lokio/ByteString;

    invoke-virtual {v1, v4}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    if-nez v12, :cond_5

    .line 645
    iget-object v1, v0, Lio/grpc/okhttp/internal/framed/Header;->value:Lokio/ByteString;

    move-object v12, v1

    .end local v12    # "httpMethod":Lokio/ByteString;
    .local v1, "httpMethod":Lokio/ByteString;
    goto :goto_2

    .line 646
    .end local v1    # "httpMethod":Lokio/ByteString;
    .restart local v12    # "httpMethod":Lokio/ByteString;
    :cond_5
    invoke-static {}, Lio/grpc/okhttp/OkHttpServerTransport;->access$1400()Lokio/ByteString;

    move-result-object v1

    iget-object v4, v0, Lio/grpc/okhttp/internal/framed/Header;->name:Lokio/ByteString;

    invoke-virtual {v1, v4}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    if-nez v21, :cond_6

    .line 647
    iget-object v1, v0, Lio/grpc/okhttp/internal/framed/Header;->value:Lokio/ByteString;

    move-object/from16 v21, v1

    .end local v21    # "scheme":Lokio/ByteString;
    .local v1, "scheme":Lokio/ByteString;
    goto :goto_2

    .line 648
    .end local v1    # "scheme":Lokio/ByteString;
    .restart local v21    # "scheme":Lokio/ByteString;
    :cond_6
    invoke-static {}, Lio/grpc/okhttp/OkHttpServerTransport;->access$1500()Lokio/ByteString;

    move-result-object v1

    iget-object v4, v0, Lio/grpc/okhttp/internal/framed/Header;->name:Lokio/ByteString;

    invoke-virtual {v1, v4}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    if-nez v11, :cond_7

    .line 649
    iget-object v1, v0, Lio/grpc/okhttp/internal/framed/Header;->value:Lokio/ByteString;

    move-object v11, v1

    .end local v11    # "path":Lokio/ByteString;
    .local v1, "path":Lokio/ByteString;
    goto :goto_2

    .line 650
    .end local v1    # "path":Lokio/ByteString;
    .restart local v11    # "path":Lokio/ByteString;
    :cond_7
    invoke-static {}, Lio/grpc/okhttp/OkHttpServerTransport;->access$1600()Lokio/ByteString;

    move-result-object v1

    iget-object v4, v0, Lio/grpc/okhttp/internal/framed/Header;->name:Lokio/ByteString;

    invoke-virtual {v1, v4}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    if-nez v9, :cond_8

    .line 651
    iget-object v1, v0, Lio/grpc/okhttp/internal/framed/Header;->value:Lokio/ByteString;

    move-object v9, v1

    .line 657
    .end local v0    # "header":Lio/grpc/okhttp/internal/framed/Header;
    :goto_2
    goto :goto_1

    .line 653
    .restart local v0    # "header":Lio/grpc/okhttp/internal/framed/Header;
    :cond_8
    sget-object v1, Lio/grpc/okhttp/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    const-string v2, "Unexpected pseudo header. RFC7540 section 8.1.2.1"

    invoke-direct {v7, v15, v1, v2}, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->streamError(ILio/grpc/okhttp/internal/framed/ErrorCode;Ljava/lang/String;)V

    .line 655
    return-void

    .line 658
    .end local v0    # "header":Lio/grpc/okhttp/internal/framed/Header;
    :cond_9
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_b

    .line 659
    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/grpc/okhttp/internal/framed/Header;

    iget-object v4, v4, Lio/grpc/okhttp/internal/framed/Header;->name:Lokio/ByteString;

    invoke-virtual {v4, v2}, Lokio/ByteString;->getByte(I)B

    move-result v4

    if-ne v4, v1, :cond_a

    .line 660
    sget-object v1, Lio/grpc/okhttp/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    const-string v2, "Pseudo header not before regular headers. RFC7540 section 8.1.2.1"

    invoke-direct {v7, v15, v1, v2}, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->streamError(ILio/grpc/okhttp/internal/framed/ErrorCode;Ljava/lang/String;)V

    .line 662
    return-void

    .line 658
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 665
    .end local v0    # "i":I
    :cond_b
    invoke-static {}, Lio/grpc/okhttp/OkHttpServerTransport;->access$1700()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0, v12}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    if-eqz v20, :cond_d

    if-eqz v12, :cond_c

    if-eqz v21, :cond_c

    if-nez v11, :cond_d

    .line 668
    :cond_c
    sget-object v0, Lio/grpc/okhttp/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    const-string v1, "Missing required pseudo header. RFC7540 section 8.1.2.3"

    invoke-direct {v7, v15, v0, v1}, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->streamError(ILio/grpc/okhttp/internal/framed/ErrorCode;Ljava/lang/String;)V

    .line 670
    return-void

    .line 672
    :cond_d
    invoke-static {}, Lio/grpc/okhttp/OkHttpServerTransport;->access$1800()Lokio/ByteString;

    move-result-object v0

    invoke-static {v14, v0}, Lio/grpc/okhttp/OkHttpServerTransport;->access$1900(Ljava/util/List;Lokio/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 673
    sget-object v0, Lio/grpc/okhttp/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    const-string v1, "Connection-specific headers not permitted. RFC7540 section 8.1.2.2"

    invoke-direct {v7, v15, v0, v1}, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->streamError(ILio/grpc/okhttp/internal/framed/ErrorCode;Ljava/lang/String;)V

    .line 675
    return-void

    .line 678
    :cond_e
    if-nez v20, :cond_12

    .line 679
    if-eqz v8, :cond_11

    .line 680
    iget-object v0, v7, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v0}, Lio/grpc/okhttp/OkHttpServerTransport;->access$300(Lio/grpc/okhttp/OkHttpServerTransport;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 681
    :try_start_1
    iget-object v0, v7, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v0}, Lio/grpc/okhttp/OkHttpServerTransport;->access$2000(Lio/grpc/okhttp/OkHttpServerTransport;)Ljava/util/Map;

    move-result-object v0

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/okhttp/OkHttpServerTransport$StreamState;

    .line 682
    .local v0, "stream":Lio/grpc/okhttp/OkHttpServerTransport$StreamState;
    if-nez v0, :cond_f

    .line 683
    sget-object v2, Lio/grpc/okhttp/internal/framed/ErrorCode;->STREAM_CLOSED:Lio/grpc/okhttp/internal/framed/ErrorCode;

    const-string v3, "Received headers for closed stream"

    invoke-direct {v7, v15, v2, v3}, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->streamError(ILio/grpc/okhttp/internal/framed/ErrorCode;Ljava/lang/String;)V

    .line 684
    monitor-exit v1

    return-void

    .line 686
    :cond_f
    invoke-interface {v0}, Lio/grpc/okhttp/OkHttpServerTransport$StreamState;->hasReceivedEndOfStream()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 687
    sget-object v2, Lio/grpc/okhttp/internal/framed/ErrorCode;->STREAM_CLOSED:Lio/grpc/okhttp/internal/framed/ErrorCode;

    const-string v3, "Received HEADERS for half-closed (remote) stream. RFC7540 section 5.1"

    invoke-direct {v7, v15, v2, v3}, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->streamError(ILio/grpc/okhttp/internal/framed/ErrorCode;Ljava/lang/String;)V

    .line 689
    monitor-exit v1

    return-void

    .line 692
    :cond_10
    new-instance v4, Lokio/Buffer;

    invoke-direct {v4}, Lokio/Buffer;-><init>()V

    invoke-interface {v0, v4, v2, v3}, Lio/grpc/okhttp/OkHttpServerTransport$StreamState;->inboundDataReceived(Lokio/Buffer;IZ)V

    .line 693
    monitor-exit v1

    return-void

    .line 694
    .end local v0    # "stream":Lio/grpc/okhttp/OkHttpServerTransport$StreamState;
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 696
    :cond_11
    sget-object v0, Lio/grpc/okhttp/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    const-string v1, "Headers disallowed in the middle of the stream. RFC7540 section 8.1"

    invoke-direct {v7, v15, v0, v1}, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->streamError(ILio/grpc/okhttp/internal/framed/ErrorCode;Ljava/lang/String;)V

    .line 698
    return-void

    .line 702
    :cond_12
    if-nez v9, :cond_14

    .line 703
    invoke-static {}, Lio/grpc/okhttp/OkHttpServerTransport;->access$2100()Lokio/ByteString;

    move-result-object v0

    invoke-static {v14, v0, v2}, Lio/grpc/okhttp/OkHttpServerTransport;->access$2200(Ljava/util/List;Lokio/ByteString;I)I

    move-result v0

    .line 704
    .local v0, "i":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_14

    .line 705
    invoke-static {}, Lio/grpc/okhttp/OkHttpServerTransport;->access$2100()Lokio/ByteString;

    move-result-object v4

    add-int/lit8 v5, v0, 0x1

    invoke-static {v14, v4, v5}, Lio/grpc/okhttp/OkHttpServerTransport;->access$2200(Ljava/util/List;Lokio/ByteString;I)I

    move-result v4

    if-eq v4, v1, :cond_13

    .line 706
    const/16 v4, 0x190

    sget-object v5, Lio/grpc/Status$Code;->INTERNAL:Lio/grpc/Status$Code;

    const-string v6, "Multiple host headers disallowed. RFC7230 section 5.4"

    move-object/from16 v1, p0

    move/from16 v2, p3

    move/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->respondWithHttpError(IZILio/grpc/Status$Code;Ljava/lang/String;)V

    .line 708
    return-void

    .line 710
    :cond_13
    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/okhttp/internal/framed/Header;

    iget-object v9, v1, Lio/grpc/okhttp/internal/framed/Header;->value:Lokio/ByteString;

    move-object/from16 v22, v9

    goto :goto_4

    .line 713
    .end local v0    # "i":I
    :cond_14
    move-object/from16 v22, v9

    .end local v9    # "authority":Lokio/ByteString;
    .local v22, "authority":Lokio/ByteString;
    :goto_4
    invoke-static {}, Lio/grpc/okhttp/OkHttpServerTransport;->access$2100()Lokio/ByteString;

    move-result-object v0

    invoke-static {v14, v0}, Lio/grpc/okhttp/OkHttpServerTransport;->access$1200(Ljava/util/List;Lokio/ByteString;)V

    .line 716
    invoke-virtual {v11}, Lokio/ByteString;->size()I

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {v11, v2}, Lokio/ByteString;->getByte(I)B

    move-result v0

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_15

    move-object/from16 v28, v11

    move-object/from16 v29, v12

    move/from16 v30, v13

    goto/16 :goto_9

    .line 721
    :cond_15
    invoke-static {v11}, Lio/grpc/okhttp/OkHttpServerTransport;->access$2300(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 723
    .local v10, "method":Ljava/lang/String;
    invoke-static {}, Lio/grpc/okhttp/OkHttpServerTransport;->access$2400()Lokio/ByteString;

    move-result-object v0

    invoke-static {v14, v0}, Lio/grpc/okhttp/OkHttpServerTransport;->access$2500(Ljava/util/List;Lokio/ByteString;)Lokio/ByteString;

    move-result-object v23

    .line 724
    .local v23, "contentType":Lokio/ByteString;
    if-nez v23, :cond_16

    .line 725
    const/16 v4, 0x19f

    sget-object v5, Lio/grpc/Status$Code;->INTERNAL:Lio/grpc/Status$Code;

    const-string v6, "Content-Type is missing or duplicated"

    move-object/from16 v1, p0

    move/from16 v2, p3

    move/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->respondWithHttpError(IZILio/grpc/Status$Code;Ljava/lang/String;)V

    .line 727
    return-void

    .line 729
    :cond_16
    invoke-static/range {v23 .. v23}, Lio/grpc/okhttp/OkHttpServerTransport;->access$2300(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v9

    .line 730
    .local v9, "contentTypeString":Ljava/lang/String;
    invoke-static {v9}, Lio/grpc/internal/GrpcUtil;->isGrpcContentType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 731
    const/16 v4, 0x19f

    sget-object v5, Lio/grpc/Status$Code;->INTERNAL:Lio/grpc/Status$Code;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Content-Type is not supported: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v1, p0

    move/from16 v2, p3

    move/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->respondWithHttpError(IZILio/grpc/Status$Code;Ljava/lang/String;)V

    .line 733
    return-void

    .line 736
    :cond_17
    invoke-static {}, Lio/grpc/okhttp/OkHttpServerTransport;->access$2600()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0, v12}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 737
    const/16 v4, 0x195

    sget-object v5, Lio/grpc/Status$Code;->INTERNAL:Lio/grpc/Status$Code;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HTTP Method is not supported: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 738
    invoke-static {v12}, Lio/grpc/okhttp/OkHttpServerTransport;->access$2300(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 737
    move-object/from16 v1, p0

    move/from16 v2, p3

    move/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->respondWithHttpError(IZILio/grpc/Status$Code;Ljava/lang/String;)V

    .line 739
    return-void

    .line 742
    :cond_18
    invoke-static {}, Lio/grpc/okhttp/OkHttpServerTransport;->access$2700()Lokio/ByteString;

    move-result-object v0

    invoke-static {v14, v0}, Lio/grpc/okhttp/OkHttpServerTransport;->access$2500(Ljava/util/List;Lokio/ByteString;)Lokio/ByteString;

    move-result-object v1

    .line 743
    .local v1, "te":Lokio/ByteString;
    invoke-static {}, Lio/grpc/okhttp/OkHttpServerTransport;->access$2800()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0, v1}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 744
    sget-object v0, Lio/grpc/Status$Code;->INTERNAL:Lio/grpc/Status$Code;

    const-string v4, "Expected header TE: %s, but %s is received. Some intermediate proxy may not support trailers"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 747
    invoke-static {}, Lio/grpc/okhttp/OkHttpServerTransport;->access$2800()Lokio/ByteString;

    move-result-object v6

    invoke-static {v6}, Lio/grpc/okhttp/OkHttpServerTransport;->access$2300(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    if-nez v1, :cond_19

    const-string v2, "<missing>"

    goto :goto_5

    :cond_19
    invoke-static {v1}, Lio/grpc/okhttp/OkHttpServerTransport;->access$2300(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v2

    :goto_5
    aput-object v2, v5, v3

    .line 745
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 744
    invoke-direct {v7, v15, v8, v0, v2}, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->respondWithGrpcError(IZLio/grpc/Status$Code;Ljava/lang/String;)V

    .line 748
    return-void

    .line 750
    :cond_1a
    invoke-static {}, Lio/grpc/okhttp/OkHttpServerTransport;->access$2900()Lokio/ByteString;

    move-result-object v0

    invoke-static {v14, v0}, Lio/grpc/okhttp/OkHttpServerTransport;->access$1200(Ljava/util/List;Lokio/ByteString;)V

    .line 752
    invoke-static/range {p5 .. p5}, Lio/grpc/okhttp/Utils;->convertHeaders(Ljava/util/List;)Lio/grpc/Metadata;

    move-result-object v3

    .line 753
    .local v3, "metadata":Lio/grpc/Metadata;
    iget-object v0, v7, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    .line 754
    invoke-static {v0}, Lio/grpc/okhttp/OkHttpServerTransport;->access$1100(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/okhttp/OkHttpServerTransport$Config;

    move-result-object v0

    iget-object v0, v0, Lio/grpc/okhttp/OkHttpServerTransport$Config;->streamTracerFactories:Ljava/util/List;

    invoke-static {v0, v10, v3}, Lio/grpc/internal/StatsTraceContext;->newServerContext(Ljava/util/List;Ljava/lang/String;Lio/grpc/Metadata;)Lio/grpc/internal/StatsTraceContext;

    move-result-object v4

    .line 755
    .local v4, "statsTraceCtx":Lio/grpc/internal/StatsTraceContext;
    iget-object v0, v7, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v0}, Lio/grpc/okhttp/OkHttpServerTransport;->access$300(Lio/grpc/okhttp/OkHttpServerTransport;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 756
    :try_start_2
    new-instance v0, Lio/grpc/okhttp/OkHttpServerStream$TransportState;

    iget-object v6, v7, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    .line 759
    invoke-static {v6}, Lio/grpc/okhttp/OkHttpServerTransport;->access$1100(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/okhttp/OkHttpServerTransport$Config;

    move-result-object v2

    iget v2, v2, Lio/grpc/okhttp/OkHttpServerTransport$Config;->maxInboundMessageSize:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    move-object/from16 v24, v1

    .end local v1    # "te":Lokio/ByteString;
    .local v24, "te":Lokio/ByteString;
    :try_start_3
    iget-object v1, v7, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    .line 761
    invoke-static {v1}, Lio/grpc/okhttp/OkHttpServerTransport;->access$300(Lio/grpc/okhttp/OkHttpServerTransport;)Ljava/lang/Object;

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    move-object/from16 v16, v9

    .end local v9    # "contentTypeString":Ljava/lang/String;
    .local v16, "contentTypeString":Ljava/lang/String;
    :try_start_4
    iget-object v9, v7, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    .line 762
    invoke-static {v9}, Lio/grpc/okhttp/OkHttpServerTransport;->access$3000(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    move-result-object v17

    iget-object v9, v7, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    .line 763
    invoke-static {v9}, Lio/grpc/okhttp/OkHttpServerTransport;->access$3100(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/okhttp/OutboundFlowController;

    move-result-object v18

    iget-object v9, v7, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    .line 764
    invoke-static {v9}, Lio/grpc/okhttp/OkHttpServerTransport;->access$1100(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/okhttp/OkHttpServerTransport$Config;

    move-result-object v9

    iget v9, v9, Lio/grpc/okhttp/OkHttpServerTransport$Config;->flowControlWindow:I

    move/from16 v19, v9

    iget-object v9, v7, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    .line 765
    invoke-static {v9}, Lio/grpc/okhttp/OkHttpServerTransport;->access$3200(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/internal/TransportTracer;

    move-result-object v25
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-object/from16 v26, v16

    .end local v16    # "contentTypeString":Ljava/lang/String;
    .local v26, "contentTypeString":Ljava/lang/String;
    move-object v9, v0

    move-object/from16 v27, v10

    .end local v10    # "method":Ljava/lang/String;
    .local v27, "method":Ljava/lang/String;
    move-object v10, v6

    move-object/from16 v28, v11

    .end local v11    # "path":Lokio/ByteString;
    .local v28, "path":Lokio/ByteString;
    move/from16 v11, p3

    move-object/from16 v29, v12

    .end local v12    # "httpMethod":Lokio/ByteString;
    .local v29, "httpMethod":Lokio/ByteString;
    move v12, v2

    move/from16 v30, v13

    .end local v13    # "metadataSize":I
    .local v30, "metadataSize":I
    move-object v13, v4

    move-object v14, v1

    move-object/from16 v15, v17

    move-object/from16 v16, v18

    move/from16 v17, v19

    move-object/from16 v18, v25

    move-object/from16 v19, v27

    :try_start_5
    invoke-direct/range {v9 .. v19}, Lio/grpc/okhttp/OkHttpServerStream$TransportState;-><init>(Lio/grpc/okhttp/OkHttpServerTransport;IILio/grpc/internal/StatsTraceContext;Ljava/lang/Object;Lio/grpc/okhttp/ExceptionHandlingFrameWriter;Lio/grpc/okhttp/OutboundFlowController;ILio/grpc/internal/TransportTracer;Ljava/lang/String;)V

    .line 767
    .local v0, "stream":Lio/grpc/okhttp/OkHttpServerStream$TransportState;
    new-instance v1, Lio/grpc/okhttp/OkHttpServerStream;

    iget-object v2, v7, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    .line 769
    invoke-static {v2}, Lio/grpc/okhttp/OkHttpServerTransport;->access$3300(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/Attributes;

    move-result-object v16

    .line 770
    if-nez v22, :cond_1b

    const/4 v2, 0x0

    goto :goto_6

    :cond_1b
    invoke-static/range {v22 .. v22}, Lio/grpc/okhttp/OkHttpServerTransport;->access$2300(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v2

    :goto_6
    move-object/from16 v17, v2

    iget-object v2, v7, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    .line 772
    invoke-static {v2}, Lio/grpc/okhttp/OkHttpServerTransport;->access$3200(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/internal/TransportTracer;

    move-result-object v19

    move-object v14, v1

    move-object v15, v0

    move-object/from16 v18, v4

    invoke-direct/range {v14 .. v19}, Lio/grpc/okhttp/OkHttpServerStream;-><init>(Lio/grpc/okhttp/OkHttpServerStream$TransportState;Lio/grpc/Attributes;Ljava/lang/String;Lio/grpc/internal/StatsTraceContext;Lio/grpc/internal/TransportTracer;)V

    .line 773
    .local v1, "streamForApp":Lio/grpc/okhttp/OkHttpServerStream;
    iget-object v2, v7, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v2}, Lio/grpc/okhttp/OkHttpServerTransport;->access$2000(Lio/grpc/okhttp/OkHttpServerTransport;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v2, :cond_1c

    .line 774
    :try_start_6
    iget-object v2, v7, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v2}, Lio/grpc/okhttp/OkHttpServerTransport;->access$000(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/internal/KeepAliveEnforcer;

    move-result-object v2

    invoke-virtual {v2}, Lio/grpc/internal/KeepAliveEnforcer;->onTransportActive()V

    .line 775
    iget-object v2, v7, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v2}, Lio/grpc/okhttp/OkHttpServerTransport;->access$3400(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/internal/MaxConnectionIdleManager;

    move-result-object v2

    if-eqz v2, :cond_1c

    .line 776
    iget-object v2, v7, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v2}, Lio/grpc/okhttp/OkHttpServerTransport;->access$3400(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/internal/MaxConnectionIdleManager;

    move-result-object v2

    invoke-virtual {v2}, Lio/grpc/internal/MaxConnectionIdleManager;->onTransportActive()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_7

    .line 785
    .end local v0    # "stream":Lio/grpc/okhttp/OkHttpServerStream$TransportState;
    .end local v1    # "streamForApp":Lio/grpc/okhttp/OkHttpServerStream;
    :catchall_1
    move-exception v0

    move-object/from16 v6, v27

    goto :goto_8

    .line 779
    .restart local v0    # "stream":Lio/grpc/okhttp/OkHttpServerStream$TransportState;
    .restart local v1    # "streamForApp":Lio/grpc/okhttp/OkHttpServerStream;
    :cond_1c
    :goto_7
    :try_start_7
    iget-object v2, v7, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v2}, Lio/grpc/okhttp/OkHttpServerTransport;->access$2000(Lio/grpc/okhttp/OkHttpServerTransport;)Ljava/util/Map;

    move-result-object v2

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 780
    iget-object v2, v7, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v2}, Lio/grpc/okhttp/OkHttpServerTransport;->access$3500(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/internal/ServerTransportListener;

    move-result-object v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-object/from16 v6, v27

    .end local v27    # "method":Ljava/lang/String;
    .local v6, "method":Ljava/lang/String;
    :try_start_8
    invoke-interface {v2, v1, v6, v3}, Lio/grpc/internal/ServerTransportListener;->streamCreated(Lio/grpc/internal/ServerStream;Ljava/lang/String;Lio/grpc/Metadata;)V

    .line 781
    invoke-virtual {v0}, Lio/grpc/okhttp/OkHttpServerStream$TransportState;->onStreamAllocated()V

    .line 782
    if-eqz v8, :cond_1d

    .line 783
    new-instance v2, Lokio/Buffer;

    invoke-direct {v2}, Lokio/Buffer;-><init>()V

    const/4 v9, 0x0

    invoke-virtual {v0, v2, v9, v8}, Lio/grpc/okhttp/OkHttpServerStream$TransportState;->inboundDataReceived(Lokio/Buffer;IZ)V

    .line 785
    .end local v0    # "stream":Lio/grpc/okhttp/OkHttpServerStream$TransportState;
    .end local v1    # "streamForApp":Lio/grpc/okhttp/OkHttpServerStream;
    :cond_1d
    monitor-exit v5

    .line 786
    return-void

    .line 785
    .end local v6    # "method":Ljava/lang/String;
    .restart local v27    # "method":Ljava/lang/String;
    :catchall_2
    move-exception v0

    move-object/from16 v6, v27

    .end local v27    # "method":Ljava/lang/String;
    .restart local v6    # "method":Ljava/lang/String;
    goto :goto_8

    .end local v6    # "method":Ljava/lang/String;
    .end local v26    # "contentTypeString":Ljava/lang/String;
    .end local v28    # "path":Lokio/ByteString;
    .end local v29    # "httpMethod":Lokio/ByteString;
    .end local v30    # "metadataSize":I
    .restart local v10    # "method":Ljava/lang/String;
    .restart local v11    # "path":Lokio/ByteString;
    .restart local v12    # "httpMethod":Lokio/ByteString;
    .restart local v13    # "metadataSize":I
    .restart local v16    # "contentTypeString":Ljava/lang/String;
    :catchall_3
    move-exception v0

    move-object v6, v10

    move-object/from16 v28, v11

    move-object/from16 v29, v12

    move/from16 v30, v13

    move-object/from16 v26, v16

    .end local v10    # "method":Ljava/lang/String;
    .end local v11    # "path":Lokio/ByteString;
    .end local v12    # "httpMethod":Lokio/ByteString;
    .end local v13    # "metadataSize":I
    .end local v16    # "contentTypeString":Ljava/lang/String;
    .restart local v6    # "method":Ljava/lang/String;
    .restart local v26    # "contentTypeString":Ljava/lang/String;
    .restart local v28    # "path":Lokio/ByteString;
    .restart local v29    # "httpMethod":Lokio/ByteString;
    .restart local v30    # "metadataSize":I
    goto :goto_8

    .end local v6    # "method":Ljava/lang/String;
    .end local v26    # "contentTypeString":Ljava/lang/String;
    .end local v28    # "path":Lokio/ByteString;
    .end local v29    # "httpMethod":Lokio/ByteString;
    .end local v30    # "metadataSize":I
    .restart local v9    # "contentTypeString":Ljava/lang/String;
    .restart local v10    # "method":Ljava/lang/String;
    .restart local v11    # "path":Lokio/ByteString;
    .restart local v12    # "httpMethod":Lokio/ByteString;
    .restart local v13    # "metadataSize":I
    :catchall_4
    move-exception v0

    move-object/from16 v26, v9

    move-object v6, v10

    move-object/from16 v28, v11

    move-object/from16 v29, v12

    move/from16 v30, v13

    .end local v9    # "contentTypeString":Ljava/lang/String;
    .end local v10    # "method":Ljava/lang/String;
    .end local v11    # "path":Lokio/ByteString;
    .end local v12    # "httpMethod":Lokio/ByteString;
    .end local v13    # "metadataSize":I
    .restart local v6    # "method":Ljava/lang/String;
    .restart local v26    # "contentTypeString":Ljava/lang/String;
    .restart local v28    # "path":Lokio/ByteString;
    .restart local v29    # "httpMethod":Lokio/ByteString;
    .restart local v30    # "metadataSize":I
    goto :goto_8

    .end local v6    # "method":Ljava/lang/String;
    .end local v24    # "te":Lokio/ByteString;
    .end local v26    # "contentTypeString":Ljava/lang/String;
    .end local v28    # "path":Lokio/ByteString;
    .end local v29    # "httpMethod":Lokio/ByteString;
    .end local v30    # "metadataSize":I
    .local v1, "te":Lokio/ByteString;
    .restart local v9    # "contentTypeString":Ljava/lang/String;
    .restart local v10    # "method":Ljava/lang/String;
    .restart local v11    # "path":Lokio/ByteString;
    .restart local v12    # "httpMethod":Lokio/ByteString;
    .restart local v13    # "metadataSize":I
    :catchall_5
    move-exception v0

    move-object/from16 v24, v1

    move-object/from16 v26, v9

    move-object v6, v10

    move-object/from16 v28, v11

    move-object/from16 v29, v12

    move/from16 v30, v13

    .end local v1    # "te":Lokio/ByteString;
    .end local v9    # "contentTypeString":Ljava/lang/String;
    .end local v10    # "method":Ljava/lang/String;
    .end local v11    # "path":Lokio/ByteString;
    .end local v12    # "httpMethod":Lokio/ByteString;
    .end local v13    # "metadataSize":I
    .restart local v6    # "method":Ljava/lang/String;
    .restart local v24    # "te":Lokio/ByteString;
    .restart local v26    # "contentTypeString":Ljava/lang/String;
    .restart local v28    # "path":Lokio/ByteString;
    .restart local v29    # "httpMethod":Lokio/ByteString;
    .restart local v30    # "metadataSize":I
    :goto_8
    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    throw v0

    :catchall_6
    move-exception v0

    goto :goto_8

    .line 716
    .end local v3    # "metadata":Lio/grpc/Metadata;
    .end local v4    # "statsTraceCtx":Lio/grpc/internal/StatsTraceContext;
    .end local v6    # "method":Ljava/lang/String;
    .end local v23    # "contentType":Lokio/ByteString;
    .end local v24    # "te":Lokio/ByteString;
    .end local v26    # "contentTypeString":Ljava/lang/String;
    .end local v28    # "path":Lokio/ByteString;
    .end local v29    # "httpMethod":Lokio/ByteString;
    .end local v30    # "metadataSize":I
    .restart local v11    # "path":Lokio/ByteString;
    .restart local v12    # "httpMethod":Lokio/ByteString;
    .restart local v13    # "metadataSize":I
    :cond_1e
    move-object/from16 v28, v11

    move-object/from16 v29, v12

    move/from16 v30, v13

    .line 717
    .end local v11    # "path":Lokio/ByteString;
    .end local v12    # "httpMethod":Lokio/ByteString;
    .end local v13    # "metadataSize":I
    .restart local v28    # "path":Lokio/ByteString;
    .restart local v29    # "httpMethod":Lokio/ByteString;
    .restart local v30    # "metadataSize":I
    :goto_9
    const/16 v4, 0x194

    sget-object v5, Lio/grpc/Status$Code;->UNIMPLEMENTED:Lio/grpc/Status$Code;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected path to start with /: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 718
    invoke-static/range {v28 .. v28}, Lio/grpc/okhttp/OkHttpServerTransport;->access$2300(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 717
    move-object/from16 v1, p0

    move/from16 v2, p3

    move/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->respondWithHttpError(IZILio/grpc/Status$Code;Ljava/lang/String;)V

    .line 719
    return-void

    .line 623
    .end local v20    # "newStream":Z
    .end local v21    # "scheme":Lokio/ByteString;
    .end local v22    # "authority":Lokio/ByteString;
    .end local v28    # "path":Lokio/ByteString;
    .end local v29    # "httpMethod":Lokio/ByteString;
    .end local v30    # "metadataSize":I
    :catchall_7
    move-exception v0

    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    throw v0
.end method

.method synthetic lambda$respondWithHttpError$0$io-grpc-okhttp-OkHttpServerTransport$FrameHandler(Lio/grpc/okhttp/OkHttpServerTransport$Http2ErrorStreamState;)V
    .locals 0
    .param p1, "stream"    # Lio/grpc/okhttp/OkHttpServerTransport$Http2ErrorStreamState;

    .line 1054
    invoke-direct {p0, p1}, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->rstOkAtEndOfHttpError(Lio/grpc/okhttp/OkHttpServerTransport$Http2ErrorStreamState;)V

    return-void
.end method

.method public ping(ZII)V
    .locals 6
    .param p1, "ack"    # Z
    .param p2, "payload1"    # I
    .param p3, "payload2"    # I

    .line 911
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v0}, Lio/grpc/okhttp/OkHttpServerTransport;->access$000(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/internal/KeepAliveEnforcer;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/internal/KeepAliveEnforcer;->pingAcceptable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 912
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    sget-object v1, Lio/grpc/okhttp/internal/framed/ErrorCode;->ENHANCE_YOUR_CALM:Lio/grpc/okhttp/internal/framed/ErrorCode;

    const-string v2, "too_many_pings"

    sget-object v3, Lio/grpc/Status;->RESOURCE_EXHAUSTED:Lio/grpc/Status;

    const-string v4, "Too many pings from client"

    .line 913
    invoke-virtual {v3, v4}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v3

    .line 912
    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lio/grpc/okhttp/OkHttpServerTransport;->access$500(Lio/grpc/okhttp/OkHttpServerTransport;Lio/grpc/okhttp/internal/framed/ErrorCode;Ljava/lang/String;Lio/grpc/Status;Z)V

    .line 914
    return-void

    .line 916
    :cond_0
    int-to-long v0, p2

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    int-to-long v2, p3

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 917
    .local v0, "payload":J
    if-nez p1, :cond_1

    .line 918
    iget-object v2, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->frameLogger:Lio/grpc/okhttp/OkHttpFrameLogger;

    sget-object v3, Lio/grpc/okhttp/OkHttpFrameLogger$Direction;->INBOUND:Lio/grpc/okhttp/OkHttpFrameLogger$Direction;

    invoke-virtual {v2, v3, v0, v1}, Lio/grpc/okhttp/OkHttpFrameLogger;->logPing(Lio/grpc/okhttp/OkHttpFrameLogger$Direction;J)V

    .line 919
    iget-object v2, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v2}, Lio/grpc/okhttp/OkHttpServerTransport;->access$300(Lio/grpc/okhttp/OkHttpServerTransport;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 920
    :try_start_0
    iget-object v3, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v3}, Lio/grpc/okhttp/OkHttpServerTransport;->access$3000(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4, p2, p3}, Lio/grpc/okhttp/ExceptionHandlingFrameWriter;->ping(ZII)V

    .line 921
    iget-object v3, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v3}, Lio/grpc/okhttp/OkHttpServerTransport;->access$3000(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    move-result-object v3

    invoke-virtual {v3}, Lio/grpc/okhttp/ExceptionHandlingFrameWriter;->flush()V

    .line 922
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 924
    :cond_1
    iget-object v2, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->frameLogger:Lio/grpc/okhttp/OkHttpFrameLogger;

    sget-object v3, Lio/grpc/okhttp/OkHttpFrameLogger$Direction;->INBOUND:Lio/grpc/okhttp/OkHttpFrameLogger$Direction;

    invoke-virtual {v2, v3, v0, v1}, Lio/grpc/okhttp/OkHttpFrameLogger;->logPingAck(Lio/grpc/okhttp/OkHttpFrameLogger$Direction;J)V

    .line 925
    const-wide/32 v2, 0xdead

    cmp-long v2, v2, v0

    if-nez v2, :cond_2

    .line 926
    return-void

    .line 928
    :cond_2
    const-wide/16 v2, 0x1111

    cmp-long v2, v2, v0

    if-nez v2, :cond_3

    .line 929
    iget-object v2, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v2}, Lio/grpc/okhttp/OkHttpServerTransport;->access$3600(Lio/grpc/okhttp/OkHttpServerTransport;)V

    .line 930
    return-void

    .line 932
    :cond_3
    invoke-static {}, Lio/grpc/okhttp/OkHttpServerTransport;->access$600()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received unexpected ping ack: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 934
    :goto_0
    return-void
.end method

.method public priority(IIIZ)V
    .locals 6
    .param p1, "streamId"    # I
    .param p2, "streamDependency"    # I
    .param p3, "weight"    # I
    .param p4, "exclusive"    # Z

    .line 987
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->frameLogger:Lio/grpc/okhttp/OkHttpFrameLogger;

    sget-object v1, Lio/grpc/okhttp/OkHttpFrameLogger$Direction;->INBOUND:Lio/grpc/okhttp/OkHttpFrameLogger$Direction;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lio/grpc/okhttp/OkHttpFrameLogger;->logPriority(Lio/grpc/okhttp/OkHttpFrameLogger$Direction;IIIZ)V

    .line 991
    return-void
.end method

.method public pushPromise(IILjava/util/List;)V
    .locals 2
    .param p1, "streamId"    # I
    .param p2, "promisedStreamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lio/grpc/okhttp/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 958
    .local p3, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lio/grpc/okhttp/internal/framed/Header;>;"
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->frameLogger:Lio/grpc/okhttp/OkHttpFrameLogger;

    sget-object v1, Lio/grpc/okhttp/OkHttpFrameLogger$Direction;->INBOUND:Lio/grpc/okhttp/OkHttpFrameLogger$Direction;

    invoke-virtual {v0, v1, p1, p2, p3}, Lio/grpc/okhttp/OkHttpFrameLogger;->logPushPromise(Lio/grpc/okhttp/OkHttpFrameLogger$Direction;IILjava/util/List;)V

    .line 963
    sget-object v0, Lio/grpc/okhttp/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    const-string v1, "PUSH_PROMISE only allowed on peer-initiated streams. RFC7540 section 6.6"

    invoke-direct {p0, v0, v1}, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->connectionError(Lio/grpc/okhttp/internal/framed/ErrorCode;Ljava/lang/String;)V

    .line 965
    return-void
.end method

.method public rstStream(ILio/grpc/okhttp/internal/framed/ErrorCode;)V
    .locals 5
    .param p1, "streamId"    # I
    .param p2, "errorCode"    # Lio/grpc/okhttp/internal/framed/ErrorCode;

    .line 862
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->frameLogger:Lio/grpc/okhttp/OkHttpFrameLogger;

    sget-object v1, Lio/grpc/okhttp/OkHttpFrameLogger$Direction;->INBOUND:Lio/grpc/okhttp/OkHttpFrameLogger$Direction;

    invoke-virtual {v0, v1, p1, p2}, Lio/grpc/okhttp/OkHttpFrameLogger;->logRstStream(Lio/grpc/okhttp/OkHttpFrameLogger$Direction;ILio/grpc/okhttp/internal/framed/ErrorCode;)V

    .line 865
    sget-object v0, Lio/grpc/okhttp/internal/framed/ErrorCode;->NO_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    invoke-virtual {v0, p2}, Lio/grpc/okhttp/internal/framed/ErrorCode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lio/grpc/okhttp/internal/framed/ErrorCode;->CANCEL:Lio/grpc/okhttp/internal/framed/ErrorCode;

    .line 866
    invoke-virtual {v0, p2}, Lio/grpc/okhttp/internal/framed/ErrorCode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lio/grpc/okhttp/internal/framed/ErrorCode;->STREAM_CLOSED:Lio/grpc/okhttp/internal/framed/ErrorCode;

    .line 867
    invoke-virtual {v0, p2}, Lio/grpc/okhttp/internal/framed/ErrorCode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 868
    invoke-static {}, Lio/grpc/okhttp/OkHttpServerTransport;->access$600()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received RST_STREAM: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 870
    :cond_0
    iget v0, p2, Lio/grpc/okhttp/internal/framed/ErrorCode;->httpCode:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Lio/grpc/internal/GrpcUtil$Http2Error;->statusForCode(J)Lio/grpc/Status;

    move-result-object v0

    const-string v1, "RST_STREAM"

    .line 871
    invoke-virtual {v0, v1}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    .line 872
    .local v0, "status":Lio/grpc/Status;
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v1}, Lio/grpc/okhttp/OkHttpServerTransport;->access$300(Lio/grpc/okhttp/OkHttpServerTransport;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 873
    :try_start_0
    iget-object v2, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v2}, Lio/grpc/okhttp/OkHttpServerTransport;->access$2000(Lio/grpc/okhttp/OkHttpServerTransport;)Ljava/util/Map;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/grpc/okhttp/OkHttpServerTransport$StreamState;

    .line 874
    .local v2, "stream":Lio/grpc/okhttp/OkHttpServerTransport$StreamState;
    if-eqz v2, :cond_1

    .line 875
    invoke-interface {v2, v0}, Lio/grpc/okhttp/OkHttpServerTransport$StreamState;->inboundRstReceived(Lio/grpc/Status;)V

    .line 876
    iget-object v3, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Lio/grpc/okhttp/OkHttpServerTransport;->streamClosed(IZ)V

    .line 878
    .end local v2    # "stream":Lio/grpc/okhttp/OkHttpServerTransport$StreamState;
    :cond_1
    monitor-exit v1

    .line 879
    return-void

    .line 878
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public run()V
    .locals 8

    .line 547
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    .line 548
    .local v0, "threadName":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const-string v2, "OkHttpServerTransport"

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 550
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->frameReader:Lio/grpc/okhttp/internal/framed/FrameReader;

    invoke-interface {v2}, Lio/grpc/okhttp/internal/framed/FrameReader;->readConnectionPreface()V

    .line 551
    iget-object v2, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->frameReader:Lio/grpc/okhttp/internal/framed/FrameReader;

    invoke-interface {v2, p0}, Lio/grpc/okhttp/internal/framed/FrameReader;->nextFrame(Lio/grpc/okhttp/internal/framed/FrameReader$Handler;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 552
    sget-object v2, Lio/grpc/okhttp/internal/framed/ErrorCode;->INTERNAL_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    const-string v3, "Failed to read initial SETTINGS"

    invoke-direct {p0, v2, v3}, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->connectionError(Lio/grpc/okhttp/internal/framed/ErrorCode;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 584
    :try_start_1
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v1}, Lio/grpc/okhttp/OkHttpServerTransport;->access$700(Lio/grpc/okhttp/OkHttpServerTransport;)Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lio/grpc/internal/GrpcUtil;->exhaust(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 588
    goto :goto_0

    .line 585
    :catch_0
    move-exception v1

    .line 589
    :goto_0
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v1}, Lio/grpc/okhttp/OkHttpServerTransport;->access$700(Lio/grpc/okhttp/OkHttpServerTransport;)Ljava/net/Socket;

    move-result-object v1

    invoke-static {v1}, Lio/grpc/internal/GrpcUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 590
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v1}, Lio/grpc/okhttp/OkHttpServerTransport;->access$800(Lio/grpc/okhttp/OkHttpServerTransport;)V

    .line 591
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 553
    return-void

    .line 555
    :cond_0
    :try_start_2
    iget-boolean v2, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->receivedSettings:Z

    if-nez v2, :cond_1

    .line 556
    sget-object v2, Lio/grpc/okhttp/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    const-string v3, "First HTTP/2 frame must be SETTINGS. RFC7540 section 3.5"

    invoke-direct {p0, v2, v3}, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->connectionError(Lio/grpc/okhttp/internal/framed/ErrorCode;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 584
    :try_start_3
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v1}, Lio/grpc/okhttp/OkHttpServerTransport;->access$700(Lio/grpc/okhttp/OkHttpServerTransport;)Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lio/grpc/internal/GrpcUtil;->exhaust(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 588
    goto :goto_1

    .line 585
    :catch_1
    move-exception v1

    .line 589
    :goto_1
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v1}, Lio/grpc/okhttp/OkHttpServerTransport;->access$700(Lio/grpc/okhttp/OkHttpServerTransport;)Ljava/net/Socket;

    move-result-object v1

    invoke-static {v1}, Lio/grpc/internal/GrpcUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 590
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v1}, Lio/grpc/okhttp/OkHttpServerTransport;->access$800(Lio/grpc/okhttp/OkHttpServerTransport;)V

    .line 591
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 558
    return-void

    .line 561
    :cond_1
    :goto_2
    :try_start_4
    iget-object v2, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->frameReader:Lio/grpc/okhttp/internal/framed/FrameReader;

    invoke-interface {v2, p0}, Lio/grpc/okhttp/internal/framed/FrameReader;->nextFrame(Lio/grpc/okhttp/internal/framed/FrameReader$Handler;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 562
    iget-object v2, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v2}, Lio/grpc/okhttp/OkHttpServerTransport;->access$200(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/internal/KeepAliveManager;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 563
    iget-object v2, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v2}, Lio/grpc/okhttp/OkHttpServerTransport;->access$200(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/internal/KeepAliveManager;

    move-result-object v2

    invoke-virtual {v2}, Lio/grpc/internal/KeepAliveManager;->onDataReceived()V

    goto :goto_2

    .line 570
    :cond_2
    iget-object v2, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v2}, Lio/grpc/okhttp/OkHttpServerTransport;->access$300(Lio/grpc/okhttp/OkHttpServerTransport;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 571
    :try_start_5
    iget-object v3, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v3}, Lio/grpc/okhttp/OkHttpServerTransport;->access$400(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/Status;

    move-result-object v3

    .line 572
    .local v3, "status":Lio/grpc/Status;
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 573
    if-nez v3, :cond_3

    .line 574
    :try_start_6
    sget-object v2, Lio/grpc/Status;->UNAVAILABLE:Lio/grpc/Status;

    const-string v4, "TCP connection closed or IOException"

    invoke-virtual {v2, v4}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v2

    move-object v3, v2

    .line 576
    :cond_3
    iget-object v2, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    sget-object v4, Lio/grpc/okhttp/internal/framed/ErrorCode;->INTERNAL_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    const-string v5, "I/O failure"

    invoke-static {v2, v4, v5, v3, v1}, Lio/grpc/okhttp/OkHttpServerTransport;->access$500(Lio/grpc/okhttp/OkHttpServerTransport;Lio/grpc/okhttp/internal/framed/ErrorCode;Ljava/lang/String;Lio/grpc/Status;Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 584
    .end local v3    # "status":Lio/grpc/Status;
    :try_start_7
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v1}, Lio/grpc/okhttp/OkHttpServerTransport;->access$700(Lio/grpc/okhttp/OkHttpServerTransport;)Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lio/grpc/internal/GrpcUtil;->exhaust(Ljava/io/InputStream;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_3

    .line 585
    :catch_2
    move-exception v1

    goto :goto_4

    .line 572
    :catchall_0
    move-exception v3

    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .end local v0    # "threadName":Ljava/lang/String;
    :try_start_9
    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 577
    .restart local v0    # "threadName":Ljava/lang/String;
    :catchall_1
    move-exception v2

    .line 578
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_a
    invoke-static {}, Lio/grpc/okhttp/OkHttpServerTransport;->access$600()Ljava/util/logging/Logger;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v5, "Error decoding HTTP/2 frames"

    invoke-virtual {v3, v4, v5, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 579
    iget-object v3, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    sget-object v4, Lio/grpc/okhttp/internal/framed/ErrorCode;->INTERNAL_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    const-string v5, "Error in frame decoder"

    sget-object v6, Lio/grpc/Status;->INTERNAL:Lio/grpc/Status;

    const-string v7, "Error decoding HTTP/2 frames"

    .line 580
    invoke-virtual {v6, v7}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v6

    invoke-virtual {v6, v2}, Lio/grpc/Status;->withCause(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object v6

    .line 579
    invoke-static {v3, v4, v5, v6, v1}, Lio/grpc/okhttp/OkHttpServerTransport;->access$500(Lio/grpc/okhttp/OkHttpServerTransport;Lio/grpc/okhttp/internal/framed/ErrorCode;Ljava/lang/String;Lio/grpc/Status;Z)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 584
    .end local v2    # "t":Ljava/lang/Throwable;
    :try_start_b
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v1}, Lio/grpc/okhttp/OkHttpServerTransport;->access$700(Lio/grpc/okhttp/OkHttpServerTransport;)Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lio/grpc/internal/GrpcUtil;->exhaust(Ljava/io/InputStream;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    .line 588
    :goto_3
    goto :goto_4

    .line 585
    :catch_3
    move-exception v1

    .line 589
    :goto_4
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v1}, Lio/grpc/okhttp/OkHttpServerTransport;->access$700(Lio/grpc/okhttp/OkHttpServerTransport;)Ljava/net/Socket;

    move-result-object v1

    invoke-static {v1}, Lio/grpc/internal/GrpcUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 590
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v1}, Lio/grpc/okhttp/OkHttpServerTransport;->access$800(Lio/grpc/okhttp/OkHttpServerTransport;)V

    .line 591
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 592
    nop

    .line 593
    return-void

    .line 583
    :catchall_2
    move-exception v1

    .line 584
    :try_start_c
    iget-object v2, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v2}, Lio/grpc/okhttp/OkHttpServerTransport;->access$700(Lio/grpc/okhttp/OkHttpServerTransport;)Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Lio/grpc/internal/GrpcUtil;->exhaust(Ljava/io/InputStream;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4

    .line 588
    goto :goto_5

    .line 585
    :catch_4
    move-exception v2

    .line 589
    :goto_5
    iget-object v2, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v2}, Lio/grpc/okhttp/OkHttpServerTransport;->access$700(Lio/grpc/okhttp/OkHttpServerTransport;)Ljava/net/Socket;

    move-result-object v2

    invoke-static {v2}, Lio/grpc/internal/GrpcUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 590
    iget-object v2, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v2}, Lio/grpc/okhttp/OkHttpServerTransport;->access$800(Lio/grpc/okhttp/OkHttpServerTransport;)V

    .line 591
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    throw v1
.end method

.method public settings(ZLio/grpc/okhttp/internal/framed/Settings;)V
    .locals 5
    .param p1, "clearPrevious"    # Z
    .param p2, "settings"    # Lio/grpc/okhttp/internal/framed/Settings;

    .line 883
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->frameLogger:Lio/grpc/okhttp/OkHttpFrameLogger;

    sget-object v1, Lio/grpc/okhttp/OkHttpFrameLogger$Direction;->INBOUND:Lio/grpc/okhttp/OkHttpFrameLogger$Direction;

    invoke-virtual {v0, v1, p2}, Lio/grpc/okhttp/OkHttpFrameLogger;->logSettings(Lio/grpc/okhttp/OkHttpFrameLogger$Direction;Lio/grpc/okhttp/internal/framed/Settings;)V

    .line 884
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v0}, Lio/grpc/okhttp/OkHttpServerTransport;->access$300(Lio/grpc/okhttp/OkHttpServerTransport;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 885
    const/4 v1, 0x0

    .line 886
    .local v1, "outboundWindowSizeIncreased":Z
    const/4 v2, 0x7

    :try_start_0
    invoke-static {p2, v2}, Lio/grpc/okhttp/OkHttpSettingsUtil;->isSet(Lio/grpc/okhttp/internal/framed/Settings;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 887
    invoke-static {p2, v2}, Lio/grpc/okhttp/OkHttpSettingsUtil;->get(Lio/grpc/okhttp/internal/framed/Settings;I)I

    move-result v2

    .line 889
    .local v2, "initialWindowSize":I
    iget-object v3, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v3}, Lio/grpc/okhttp/OkHttpServerTransport;->access$3100(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/okhttp/OutboundFlowController;

    move-result-object v3

    invoke-virtual {v3, v2}, Lio/grpc/okhttp/OutboundFlowController;->initialOutboundWindowSize(I)Z

    move-result v3

    move v1, v3

    .line 895
    .end local v2    # "initialWindowSize":I
    :cond_0
    iget-object v2, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v2}, Lio/grpc/okhttp/OkHttpServerTransport;->access$3000(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    move-result-object v2

    invoke-virtual {v2, p2}, Lio/grpc/okhttp/ExceptionHandlingFrameWriter;->ackSettings(Lio/grpc/okhttp/internal/framed/Settings;)V

    .line 896
    iget-object v2, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v2}, Lio/grpc/okhttp/OkHttpServerTransport;->access$3000(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    move-result-object v2

    invoke-virtual {v2}, Lio/grpc/okhttp/ExceptionHandlingFrameWriter;->flush()V

    .line 897
    iget-boolean v2, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->receivedSettings:Z

    if-nez v2, :cond_1

    .line 898
    const/4 v2, 0x1

    iput-boolean v2, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->receivedSettings:Z

    .line 899
    iget-object v2, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v2}, Lio/grpc/okhttp/OkHttpServerTransport;->access$3500(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/internal/ServerTransportListener;

    move-result-object v3

    iget-object v4, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v4}, Lio/grpc/okhttp/OkHttpServerTransport;->access$3300(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/Attributes;

    move-result-object v4

    invoke-interface {v3, v4}, Lio/grpc/internal/ServerTransportListener;->transportReady(Lio/grpc/Attributes;)Lio/grpc/Attributes;

    move-result-object v3

    invoke-static {v2, v3}, Lio/grpc/okhttp/OkHttpServerTransport;->access$3302(Lio/grpc/okhttp/OkHttpServerTransport;Lio/grpc/Attributes;)Lio/grpc/Attributes;

    .line 903
    :cond_1
    if-eqz v1, :cond_2

    .line 904
    iget-object v2, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v2}, Lio/grpc/okhttp/OkHttpServerTransport;->access$3100(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/okhttp/OutboundFlowController;

    move-result-object v2

    invoke-virtual {v2}, Lio/grpc/okhttp/OutboundFlowController;->writeStreams()V

    .line 906
    .end local v1    # "outboundWindowSizeIncreased":Z
    :cond_2
    monitor-exit v0

    .line 907
    return-void

    .line 906
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public windowUpdate(IJ)V
    .locals 5
    .param p1, "streamId"    # I
    .param p2, "delta"    # J

    .line 969
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->frameLogger:Lio/grpc/okhttp/OkHttpFrameLogger;

    sget-object v1, Lio/grpc/okhttp/OkHttpFrameLogger$Direction;->INBOUND:Lio/grpc/okhttp/OkHttpFrameLogger$Direction;

    invoke-virtual {v0, v1, p1, p2, p3}, Lio/grpc/okhttp/OkHttpFrameLogger;->logWindowsUpdate(Lio/grpc/okhttp/OkHttpFrameLogger$Direction;IJ)V

    .line 973
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v0}, Lio/grpc/okhttp/OkHttpServerTransport;->access$300(Lio/grpc/okhttp/OkHttpServerTransport;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 974
    if-nez p1, :cond_0

    .line 975
    :try_start_0
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v1}, Lio/grpc/okhttp/OkHttpServerTransport;->access$3100(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/okhttp/OutboundFlowController;

    move-result-object v1

    const/4 v2, 0x0

    long-to-int v3, p2

    invoke-virtual {v1, v2, v3}, Lio/grpc/okhttp/OutboundFlowController;->windowUpdate(Lio/grpc/okhttp/OutboundFlowController$StreamState;I)I

    goto :goto_0

    .line 977
    :cond_0
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v1}, Lio/grpc/okhttp/OkHttpServerTransport;->access$2000(Lio/grpc/okhttp/OkHttpServerTransport;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/okhttp/OkHttpServerTransport$StreamState;

    .line 978
    .local v1, "stream":Lio/grpc/okhttp/OkHttpServerTransport$StreamState;
    if-eqz v1, :cond_1

    .line 979
    iget-object v2, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v2}, Lio/grpc/okhttp/OkHttpServerTransport;->access$3100(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/okhttp/OutboundFlowController;

    move-result-object v2

    invoke-interface {v1}, Lio/grpc/okhttp/OkHttpServerTransport$StreamState;->getOutboundFlowState()Lio/grpc/okhttp/OutboundFlowController$StreamState;

    move-result-object v3

    long-to-int v4, p2

    invoke-virtual {v2, v3, v4}, Lio/grpc/okhttp/OutboundFlowController;->windowUpdate(Lio/grpc/okhttp/OutboundFlowController$StreamState;I)I

    .line 982
    .end local v1    # "stream":Lio/grpc/okhttp/OkHttpServerTransport$StreamState;
    :cond_1
    :goto_0
    monitor-exit v0

    .line 983
    return-void

    .line 982
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
