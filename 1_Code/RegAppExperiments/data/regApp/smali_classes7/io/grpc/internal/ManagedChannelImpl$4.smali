.class Lio/grpc/internal/ManagedChannelImpl$4;
.super Lio/grpc/ClientCall;
.source "ManagedChannelImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/ManagedChannelImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/grpc/ClientCall<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1245
    invoke-direct {p0}, Lio/grpc/ClientCall;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 1253
    return-void
.end method

.method public halfClose()V
    .locals 0

    .line 1256
    return-void
.end method

.method public isReady()Z
    .locals 1

    .line 1264
    const/4 v0, 0x0

    return v0
.end method

.method public request(I)V
    .locals 0
    .param p1, "numMessages"    # I

    .line 1250
    return-void
.end method

.method public sendMessage(Ljava/lang/Object;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/Object;

    .line 1259
    return-void
.end method

.method public start(Lio/grpc/ClientCall$Listener;Lio/grpc/Metadata;)V
    .locals 0
    .param p2, "headers"    # Lio/grpc/Metadata;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/ClientCall$Listener<",
            "Ljava/lang/Object;",
            ">;",
            "Lio/grpc/Metadata;",
            ")V"
        }
    .end annotation

    .line 1247
    .local p1, "responseListener":Lio/grpc/ClientCall$Listener;, "Lio/grpc/ClientCall$Listener<Ljava/lang/Object;>;"
    return-void
.end method
