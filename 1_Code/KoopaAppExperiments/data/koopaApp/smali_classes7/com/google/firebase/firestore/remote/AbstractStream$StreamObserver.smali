.class Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver;
.super Ljava/lang/Object;
.source "AbstractStream.java"

# interfaces
.implements Lcom/google/firebase/firestore/remote/IncomingStreamObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/remote/AbstractStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StreamObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/firestore/remote/IncomingStreamObserver<",
        "TRespT;>;"
    }
.end annotation


# instance fields
.field private final dispatcher:Lcom/google/firebase/firestore/remote/AbstractStream$CloseGuardedRunner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/firestore/remote/AbstractStream<",
            "TReqT;TRespT;TCallbackT;>.CloseGuardedRunner;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/firebase/firestore/remote/AbstractStream;


# direct methods
.method constructor <init>(Lcom/google/firebase/firestore/remote/AbstractStream;Lcom/google/firebase/firestore/remote/AbstractStream$CloseGuardedRunner;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/firebase/firestore/remote/AbstractStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/remote/AbstractStream<",
            "TReqT;TRespT;TCallbackT;>.CloseGuardedRunner;)V"
        }
    .end annotation

    .line 80
    .local p0, "this":Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver;, "Lcom/google/firebase/firestore/remote/AbstractStream<TReqT;TRespT;TCallbackT;>.StreamObserver;"
    .local p2, "dispatcher":Lcom/google/firebase/firestore/remote/AbstractStream$CloseGuardedRunner;, "Lcom/google/firebase/firestore/remote/AbstractStream<TReqT;TRespT;TCallbackT;>.CloseGuardedRunner;"
    iput-object p1, p0, Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver;->this$0:Lcom/google/firebase/firestore/remote/AbstractStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p2, p0, Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver;->dispatcher:Lcom/google/firebase/firestore/remote/AbstractStream$CloseGuardedRunner;

    .line 82
    return-void
.end method


# virtual methods
.method synthetic lambda$onClose$3$com-google-firebase-firestore-remote-AbstractStream$StreamObserver(Lio/grpc/Status;)V
    .locals 3
    .param p1, "status"    # Lio/grpc/Status;

    .line 139
    .local p0, "this":Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver;, "Lcom/google/firebase/firestore/remote/AbstractStream<TReqT;TRespT;TCallbackT;>.StreamObserver;"
    invoke-virtual {p1}, Lio/grpc/Status;->isOk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver;->this$0:Lcom/google/firebase/firestore/remote/AbstractStream;

    .line 141
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver;->this$0:Lcom/google/firebase/firestore/remote/AbstractStream;

    .line 143
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 140
    const-string v2, "(%x) Stream closed."

    invoke-static {v0, v2, v1}, Lcom/google/firebase/firestore/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver;->this$0:Lcom/google/firebase/firestore/remote/AbstractStream;

    .line 146
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver;->this$0:Lcom/google/firebase/firestore/remote/AbstractStream;

    .line 148
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1, p1}, [Ljava/lang/Object;

    move-result-object v1

    .line 145
    const-string v2, "(%x) Stream closed with status: %s."

    invoke-static {v0, v2, v1}, Lcom/google/firebase/firestore/util/Logger;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    :goto_0
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver;->this$0:Lcom/google/firebase/firestore/remote/AbstractStream;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/remote/AbstractStream;->handleServerClose(Lio/grpc/Status;)V

    .line 152
    return-void
.end method

.method synthetic lambda$onHeaders$0$com-google-firebase-firestore-remote-AbstractStream$StreamObserver(Lio/grpc/Metadata;)V
    .locals 5
    .param p1, "headers"    # Lio/grpc/Metadata;

    .line 88
    .local p0, "this":Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver;, "Lcom/google/firebase/firestore/remote/AbstractStream<TReqT;TRespT;TCallbackT;>.StreamObserver;"
    invoke-static {}, Lcom/google/firebase/firestore/util/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 90
    .local v0, "allowlistedHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Lio/grpc/Metadata;->keys()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 91
    .local v2, "header":Ljava/lang/String;
    sget-object v3, Lcom/google/firebase/firestore/remote/Datastore;->WHITE_LISTED_HEADERS:Ljava/util/Set;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 92
    sget-object v3, Lio/grpc/Metadata;->ASCII_STRING_MARSHALLER:Lio/grpc/Metadata$AsciiMarshaller;

    .line 94
    invoke-static {v2, v3}, Lio/grpc/Metadata$Key;->of(Ljava/lang/String;Lio/grpc/Metadata$AsciiMarshaller;)Lio/grpc/Metadata$Key;

    move-result-object v3

    invoke-virtual {p1, v3}, Lio/grpc/Metadata;->get(Lio/grpc/Metadata$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 92
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .end local v2    # "header":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 97
    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 98
    iget-object v1, p0, Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver;->this$0:Lcom/google/firebase/firestore/remote/AbstractStream;

    .line 99
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver;->this$0:Lcom/google/firebase/firestore/remote/AbstractStream;

    .line 101
    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v2

    .line 98
    const-string v3, "(%x) Stream received headers: %s"

    invoke-static {v1, v3, v2}, Lcom/google/firebase/firestore/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    .end local v0    # "allowlistedHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    return-void
.end method

.method synthetic lambda$onNext$1$com-google-firebase-firestore-remote-AbstractStream$StreamObserver(Ljava/lang/Object;)V
    .locals 3
    .param p1, "response"    # Ljava/lang/Object;

    .line 112
    .local p0, "this":Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver;, "Lcom/google/firebase/firestore/remote/AbstractStream<TReqT;TRespT;TCallbackT;>.StreamObserver;"
    invoke-static {}, Lcom/google/firebase/firestore/util/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver;->this$0:Lcom/google/firebase/firestore/remote/AbstractStream;

    .line 114
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver;->this$0:Lcom/google/firebase/firestore/remote/AbstractStream;

    .line 116
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1, p1}, [Ljava/lang/Object;

    move-result-object v1

    .line 113
    const-string v2, "(%x) Stream received: %s"

    invoke-static {v0, v2, v1}, Lcom/google/firebase/firestore/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver;->this$0:Lcom/google/firebase/firestore/remote/AbstractStream;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/remote/AbstractStream;->onNext(Ljava/lang/Object;)V

    .line 120
    return-void
.end method

.method synthetic lambda$onOpen$2$com-google-firebase-firestore-remote-AbstractStream$StreamObserver()V
    .locals 3

    .line 127
    .local p0, "this":Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver;, "Lcom/google/firebase/firestore/remote/AbstractStream<TReqT;TRespT;TCallbackT;>.StreamObserver;"
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver;->this$0:Lcom/google/firebase/firestore/remote/AbstractStream;

    .line 128
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver;->this$0:Lcom/google/firebase/firestore/remote/AbstractStream;

    .line 130
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 127
    const-string v2, "(%x) Stream is open"

    invoke-static {v0, v2, v1}, Lcom/google/firebase/firestore/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver;->this$0:Lcom/google/firebase/firestore/remote/AbstractStream;

    invoke-static {v0}, Lcom/google/firebase/firestore/remote/AbstractStream;->access$200(Lcom/google/firebase/firestore/remote/AbstractStream;)V

    .line 132
    return-void
.end method

.method public onClose(Lio/grpc/Status;)V
    .locals 2
    .param p1, "status"    # Lio/grpc/Status;

    .line 137
    .local p0, "this":Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver;, "Lcom/google/firebase/firestore/remote/AbstractStream<TReqT;TRespT;TCallbackT;>.StreamObserver;"
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver;->dispatcher:Lcom/google/firebase/firestore/remote/AbstractStream$CloseGuardedRunner;

    new-instance v1, Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver$$ExternalSyntheticLambda1;-><init>(Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver;Lio/grpc/Status;)V

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/remote/AbstractStream$CloseGuardedRunner;->run(Ljava/lang/Runnable;)V

    .line 153
    return-void
.end method

.method public onHeaders(Lio/grpc/Metadata;)V
    .locals 2
    .param p1, "headers"    # Lio/grpc/Metadata;

    .line 86
    .local p0, "this":Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver;, "Lcom/google/firebase/firestore/remote/AbstractStream<TReqT;TRespT;TCallbackT;>.StreamObserver;"
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver;->dispatcher:Lcom/google/firebase/firestore/remote/AbstractStream$CloseGuardedRunner;

    new-instance v1, Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver$$ExternalSyntheticLambda3;-><init>(Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver;Lio/grpc/Metadata;)V

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/remote/AbstractStream$CloseGuardedRunner;->run(Ljava/lang/Runnable;)V

    .line 106
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRespT;)V"
        }
    .end annotation

    .line 110
    .local p0, "this":Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver;, "Lcom/google/firebase/firestore/remote/AbstractStream<TReqT;TRespT;TCallbackT;>.StreamObserver;"
    .local p1, "response":Ljava/lang/Object;, "TRespT;"
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver;->dispatcher:Lcom/google/firebase/firestore/remote/AbstractStream$CloseGuardedRunner;

    new-instance v1, Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver$$ExternalSyntheticLambda2;-><init>(Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/remote/AbstractStream$CloseGuardedRunner;->run(Ljava/lang/Runnable;)V

    .line 121
    return-void
.end method

.method public onOpen()V
    .locals 2

    .line 125
    .local p0, "this":Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver;, "Lcom/google/firebase/firestore/remote/AbstractStream<TReqT;TRespT;TCallbackT;>.StreamObserver;"
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver;->dispatcher:Lcom/google/firebase/firestore/remote/AbstractStream$CloseGuardedRunner;

    new-instance v1, Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver$$ExternalSyntheticLambda0;-><init>(Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver;)V

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/remote/AbstractStream$CloseGuardedRunner;->run(Ljava/lang/Runnable;)V

    .line 133
    return-void
.end method
