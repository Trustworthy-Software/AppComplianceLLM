.class public final Lio/grpc/InternalManagedChannelProvider;
.super Ljava/lang/Object;
.source "InternalManagedChannelProvider.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public static builderForAddress(Lio/grpc/ManagedChannelProvider;Ljava/lang/String;I)Lio/grpc/ManagedChannelBuilder;
    .locals 1
    .param p0, "provider"    # Lio/grpc/ManagedChannelProvider;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/ManagedChannelProvider;",
            "Ljava/lang/String;",
            "I)",
            "Lio/grpc/ManagedChannelBuilder<",
            "*>;"
        }
    .end annotation

    .line 34
    invoke-virtual {p0, p1, p2}, Lio/grpc/ManagedChannelProvider;->builderForAddress(Ljava/lang/String;I)Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static builderForTarget(Lio/grpc/ManagedChannelProvider;Ljava/lang/String;)Lio/grpc/ManagedChannelBuilder;
    .locals 1
    .param p0, "provider"    # Lio/grpc/ManagedChannelProvider;
    .param p1, "target"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/ManagedChannelProvider;",
            "Ljava/lang/String;",
            ")",
            "Lio/grpc/ManagedChannelBuilder<",
            "*>;"
        }
    .end annotation

    .line 39
    invoke-virtual {p0, p1}, Lio/grpc/ManagedChannelProvider;->builderForTarget(Ljava/lang/String;)Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static isAvailable(Lio/grpc/ManagedChannelProvider;)Z
    .locals 1
    .param p0, "provider"    # Lio/grpc/ManagedChannelProvider;

    .line 29
    invoke-virtual {p0}, Lio/grpc/ManagedChannelProvider;->isAvailable()Z

    move-result v0

    return v0
.end method

.method public static newChannelBuilder(Lio/grpc/ManagedChannelProvider;Ljava/lang/String;Lio/grpc/ChannelCredentials;)Lio/grpc/ManagedChannelProvider$NewChannelBuilderResult;
    .locals 1
    .param p0, "provider"    # Lio/grpc/ManagedChannelProvider;
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "creds"    # Lio/grpc/ChannelCredentials;

    .line 44
    invoke-virtual {p0, p1, p2}, Lio/grpc/ManagedChannelProvider;->newChannelBuilder(Ljava/lang/String;Lio/grpc/ChannelCredentials;)Lio/grpc/ManagedChannelProvider$NewChannelBuilderResult;

    move-result-object v0

    return-object v0
.end method
