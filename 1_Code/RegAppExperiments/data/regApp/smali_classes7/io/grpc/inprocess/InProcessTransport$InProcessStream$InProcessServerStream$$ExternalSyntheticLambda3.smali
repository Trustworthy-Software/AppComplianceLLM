.class public final synthetic Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;


# direct methods
.method public synthetic constructor <init>(Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream$$ExternalSyntheticLambda3;->f$0:Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream$$ExternalSyntheticLambda3;->f$0:Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;

    invoke-virtual {v0}, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->lambda$request$0$io-grpc-inprocess-InProcessTransport$InProcessStream$InProcessServerStream()V

    return-void
.end method
