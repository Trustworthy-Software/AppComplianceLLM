.class public final Lio/grpc/ServerProvider$NewServerBuilderResult;
.super Ljava/lang/Object;
.source "ServerProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/ServerProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NewServerBuilderResult"
.end annotation


# instance fields
.field private final error:Ljava/lang/String;

.field private final serverBuilder:Lio/grpc/ServerBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/ServerBuilder<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lio/grpc/ServerBuilder;Ljava/lang/String;)V
    .locals 0
    .param p2, "error"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/ServerBuilder<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 81
    .local p1, "serverBuilder":Lio/grpc/ServerBuilder;, "Lio/grpc/ServerBuilder<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lio/grpc/ServerProvider$NewServerBuilderResult;->serverBuilder:Lio/grpc/ServerBuilder;

    .line 83
    iput-object p2, p0, Lio/grpc/ServerProvider$NewServerBuilderResult;->error:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public static error(Ljava/lang/String;)Lio/grpc/ServerProvider$NewServerBuilderResult;
    .locals 3
    .param p0, "error"    # Ljava/lang/String;

    .line 91
    new-instance v0, Lio/grpc/ServerProvider$NewServerBuilderResult;

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lio/grpc/ServerProvider$NewServerBuilderResult;-><init>(Lio/grpc/ServerBuilder;Ljava/lang/String;)V

    return-object v0
.end method

.method public static serverBuilder(Lio/grpc/ServerBuilder;)Lio/grpc/ServerProvider$NewServerBuilderResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/ServerBuilder<",
            "*>;)",
            "Lio/grpc/ServerProvider$NewServerBuilderResult;"
        }
    .end annotation

    .line 87
    .local p0, "builder":Lio/grpc/ServerBuilder;, "Lio/grpc/ServerBuilder<*>;"
    new-instance v0, Lio/grpc/ServerProvider$NewServerBuilderResult;

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/ServerBuilder;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/grpc/ServerProvider$NewServerBuilderResult;-><init>(Lio/grpc/ServerBuilder;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getError()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lio/grpc/ServerProvider$NewServerBuilderResult;->error:Ljava/lang/String;

    return-object v0
.end method

.method public getServerBuilder()Lio/grpc/ServerBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/ServerBuilder<",
            "*>;"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lio/grpc/ServerProvider$NewServerBuilderResult;->serverBuilder:Lio/grpc/ServerBuilder;

    return-object v0
.end method
