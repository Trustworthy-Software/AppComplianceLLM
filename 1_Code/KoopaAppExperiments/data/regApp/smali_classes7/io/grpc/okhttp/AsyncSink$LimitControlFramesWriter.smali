.class Lio/grpc/okhttp/AsyncSink$LimitControlFramesWriter;
.super Lio/grpc/okhttp/ForwardingFrameWriter;
.source "AsyncSink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/okhttp/AsyncSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LimitControlFramesWriter"
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/okhttp/AsyncSink;


# direct methods
.method public constructor <init>(Lio/grpc/okhttp/AsyncSink;Lio/grpc/okhttp/internal/framed/FrameWriter;)V
    .locals 0
    .param p2, "delegate"    # Lio/grpc/okhttp/internal/framed/FrameWriter;

    .line 253
    iput-object p1, p0, Lio/grpc/okhttp/AsyncSink$LimitControlFramesWriter;->this$0:Lio/grpc/okhttp/AsyncSink;

    .line 254
    invoke-direct {p0, p2}, Lio/grpc/okhttp/ForwardingFrameWriter;-><init>(Lio/grpc/okhttp/internal/framed/FrameWriter;)V

    .line 255
    return-void
.end method


# virtual methods
.method public ackSettings(Lio/grpc/okhttp/internal/framed/Settings;)V
    .locals 1
    .param p1, "peerSettings"    # Lio/grpc/okhttp/internal/framed/Settings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 259
    iget-object v0, p0, Lio/grpc/okhttp/AsyncSink$LimitControlFramesWriter;->this$0:Lio/grpc/okhttp/AsyncSink;

    invoke-static {v0}, Lio/grpc/okhttp/AsyncSink;->access$908(Lio/grpc/okhttp/AsyncSink;)I

    .line 260
    invoke-super {p0, p1}, Lio/grpc/okhttp/ForwardingFrameWriter;->ackSettings(Lio/grpc/okhttp/internal/framed/Settings;)V

    .line 261
    return-void
.end method

.method public ping(ZII)V
    .locals 1
    .param p1, "ack"    # Z
    .param p2, "payload1"    # I
    .param p3, "payload2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 271
    if-eqz p1, :cond_0

    .line 272
    iget-object v0, p0, Lio/grpc/okhttp/AsyncSink$LimitControlFramesWriter;->this$0:Lio/grpc/okhttp/AsyncSink;

    invoke-static {v0}, Lio/grpc/okhttp/AsyncSink;->access$908(Lio/grpc/okhttp/AsyncSink;)I

    .line 274
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lio/grpc/okhttp/ForwardingFrameWriter;->ping(ZII)V

    .line 275
    return-void
.end method

.method public rstStream(ILio/grpc/okhttp/internal/framed/ErrorCode;)V
    .locals 1
    .param p1, "streamId"    # I
    .param p2, "errorCode"    # Lio/grpc/okhttp/internal/framed/ErrorCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 265
    iget-object v0, p0, Lio/grpc/okhttp/AsyncSink$LimitControlFramesWriter;->this$0:Lio/grpc/okhttp/AsyncSink;

    invoke-static {v0}, Lio/grpc/okhttp/AsyncSink;->access$908(Lio/grpc/okhttp/AsyncSink;)I

    .line 266
    invoke-super {p0, p1, p2}, Lio/grpc/okhttp/ForwardingFrameWriter;->rstStream(ILio/grpc/okhttp/internal/framed/ErrorCode;)V

    .line 267
    return-void
.end method
