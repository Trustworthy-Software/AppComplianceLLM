.class Lio/grpc/internal/DelayedClientCall$8;
.super Lio/grpc/ClientCall;
.source "DelayedClientCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/DelayedClientCall;
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

    .line 535
    invoke-direct {p0}, Lio/grpc/ClientCall;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 543
    return-void
.end method

.method public halfClose()V
    .locals 0

    .line 546
    return-void
.end method

.method public isReady()Z
    .locals 1

    .line 554
    const/4 v0, 0x0

    return v0
.end method

.method public request(I)V
    .locals 0
    .param p1, "numMessages"    # I

    .line 540
    return-void
.end method

.method public sendMessage(Ljava/lang/Object;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/Object;

    .line 549
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

    .line 537
    .local p1, "responseListener":Lio/grpc/ClientCall$Listener;, "Lio/grpc/ClientCall$Listener<Ljava/lang/Object;>;"
    return-void
.end method
