.class Lio/grpc/okhttp/OkHttpServerStream$Sink;
.super Ljava/lang/Object;
.source "OkHttpServerStream.java"

# interfaces
.implements Lio/grpc/internal/AbstractServerStream$Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/okhttp/OkHttpServerStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Sink"
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/okhttp/OkHttpServerStream;


# direct methods
.method constructor <init>(Lio/grpc/okhttp/OkHttpServerStream;)V
    .locals 0
    .param p1, "this$0"    # Lio/grpc/okhttp/OkHttpServerStream;

    .line 83
    iput-object p1, p0, Lio/grpc/okhttp/OkHttpServerStream$Sink;->this$0:Lio/grpc/okhttp/OkHttpServerStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel(Lio/grpc/Status;)V
    .locals 3
    .param p1, "reason"    # Lio/grpc/Status;

    .line 131
    const-string v0, "OkHttpServerStream$Sink.cancel"

    invoke-static {v0}, Lio/perfmark/PerfMark;->startTask(Ljava/lang/String;)V

    .line 133
    :try_start_0
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerStream$Sink;->this$0:Lio/grpc/okhttp/OkHttpServerStream;

    invoke-static {v0}, Lio/grpc/okhttp/OkHttpServerStream;->access$100(Lio/grpc/okhttp/OkHttpServerStream;)Lio/grpc/okhttp/OkHttpServerStream$TransportState;

    move-result-object v0

    invoke-static {v0}, Lio/grpc/okhttp/OkHttpServerStream$TransportState;->access$200(Lio/grpc/okhttp/OkHttpServerStream$TransportState;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 134
    :try_start_1
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerStream$Sink;->this$0:Lio/grpc/okhttp/OkHttpServerStream;

    invoke-static {v1}, Lio/grpc/okhttp/OkHttpServerStream;->access$100(Lio/grpc/okhttp/OkHttpServerStream;)Lio/grpc/okhttp/OkHttpServerStream$TransportState;

    move-result-object v1

    sget-object v2, Lio/grpc/okhttp/internal/framed/ErrorCode;->CANCEL:Lio/grpc/okhttp/internal/framed/ErrorCode;

    invoke-static {v1, v2, p1}, Lio/grpc/okhttp/OkHttpServerStream$TransportState;->access$800(Lio/grpc/okhttp/OkHttpServerStream$TransportState;Lio/grpc/okhttp/internal/framed/ErrorCode;Lio/grpc/Status;)V

    .line 135
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 137
    const-string v0, "OkHttpServerStream$Sink.cancel"

    invoke-static {v0}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;)V

    .line 138
    nop

    .line 139
    return-void

    .line 135
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local p1    # "reason":Lio/grpc/Status;
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 137
    .restart local p1    # "reason":Lio/grpc/Status;
    :catchall_1
    move-exception v0

    const-string v1, "OkHttpServerStream$Sink.cancel"

    invoke-static {v1}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;)V

    throw v0
.end method

.method public writeFrame(Lio/grpc/internal/WritableBuffer;ZI)V
    .locals 4
    .param p1, "frame"    # Lio/grpc/internal/WritableBuffer;
    .param p2, "flush"    # Z
    .param p3, "numMessages"    # I

    .line 99
    const-string v0, "OkHttpServerStream$Sink.writeFrame"

    invoke-static {v0}, Lio/perfmark/PerfMark;->startTask(Ljava/lang/String;)V

    .line 100
    move-object v0, p1

    check-cast v0, Lio/grpc/okhttp/OkHttpWritableBuffer;

    invoke-virtual {v0}, Lio/grpc/okhttp/OkHttpWritableBuffer;->buffer()Lokio/Buffer;

    move-result-object v0

    .line 101
    .local v0, "buffer":Lokio/Buffer;
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v1

    long-to-int v1, v1

    .line 102
    .local v1, "size":I
    if-lez v1, :cond_0

    .line 103
    iget-object v2, p0, Lio/grpc/okhttp/OkHttpServerStream$Sink;->this$0:Lio/grpc/okhttp/OkHttpServerStream;

    invoke-static {v2, v1}, Lio/grpc/okhttp/OkHttpServerStream;->access$400(Lio/grpc/okhttp/OkHttpServerStream;I)V

    .line 107
    :cond_0
    :try_start_0
    iget-object v2, p0, Lio/grpc/okhttp/OkHttpServerStream$Sink;->this$0:Lio/grpc/okhttp/OkHttpServerStream;

    invoke-static {v2}, Lio/grpc/okhttp/OkHttpServerStream;->access$100(Lio/grpc/okhttp/OkHttpServerStream;)Lio/grpc/okhttp/OkHttpServerStream$TransportState;

    move-result-object v2

    invoke-static {v2}, Lio/grpc/okhttp/OkHttpServerStream$TransportState;->access$200(Lio/grpc/okhttp/OkHttpServerStream$TransportState;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 108
    :try_start_1
    iget-object v3, p0, Lio/grpc/okhttp/OkHttpServerStream$Sink;->this$0:Lio/grpc/okhttp/OkHttpServerStream;

    invoke-static {v3}, Lio/grpc/okhttp/OkHttpServerStream;->access$100(Lio/grpc/okhttp/OkHttpServerStream;)Lio/grpc/okhttp/OkHttpServerStream$TransportState;

    move-result-object v3

    invoke-static {v3, v0, p2}, Lio/grpc/okhttp/OkHttpServerStream$TransportState;->access$500(Lio/grpc/okhttp/OkHttpServerStream$TransportState;Lokio/Buffer;Z)V

    .line 109
    iget-object v3, p0, Lio/grpc/okhttp/OkHttpServerStream$Sink;->this$0:Lio/grpc/okhttp/OkHttpServerStream;

    invoke-static {v3}, Lio/grpc/okhttp/OkHttpServerStream;->access$600(Lio/grpc/okhttp/OkHttpServerStream;)Lio/grpc/internal/TransportTracer;

    move-result-object v3

    invoke-virtual {v3, p3}, Lio/grpc/internal/TransportTracer;->reportMessageSent(I)V

    .line 110
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    const-string v2, "OkHttpServerStream$Sink.writeFrame"

    invoke-static {v2}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;)V

    .line 113
    nop

    .line 114
    return-void

    .line 110
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "buffer":Lokio/Buffer;
    .end local v1    # "size":I
    .end local p1    # "frame":Lio/grpc/internal/WritableBuffer;
    .end local p2    # "flush":Z
    .end local p3    # "numMessages":I
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 112
    .restart local v0    # "buffer":Lokio/Buffer;
    .restart local v1    # "size":I
    .restart local p1    # "frame":Lio/grpc/internal/WritableBuffer;
    .restart local p2    # "flush":Z
    .restart local p3    # "numMessages":I
    :catchall_1
    move-exception v2

    const-string v3, "OkHttpServerStream$Sink.writeFrame"

    invoke-static {v3}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;)V

    throw v2
.end method

.method public writeHeaders(Lio/grpc/Metadata;)V
    .locals 3
    .param p1, "metadata"    # Lio/grpc/Metadata;

    .line 86
    const-string v0, "OkHttpServerStream$Sink.writeHeaders"

    invoke-static {v0}, Lio/perfmark/PerfMark;->startTask(Ljava/lang/String;)V

    .line 88
    :try_start_0
    invoke-static {p1}, Lio/grpc/okhttp/Headers;->createResponseHeaders(Lio/grpc/Metadata;)Ljava/util/List;

    move-result-object v0

    .line 89
    .local v0, "responseHeaders":Ljava/util/List;, "Ljava/util/List<Lio/grpc/okhttp/internal/framed/Header;>;"
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerStream$Sink;->this$0:Lio/grpc/okhttp/OkHttpServerStream;

    invoke-static {v1}, Lio/grpc/okhttp/OkHttpServerStream;->access$100(Lio/grpc/okhttp/OkHttpServerStream;)Lio/grpc/okhttp/OkHttpServerStream$TransportState;

    move-result-object v1

    invoke-static {v1}, Lio/grpc/okhttp/OkHttpServerStream$TransportState;->access$200(Lio/grpc/okhttp/OkHttpServerStream$TransportState;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 90
    :try_start_1
    iget-object v2, p0, Lio/grpc/okhttp/OkHttpServerStream$Sink;->this$0:Lio/grpc/okhttp/OkHttpServerStream;

    invoke-static {v2}, Lio/grpc/okhttp/OkHttpServerStream;->access$100(Lio/grpc/okhttp/OkHttpServerStream;)Lio/grpc/okhttp/OkHttpServerStream$TransportState;

    move-result-object v2

    invoke-static {v2, v0}, Lio/grpc/okhttp/OkHttpServerStream$TransportState;->access$300(Lio/grpc/okhttp/OkHttpServerStream$TransportState;Ljava/util/List;)V

    .line 91
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    .end local v0    # "responseHeaders":Ljava/util/List;, "Ljava/util/List<Lio/grpc/okhttp/internal/framed/Header;>;"
    const-string v0, "OkHttpServerStream$Sink.writeHeaders"

    invoke-static {v0}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;)V

    .line 94
    nop

    .line 95
    return-void

    .line 91
    .restart local v0    # "responseHeaders":Ljava/util/List;, "Ljava/util/List<Lio/grpc/okhttp/internal/framed/Header;>;"
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local p1    # "metadata":Lio/grpc/Metadata;
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 93
    .end local v0    # "responseHeaders":Ljava/util/List;, "Ljava/util/List<Lio/grpc/okhttp/internal/framed/Header;>;"
    .restart local p1    # "metadata":Lio/grpc/Metadata;
    :catchall_1
    move-exception v0

    const-string v1, "OkHttpServerStream$Sink.writeHeaders"

    invoke-static {v1}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;)V

    throw v0
.end method

.method public writeTrailers(Lio/grpc/Metadata;ZLio/grpc/Status;)V
    .locals 3
    .param p1, "trailers"    # Lio/grpc/Metadata;
    .param p2, "headersSent"    # Z
    .param p3, "status"    # Lio/grpc/Status;

    .line 118
    const-string v0, "OkHttpServerStream$Sink.writeTrailers"

    invoke-static {v0}, Lio/perfmark/PerfMark;->startTask(Ljava/lang/String;)V

    .line 120
    :try_start_0
    invoke-static {p1, p2}, Lio/grpc/okhttp/Headers;->createResponseTrailers(Lio/grpc/Metadata;Z)Ljava/util/List;

    move-result-object v0

    .line 121
    .local v0, "responseTrailers":Ljava/util/List;, "Ljava/util/List<Lio/grpc/okhttp/internal/framed/Header;>;"
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerStream$Sink;->this$0:Lio/grpc/okhttp/OkHttpServerStream;

    invoke-static {v1}, Lio/grpc/okhttp/OkHttpServerStream;->access$100(Lio/grpc/okhttp/OkHttpServerStream;)Lio/grpc/okhttp/OkHttpServerStream$TransportState;

    move-result-object v1

    invoke-static {v1}, Lio/grpc/okhttp/OkHttpServerStream$TransportState;->access$200(Lio/grpc/okhttp/OkHttpServerStream$TransportState;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 122
    :try_start_1
    iget-object v2, p0, Lio/grpc/okhttp/OkHttpServerStream$Sink;->this$0:Lio/grpc/okhttp/OkHttpServerStream;

    invoke-static {v2}, Lio/grpc/okhttp/OkHttpServerStream;->access$100(Lio/grpc/okhttp/OkHttpServerStream;)Lio/grpc/okhttp/OkHttpServerStream$TransportState;

    move-result-object v2

    invoke-static {v2, v0}, Lio/grpc/okhttp/OkHttpServerStream$TransportState;->access$700(Lio/grpc/okhttp/OkHttpServerStream$TransportState;Ljava/util/List;)V

    .line 123
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    .end local v0    # "responseTrailers":Ljava/util/List;, "Ljava/util/List<Lio/grpc/okhttp/internal/framed/Header;>;"
    const-string v0, "OkHttpServerStream$Sink.writeTrailers"

    invoke-static {v0}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;)V

    .line 126
    nop

    .line 127
    return-void

    .line 123
    .restart local v0    # "responseTrailers":Ljava/util/List;, "Ljava/util/List<Lio/grpc/okhttp/internal/framed/Header;>;"
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local p1    # "trailers":Lio/grpc/Metadata;
    .end local p2    # "headersSent":Z
    .end local p3    # "status":Lio/grpc/Status;
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 125
    .end local v0    # "responseTrailers":Ljava/util/List;, "Ljava/util/List<Lio/grpc/okhttp/internal/framed/Header;>;"
    .restart local p1    # "trailers":Lio/grpc/Metadata;
    .restart local p2    # "headersSent":Z
    .restart local p3    # "status":Lio/grpc/Status;
    :catchall_1
    move-exception v0

    const-string v1, "OkHttpServerStream$Sink.writeTrailers"

    invoke-static {v1}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;)V

    throw v0
.end method
