.class public abstract Lio/grpc/ServerProvider;
.super Ljava/lang/Object;
.source "ServerProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/ServerProvider$NewServerBuilderResult;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static provider()Lio/grpc/ServerProvider;
    .locals 3

    .line 42
    invoke-static {}, Lio/grpc/ServerRegistry;->getDefaultRegistry()Lio/grpc/ServerRegistry;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/ServerRegistry;->provider()Lio/grpc/ServerProvider;

    move-result-object v0

    .line 43
    .local v0, "provider":Lio/grpc/ServerProvider;
    if-eqz v0, :cond_0

    .line 47
    return-object v0

    .line 44
    :cond_0
    new-instance v1, Lio/grpc/ManagedChannelProvider$ProviderNotFoundException;

    const-string v2, "No functional server found. Try adding a dependency on the grpc-netty or grpc-netty-shaded artifact"

    invoke-direct {v1, v2}, Lio/grpc/ManagedChannelProvider$ProviderNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method protected abstract builderForPort(I)Lio/grpc/ServerBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/grpc/ServerBuilder<",
            "*>;"
        }
    .end annotation
.end method

.method protected abstract isAvailable()Z
.end method

.method protected newServerBuilderForPort(ILio/grpc/ServerCredentials;)Lio/grpc/ServerProvider$NewServerBuilderResult;
    .locals 1
    .param p1, "port"    # I
    .param p2, "creds"    # Lio/grpc/ServerCredentials;

    .line 74
    const-string v0, "ServerCredentials are unsupported"

    invoke-static {v0}, Lio/grpc/ServerProvider$NewServerBuilderResult;->error(Ljava/lang/String;)Lio/grpc/ServerProvider$NewServerBuilderResult;

    move-result-object v0

    return-object v0
.end method

.method protected abstract priority()I
.end method
