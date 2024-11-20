.class public final Lio/grpc/CompositeChannelCredentials;
.super Lio/grpc/ChannelCredentials;
.source "CompositeChannelCredentials.java"


# instance fields
.field private final callCredentials:Lio/grpc/CallCredentials;

.field private final channelCredentials:Lio/grpc/ChannelCredentials;


# direct methods
.method private constructor <init>(Lio/grpc/ChannelCredentials;Lio/grpc/CallCredentials;)V
    .locals 1
    .param p1, "channelCreds"    # Lio/grpc/ChannelCredentials;
    .param p2, "callCreds"    # Lio/grpc/CallCredentials;

    .line 36
    invoke-direct {p0}, Lio/grpc/ChannelCredentials;-><init>()V

    .line 37
    const-string v0, "channelCreds"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/ChannelCredentials;

    iput-object v0, p0, Lio/grpc/CompositeChannelCredentials;->channelCredentials:Lio/grpc/ChannelCredentials;

    .line 38
    const-string v0, "callCreds"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/CallCredentials;

    iput-object v0, p0, Lio/grpc/CompositeChannelCredentials;->callCredentials:Lio/grpc/CallCredentials;

    .line 39
    return-void
.end method

.method public static create(Lio/grpc/ChannelCredentials;Lio/grpc/CallCredentials;)Lio/grpc/ChannelCredentials;
    .locals 1
    .param p0, "channelCreds"    # Lio/grpc/ChannelCredentials;
    .param p1, "callCreds"    # Lio/grpc/CallCredentials;

    .line 30
    new-instance v0, Lio/grpc/CompositeChannelCredentials;

    invoke-direct {v0, p0, p1}, Lio/grpc/CompositeChannelCredentials;-><init>(Lio/grpc/ChannelCredentials;Lio/grpc/CallCredentials;)V

    return-object v0
.end method


# virtual methods
.method public getCallCredentials()Lio/grpc/CallCredentials;
    .locals 1

    .line 46
    iget-object v0, p0, Lio/grpc/CompositeChannelCredentials;->callCredentials:Lio/grpc/CallCredentials;

    return-object v0
.end method

.method public getChannelCredentials()Lio/grpc/ChannelCredentials;
    .locals 1

    .line 42
    iget-object v0, p0, Lio/grpc/CompositeChannelCredentials;->channelCredentials:Lio/grpc/ChannelCredentials;

    return-object v0
.end method

.method public withoutBearerTokens()Lio/grpc/ChannelCredentials;
    .locals 1

    .line 51
    iget-object v0, p0, Lio/grpc/CompositeChannelCredentials;->channelCredentials:Lio/grpc/ChannelCredentials;

    invoke-virtual {v0}, Lio/grpc/ChannelCredentials;->withoutBearerTokens()Lio/grpc/ChannelCredentials;

    move-result-object v0

    return-object v0
.end method
