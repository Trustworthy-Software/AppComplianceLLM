.class public final Lio/grpc/stub/ServerCalls;
.super Ljava/lang/Object;
.source "ServerCalls.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/stub/ServerCalls$NoopStreamObserver;,
        Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;,
        Lio/grpc/stub/ServerCalls$StreamingRequestMethod;,
        Lio/grpc/stub/ServerCalls$UnaryRequestMethod;,
        Lio/grpc/stub/ServerCalls$StreamingServerCallHandler;,
        Lio/grpc/stub/ServerCalls$UnaryServerCallHandler;,
        Lio/grpc/stub/ServerCalls$BidiStreamingMethod;,
        Lio/grpc/stub/ServerCalls$ClientStreamingMethod;,
        Lio/grpc/stub/ServerCalls$ServerStreamingMethod;,
        Lio/grpc/stub/ServerCalls$UnaryMethod;
    }
.end annotation


# static fields
.field static final MISSING_REQUEST:Ljava/lang/String; = "Half-closed without a request"

.field static final TOO_MANY_REQUESTS:Ljava/lang/String; = "Too many requests"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public static asyncBidiStreamingCall(Lio/grpc/stub/ServerCalls$BidiStreamingMethod;)Lio/grpc/ServerCallHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ReqT:",
            "Ljava/lang/Object;",
            "RespT:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/stub/ServerCalls$BidiStreamingMethod<",
            "TReqT;TRespT;>;)",
            "Lio/grpc/ServerCallHandler<",
            "TReqT;TRespT;>;"
        }
    .end annotation

    .line 81
    .local p0, "method":Lio/grpc/stub/ServerCalls$BidiStreamingMethod;, "Lio/grpc/stub/ServerCalls$BidiStreamingMethod<TReqT;TRespT;>;"
    new-instance v0, Lio/grpc/stub/ServerCalls$StreamingServerCallHandler;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lio/grpc/stub/ServerCalls$StreamingServerCallHandler;-><init>(Lio/grpc/stub/ServerCalls$StreamingRequestMethod;Z)V

    return-object v0
.end method

.method public static asyncClientStreamingCall(Lio/grpc/stub/ServerCalls$ClientStreamingMethod;)Lio/grpc/ServerCallHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ReqT:",
            "Ljava/lang/Object;",
            "RespT:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/stub/ServerCalls$ClientStreamingMethod<",
            "TReqT;TRespT;>;)",
            "Lio/grpc/ServerCallHandler<",
            "TReqT;TRespT;>;"
        }
    .end annotation

    .line 71
    .local p0, "method":Lio/grpc/stub/ServerCalls$ClientStreamingMethod;, "Lio/grpc/stub/ServerCalls$ClientStreamingMethod<TReqT;TRespT;>;"
    new-instance v0, Lio/grpc/stub/ServerCalls$StreamingServerCallHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/grpc/stub/ServerCalls$StreamingServerCallHandler;-><init>(Lio/grpc/stub/ServerCalls$StreamingRequestMethod;Z)V

    return-object v0
.end method

.method public static asyncServerStreamingCall(Lio/grpc/stub/ServerCalls$ServerStreamingMethod;)Lio/grpc/ServerCallHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ReqT:",
            "Ljava/lang/Object;",
            "RespT:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/stub/ServerCalls$ServerStreamingMethod<",
            "TReqT;TRespT;>;)",
            "Lio/grpc/ServerCallHandler<",
            "TReqT;TRespT;>;"
        }
    .end annotation

    .line 61
    .local p0, "method":Lio/grpc/stub/ServerCalls$ServerStreamingMethod;, "Lio/grpc/stub/ServerCalls$ServerStreamingMethod<TReqT;TRespT;>;"
    new-instance v0, Lio/grpc/stub/ServerCalls$UnaryServerCallHandler;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lio/grpc/stub/ServerCalls$UnaryServerCallHandler;-><init>(Lio/grpc/stub/ServerCalls$UnaryRequestMethod;Z)V

    return-object v0
.end method

.method public static asyncUnaryCall(Lio/grpc/stub/ServerCalls$UnaryMethod;)Lio/grpc/ServerCallHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ReqT:",
            "Ljava/lang/Object;",
            "RespT:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/stub/ServerCalls$UnaryMethod<",
            "TReqT;TRespT;>;)",
            "Lio/grpc/ServerCallHandler<",
            "TReqT;TRespT;>;"
        }
    .end annotation

    .line 51
    .local p0, "method":Lio/grpc/stub/ServerCalls$UnaryMethod;, "Lio/grpc/stub/ServerCalls$UnaryMethod<TReqT;TRespT;>;"
    new-instance v0, Lio/grpc/stub/ServerCalls$UnaryServerCallHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/grpc/stub/ServerCalls$UnaryServerCallHandler;-><init>(Lio/grpc/stub/ServerCalls$UnaryRequestMethod;Z)V

    return-object v0
.end method

.method public static asyncUnimplementedStreamingCall(Lio/grpc/MethodDescriptor;Lio/grpc/stub/StreamObserver;)Lio/grpc/stub/StreamObserver;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ReqT:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/MethodDescriptor<",
            "**>;",
            "Lio/grpc/stub/StreamObserver<",
            "*>;)",
            "Lio/grpc/stub/StreamObserver<",
            "TReqT;>;"
        }
    .end annotation

    .line 476
    .local p0, "methodDescriptor":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<**>;"
    .local p1, "responseObserver":Lio/grpc/stub/StreamObserver;, "Lio/grpc/stub/StreamObserver<*>;"
    invoke-static {p0, p1}, Lio/grpc/stub/ServerCalls;->asyncUnimplementedUnaryCall(Lio/grpc/MethodDescriptor;Lio/grpc/stub/StreamObserver;)V

    .line 477
    new-instance v0, Lio/grpc/stub/ServerCalls$NoopStreamObserver;

    invoke-direct {v0}, Lio/grpc/stub/ServerCalls$NoopStreamObserver;-><init>()V

    return-object v0
.end method

.method public static asyncUnimplementedUnaryCall(Lio/grpc/MethodDescriptor;Lio/grpc/stub/StreamObserver;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/MethodDescriptor<",
            "**>;",
            "Lio/grpc/stub/StreamObserver<",
            "*>;)V"
        }
    .end annotation

    .line 458
    .local p0, "methodDescriptor":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<**>;"
    .local p1, "responseObserver":Lio/grpc/stub/StreamObserver;, "Lio/grpc/stub/StreamObserver<*>;"
    const-string v0, "methodDescriptor"

    invoke-static {p0, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    const-string v0, "responseObserver"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    sget-object v0, Lio/grpc/Status;->UNIMPLEMENTED:Lio/grpc/Status;

    .line 462
    invoke-virtual {p0}, Lio/grpc/MethodDescriptor;->getFullMethodName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 461
    const-string v2, "Method %s is unimplemented"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    .line 463
    invoke-virtual {v0}, Lio/grpc/Status;->asRuntimeException()Lio/grpc/StatusRuntimeException;

    move-result-object v0

    .line 460
    invoke-interface {p1, v0}, Lio/grpc/stub/StreamObserver;->onError(Ljava/lang/Throwable;)V

    .line 464
    return-void
.end method
