.class Lio/grpc/internal/ManagedChannelImpl$1;
.super Lio/grpc/InternalConfigSelector;
.source "ManagedChannelImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/ManagedChannelImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 148
    invoke-direct {p0}, Lio/grpc/InternalConfigSelector;-><init>()V

    return-void
.end method


# virtual methods
.method public selectConfig(Lio/grpc/LoadBalancer$PickSubchannelArgs;)Lio/grpc/InternalConfigSelector$Result;
    .locals 2
    .param p1, "args"    # Lio/grpc/LoadBalancer$PickSubchannelArgs;

    .line 151
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Resolution is pending"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
