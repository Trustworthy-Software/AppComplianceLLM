.class public final synthetic Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;

.field public final synthetic f$1:Lio/grpc/Status;


# direct methods
.method public synthetic constructor <init>(Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;Lio/grpc/Status;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream$$ExternalSyntheticLambda1;->f$0:Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;

    iput-object p2, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream$$ExternalSyntheticLambda1;->f$1:Lio/grpc/Status;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream$$ExternalSyntheticLambda1;->f$0:Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;

    iget-object v1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream$$ExternalSyntheticLambda1;->f$1:Lio/grpc/Status;

    invoke-virtual {v0, v1}, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->lambda$internalCancel$4$io-grpc-inprocess-InProcessTransport$InProcessStream$InProcessClientStream(Lio/grpc/Status;)V

    return-void
.end method
