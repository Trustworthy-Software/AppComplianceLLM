.class public final synthetic Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;

.field public final synthetic f$1:Lio/grpc/okhttp/OkHttpServerTransport$Http2ErrorStreamState;


# direct methods
.method public synthetic constructor <init>(Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;Lio/grpc/okhttp/OkHttpServerTransport$Http2ErrorStreamState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler$$ExternalSyntheticLambda0;->f$0:Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;

    iput-object p2, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler$$ExternalSyntheticLambda0;->f$1:Lio/grpc/okhttp/OkHttpServerTransport$Http2ErrorStreamState;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler$$ExternalSyntheticLambda0;->f$0:Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;

    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler$$ExternalSyntheticLambda0;->f$1:Lio/grpc/okhttp/OkHttpServerTransport$Http2ErrorStreamState;

    invoke-virtual {v0, v1}, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->lambda$respondWithHttpError$0$io-grpc-okhttp-OkHttpServerTransport$FrameHandler(Lio/grpc/okhttp/OkHttpServerTransport$Http2ErrorStreamState;)V

    return-void
.end method
