.class public final synthetic Lcom/google/firebase/firestore/remote/GrpcCallProvider$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/firestore/remote/GrpcCallProvider;

.field public final synthetic f$1:Lio/grpc/ManagedChannel;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/firestore/remote/GrpcCallProvider;Lio/grpc/ManagedChannel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/remote/GrpcCallProvider$$ExternalSyntheticLambda4;->f$0:Lcom/google/firebase/firestore/remote/GrpcCallProvider;

    iput-object p2, p0, Lcom/google/firebase/firestore/remote/GrpcCallProvider$$ExternalSyntheticLambda4;->f$1:Lio/grpc/ManagedChannel;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/firestore/remote/GrpcCallProvider$$ExternalSyntheticLambda4;->f$0:Lcom/google/firebase/firestore/remote/GrpcCallProvider;

    iget-object v1, p0, Lcom/google/firebase/firestore/remote/GrpcCallProvider$$ExternalSyntheticLambda4;->f$1:Lio/grpc/ManagedChannel;

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/remote/GrpcCallProvider;->lambda$onConnectivityStateChange$3$com-google-firebase-firestore-remote-GrpcCallProvider(Lio/grpc/ManagedChannel;)V

    return-void
.end method
