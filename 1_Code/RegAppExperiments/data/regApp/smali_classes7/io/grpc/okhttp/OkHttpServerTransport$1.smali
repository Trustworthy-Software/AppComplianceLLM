.class Lio/grpc/okhttp/OkHttpServerTransport$1;
.super Lio/grpc/okhttp/ForwardingFrameWriter;
.source "OkHttpServerTransport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/okhttp/OkHttpServerTransport;->startIo(Lio/grpc/internal/SerializingExecutor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/okhttp/OkHttpServerTransport;


# direct methods
.method constructor <init>(Lio/grpc/okhttp/OkHttpServerTransport;Lio/grpc/okhttp/internal/framed/FrameWriter;)V
    .locals 0
    .param p1, "this$0"    # Lio/grpc/okhttp/OkHttpServerTransport;
    .param p2, "delegate"    # Lio/grpc/okhttp/internal/framed/FrameWriter;

    .line 169
    iput-object p1, p0, Lio/grpc/okhttp/OkHttpServerTransport$1;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-direct {p0, p2}, Lio/grpc/okhttp/ForwardingFrameWriter;-><init>(Lio/grpc/okhttp/internal/framed/FrameWriter;)V

    return-void
.end method


# virtual methods
.method public data(ZILokio/Buffer;I)V
    .locals 1
    .param p1, "outFinished"    # Z
    .param p2, "streamId"    # I
    .param p3, "source"    # Lokio/Buffer;
    .param p4, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 186
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport$1;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v0}, Lio/grpc/okhttp/OkHttpServerTransport;->access$000(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/internal/KeepAliveEnforcer;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/internal/KeepAliveEnforcer;->resetCounters()V

    .line 187
    invoke-super {p0, p1, p2, p3, p4}, Lio/grpc/okhttp/ForwardingFrameWriter;->data(ZILokio/Buffer;I)V

    .line 188
    return-void
.end method

.method public headers(ILjava/util/List;)V
    .locals 1
    .param p1, "streamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
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

    .line 179
    .local p2, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lio/grpc/okhttp/internal/framed/Header;>;"
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport$1;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v0}, Lio/grpc/okhttp/OkHttpServerTransport;->access$000(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/internal/KeepAliveEnforcer;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/internal/KeepAliveEnforcer;->resetCounters()V

    .line 180
    invoke-super {p0, p1, p2}, Lio/grpc/okhttp/ForwardingFrameWriter;->headers(ILjava/util/List;)V

    .line 181
    return-void
.end method

.method public synReply(ZILjava/util/List;)V
    .locals 1
    .param p1, "outFinished"    # Z
    .param p2, "streamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
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

    .line 173
    .local p3, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lio/grpc/okhttp/internal/framed/Header;>;"
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport$1;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v0}, Lio/grpc/okhttp/OkHttpServerTransport;->access$000(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/internal/KeepAliveEnforcer;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/internal/KeepAliveEnforcer;->resetCounters()V

    .line 174
    invoke-super {p0, p1, p2, p3}, Lio/grpc/okhttp/ForwardingFrameWriter;->synReply(ZILjava/util/List;)V

    .line 175
    return-void
.end method
