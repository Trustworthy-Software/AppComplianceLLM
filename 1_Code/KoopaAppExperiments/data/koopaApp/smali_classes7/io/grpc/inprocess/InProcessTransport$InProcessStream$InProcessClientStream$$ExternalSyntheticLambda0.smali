.class public final synthetic Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;


# direct methods
.method public synthetic constructor <init>(Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream$$ExternalSyntheticLambda0;->f$0:Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream$$ExternalSyntheticLambda0;->f$0:Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;

    invoke-virtual {v0}, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->lambda$request$0$io-grpc-inprocess-InProcessTransport$InProcessStream$InProcessClientStream()V

    return-void
.end method
