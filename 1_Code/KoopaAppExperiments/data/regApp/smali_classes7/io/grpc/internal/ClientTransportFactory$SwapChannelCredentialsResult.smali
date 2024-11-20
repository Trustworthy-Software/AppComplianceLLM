.class public final Lio/grpc/internal/ClientTransportFactory$SwapChannelCredentialsResult;
.super Ljava/lang/Object;
.source "ClientTransportFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/ClientTransportFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SwapChannelCredentialsResult"
.end annotation


# instance fields
.field final callCredentials:Lio/grpc/CallCredentials;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final transportFactory:Lio/grpc/internal/ClientTransportFactory;


# direct methods
.method public constructor <init>(Lio/grpc/internal/ClientTransportFactory;Lio/grpc/CallCredentials;)V
    .locals 1
    .param p1, "transportFactory"    # Lio/grpc/internal/ClientTransportFactory;
    .param p2, "callCredentials"    # Lio/grpc/CallCredentials;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    const-string v0, "transportFactory"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/ClientTransportFactory;

    iput-object v0, p0, Lio/grpc/internal/ClientTransportFactory$SwapChannelCredentialsResult;->transportFactory:Lio/grpc/internal/ClientTransportFactory;

    .line 165
    iput-object p2, p0, Lio/grpc/internal/ClientTransportFactory$SwapChannelCredentialsResult;->callCredentials:Lio/grpc/CallCredentials;

    .line 166
    return-void
.end method
