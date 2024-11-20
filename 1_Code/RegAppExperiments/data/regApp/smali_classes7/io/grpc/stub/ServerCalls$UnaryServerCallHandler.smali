.class final Lio/grpc/stub/ServerCalls$UnaryServerCallHandler;
.super Ljava/lang/Object;
.source "ServerCalls.java"

# interfaces
.implements Lio/grpc/ServerCallHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/stub/ServerCalls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UnaryServerCallHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/stub/ServerCalls$UnaryServerCallHandler$UnaryServerCallListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ReqT:",
        "Ljava/lang/Object;",
        "RespT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/grpc/ServerCallHandler<",
        "TReqT;TRespT;>;"
    }
.end annotation


# instance fields
.field private final method:Lio/grpc/stub/ServerCalls$UnaryRequestMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/stub/ServerCalls$UnaryRequestMethod<",
            "TReqT;TRespT;>;"
        }
    .end annotation
.end field

.field private final serverStreaming:Z


# direct methods
.method constructor <init>(Lio/grpc/stub/ServerCalls$UnaryRequestMethod;Z)V
    .locals 0
    .param p2, "serverStreaming"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/stub/ServerCalls$UnaryRequestMethod<",
            "TReqT;TRespT;>;Z)V"
        }
    .end annotation

    .line 119
    .local p0, "this":Lio/grpc/stub/ServerCalls$UnaryServerCallHandler;, "Lio/grpc/stub/ServerCalls$UnaryServerCallHandler<TReqT;TRespT;>;"
    .local p1, "method":Lio/grpc/stub/ServerCalls$UnaryRequestMethod;, "Lio/grpc/stub/ServerCalls$UnaryRequestMethod<TReqT;TRespT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-object p1, p0, Lio/grpc/stub/ServerCalls$UnaryServerCallHandler;->method:Lio/grpc/stub/ServerCalls$UnaryRequestMethod;

    .line 121
    iput-boolean p2, p0, Lio/grpc/stub/ServerCalls$UnaryServerCallHandler;->serverStreaming:Z

    .line 122
    return-void
.end method

.method static synthetic access$000(Lio/grpc/stub/ServerCalls$UnaryServerCallHandler;)Lio/grpc/stub/ServerCalls$UnaryRequestMethod;
    .locals 1
    .param p0, "x0"    # Lio/grpc/stub/ServerCalls$UnaryServerCallHandler;

    .line 112
    iget-object v0, p0, Lio/grpc/stub/ServerCalls$UnaryServerCallHandler;->method:Lio/grpc/stub/ServerCalls$UnaryRequestMethod;

    return-object v0
.end method


# virtual methods
.method public startCall(Lio/grpc/ServerCall;Lio/grpc/Metadata;)Lio/grpc/ServerCall$Listener;
    .locals 2
    .param p2, "headers"    # Lio/grpc/Metadata;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/ServerCall<",
            "TReqT;TRespT;>;",
            "Lio/grpc/Metadata;",
            ")",
            "Lio/grpc/ServerCall$Listener<",
            "TReqT;>;"
        }
    .end annotation

    .line 126
    .local p0, "this":Lio/grpc/stub/ServerCalls$UnaryServerCallHandler;, "Lio/grpc/stub/ServerCalls$UnaryServerCallHandler<TReqT;TRespT;>;"
    .local p1, "call":Lio/grpc/ServerCall;, "Lio/grpc/ServerCall<TReqT;TRespT;>;"
    nop

    .line 127
    invoke-virtual {p1}, Lio/grpc/ServerCall;->getMethodDescriptor()Lio/grpc/MethodDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/MethodDescriptor;->getType()Lio/grpc/MethodDescriptor$MethodType;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/MethodDescriptor$MethodType;->clientSendsOneMessage()Z

    move-result v0

    .line 126
    const-string v1, "asyncUnaryRequestCall is only for clientSendsOneMessage methods"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 129
    new-instance v0, Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;

    iget-boolean v1, p0, Lio/grpc/stub/ServerCalls$UnaryServerCallHandler;->serverStreaming:Z

    invoke-direct {v0, p1, v1}, Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;-><init>(Lio/grpc/ServerCall;Z)V

    .line 134
    .local v0, "responseObserver":Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;, "Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl<TReqT;TRespT;>;"
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lio/grpc/ServerCall;->request(I)V

    .line 135
    new-instance v1, Lio/grpc/stub/ServerCalls$UnaryServerCallHandler$UnaryServerCallListener;

    invoke-direct {v1, p0, v0, p1}, Lio/grpc/stub/ServerCalls$UnaryServerCallHandler$UnaryServerCallListener;-><init>(Lio/grpc/stub/ServerCalls$UnaryServerCallHandler;Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;Lio/grpc/ServerCall;)V

    return-object v1
.end method
