.class public final Lio/grpc/ChoiceServerCredentials;
.super Lio/grpc/ServerCredentials;
.source "ChoiceServerCredentials.java"


# instance fields
.field private final creds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/ServerCredentials;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private varargs constructor <init>([Lio/grpc/ServerCredentials;)V
    .locals 3
    .param p1, "creds"    # [Lio/grpc/ServerCredentials;

    .line 43
    invoke-direct {p0}, Lio/grpc/ServerCredentials;-><init>()V

    .line 44
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 45
    .local v2, "cred":Lio/grpc/ServerCredentials;
    if-eqz v2, :cond_0

    .line 44
    .end local v2    # "cred":Lio/grpc/ServerCredentials;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 46
    .restart local v2    # "cred":Lio/grpc/ServerCredentials;
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 49
    .end local v2    # "cred":Lio/grpc/ServerCredentials;
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/ChoiceServerCredentials;->creds:Ljava/util/List;

    .line 50
    return-void
.end method

.method public static varargs create([Lio/grpc/ServerCredentials;)Lio/grpc/ServerCredentials;
    .locals 2
    .param p0, "creds"    # [Lio/grpc/ServerCredentials;

    .line 35
    array-length v0, p0

    if-eqz v0, :cond_0

    .line 38
    new-instance v0, Lio/grpc/ChoiceServerCredentials;

    invoke-direct {v0, p0}, Lio/grpc/ChoiceServerCredentials;-><init>([Lio/grpc/ServerCredentials;)V

    return-object v0

    .line 36
    :cond_0
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
            "Lio/grpc/ServerCredentials;",
            ">;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lio/grpc/ChoiceServerCredentials;->creds:Ljava/util/List;

    return-object v0
.end method
