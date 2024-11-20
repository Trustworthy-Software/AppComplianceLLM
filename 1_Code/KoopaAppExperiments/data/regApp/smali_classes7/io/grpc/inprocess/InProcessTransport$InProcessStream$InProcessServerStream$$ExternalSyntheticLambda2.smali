.class public final synthetic Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;

.field public final synthetic f$1:Lio/grpc/Status;

.field public final synthetic f$2:Lio/grpc/Metadata;


# direct methods
.method public synthetic constructor <init>(Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;Lio/grpc/Status;Lio/grpc/Metadata;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream$$ExternalSyntheticLambda2;->f$0:Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;

    iput-object p2, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream$$ExternalSyntheticLambda2;->f$1:Lio/grpc/Status;

    iput-object p3, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream$$ExternalSyntheticLambda2;->f$2:Lio/grpc/Metadata;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream$$ExternalSyntheticLambda2;->f$0:Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;

    iget-object v1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream$$ExternalSyntheticLambda2;->f$1:Lio/grpc/Status;

    iget-object v2, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream$$ExternalSyntheticLambda2;->f$2:Lio/grpc/Metadata;

    invoke-virtual {v0, v1, v2}, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->lambda$clientRequested$2$io-grpc-inprocess-InProcessTransport$InProcessStream$InProcessServerStream(Lio/grpc/Status;Lio/grpc/Metadata;)V

    return-void
.end method
