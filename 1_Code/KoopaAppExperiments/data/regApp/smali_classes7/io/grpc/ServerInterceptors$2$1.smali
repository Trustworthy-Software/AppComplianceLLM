.class Lio/grpc/ServerInterceptors$2$1;
.super Lio/grpc/PartialForwardingServerCall;
.source "ServerInterceptors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/ServerInterceptors$2;->startCall(Lio/grpc/ServerCall;Lio/grpc/Metadata;)Lio/grpc/ServerCall$Listener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/grpc/PartialForwardingServerCall<",
        "TOReqT;TORespT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/ServerInterceptors$2;

.field final synthetic val$call:Lio/grpc/ServerCall;


# direct methods
.method constructor <init>(Lio/grpc/ServerInterceptors$2;Lio/grpc/ServerCall;)V
    .locals 0
    .param p1, "this$0"    # Lio/grpc/ServerInterceptors$2;

    .line 268
    iput-object p1, p0, Lio/grpc/ServerInterceptors$2$1;->this$0:Lio/grpc/ServerInterceptors$2;

    iput-object p2, p0, Lio/grpc/ServerInterceptors$2$1;->val$call:Lio/grpc/ServerCall;

    invoke-direct {p0}, Lio/grpc/PartialForwardingServerCall;-><init>()V

    return-void
.end method


# virtual methods
.method protected delegate()Lio/grpc/ServerCall;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/ServerCall<",
            "TWReqT;TWRespT;>;"
        }
    .end annotation

    .line 271
    iget-object v0, p0, Lio/grpc/ServerInterceptors$2$1;->val$call:Lio/grpc/ServerCall;

    return-object v0
.end method

.method public getMethodDescriptor()Lio/grpc/MethodDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/MethodDescriptor<",
            "TOReqT;TORespT;>;"
        }
    .end annotation

    .line 283
    iget-object v0, p0, Lio/grpc/ServerInterceptors$2$1;->this$0:Lio/grpc/ServerInterceptors$2;

    iget-object v0, v0, Lio/grpc/ServerInterceptors$2;->val$originalMethod:Lio/grpc/MethodDescriptor;

    return-object v0
.end method

.method public sendMessage(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TORespT;)V"
        }
    .end annotation

    .line 276
    .local p1, "message":Ljava/lang/Object;, "TORespT;"
    iget-object v0, p0, Lio/grpc/ServerInterceptors$2$1;->this$0:Lio/grpc/ServerInterceptors$2;

    iget-object v0, v0, Lio/grpc/ServerInterceptors$2;->val$originalMethod:Lio/grpc/MethodDescriptor;

    invoke-virtual {v0, p1}, Lio/grpc/MethodDescriptor;->streamResponse(Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v0

    .line 277
    .local v0, "is":Ljava/io/InputStream;
    iget-object v1, p0, Lio/grpc/ServerInterceptors$2$1;->this$0:Lio/grpc/ServerInterceptors$2;

    iget-object v1, v1, Lio/grpc/ServerInterceptors$2;->val$wrappedMethod:Lio/grpc/MethodDescriptor;

    invoke-virtual {v1, v0}, Lio/grpc/MethodDescriptor;->parseResponse(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v1

    .line 278
    .local v1, "wrappedMessage":Ljava/lang/Object;, "TWRespT;"
    invoke-virtual {p0}, Lio/grpc/ServerInterceptors$2$1;->delegate()Lio/grpc/ServerCall;

    move-result-object v2

    invoke-virtual {v2, v1}, Lio/grpc/ServerCall;->sendMessage(Ljava/lang/Object;)V

    .line 279
    return-void
.end method
