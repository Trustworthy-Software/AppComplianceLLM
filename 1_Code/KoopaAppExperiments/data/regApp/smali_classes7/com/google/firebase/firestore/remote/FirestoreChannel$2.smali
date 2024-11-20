.class Lcom/google/firebase/firestore/remote/FirestoreChannel$2;
.super Lio/grpc/ForwardingClientCall;
.source "FirestoreChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/firestore/remote/FirestoreChannel;->runBidiStreamingRpc(Lio/grpc/MethodDescriptor;Lcom/google/firebase/firestore/remote/IncomingStreamObserver;)Lio/grpc/ClientCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/grpc/ForwardingClientCall<",
        "TReqT;TRespT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/firestore/remote/FirestoreChannel;

.field final synthetic val$call:[Lio/grpc/ClientCall;

.field final synthetic val$clientCall:Lcom/google/android/gms/tasks/Task;


# direct methods
.method public static synthetic $r8$lambda$hT-j7ryM67l5sshec3Fd1aTChQ0(Lio/grpc/ClientCall;)V
    .locals 0

    invoke-virtual {p0}, Lio/grpc/ClientCall;->halfClose()V

    return-void
.end method

.method constructor <init>(Lcom/google/firebase/firestore/remote/FirestoreChannel;[Lio/grpc/ClientCall;Lcom/google/android/gms/tasks/Task;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/firebase/firestore/remote/FirestoreChannel;

    .line 173
    iput-object p1, p0, Lcom/google/firebase/firestore/remote/FirestoreChannel$2;->this$0:Lcom/google/firebase/firestore/remote/FirestoreChannel;

    iput-object p2, p0, Lcom/google/firebase/firestore/remote/FirestoreChannel$2;->val$call:[Lio/grpc/ClientCall;

    iput-object p3, p0, Lcom/google/firebase/firestore/remote/FirestoreChannel$2;->val$clientCall:Lcom/google/android/gms/tasks/Task;

    invoke-direct {p0}, Lio/grpc/ForwardingClientCall;-><init>()V

    return-void
.end method


# virtual methods
.method protected delegate()Lio/grpc/ClientCall;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/ClientCall<",
            "TReqT;TRespT;>;"
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/FirestoreChannel$2;->val$call:[Lio/grpc/ClientCall;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v2, "ClientCall used before onOpen() callback"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 177
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/FirestoreChannel$2;->val$call:[Lio/grpc/ClientCall;

    aget-object v0, v0, v1

    return-object v0
.end method

.method public halfClose()V
    .locals 3

    .line 184
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/FirestoreChannel$2;->val$call:[Lio/grpc/ClientCall;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/FirestoreChannel$2;->val$clientCall:Lcom/google/android/gms/tasks/Task;

    iget-object v1, p0, Lcom/google/firebase/firestore/remote/FirestoreChannel$2;->this$0:Lcom/google/firebase/firestore/remote/FirestoreChannel;

    invoke-static {v1}, Lcom/google/firebase/firestore/remote/FirestoreChannel;->access$000(Lcom/google/firebase/firestore/remote/FirestoreChannel;)Lcom/google/firebase/firestore/util/AsyncQueue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/firestore/util/AsyncQueue;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/google/firebase/firestore/remote/FirestoreChannel$2$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/google/firebase/firestore/remote/FirestoreChannel$2$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    goto :goto_0

    .line 187
    :cond_0
    invoke-super {p0}, Lio/grpc/ForwardingClientCall;->halfClose()V

    .line 189
    :goto_0
    return-void
.end method
