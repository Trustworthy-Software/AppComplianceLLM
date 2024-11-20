.class public final synthetic Lcom/google/firebase/firestore/remote/GrpcCallProvider$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/Continuation;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/firestore/remote/GrpcCallProvider;

.field public final synthetic f$1:Lio/grpc/MethodDescriptor;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/firestore/remote/GrpcCallProvider;Lio/grpc/MethodDescriptor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/remote/GrpcCallProvider$$ExternalSyntheticLambda6;->f$0:Lcom/google/firebase/firestore/remote/GrpcCallProvider;

    iput-object p2, p0, Lcom/google/firebase/firestore/remote/GrpcCallProvider$$ExternalSyntheticLambda6;->f$1:Lio/grpc/MethodDescriptor;

    return-void
.end method


# virtual methods
.method public final then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/firestore/remote/GrpcCallProvider$$ExternalSyntheticLambda6;->f$0:Lcom/google/firebase/firestore/remote/GrpcCallProvider;

    iget-object v1, p0, Lcom/google/firebase/firestore/remote/GrpcCallProvider$$ExternalSyntheticLambda6;->f$1:Lio/grpc/MethodDescriptor;

    invoke-virtual {v0, v1, p1}, Lcom/google/firebase/firestore/remote/GrpcCallProvider;->lambda$createClientCall$0$com-google-firebase-firestore-remote-GrpcCallProvider(Lio/grpc/MethodDescriptor;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
