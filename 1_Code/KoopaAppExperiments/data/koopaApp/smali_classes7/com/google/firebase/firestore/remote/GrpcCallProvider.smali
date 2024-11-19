.class public Lcom/google/firebase/firestore/remote/GrpcCallProvider;
.super Ljava/lang/Object;
.source "GrpcCallProvider.java"


# static fields
.field private static final CONNECTIVITY_ATTEMPT_TIMEOUT_MS:I = 0x3a98

.field private static final LOG_TAG:Ljava/lang/String; = "GrpcCallProvider"

.field private static overrideChannelBuilderSupplier:Lcom/google/firebase/firestore/util/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/firestore/util/Supplier<",
            "Lio/grpc/ManagedChannelBuilder<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final asyncQueue:Lcom/google/firebase/firestore/util/AsyncQueue;

.field private callOptions:Lio/grpc/CallOptions;

.field private channelTask:Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/Task<",
            "Lio/grpc/ManagedChannel;",
            ">;"
        }
    .end annotation
.end field

.field private connectivityAttemptTimer:Lcom/google/firebase/firestore/util/AsyncQueue$DelayedTask;

.field private final context:Landroid/content/Context;

.field private final databaseInfo:Lcom/google/firebase/firestore/core/DatabaseInfo;

.field private final firestoreHeaders:Lio/grpc/CallCredentials;


# direct methods
.method constructor <init>(Lcom/google/firebase/firestore/util/AsyncQueue;Landroid/content/Context;Lcom/google/firebase/firestore/core/DatabaseInfo;Lio/grpc/CallCredentials;)V
    .locals 0
    .param p1, "asyncQueue"    # Lcom/google/firebase/firestore/util/AsyncQueue;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "databaseInfo"    # Lcom/google/firebase/firestore/core/DatabaseInfo;
    .param p4, "firestoreHeaders"    # Lio/grpc/CallCredentials;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/google/firebase/firestore/remote/GrpcCallProvider;->asyncQueue:Lcom/google/firebase/firestore/util/AsyncQueue;

    .line 72
    iput-object p2, p0, Lcom/google/firebase/firestore/remote/GrpcCallProvider;->context:Landroid/content/Context;

    .line 73
    iput-object p3, p0, Lcom/google/firebase/firestore/remote/GrpcCallProvider;->databaseInfo:Lcom/google/firebase/firestore/core/DatabaseInfo;

    .line 74
    iput-object p4, p0, Lcom/google/firebase/firestore/remote/GrpcCallProvider;->firestoreHeaders:Lio/grpc/CallCredentials;

    .line 76
    invoke-direct {p0}, Lcom/google/firebase/firestore/remote/GrpcCallProvider;->initChannelTask()V

    .line 77
    return-void
.end method

.method private clearConnectivityAttemptTimer()V
    .locals 3

    .line 258
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/GrpcCallProvider;->connectivityAttemptTimer:Lcom/google/firebase/firestore/util/AsyncQueue$DelayedTask;

    if-eqz v0, :cond_0

    .line 259
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "GrpcCallProvider"

    const-string v2, "Clearing the connectivityAttemptTimer"

    invoke-static {v1, v2, v0}, Lcom/google/firebase/firestore/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 260
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/GrpcCallProvider;->connectivityAttemptTimer:Lcom/google/firebase/firestore/util/AsyncQueue$DelayedTask;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/util/AsyncQueue$DelayedTask;->cancel()V

    .line 261
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/firestore/remote/GrpcCallProvider;->connectivityAttemptTimer:Lcom/google/firebase/firestore/util/AsyncQueue$DelayedTask;

    .line 263
    :cond_0
    return-void
.end method

.method private initChannel(Landroid/content/Context;Lcom/google/firebase/firestore/core/DatabaseInfo;)Lio/grpc/ManagedChannel;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "databaseInfo"    # Lcom/google/firebase/firestore/core/DatabaseInfo;

    .line 85
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/security/ProviderInstaller;->installIfNeeded(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    goto :goto_1

    .line 86
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    const-string v1, "Failed to update ssl context: %s"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "GrpcCallProvider"

    invoke-static {v3, v1, v2}, Lcom/google/firebase/firestore/util/Logger;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    sget-object v0, Lcom/google/firebase/firestore/remote/GrpcCallProvider;->overrideChannelBuilderSupplier:Lcom/google/firebase/firestore/util/Supplier;

    if-eqz v0, :cond_0

    .line 97
    invoke-interface {v0}, Lcom/google/firebase/firestore/util/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/ManagedChannelBuilder;

    .local v0, "channelBuilder":Lio/grpc/ManagedChannelBuilder;, "Lio/grpc/ManagedChannelBuilder<*>;"
    goto :goto_2

    .line 99
    .end local v0    # "channelBuilder":Lio/grpc/ManagedChannelBuilder;, "Lio/grpc/ManagedChannelBuilder<*>;"
    :cond_0
    invoke-virtual {p2}, Lcom/google/firebase/firestore/core/DatabaseInfo;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/grpc/ManagedChannelBuilder;->forTarget(Ljava/lang/String;)Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    .line 100
    .restart local v0    # "channelBuilder":Lio/grpc/ManagedChannelBuilder;, "Lio/grpc/ManagedChannelBuilder<*>;"
    invoke-virtual {p2}, Lcom/google/firebase/firestore/core/DatabaseInfo;->isSslEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 103
    invoke-virtual {v0}, Lio/grpc/ManagedChannelBuilder;->usePlaintext()Lio/grpc/ManagedChannelBuilder;

    .line 109
    :cond_1
    :goto_2
    const-wide/16 v1, 0x1e

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lio/grpc/ManagedChannelBuilder;->keepAliveTime(JLjava/util/concurrent/TimeUnit;)Lio/grpc/ManagedChannelBuilder;

    .line 113
    nop

    .line 114
    invoke-static {v0}, Lio/grpc/android/AndroidChannelBuilder;->usingBuilder(Lio/grpc/ManagedChannelBuilder;)Lio/grpc/android/AndroidChannelBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lio/grpc/android/AndroidChannelBuilder;->context(Landroid/content/Context;)Lio/grpc/android/AndroidChannelBuilder;

    move-result-object v1

    .line 116
    .local v1, "androidChannelBuilder":Lio/grpc/android/AndroidChannelBuilder;
    invoke-virtual {v1}, Lio/grpc/android/AndroidChannelBuilder;->build()Lio/grpc/ManagedChannel;

    move-result-object v2

    return-object v2
.end method

.method private initChannelTask()V
    .locals 2

    .line 238
    sget-object v0, Lcom/google/firebase/firestore/util/Executors;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/firebase/firestore/remote/GrpcCallProvider$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/google/firebase/firestore/remote/GrpcCallProvider$$ExternalSyntheticLambda1;-><init>(Lcom/google/firebase/firestore/remote/GrpcCallProvider;)V

    .line 239
    invoke-static {v0, v1}, Lcom/google/android/gms/tasks/Tasks;->call(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/firestore/remote/GrpcCallProvider;->channelTask:Lcom/google/android/gms/tasks/Task;

    .line 255
    return-void
.end method

.method private onConnectivityStateChange(Lio/grpc/ManagedChannel;)V
    .locals 6
    .param p1, "channel"    # Lio/grpc/ManagedChannel;

    .line 205
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lio/grpc/ManagedChannel;->getState(Z)Lio/grpc/ConnectivityState;

    move-result-object v0

    .line 206
    .local v0, "newState":Lio/grpc/ConnectivityState;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current gRPC connectivity state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "GrpcCallProvider"

    invoke-static {v4, v1, v3}, Lcom/google/firebase/firestore/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 208
    invoke-direct {p0}, Lcom/google/firebase/firestore/remote/GrpcCallProvider;->clearConnectivityAttemptTimer()V

    .line 210
    sget-object v1, Lio/grpc/ConnectivityState;->CONNECTING:Lio/grpc/ConnectivityState;

    if-ne v0, v1, :cond_0

    .line 211
    const-string v1, "Setting the connectivityAttemptTimer"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4, v1, v2}, Lcom/google/firebase/firestore/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 212
    iget-object v1, p0, Lcom/google/firebase/firestore/remote/GrpcCallProvider;->asyncQueue:Lcom/google/firebase/firestore/util/AsyncQueue;

    sget-object v2, Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;->CONNECTIVITY_ATTEMPT_TIMER:Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;

    new-instance v3, Lcom/google/firebase/firestore/remote/GrpcCallProvider$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, p1}, Lcom/google/firebase/firestore/remote/GrpcCallProvider$$ExternalSyntheticLambda3;-><init>(Lcom/google/firebase/firestore/remote/GrpcCallProvider;Lio/grpc/ManagedChannel;)V

    .line 213
    const-wide/16 v4, 0x3a98

    invoke-virtual {v1, v2, v4, v5, v3}, Lcom/google/firebase/firestore/util/AsyncQueue;->enqueueAfterDelay(Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;JLjava/lang/Runnable;)Lcom/google/firebase/firestore/util/AsyncQueue$DelayedTask;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/firestore/remote/GrpcCallProvider;->connectivityAttemptTimer:Lcom/google/firebase/firestore/util/AsyncQueue$DelayedTask;

    .line 223
    :cond_0
    new-instance v1, Lcom/google/firebase/firestore/remote/GrpcCallProvider$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/firestore/remote/GrpcCallProvider$$ExternalSyntheticLambda4;-><init>(Lcom/google/firebase/firestore/remote/GrpcCallProvider;Lio/grpc/ManagedChannel;)V

    invoke-virtual {p1, v0, v1}, Lio/grpc/ManagedChannel;->notifyWhenStateChanged(Lio/grpc/ConnectivityState;Ljava/lang/Runnable;)V

    .line 225
    return-void
.end method

.method private resetChannel(Lio/grpc/ManagedChannel;)V
    .locals 2
    .param p1, "channel"    # Lio/grpc/ManagedChannel;

    .line 228
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/GrpcCallProvider;->asyncQueue:Lcom/google/firebase/firestore/util/AsyncQueue;

    new-instance v1, Lcom/google/firebase/firestore/remote/GrpcCallProvider$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/firestore/remote/GrpcCallProvider$$ExternalSyntheticLambda0;-><init>(Lcom/google/firebase/firestore/remote/GrpcCallProvider;Lio/grpc/ManagedChannel;)V

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/util/AsyncQueue;->enqueueAndForget(Ljava/lang/Runnable;)V

    .line 233
    return-void
.end method


# virtual methods
.method createClientCall(Lio/grpc/MethodDescriptor;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ReqT:",
            "Ljava/lang/Object;",
            "RespT:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/MethodDescriptor<",
            "TReqT;TRespT;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "Lio/grpc/ClientCall<",
            "TReqT;TRespT;>;>;"
        }
    .end annotation

    .line 122
    .local p1, "methodDescriptor":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<TReqT;TRespT;>;"
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/GrpcCallProvider;->channelTask:Lcom/google/android/gms/tasks/Task;

    iget-object v1, p0, Lcom/google/firebase/firestore/remote/GrpcCallProvider;->asyncQueue:Lcom/google/firebase/firestore/util/AsyncQueue;

    .line 123
    invoke-virtual {v1}, Lcom/google/firebase/firestore/util/AsyncQueue;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/google/firebase/firestore/remote/GrpcCallProvider$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0, p1}, Lcom/google/firebase/firestore/remote/GrpcCallProvider$$ExternalSyntheticLambda6;-><init>(Lcom/google/firebase/firestore/remote/GrpcCallProvider;Lio/grpc/MethodDescriptor;)V

    .line 122
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$createClientCall$0$com-google-firebase-firestore-remote-GrpcCallProvider(Lio/grpc/MethodDescriptor;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .param p1, "methodDescriptor"    # Lio/grpc/MethodDescriptor;
    .param p2, "task"    # Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 124
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/ManagedChannel;

    iget-object v1, p0, Lcom/google/firebase/firestore/remote/GrpcCallProvider;->callOptions:Lio/grpc/CallOptions;

    invoke-virtual {v0, p1, v1}, Lio/grpc/ManagedChannel;->newCall(Lio/grpc/MethodDescriptor;Lio/grpc/CallOptions;)Lio/grpc/ClientCall;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$initChannelTask$5$com-google-firebase-firestore-remote-GrpcCallProvider(Lio/grpc/ManagedChannel;)V
    .locals 0
    .param p1, "channel"    # Lio/grpc/ManagedChannel;

    .line 243
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/remote/GrpcCallProvider;->onConnectivityStateChange(Lio/grpc/ManagedChannel;)V

    return-void
.end method

.method synthetic lambda$initChannelTask$6$com-google-firebase-firestore-remote-GrpcCallProvider()Lio/grpc/ManagedChannel;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 242
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/GrpcCallProvider;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/firebase/firestore/remote/GrpcCallProvider;->databaseInfo:Lcom/google/firebase/firestore/core/DatabaseInfo;

    invoke-direct {p0, v0, v1}, Lcom/google/firebase/firestore/remote/GrpcCallProvider;->initChannel(Landroid/content/Context;Lcom/google/firebase/firestore/core/DatabaseInfo;)Lio/grpc/ManagedChannel;

    move-result-object v0

    .line 243
    .local v0, "channel":Lio/grpc/ManagedChannel;
    iget-object v1, p0, Lcom/google/firebase/firestore/remote/GrpcCallProvider;->asyncQueue:Lcom/google/firebase/firestore/util/AsyncQueue;

    new-instance v2, Lcom/google/firebase/firestore/remote/GrpcCallProvider$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0}, Lcom/google/firebase/firestore/remote/GrpcCallProvider$$ExternalSyntheticLambda2;-><init>(Lcom/google/firebase/firestore/remote/GrpcCallProvider;Lio/grpc/ManagedChannel;)V

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/util/AsyncQueue;->enqueueAndForget(Ljava/lang/Runnable;)V

    .line 244
    nop

    .line 245
    invoke-static {v0}, Lcom/google/firestore/v1/FirestoreGrpc;->newStub(Lio/grpc/Channel;)Lcom/google/firestore/v1/FirestoreGrpc$FirestoreStub;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/firestore/remote/GrpcCallProvider;->firestoreHeaders:Lio/grpc/CallCredentials;

    .line 246
    invoke-virtual {v1, v2}, Lcom/google/firestore/v1/FirestoreGrpc$FirestoreStub;->withCallCredentials(Lio/grpc/CallCredentials;)Lio/grpc/stub/AbstractStub;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/FirestoreGrpc$FirestoreStub;

    iget-object v2, p0, Lcom/google/firebase/firestore/remote/GrpcCallProvider;->asyncQueue:Lcom/google/firebase/firestore/util/AsyncQueue;

    .line 250
    invoke-virtual {v2}, Lcom/google/firebase/firestore/util/AsyncQueue;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firestore/v1/FirestoreGrpc$FirestoreStub;->withExecutor(Ljava/util/concurrent/Executor;)Lio/grpc/stub/AbstractStub;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/FirestoreGrpc$FirestoreStub;

    .line 251
    .local v1, "firestoreStub":Lcom/google/firestore/v1/FirestoreGrpc$FirestoreStub;
    invoke-virtual {v1}, Lcom/google/firestore/v1/FirestoreGrpc$FirestoreStub;->getCallOptions()Lio/grpc/CallOptions;

    move-result-object v2

    iput-object v2, p0, Lcom/google/firebase/firestore/remote/GrpcCallProvider;->callOptions:Lio/grpc/CallOptions;

    .line 252
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "GrpcCallProvider"

    const-string v4, "Channel successfully reset."

    invoke-static {v3, v4, v2}, Lcom/google/firebase/firestore/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 253
    return-object v0
.end method

.method synthetic lambda$onConnectivityStateChange$1$com-google-firebase-firestore-remote-GrpcCallProvider(Lio/grpc/ManagedChannel;)V
    .locals 3
    .param p1, "channel"    # Lio/grpc/ManagedChannel;

    .line 217
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "GrpcCallProvider"

    const-string v2, "connectivityAttemptTimer elapsed. Resetting the channel."

    invoke-static {v1, v2, v0}, Lcom/google/firebase/firestore/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 218
    invoke-direct {p0}, Lcom/google/firebase/firestore/remote/GrpcCallProvider;->clearConnectivityAttemptTimer()V

    .line 219
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/remote/GrpcCallProvider;->resetChannel(Lio/grpc/ManagedChannel;)V

    .line 220
    return-void
.end method

.method synthetic lambda$onConnectivityStateChange$2$com-google-firebase-firestore-remote-GrpcCallProvider(Lio/grpc/ManagedChannel;)V
    .locals 0
    .param p1, "channel"    # Lio/grpc/ManagedChannel;

    .line 224
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/remote/GrpcCallProvider;->onConnectivityStateChange(Lio/grpc/ManagedChannel;)V

    return-void
.end method

.method synthetic lambda$onConnectivityStateChange$3$com-google-firebase-firestore-remote-GrpcCallProvider(Lio/grpc/ManagedChannel;)V
    .locals 2
    .param p1, "channel"    # Lio/grpc/ManagedChannel;

    .line 224
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/GrpcCallProvider;->asyncQueue:Lcom/google/firebase/firestore/util/AsyncQueue;

    new-instance v1, Lcom/google/firebase/firestore/remote/GrpcCallProvider$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/firestore/remote/GrpcCallProvider$$ExternalSyntheticLambda5;-><init>(Lcom/google/firebase/firestore/remote/GrpcCallProvider;Lio/grpc/ManagedChannel;)V

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/util/AsyncQueue;->enqueueAndForget(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$resetChannel$4$com-google-firebase-firestore-remote-GrpcCallProvider(Lio/grpc/ManagedChannel;)V
    .locals 0
    .param p1, "channel"    # Lio/grpc/ManagedChannel;

    .line 230
    invoke-virtual {p1}, Lio/grpc/ManagedChannel;->shutdownNow()Lio/grpc/ManagedChannel;

    .line 231
    invoke-direct {p0}, Lcom/google/firebase/firestore/remote/GrpcCallProvider;->initChannelTask()V

    .line 232
    return-void
.end method

.method shutdown()V
    .locals 5

    .line 133
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/firestore/remote/GrpcCallProvider;->channelTask:Lcom/google/android/gms/tasks/Task;

    invoke-static {v1}, Lcom/google/android/gms/tasks/Tasks;->await(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/ManagedChannel;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 147
    .local v1, "channel":Lio/grpc/ManagedChannel;
    nop

    .line 149
    invoke-virtual {v1}, Lio/grpc/ManagedChannel;->shutdown()Lio/grpc/ManagedChannel;

    .line 158
    :try_start_1
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1

    invoke-virtual {v1, v3, v4, v2}, Lio/grpc/ManagedChannel;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 159
    const-class v2, Lcom/google/firebase/firestore/remote/FirestoreChannel;

    .line 160
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Unable to gracefully shutdown the gRPC ManagedChannel. Will attempt an immediate shutdown."

    new-array v4, v0, [Ljava/lang/Object;

    .line 159
    invoke-static {v2, v3, v4}, Lcom/google/firebase/firestore/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    invoke-virtual {v1}, Lio/grpc/ManagedChannel;->shutdownNow()Lio/grpc/ManagedChannel;

    .line 167
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x3c

    invoke-virtual {v1, v3, v4, v2}, Lio/grpc/ManagedChannel;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 171
    const-class v2, Lcom/google/firebase/firestore/remote/FirestoreChannel;

    .line 172
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Unable to forcefully shutdown the gRPC ManagedChannel."

    new-array v4, v0, [Ljava/lang/Object;

    .line 171
    invoke-static {v2, v3, v4}, Lcom/google/firebase/firestore/util/Logger;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 186
    :cond_0
    goto :goto_0

    .line 176
    :catch_0
    move-exception v2

    .line 178
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Lio/grpc/ManagedChannel;->shutdownNow()Lio/grpc/ManagedChannel;

    .line 181
    const-class v3, Lcom/google/firebase/firestore/remote/FirestoreChannel;

    .line 182
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    new-array v0, v0, [Ljava/lang/Object;

    .line 181
    const-string v4, "Interrupted while shutting down the gRPC Managed Channel"

    invoke-static {v3, v4, v0}, Lcom/google/firebase/firestore/util/Logger;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 187
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :goto_0
    return-void

    .line 140
    .end local v1    # "channel":Lio/grpc/ManagedChannel;
    :catch_1
    move-exception v1

    .line 141
    .local v1, "e":Ljava/lang/InterruptedException;
    const-class v2, Lcom/google/firebase/firestore/remote/FirestoreChannel;

    .line 142
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    .line 141
    const-string v3, "Interrupted while retrieving the gRPC Managed Channel"

    invoke-static {v2, v3, v0}, Lcom/google/firebase/firestore/util/Logger;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 146
    return-void

    .line 134
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catch_2
    move-exception v0

    .line 135
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    const-class v1, Lcom/google/firebase/firestore/remote/FirestoreChannel;

    .line 136
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v2

    .line 135
    const-string v3, "Channel is not initialized, shutdown will just do nothing. Channel initializing run into exception: %s"

    invoke-static {v1, v3, v2}, Lcom/google/firebase/firestore/util/Logger;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    return-void
.end method
