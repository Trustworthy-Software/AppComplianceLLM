.class public final Lio/grpc/ChoiceChannelCredentials;
.super Lio/grpc/ChannelCredentials;
.source "ChoiceChannelCredentials.java"


# instance fields
.field private final creds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/ChannelCredentials;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/grpc/ChannelCredentials;",
            ">;)V"
        }
    .end annotation

    .line 49
    .local p1, "creds":Ljava/util/List;, "Ljava/util/List<Lio/grpc/ChannelCredentials;>;"
    invoke-direct {p0}, Lio/grpc/ChannelCredentials;-><init>()V

    .line 50
    iput-object p1, p0, Lio/grpc/ChoiceChannelCredentials;->creds:Ljava/util/List;

    .line 51
    return-void
.end method

.method public static varargs create([Lio/grpc/ChannelCredentials;)Lio/grpc/ChannelCredentials;
    .locals 3
    .param p0, "creds"    # [Lio/grpc/ChannelCredentials;

    .line 36
    array-length v0, p0

    if-eqz v0, :cond_2

    .line 39
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 40
    .local v2, "cred":Lio/grpc/ChannelCredentials;
    if-eqz v2, :cond_0

    .line 39
    .end local v2    # "cred":Lio/grpc/ChannelCredentials;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 41
    .restart local v2    # "cred":Lio/grpc/ChannelCredentials;
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 44
    .end local v2    # "cred":Lio/grpc/ChannelCredentials;
    :cond_1
    new-instance v0, Lio/grpc/ChoiceChannelCredentials;

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/grpc/ChoiceChannelCredentials;-><init>(Ljava/util/List;)V

    return-object v0

    .line 37
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "At least one credential is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getCredentialsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/grpc/ChannelCredentials;",
            ">;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lio/grpc/ChoiceChannelCredentials;->creds:Ljava/util/List;

    return-object v0
.end method

.method public withoutBearerTokens()Lio/grpc/ChannelCredentials;
    .locals 4

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .local v0, "credsWithoutTokens":Ljava/util/List;, "Ljava/util/List<Lio/grpc/ChannelCredentials;>;"
    iget-object v1, p0, Lio/grpc/ChoiceChannelCredentials;->creds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/grpc/ChannelCredentials;

    .line 62
    .local v2, "cred":Lio/grpc/ChannelCredentials;
    invoke-virtual {v2}, Lio/grpc/ChannelCredentials;->withoutBearerTokens()Lio/grpc/ChannelCredentials;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    .end local v2    # "cred":Lio/grpc/ChannelCredentials;
    goto :goto_0

    .line 64
    :cond_0
    new-instance v1, Lio/grpc/ChoiceChannelCredentials;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/grpc/ChoiceChannelCredentials;-><init>(Ljava/util/List;)V

    return-object v1
.end method
