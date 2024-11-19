.class public final Lio/grpc/InternalServerProvider;
.super Ljava/lang/Object;
.source "InternalServerProvider.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public static builderForPort(Lio/grpc/ServerProvider;I)Lio/grpc/ServerBuilder;
    .locals 1
    .param p0, "provider"    # Lio/grpc/ServerProvider;
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/ServerProvider;",
            "I)",
            "Lio/grpc/ServerBuilder<",
            "*>;"
        }
    .end annotation

    .line 29
    invoke-virtual {p0, p1}, Lio/grpc/ServerProvider;->builderForPort(I)Lio/grpc/ServerBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static newServerBuilderForPort(Lio/grpc/ServerProvider;ILio/grpc/ServerCredentials;)Lio/grpc/ServerProvider$NewServerBuilderResult;
    .locals 1
    .param p0, "provider"    # Lio/grpc/ServerProvider;
    .param p1, "port"    # I
    .param p2, "creds"    # Lio/grpc/ServerCredentials;

    .line 34
    invoke-virtual {p0, p1, p2}, Lio/grpc/ServerProvider;->newServerBuilderForPort(ILio/grpc/ServerCredentials;)Lio/grpc/ServerProvider$NewServerBuilderResult;

    move-result-object v0

    return-object v0
.end method
