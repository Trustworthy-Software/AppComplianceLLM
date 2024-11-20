.class abstract Lcom/google/firebase/firestore/remote/AbstractStream;
.super Ljava/lang/Object;
.source "AbstractStream.java"

# interfaces
.implements Lcom/google/firebase/firestore/remote/Stream;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/remote/AbstractStream$IdleTimeoutRunnable;,
        Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver;,
        Lcom/google/firebase/firestore/remote/AbstractStream$CloseGuardedRunner;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ReqT:",
        "Ljava/lang/Object;",
        "RespT:",
        "Ljava/lang/Object;",
        "CallbackT::",
        "Lcom/google/firebase/firestore/remote/Stream$StreamCallback;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/firebase/firestore/remote/Stream<",
        "TCallbackT;>;"
    }
.end annotation


# static fields
.field private static final BACKOFF_CLIENT_NETWORK_FAILURE_MAX_DELAY_MS:J

.field private static final BACKOFF_FACTOR:D = 1.5

.field private static final BACKOFF_INITIAL_DELAY_MS:J

.field private static final BACKOFF_MAX_DELAY_MS:J

.field private static final HEALTHY_TIMEOUT_MS:J

.field private static final IDLE_TIMEOUT_MS:J


# instance fields
.field final backoff:Lcom/google/firebase/firestore/util/ExponentialBackoff;

.field private call:Lio/grpc/ClientCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/ClientCall<",
            "TReqT;TRespT;>;"
        }
    .end annotation
.end field

.field private closeCount:J

.field private final firestoreChannel:Lcom/google/firebase/firestore/remote/FirestoreChannel;

.field private healthCheck:Lcom/google/firebase/firestore/util/AsyncQueue$DelayedTask;

.field private final healthTimerId:Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;

.field private final idleTimeoutRunnable:Lcom/google/firebase/firestore/remote/AbstractStream$IdleTimeoutRunnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/firestore/remote/AbstractStream<",
            "TReqT;TRespT;TCallbackT;>.IdleTimeoutRunnable;"
        }
    .end annotation
.end field

.field private idleTimer:Lcom/google/firebase/firestore/util/AsyncQueue$DelayedTask;

.field private final idleTimerId:Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;

.field final listener:Lcom/google/firebase/firestore/remote/Stream$StreamCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TCallbackT;"
        }
    .end annotation
.end field

.field private final methodDescriptor:Lio/grpc/MethodDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/MethodDescriptor<",
            "TReqT;TRespT;>;"
        }
    .end annotation
.end field

.field private state:Lcom/google/firebase/firestore/remote/Stream$State;

.field private final workerQueue:Lcom/google/firebase/firestore/util/AsyncQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 169
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    sput-wide v3, Lcom/google/firebase/firestore/remote/AbstractStream;->BACKOFF_INITIAL_DELAY_MS:J

    .line 171
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    sput-wide v3, Lcom/google/firebase/firestore/remote/AbstractStream;->BACKOFF_MAX_DELAY_MS:J

    .line 175
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/firebase/firestore/remote/AbstractStream;->IDLE_TIMEOUT_MS:J

    .line 178
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    sput-wide v3, Lcom/google/firebase/firestore/remote/AbstractStream;->HEALTHY_TIMEOUT_MS:J

    .line 183
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 184
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/firebase/firestore/remote/AbstractStream;->BACKOFF_CLIENT_NETWORK_FAILURE_MAX_DELAY_MS:J

    .line 183
    return-void
.end method

.method constructor <init>(Lcom/google/firebase/firestore/remote/FirestoreChannel;Lio/grpc/MethodDescriptor;Lcom/google/firebase/firestore/util/AsyncQueue;Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;Lcom/google/firebase/firestore/remote/Stream$StreamCallback;)V
    .locals 18
    .param p1, "channel"    # Lcom/google/firebase/firestore/remote/FirestoreChannel;
    .param p3, "workerQueue"    # Lcom/google/firebase/firestore/util/AsyncQueue;
    .param p4, "connectionTimerId"    # Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;
    .param p5, "idleTimerId"    # Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;
    .param p6, "healthTimerId"    # Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/remote/FirestoreChannel;",
            "Lio/grpc/MethodDescriptor<",
            "TReqT;TRespT;>;",
            "Lcom/google/firebase/firestore/util/AsyncQueue;",
            "Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;",
            "Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;",
            "Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;",
            "TCallbackT;)V"
        }
    .end annotation

    .line 215
    .local p0, "this":Lcom/google/firebase/firestore/remote/AbstractStream;, "Lcom/google/firebase/firestore/remote/AbstractStream<TReqT;TRespT;TCallbackT;>;"
    .local p2, "methodDescriptor":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<TReqT;TRespT;>;"
    .local p7, "listener":Lcom/google/firebase/firestore/remote/Stream$StreamCallback;, "TCallbackT;"
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 196
    sget-object v1, Lcom/google/firebase/firestore/remote/Stream$State;->Initial:Lcom/google/firebase/firestore/remote/Stream$State;

    iput-object v1, v0, Lcom/google/firebase/firestore/remote/AbstractStream;->state:Lcom/google/firebase/firestore/remote/Stream$State;

    .line 202
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/google/firebase/firestore/remote/AbstractStream;->closeCount:J

    .line 216
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/google/firebase/firestore/remote/AbstractStream;->firestoreChannel:Lcom/google/firebase/firestore/remote/FirestoreChannel;

    .line 217
    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/google/firebase/firestore/remote/AbstractStream;->methodDescriptor:Lio/grpc/MethodDescriptor;

    .line 218
    move-object/from16 v12, p3

    iput-object v12, v0, Lcom/google/firebase/firestore/remote/AbstractStream;->workerQueue:Lcom/google/firebase/firestore/util/AsyncQueue;

    .line 219
    move-object/from16 v13, p5

    iput-object v13, v0, Lcom/google/firebase/firestore/remote/AbstractStream;->idleTimerId:Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;

    .line 220
    move-object/from16 v14, p6

    iput-object v14, v0, Lcom/google/firebase/firestore/remote/AbstractStream;->healthTimerId:Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;

    .line 221
    move-object/from16 v15, p7

    iput-object v15, v0, Lcom/google/firebase/firestore/remote/AbstractStream;->listener:Lcom/google/firebase/firestore/remote/Stream$StreamCallback;

    .line 222
    new-instance v3, Lcom/google/firebase/firestore/remote/AbstractStream$IdleTimeoutRunnable;

    invoke-direct {v3, v0}, Lcom/google/firebase/firestore/remote/AbstractStream$IdleTimeoutRunnable;-><init>(Lcom/google/firebase/firestore/remote/AbstractStream;)V

    iput-object v3, v0, Lcom/google/firebase/firestore/remote/AbstractStream;->idleTimeoutRunnable:Lcom/google/firebase/firestore/remote/AbstractStream$IdleTimeoutRunnable;

    .line 224
    new-instance v10, Lcom/google/firebase/firestore/util/ExponentialBackoff;

    sget-wide v6, Lcom/google/firebase/firestore/remote/AbstractStream;->BACKOFF_INITIAL_DELAY_MS:J

    const-wide/high16 v8, 0x3ff8000000000000L    # 1.5

    sget-wide v16, Lcom/google/firebase/firestore/remote/AbstractStream;->BACKOFF_MAX_DELAY_MS:J

    move-object v3, v10

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object v1, v10

    move-wide/from16 v10, v16

    invoke-direct/range {v3 .. v11}, Lcom/google/firebase/firestore/util/ExponentialBackoff;-><init>(Lcom/google/firebase/firestore/util/AsyncQueue;Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;JDJ)V

    iput-object v1, v0, Lcom/google/firebase/firestore/remote/AbstractStream;->backoff:Lcom/google/firebase/firestore/util/ExponentialBackoff;

    .line 231
    return-void
.end method

.method static synthetic access$000(Lcom/google/firebase/firestore/remote/AbstractStream;)Lcom/google/firebase/firestore/util/AsyncQueue;
    .locals 1
    .param p0, "x0"    # Lcom/google/firebase/firestore/remote/AbstractStream;

    .line 46
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/AbstractStream;->workerQueue:Lcom/google/firebase/firestore/util/AsyncQueue;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/firebase/firestore/remote/AbstractStream;)J
    .locals 2
    .param p0, "x0"    # Lcom/google/firebase/firestore/remote/AbstractStream;

    .line 46
    iget-wide v0, p0, Lcom/google/firebase/firestore/remote/AbstractStream;->closeCount:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/google/firebase/firestore/remote/AbstractStream;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/firestore/remote/AbstractStream;

    .line 46
    invoke-direct {p0}, Lcom/google/firebase/firestore/remote/AbstractStream;->onOpen()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/firebase/firestore/remote/AbstractStream;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/firestore/remote/AbstractStream;

    .line 46
    invoke-direct {p0}, Lcom/google/firebase/firestore/remote/AbstractStream;->handleIdleCloseTimer()V

    return-void
.end method

.method private cancelHealthCheck()V
    .locals 1

    .line 474
    .local p0, "this":Lcom/google/firebase/firestore/remote/AbstractStream;, "Lcom/google/firebase/firestore/remote/AbstractStream<TReqT;TRespT;TCallbackT;>;"
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/AbstractStream;->healthCheck:Lcom/google/firebase/firestore/util/AsyncQueue$DelayedTask;

    if-eqz v0, :cond_0

    .line 475
    invoke-virtual {v0}, Lcom/google/firebase/firestore/util/AsyncQueue$DelayedTask;->cancel()V

    .line 476
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/firestore/remote/AbstractStream;->healthCheck:Lcom/google/firebase/firestore/util/AsyncQueue$DelayedTask;

    .line 478
    :cond_0
    return-void
.end method

.method private cancelIdleCheck()V
    .locals 1

    .line 467
    .local p0, "this":Lcom/google/firebase/firestore/remote/AbstractStream;, "Lcom/google/firebase/firestore/remote/AbstractStream<TReqT;TRespT;TCallbackT;>;"
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/AbstractStream;->idleTimer:Lcom/google/firebase/firestore/util/AsyncQueue$DelayedTask;

    if-eqz v0, :cond_0

    .line 468
    invoke-virtual {v0}, Lcom/google/firebase/firestore/util/AsyncQueue$DelayedTask;->cancel()V

    .line 469
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/firestore/remote/AbstractStream;->idleTimer:Lcom/google/firebase/firestore/util/AsyncQueue$DelayedTask;

    .line 471
    :cond_0
    return-void
.end method

.method private close(Lcom/google/firebase/firestore/remote/Stream$State;Lio/grpc/Status;)V
    .locals 4
    .param p1, "finalState"    # Lcom/google/firebase/firestore/remote/Stream$State;
    .param p2, "status"    # Lio/grpc/Status;

    .line 281
    .local p0, "this":Lcom/google/firebase/firestore/remote/AbstractStream;, "Lcom/google/firebase/firestore/remote/AbstractStream<TReqT;TRespT;TCallbackT;>;"
    invoke-virtual {p0}, Lcom/google/firebase/firestore/remote/AbstractStream;->isStarted()Z

    move-result v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Only started streams should be closed."

    invoke-static {v0, v3, v2}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 282
    sget-object v0, Lcom/google/firebase/firestore/remote/Stream$State;->Error:Lcom/google/firebase/firestore/remote/Stream$State;

    if-eq p1, v0, :cond_1

    .line 283
    invoke-virtual {p2}, Lio/grpc/Status;->isOk()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    new-array v1, v1, [Ljava/lang/Object;

    .line 282
    const-string v2, "Can\'t provide an error when not in an error state."

    invoke-static {v0, v2, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 285
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/AbstractStream;->workerQueue:Lcom/google/firebase/firestore/util/AsyncQueue;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/util/AsyncQueue;->verifyIsCurrentThread()V

    .line 287
    invoke-static {p2}, Lcom/google/firebase/firestore/remote/Datastore;->isMissingSslCiphers(Lio/grpc/Status;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 290
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 291
    invoke-virtual {p2}, Lio/grpc/Status;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    const-string v2, "The Cloud Firestore client failed to establish a secure connection. This is likely a problem with your app, rather than with Cloud Firestore itself. See https://bit.ly/2XFpdma for instructions on how to enable TLS on Android 4.x devices."

    invoke-direct {v0, v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 290
    invoke-static {v0}, Lcom/google/firebase/firestore/util/Util;->crashMainThread(Ljava/lang/RuntimeException;)V

    .line 295
    :cond_2
    invoke-direct {p0}, Lcom/google/firebase/firestore/remote/AbstractStream;->cancelIdleCheck()V

    .line 296
    invoke-direct {p0}, Lcom/google/firebase/firestore/remote/AbstractStream;->cancelHealthCheck()V

    .line 297
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/AbstractStream;->backoff:Lcom/google/firebase/firestore/util/ExponentialBackoff;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/util/ExponentialBackoff;->cancel()V

    .line 301
    iget-wide v0, p0, Lcom/google/firebase/firestore/remote/AbstractStream;->closeCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/firebase/firestore/remote/AbstractStream;->closeCount:J

    .line 303
    invoke-virtual {p2}, Lio/grpc/Status;->getCode()Lio/grpc/Status$Code;

    move-result-object v0

    .line 304
    .local v0, "code":Lio/grpc/Status$Code;
    sget-object v1, Lio/grpc/Status$Code;->OK:Lio/grpc/Status$Code;

    if-ne v0, v1, :cond_3

    .line 306
    iget-object v1, p0, Lcom/google/firebase/firestore/remote/AbstractStream;->backoff:Lcom/google/firebase/firestore/util/ExponentialBackoff;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/util/ExponentialBackoff;->reset()V

    goto :goto_2

    .line 307
    :cond_3
    sget-object v1, Lio/grpc/Status$Code;->RESOURCE_EXHAUSTED:Lio/grpc/Status$Code;

    if-ne v0, v1, :cond_4

    .line 308
    nop

    .line 309
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 311
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 308
    const-string v3, "(%x) Using maximum backoff delay to prevent overloading the backend."

    invoke-static {v1, v3, v2}, Lcom/google/firebase/firestore/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 312
    iget-object v1, p0, Lcom/google/firebase/firestore/remote/AbstractStream;->backoff:Lcom/google/firebase/firestore/util/ExponentialBackoff;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/util/ExponentialBackoff;->resetToMax()V

    goto :goto_2

    .line 313
    :cond_4
    sget-object v1, Lio/grpc/Status$Code;->UNAUTHENTICATED:Lio/grpc/Status$Code;

    if-ne v0, v1, :cond_5

    iget-object v1, p0, Lcom/google/firebase/firestore/remote/AbstractStream;->state:Lcom/google/firebase/firestore/remote/Stream$State;

    sget-object v2, Lcom/google/firebase/firestore/remote/Stream$State;->Healthy:Lcom/google/firebase/firestore/remote/Stream$State;

    if-eq v1, v2, :cond_5

    .line 320
    iget-object v1, p0, Lcom/google/firebase/firestore/remote/AbstractStream;->firestoreChannel:Lcom/google/firebase/firestore/remote/FirestoreChannel;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/remote/FirestoreChannel;->invalidateToken()V

    goto :goto_2

    .line 321
    :cond_5
    sget-object v1, Lio/grpc/Status$Code;->UNAVAILABLE:Lio/grpc/Status$Code;

    if-ne v0, v1, :cond_7

    .line 324
    invoke-virtual {p2}, Lio/grpc/Status;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/net/UnknownHostException;

    if-nez v1, :cond_6

    .line 325
    invoke-virtual {p2}, Lio/grpc/Status;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/net/ConnectException;

    if-eqz v1, :cond_7

    .line 326
    :cond_6
    iget-object v1, p0, Lcom/google/firebase/firestore/remote/AbstractStream;->backoff:Lcom/google/firebase/firestore/util/ExponentialBackoff;

    sget-wide v2, Lcom/google/firebase/firestore/remote/AbstractStream;->BACKOFF_CLIENT_NETWORK_FAILURE_MAX_DELAY_MS:J

    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/firestore/util/ExponentialBackoff;->setTemporaryMaxDelay(J)V

    .line 330
    :cond_7
    :goto_2
    sget-object v1, Lcom/google/firebase/firestore/remote/Stream$State;->Error:Lcom/google/firebase/firestore/remote/Stream$State;

    if-eq p1, v1, :cond_8

    .line 331
    nop

    .line 332
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 334
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 331
    const-string v3, "(%x) Performing stream teardown"

    invoke-static {v1, v3, v2}, Lcom/google/firebase/firestore/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 335
    invoke-virtual {p0}, Lcom/google/firebase/firestore/remote/AbstractStream;->tearDown()V

    .line 338
    :cond_8
    iget-object v1, p0, Lcom/google/firebase/firestore/remote/AbstractStream;->call:Lio/grpc/ClientCall;

    if-eqz v1, :cond_a

    .line 341
    invoke-virtual {p2}, Lio/grpc/Status;->isOk()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 342
    nop

    .line 343
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 345
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 342
    const-string v3, "(%x) Closing stream client-side"

    invoke-static {v1, v3, v2}, Lcom/google/firebase/firestore/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 346
    iget-object v1, p0, Lcom/google/firebase/firestore/remote/AbstractStream;->call:Lio/grpc/ClientCall;

    invoke-virtual {v1}, Lio/grpc/ClientCall;->halfClose()V

    .line 348
    :cond_9
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/firebase/firestore/remote/AbstractStream;->call:Lio/grpc/ClientCall;

    .line 353
    :cond_a
    iput-object p1, p0, Lcom/google/firebase/firestore/remote/AbstractStream;->state:Lcom/google/firebase/firestore/remote/Stream$State;

    .line 356
    iget-object v1, p0, Lcom/google/firebase/firestore/remote/AbstractStream;->listener:Lcom/google/firebase/firestore/remote/Stream$StreamCallback;

    invoke-interface {v1, p2}, Lcom/google/firebase/firestore/remote/Stream$StreamCallback;->onClose(Lio/grpc/Status;)V

    .line 357
    return-void
.end method

.method private handleIdleCloseTimer()V
    .locals 2

    .line 394
    .local p0, "this":Lcom/google/firebase/firestore/remote/AbstractStream;, "Lcom/google/firebase/firestore/remote/AbstractStream<TReqT;TRespT;TCallbackT;>;"
    invoke-virtual {p0}, Lcom/google/firebase/firestore/remote/AbstractStream;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 397
    sget-object v0, Lcom/google/firebase/firestore/remote/Stream$State;->Initial:Lcom/google/firebase/firestore/remote/Stream$State;

    sget-object v1, Lio/grpc/Status;->OK:Lio/grpc/Status;

    invoke-direct {p0, v0, v1}, Lcom/google/firebase/firestore/remote/AbstractStream;->close(Lcom/google/firebase/firestore/remote/Stream$State;Lio/grpc/Status;)V

    .line 399
    :cond_0
    return-void
.end method

.method private onOpen()V
    .locals 5

    .line 415
    .local p0, "this":Lcom/google/firebase/firestore/remote/AbstractStream;, "Lcom/google/firebase/firestore/remote/AbstractStream<TReqT;TRespT;TCallbackT;>;"
    sget-object v0, Lcom/google/firebase/firestore/remote/Stream$State;->Open:Lcom/google/firebase/firestore/remote/Stream$State;

    iput-object v0, p0, Lcom/google/firebase/firestore/remote/AbstractStream;->state:Lcom/google/firebase/firestore/remote/Stream$State;

    .line 416
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/AbstractStream;->listener:Lcom/google/firebase/firestore/remote/Stream$StreamCallback;

    invoke-interface {v0}, Lcom/google/firebase/firestore/remote/Stream$StreamCallback;->onOpen()V

    .line 419
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/AbstractStream;->healthCheck:Lcom/google/firebase/firestore/util/AsyncQueue$DelayedTask;

    if-nez v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/AbstractStream;->workerQueue:Lcom/google/firebase/firestore/util/AsyncQueue;

    iget-object v1, p0, Lcom/google/firebase/firestore/remote/AbstractStream;->healthTimerId:Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;

    sget-wide v2, Lcom/google/firebase/firestore/remote/AbstractStream;->HEALTHY_TIMEOUT_MS:J

    new-instance v4, Lcom/google/firebase/firestore/remote/AbstractStream$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/google/firebase/firestore/remote/AbstractStream$$ExternalSyntheticLambda0;-><init>(Lcom/google/firebase/firestore/remote/AbstractStream;)V

    .line 421
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/firebase/firestore/util/AsyncQueue;->enqueueAfterDelay(Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;JLjava/lang/Runnable;)Lcom/google/firebase/firestore/util/AsyncQueue$DelayedTask;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/firestore/remote/AbstractStream;->healthCheck:Lcom/google/firebase/firestore/util/AsyncQueue$DelayedTask;

    .line 430
    :cond_0
    return-void
.end method

.method private performBackoff()V
    .locals 3

    .line 435
    .local p0, "this":Lcom/google/firebase/firestore/remote/AbstractStream;, "Lcom/google/firebase/firestore/remote/AbstractStream<TReqT;TRespT;TCallbackT;>;"
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/AbstractStream;->state:Lcom/google/firebase/firestore/remote/Stream$State;

    sget-object v1, Lcom/google/firebase/firestore/remote/Stream$State;->Error:Lcom/google/firebase/firestore/remote/Stream$State;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v1, "Should only perform backoff in an error state"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 436
    sget-object v0, Lcom/google/firebase/firestore/remote/Stream$State;->Backoff:Lcom/google/firebase/firestore/remote/Stream$State;

    iput-object v0, p0, Lcom/google/firebase/firestore/remote/AbstractStream;->state:Lcom/google/firebase/firestore/remote/Stream$State;

    .line 438
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/AbstractStream;->backoff:Lcom/google/firebase/firestore/util/ExponentialBackoff;

    new-instance v1, Lcom/google/firebase/firestore/remote/AbstractStream$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/google/firebase/firestore/remote/AbstractStream$$ExternalSyntheticLambda1;-><init>(Lcom/google/firebase/firestore/remote/AbstractStream;)V

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/util/ExponentialBackoff;->backoffAndRun(Ljava/lang/Runnable;)V

    .line 446
    return-void
.end method


# virtual methods
.method handleServerClose(Lio/grpc/Status;)V
    .locals 3
    .param p1, "status"    # Lio/grpc/Status;

    .line 404
    .local p0, "this":Lcom/google/firebase/firestore/remote/AbstractStream;, "Lcom/google/firebase/firestore/remote/AbstractStream<TReqT;TRespT;TCallbackT;>;"
    invoke-virtual {p0}, Lcom/google/firebase/firestore/remote/AbstractStream;->isStarted()Z

    move-result v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Can\'t handle server close on non-started stream!"

    invoke-static {v0, v2, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 410
    sget-object v0, Lcom/google/firebase/firestore/remote/Stream$State;->Error:Lcom/google/firebase/firestore/remote/Stream$State;

    invoke-direct {p0, v0, p1}, Lcom/google/firebase/firestore/remote/AbstractStream;->close(Lcom/google/firebase/firestore/remote/Stream$State;Lio/grpc/Status;)V

    .line 411
    return-void
.end method

.method public inhibitBackoff()V
    .locals 3

    .line 374
    .local p0, "this":Lcom/google/firebase/firestore/remote/AbstractStream;, "Lcom/google/firebase/firestore/remote/AbstractStream<TReqT;TRespT;TCallbackT;>;"
    invoke-virtual {p0}, Lcom/google/firebase/firestore/remote/AbstractStream;->isStarted()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Can only inhibit backoff after in a stopped state"

    invoke-static {v0, v2, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 375
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/AbstractStream;->workerQueue:Lcom/google/firebase/firestore/util/AsyncQueue;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/util/AsyncQueue;->verifyIsCurrentThread()V

    .line 377
    sget-object v0, Lcom/google/firebase/firestore/remote/Stream$State;->Initial:Lcom/google/firebase/firestore/remote/Stream$State;

    iput-object v0, p0, Lcom/google/firebase/firestore/remote/AbstractStream;->state:Lcom/google/firebase/firestore/remote/Stream$State;

    .line 378
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/AbstractStream;->backoff:Lcom/google/firebase/firestore/util/ExponentialBackoff;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/util/ExponentialBackoff;->reset()V

    .line 379
    return-void
.end method

.method public isOpen()Z
    .locals 2

    .line 241
    .local p0, "this":Lcom/google/firebase/firestore/remote/AbstractStream;, "Lcom/google/firebase/firestore/remote/AbstractStream<TReqT;TRespT;TCallbackT;>;"
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/AbstractStream;->workerQueue:Lcom/google/firebase/firestore/util/AsyncQueue;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/util/AsyncQueue;->verifyIsCurrentThread()V

    .line 242
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/AbstractStream;->state:Lcom/google/firebase/firestore/remote/Stream$State;

    sget-object v1, Lcom/google/firebase/firestore/remote/Stream$State;->Open:Lcom/google/firebase/firestore/remote/Stream$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/firebase/firestore/remote/AbstractStream;->state:Lcom/google/firebase/firestore/remote/Stream$State;

    sget-object v1, Lcom/google/firebase/firestore/remote/Stream$State;->Healthy:Lcom/google/firebase/firestore/remote/Stream$State;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isStarted()Z
    .locals 2

    .line 235
    .local p0, "this":Lcom/google/firebase/firestore/remote/AbstractStream;, "Lcom/google/firebase/firestore/remote/AbstractStream<TReqT;TRespT;TCallbackT;>;"
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/AbstractStream;->workerQueue:Lcom/google/firebase/firestore/util/AsyncQueue;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/util/AsyncQueue;->verifyIsCurrentThread()V

    .line 236
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/AbstractStream;->state:Lcom/google/firebase/firestore/remote/Stream$State;

    sget-object v1, Lcom/google/firebase/firestore/remote/Stream$State;->Starting:Lcom/google/firebase/firestore/remote/Stream$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/firebase/firestore/remote/AbstractStream;->state:Lcom/google/firebase/firestore/remote/Stream$State;

    sget-object v1, Lcom/google/firebase/firestore/remote/Stream$State;->Backoff:Lcom/google/firebase/firestore/remote/Stream$State;

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/google/firebase/firestore/remote/AbstractStream;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method synthetic lambda$onOpen$0$com-google-firebase-firestore-remote-AbstractStream()V
    .locals 1

    .line 425
    .local p0, "this":Lcom/google/firebase/firestore/remote/AbstractStream;, "Lcom/google/firebase/firestore/remote/AbstractStream<TReqT;TRespT;TCallbackT;>;"
    invoke-virtual {p0}, Lcom/google/firebase/firestore/remote/AbstractStream;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 426
    sget-object v0, Lcom/google/firebase/firestore/remote/Stream$State;->Healthy:Lcom/google/firebase/firestore/remote/Stream$State;

    iput-object v0, p0, Lcom/google/firebase/firestore/remote/AbstractStream;->state:Lcom/google/firebase/firestore/remote/Stream$State;

    .line 428
    :cond_0
    return-void
.end method

.method synthetic lambda$performBackoff$1$com-google-firebase-firestore-remote-AbstractStream()V
    .locals 4

    .line 440
    .local p0, "this":Lcom/google/firebase/firestore/remote/AbstractStream;, "Lcom/google/firebase/firestore/remote/AbstractStream<TReqT;TRespT;TCallbackT;>;"
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/AbstractStream;->state:Lcom/google/firebase/firestore/remote/Stream$State;

    sget-object v1, Lcom/google/firebase/firestore/remote/Stream$State;->Backoff:Lcom/google/firebase/firestore/remote/Stream$State;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v1, p0, Lcom/google/firebase/firestore/remote/AbstractStream;->state:Lcom/google/firebase/firestore/remote/Stream$State;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "State should still be backoff but was %s"

    invoke-static {v0, v3, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 442
    sget-object v0, Lcom/google/firebase/firestore/remote/Stream$State;->Initial:Lcom/google/firebase/firestore/remote/Stream$State;

    iput-object v0, p0, Lcom/google/firebase/firestore/remote/AbstractStream;->state:Lcom/google/firebase/firestore/remote/Stream$State;

    .line 443
    invoke-virtual {p0}, Lcom/google/firebase/firestore/remote/AbstractStream;->start()V

    .line 444
    invoke-virtual {p0}, Lcom/google/firebase/firestore/remote/AbstractStream;->isStarted()Z

    move-result v0

    const-string v1, "Stream should have started"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 445
    return-void
.end method

.method markIdle()V
    .locals 5

    .line 460
    .local p0, "this":Lcom/google/firebase/firestore/remote/AbstractStream;, "Lcom/google/firebase/firestore/remote/AbstractStream<TReqT;TRespT;TCallbackT;>;"
    invoke-virtual {p0}, Lcom/google/firebase/firestore/remote/AbstractStream;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/firestore/remote/AbstractStream;->idleTimer:Lcom/google/firebase/firestore/util/AsyncQueue$DelayedTask;

    if-nez v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/AbstractStream;->workerQueue:Lcom/google/firebase/firestore/util/AsyncQueue;

    iget-object v1, p0, Lcom/google/firebase/firestore/remote/AbstractStream;->idleTimerId:Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;

    sget-wide v2, Lcom/google/firebase/firestore/remote/AbstractStream;->IDLE_TIMEOUT_MS:J

    iget-object v4, p0, Lcom/google/firebase/firestore/remote/AbstractStream;->idleTimeoutRunnable:Lcom/google/firebase/firestore/remote/AbstractStream$IdleTimeoutRunnable;

    .line 462
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/firebase/firestore/util/AsyncQueue;->enqueueAfterDelay(Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;JLjava/lang/Runnable;)Lcom/google/firebase/firestore/util/AsyncQueue$DelayedTask;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/firestore/remote/AbstractStream;->idleTimer:Lcom/google/firebase/firestore/util/AsyncQueue$DelayedTask;

    .line 464
    :cond_0
    return-void
.end method

.method public abstract onNext(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRespT;)V"
        }
    .end annotation
.end method

.method public start()V
    .locals 5

    .line 247
    .local p0, "this":Lcom/google/firebase/firestore/remote/AbstractStream;, "Lcom/google/firebase/firestore/remote/AbstractStream<TReqT;TRespT;TCallbackT;>;"
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/AbstractStream;->workerQueue:Lcom/google/firebase/firestore/util/AsyncQueue;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/util/AsyncQueue;->verifyIsCurrentThread()V

    .line 248
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/AbstractStream;->call:Lio/grpc/ClientCall;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "Last call still set"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 249
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/AbstractStream;->idleTimer:Lcom/google/firebase/firestore/util/AsyncQueue$DelayedTask;

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    const-string v3, "Idle timer still set"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 251
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/AbstractStream;->state:Lcom/google/firebase/firestore/remote/Stream$State;

    sget-object v3, Lcom/google/firebase/firestore/remote/Stream$State;->Error:Lcom/google/firebase/firestore/remote/Stream$State;

    if-ne v0, v3, :cond_2

    .line 252
    invoke-direct {p0}, Lcom/google/firebase/firestore/remote/AbstractStream;->performBackoff()V

    .line 253
    return-void

    .line 256
    :cond_2
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/AbstractStream;->state:Lcom/google/firebase/firestore/remote/Stream$State;

    sget-object v3, Lcom/google/firebase/firestore/remote/Stream$State;->Initial:Lcom/google/firebase/firestore/remote/Stream$State;

    if-ne v0, v3, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    const-string v0, "Already started"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 258
    new-instance v0, Lcom/google/firebase/firestore/remote/AbstractStream$CloseGuardedRunner;

    iget-wide v1, p0, Lcom/google/firebase/firestore/remote/AbstractStream;->closeCount:J

    invoke-direct {v0, p0, v1, v2}, Lcom/google/firebase/firestore/remote/AbstractStream$CloseGuardedRunner;-><init>(Lcom/google/firebase/firestore/remote/AbstractStream;J)V

    .line 259
    .local v0, "closeGuardedRunner":Lcom/google/firebase/firestore/remote/AbstractStream$CloseGuardedRunner;, "Lcom/google/firebase/firestore/remote/AbstractStream<TReqT;TRespT;TCallbackT;>.CloseGuardedRunner;"
    new-instance v1, Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver;

    invoke-direct {v1, p0, v0}, Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver;-><init>(Lcom/google/firebase/firestore/remote/AbstractStream;Lcom/google/firebase/firestore/remote/AbstractStream$CloseGuardedRunner;)V

    .line 260
    .local v1, "streamObserver":Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver;, "Lcom/google/firebase/firestore/remote/AbstractStream<TReqT;TRespT;TCallbackT;>.StreamObserver;"
    iget-object v2, p0, Lcom/google/firebase/firestore/remote/AbstractStream;->firestoreChannel:Lcom/google/firebase/firestore/remote/FirestoreChannel;

    iget-object v3, p0, Lcom/google/firebase/firestore/remote/AbstractStream;->methodDescriptor:Lio/grpc/MethodDescriptor;

    invoke-virtual {v2, v3, v1}, Lcom/google/firebase/firestore/remote/FirestoreChannel;->runBidiStreamingRpc(Lio/grpc/MethodDescriptor;Lcom/google/firebase/firestore/remote/IncomingStreamObserver;)Lio/grpc/ClientCall;

    move-result-object v2

    iput-object v2, p0, Lcom/google/firebase/firestore/remote/AbstractStream;->call:Lio/grpc/ClientCall;

    .line 262
    sget-object v2, Lcom/google/firebase/firestore/remote/Stream$State;->Starting:Lcom/google/firebase/firestore/remote/Stream$State;

    iput-object v2, p0, Lcom/google/firebase/firestore/remote/AbstractStream;->state:Lcom/google/firebase/firestore/remote/Stream$State;

    .line 263
    return-void
.end method

.method public stop()V
    .locals 2

    .line 367
    .local p0, "this":Lcom/google/firebase/firestore/remote/AbstractStream;, "Lcom/google/firebase/firestore/remote/AbstractStream<TReqT;TRespT;TCallbackT;>;"
    invoke-virtual {p0}, Lcom/google/firebase/firestore/remote/AbstractStream;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    sget-object v0, Lcom/google/firebase/firestore/remote/Stream$State;->Initial:Lcom/google/firebase/firestore/remote/Stream$State;

    sget-object v1, Lio/grpc/Status;->OK:Lio/grpc/Status;

    invoke-direct {p0, v0, v1}, Lcom/google/firebase/firestore/remote/AbstractStream;->close(Lcom/google/firebase/firestore/remote/Stream$State;Lio/grpc/Status;)V

    .line 370
    :cond_0
    return-void
.end method

.method protected tearDown()V
    .locals 0

    .line 363
    .local p0, "this":Lcom/google/firebase/firestore/remote/AbstractStream;, "Lcom/google/firebase/firestore/remote/AbstractStream<TReqT;TRespT;TCallbackT;>;"
    return-void
.end method

.method protected writeRequest(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TReqT;)V"
        }
    .end annotation

    .line 382
    .local p0, "this":Lcom/google/firebase/firestore/remote/AbstractStream;, "Lcom/google/firebase/firestore/remote/AbstractStream<TReqT;TRespT;TCallbackT;>;"
    .local p1, "message":Ljava/lang/Object;, "TReqT;"
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/AbstractStream;->workerQueue:Lcom/google/firebase/firestore/util/AsyncQueue;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/util/AsyncQueue;->verifyIsCurrentThread()V

    .line 383
    nop

    .line 384
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 386
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1, p1}, [Ljava/lang/Object;

    move-result-object v1

    .line 383
    const-string v2, "(%x) Stream sending: %s"

    invoke-static {v0, v2, v1}, Lcom/google/firebase/firestore/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 388
    invoke-direct {p0}, Lcom/google/firebase/firestore/remote/AbstractStream;->cancelIdleCheck()V

    .line 389
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/AbstractStream;->call:Lio/grpc/ClientCall;

    invoke-virtual {v0, p1}, Lio/grpc/ClientCall;->sendMessage(Ljava/lang/Object;)V

    .line 390
    return-void
.end method
