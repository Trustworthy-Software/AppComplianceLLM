.class public abstract Lio/grpc/NameResolverProvider;
.super Lio/grpc/NameResolver$Factory;
.source "NameResolverProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lio/grpc/NameResolver$Factory;-><init>()V

    return-void
.end method


# virtual methods
.method protected getProducedSocketAddressTypes()Ljava/util/Collection;
    .locals 1
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

    .line 77
    const-class v0, Ljava/net/InetSocketAddress;

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected getScheme()Ljava/lang/String;
    .locals 1

    .line 67
    invoke-virtual {p0}, Lio/grpc/NameResolverProvider;->getDefaultScheme()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract isAvailable()Z
.end method

.method protected abstract priority()I
.end method
