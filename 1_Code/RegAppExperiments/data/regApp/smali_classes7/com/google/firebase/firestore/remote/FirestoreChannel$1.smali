.class Lcom/google/firebase/firestore/remote/FirestoreChannel$1;
.super Lio/grpc/ClientCall$Listener;
.source "FirestoreChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/firestore/remote/FirestoreChannel;->lambda$runBidiStreamingRpc$0$com-google-firebase-firestore-remote-FirestoreChannel([Lio/grpc/ClientCall;Lcom/google/firebase/firestore/remote/IncomingStreamObserver;Lcom/google/android/gms/tasks/Task;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/grpc/ClientCall$Listener<",
        "TRespT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/firestore/remote/FirestoreChannel;

.field final synthetic val$call:[Lio/grpc/ClientCall;

.field final synthetic val$observer:Lcom/google/firebase/firestore/remote/IncomingStreamObserver;


# direct methods
.method constructor <init>(Lcom/google/firebase/firestore/remote/FirestoreChannel;Lcom/google/firebase/firestore/remote/IncomingStreamObserver;[Lio/grpc/ClientCall;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/firebase/firestore/remote/FirestoreChannel;

    .line 127
    iput-object p1, p0, Lcom/google/firebase/firestore/remote/FirestoreChannel$1;->this$0:Lcom/google/firebase/firestore/remote/FirestoreChannel;

    iput-object p2, p0, Lcom/google/firebase/firestore/remote/FirestoreChannel$1;->val$observer:Lcom/google/firebase/firestore/remote/IncomingStreamObserver;

    iput-object p3, p0, Lcom/google/firebase/firestore/remote/FirestoreChannel$1;->val$call:[Lio/grpc/ClientCall;

    invoke-direct {p0}, Lio/grpc/ClientCall$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(Lio/grpc/Status;Lio/grpc/Metadata;)V
    .locals 2
    .param p1, "status"    # Lio/grpc/Status;
    .param p2, "trailers"    # Lio/grpc/Metadata;

    .line 151
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/FirestoreChannel$1;->val$observer:Lcom/google/firebase/firestore/remote/IncomingStreamObserver;

    invoke-interface {v0, p1}, Lcom/google/firebase/firestore/remote/IncomingStreamObserver;->onClose(Lio/grpc/Status;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    goto :goto_0

    .line 152
    :catchall_0
    move-exception v0

    .line 153
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/google/firebase/firestore/remote/FirestoreChannel$1;->this$0:Lcom/google/firebase/firestore/remote/FirestoreChannel;

    invoke-static {v1}, Lcom/google/firebase/firestore/remote/FirestoreChannel;->access$000(Lcom/google/firebase/firestore/remote/FirestoreChannel;)Lcom/google/firebase/firestore/util/AsyncQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/firebase/firestore/util/AsyncQueue;->panic(Ljava/lang/Throwable;)V

    .line 155
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public onHeaders(Lio/grpc/Metadata;)V
    .locals 2
    .param p1, "headers"    # Lio/grpc/Metadata;

    .line 131
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/FirestoreChannel$1;->val$observer:Lcom/google/firebase/firestore/remote/IncomingStreamObserver;

    invoke-interface {v0, p1}, Lcom/google/firebase/firestore/remote/IncomingStreamObserver;->onHeaders(Lio/grpc/Metadata;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    goto :goto_0

    .line 132
    :catchall_0
    move-exception v0

    .line 133
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/google/firebase/firestore/remote/FirestoreChannel$1;->this$0:Lcom/google/firebase/firestore/remote/FirestoreChannel;

    invoke-static {v1}, Lcom/google/firebase/firestore/remote/FirestoreChannel;->access$000(Lcom/google/firebase/firestore/remote/FirestoreChannel;)Lcom/google/firebase/firestore/util/AsyncQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/firebase/firestore/util/AsyncQueue;->panic(Ljava/lang/Throwable;)V

    .line 135
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public onMessage(Ljava/lang/Object;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRespT;)V"
        }
    .end annotation

    .line 140
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/FirestoreChannel$1;->val$observer:Lcom/google/firebase/firestore/remote/IncomingStreamObserver;

    invoke-interface {v0, p1}, Lcom/google/firebase/firestore/remote/IncomingStreamObserver;->onNext(Ljava/lang/Object;)V

    .line 142
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/FirestoreChannel$1;->val$call:[Lio/grpc/ClientCall;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lio/grpc/ClientCall;->request(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    goto :goto_0

    .line 143
    :catchall_0
    move-exception v0

    .line 144
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/google/firebase/firestore/remote/FirestoreChannel$1;->this$0:Lcom/google/firebase/firestore/remote/FirestoreChannel;

    invoke-static {v1}, Lcom/google/firebase/firestore/remote/FirestoreChannel;->access$000(Lcom/google/firebase/firestore/remote/FirestoreChannel;)Lcom/google/firebase/firestore/util/AsyncQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/firebase/firestore/util/AsyncQueue;->panic(Ljava/lang/Throwable;)V

    .line 146
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public onReady()V
    .locals 0

    .line 162
    return-void
.end method
