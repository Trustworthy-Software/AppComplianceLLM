.class final Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;
.super Lio/grpc/stub/ClientCallStreamObserver;
.source "ClientCalls.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/stub/ClientCalls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CallToStreamObserverAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ReqT:",
        "Ljava/lang/Object;",
        ">",
        "Lio/grpc/stub/ClientCallStreamObserver<",
        "TReqT;>;"
    }
.end annotation


# instance fields
.field private aborted:Z

.field private autoRequestEnabled:Z

.field private final call:Lio/grpc/ClientCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/ClientCall<",
            "TReqT;*>;"
        }
    .end annotation
.end field

.field private completed:Z

.field private frozen:Z

.field private initialRequest:I

.field private onReadyHandler:Ljava/lang/Runnable;

.field private final streamingResponse:Z


# direct methods
.method constructor <init>(Lio/grpc/ClientCall;Z)V
    .locals 1
    .param p2, "streamingResponse"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/ClientCall<",
            "TReqT;*>;Z)V"
        }
    .end annotation

    .line 361
    .local p0, "this":Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;, "Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter<TReqT;>;"
    .local p1, "call":Lio/grpc/ClientCall;, "Lio/grpc/ClientCall<TReqT;*>;"
    invoke-direct {p0}, Lio/grpc/stub/ClientCallStreamObserver;-><init>()V

    .line 355
    const/4 v0, 0x1

    iput v0, p0, Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;->initialRequest:I

    .line 356
    iput-boolean v0, p0, Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;->autoRequestEnabled:Z

    .line 357
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;->aborted:Z

    .line 358
    iput-boolean v0, p0, Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;->completed:Z

    .line 362
    iput-object p1, p0, Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;->call:Lio/grpc/ClientCall;

    .line 363
    iput-boolean p2, p0, Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;->streamingResponse:Z

    .line 364
    return-void
.end method

.method static synthetic access$100(Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;)V
    .locals 0
    .param p0, "x0"    # Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;

    .line 349
    invoke-direct {p0}, Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;->freeze()V

    return-void
.end method

.method static synthetic access$200(Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;

    .line 349
    iget-boolean v0, p0, Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;->streamingResponse:Z

    return v0
.end method

.method static synthetic access$300(Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;

    .line 349
    iget-boolean v0, p0, Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;->autoRequestEnabled:Z

    return v0
.end method

.method static synthetic access$400(Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;

    .line 349
    iget-object v0, p0, Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;->onReadyHandler:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$500(Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;)I
    .locals 1
    .param p0, "x0"    # Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;

    .line 349
    iget v0, p0, Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;->initialRequest:I

    return v0
.end method

.method private freeze()V
    .locals 1

    .line 367
    .local p0, "this":Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;, "Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter<TReqT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;->frozen:Z

    .line 368
    return-void
.end method


# virtual methods
.method public cancel(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "cause"    # Ljava/lang/Throwable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 437
    .local p0, "this":Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;, "Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter<TReqT;>;"
    iget-object v0, p0, Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;->call:Lio/grpc/ClientCall;

    invoke-virtual {v0, p1, p2}, Lio/grpc/ClientCall;->cancel(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 438
    return-void
.end method

.method public disableAutoInboundFlowControl()V
    .locals 1

    .line 405
    .local p0, "this":Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;, "Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter<TReqT;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;->disableAutoRequestWithInitial(I)V

    .line 406
    return-void
.end method

.method public disableAutoRequestWithInitial(I)V
    .locals 3
    .param p1, "request"    # I

    .line 410
    .local p0, "this":Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;, "Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter<TReqT;>;"
    iget-boolean v0, p0, Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;->frozen:Z

    if-nez v0, :cond_1

    .line 414
    const/4 v0, 0x0

    if-ltz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const-string v2, "Initial requests must be non-negative"

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 415
    iput p1, p0, Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;->initialRequest:I

    .line 416
    iput-boolean v0, p0, Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;->autoRequestEnabled:Z

    .line 417
    return-void

    .line 411
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot disable auto flow control after call started. Use ClientResponseObserver"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isReady()Z
    .locals 1

    .line 391
    .local p0, "this":Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;, "Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter<TReqT;>;"
    iget-object v0, p0, Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;->call:Lio/grpc/ClientCall;

    invoke-virtual {v0}, Lio/grpc/ClientCall;->isReady()Z

    move-result v0

    return v0
.end method

.method public onCompleted()V
    .locals 1

    .line 385
    .local p0, "this":Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;, "Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter<TReqT;>;"
    iget-object v0, p0, Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;->call:Lio/grpc/ClientCall;

    invoke-virtual {v0}, Lio/grpc/ClientCall;->halfClose()V

    .line 386
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;->completed:Z

    .line 387
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 379
    .local p0, "this":Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;, "Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter<TReqT;>;"
    iget-object v0, p0, Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;->call:Lio/grpc/ClientCall;

    const-string v1, "Cancelled by client with StreamObserver.onError()"

    invoke-virtual {v0, v1, p1}, Lio/grpc/ClientCall;->cancel(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 380
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;->aborted:Z

    .line 381
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TReqT;)V"
        }
    .end annotation

    .line 372
    .local p0, "this":Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;, "Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter<TReqT;>;"
    .local p1, "value":Ljava/lang/Object;, "TReqT;"
    iget-boolean v0, p0, Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;->aborted:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Stream was terminated by error, no further calls are allowed"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 373
    iget-boolean v0, p0, Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;->completed:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Stream is already completed, no further calls are allowed"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 374
    iget-object v0, p0, Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;->call:Lio/grpc/ClientCall;

    invoke-virtual {v0, p1}, Lio/grpc/ClientCall;->sendMessage(Ljava/lang/Object;)V

    .line 375
    return-void
.end method

.method public request(I)V
    .locals 2
    .param p1, "count"    # I

    .line 421
    .local p0, "this":Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;, "Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter<TReqT;>;"
    iget-boolean v0, p0, Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;->streamingResponse:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 424
    iget-object v0, p0, Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;->call:Lio/grpc/ClientCall;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lio/grpc/ClientCall;->request(I)V

    goto :goto_0

    .line 426
    :cond_0
    iget-object v0, p0, Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;->call:Lio/grpc/ClientCall;

    invoke-virtual {v0, p1}, Lio/grpc/ClientCall;->request(I)V

    .line 428
    :goto_0
    return-void
.end method

.method public setMessageCompression(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 432
    .local p0, "this":Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;, "Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter<TReqT;>;"
    iget-object v0, p0, Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;->call:Lio/grpc/ClientCall;

    invoke-virtual {v0, p1}, Lio/grpc/ClientCall;->setMessageCompression(Z)V

    .line 433
    return-void
.end method

.method public setOnReadyHandler(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "onReadyHandler"    # Ljava/lang/Runnable;

    .line 396
    .local p0, "this":Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;, "Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter<TReqT;>;"
    iget-boolean v0, p0, Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;->frozen:Z

    if-nez v0, :cond_0

    .line 400
    iput-object p1, p0, Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;->onReadyHandler:Ljava/lang/Runnable;

    .line 401
    return-void

    .line 397
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot alter onReadyHandler after call started. Use ClientResponseObserver"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
