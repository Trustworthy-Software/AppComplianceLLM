.class public abstract Lio/grpc/ManagedChannelProvider;
.super Ljava/lang/Object;
.source "ManagedChannelProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/ManagedChannelProvider$ProviderNotFoundException;,
        Lio/grpc/ManagedChannelProvider$NewChannelBuilderResult;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static provider()Lio/grpc/ManagedChannelProvider;
    .locals 3

    .line 43
    invoke-static {}, Lio/grpc/ManagedChannelRegistry;->getDefaultRegistry()Lio/grpc/ManagedChannelRegistry;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/ManagedChannelRegistry;->provider()Lio/grpc/ManagedChannelProvider;

    move-result-object v0

    .line 44
    .local v0, "provider":Lio/grpc/ManagedChannelProvider;
    if-eqz v0, :cond_0

    .line 49
    return-object v0

    .line 45
    :cond_0
    new-instance v1, Lio/grpc/ManagedChannelProvider$ProviderNotFoundException;

    const-string v2, "No functional channel service provider found. Try adding a dependency on the grpc-okhttp, grpc-netty, or grpc-netty-shaded artifact"

    invoke-direct {v1, v2}, Lio/grpc/ManagedChannelProvider$ProviderNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method protected abstract builderForAddress(Ljava/lang/String;I)Lio/grpc/ManagedChannelBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lio/grpc/ManagedChannelBuilder<",
            "*>;"
        }
    .end annotation
.end method

.method protected abstract builderForTarget(Ljava/lang/String;)Lio/grpc/ManagedChannelBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/grpc/ManagedChannelBuilder<",
            "*>;"
        }
    .end annotation
.end method

.method protected abstract getSupportedSocketAddressTypes()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/net/SocketAddress;",
            ">;>;"
        }
    .end annotation
.end method

.method protected abstract isAvailable()Z
.end method

.method protected newChannelBuilder(Ljava/lang/String;Lio/grpc/ChannelCredentials;)Lio/grpc/ManagedChannelProvider$NewChannelBuilderResult;
    .locals 1
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "creds"    # Lio/grpc/ChannelCredentials;

    .line 81
    const-string v0, "ChannelCredentials are unsupported"

    invoke-static {v0}, Lio/grpc/ManagedChannelProvider$NewChannelBuilderResult;->error(Ljava/lang/String;)Lio/grpc/ManagedChannelProvider$NewChannelBuilderResult;

    move-result-object v0

    return-object v0
.end method

.method protected abstract priority()I
.end method
