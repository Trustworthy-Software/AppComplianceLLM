.class Lio/grpc/internal/ManagedChannelImpl$RealChannel$3;
.super Lio/grpc/ClientCall;
.source "ManagedChannelImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/ManagedChannelImpl$RealChannel;->newCall(Lio/grpc/MethodDescriptor;Lio/grpc/CallOptions;)Lio/grpc/ClientCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/grpc/ClientCall<",
        "TReqT;TRespT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lio/grpc/internal/ManagedChannelImpl$RealChannel;


# direct methods
.method constructor <init>(Lio/grpc/internal/ManagedChannelImpl$RealChannel;)V
    .locals 0
    .param p1, "this$1"    # Lio/grpc/internal/ManagedChannelImpl$RealChannel;

    .line 992
    iput-object p1, p0, Lio/grpc/internal/ManagedChannelImpl$RealChannel$3;->this$1:Lio/grpc/internal/ManagedChannelImpl$RealChannel;

    invoke-direct {p0}, Lio/grpc/ClientCall;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "cause"    # Ljava/lang/Throwable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1000
    return-void
.end method

.method public halfClose()V
    .locals 0

    .line 1002
    return-void
.end method

.method public request(I)V
    .locals 0
    .param p1, "numMessages"    # I

    .line 998
    return-void
.end method

.method public sendMessage(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TReqT;)V"
        }
    .end annotation

    .line 1004
    .local p1, "message":Ljava/lang/Object;, "TReqT;"
    return-void
.end method

.method public start(Lio/grpc/ClientCall$Listener;Lio/grpc/Metadata;)V
    .locals 2
    .param p2, "headers"    # Lio/grpc/Metadata;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/ClientCall$Listener<",
            "TRespT;>;",
            "Lio/grpc/Metadata;",
            ")V"
        }
    .end annotation

    .line 995
    .local p1, "responseListener":Lio/grpc/ClientCall$Listener;, "Lio/grpc/ClientCall$Listener<TRespT;>;"
    sget-object v0, Lio/grpc/internal/ManagedChannelImpl;->SHUTDOWN_STATUS:Lio/grpc/Status;

    new-instance v1, Lio/grpc/Metadata;

    invoke-direct {v1}, Lio/grpc/Metadata;-><init>()V

    invoke-virtual {p1, v0, v1}, Lio/grpc/ClientCall$Listener;->onClose(Lio/grpc/Status;Lio/grpc/Metadata;)V

    .line 996
    return-void
.end method
