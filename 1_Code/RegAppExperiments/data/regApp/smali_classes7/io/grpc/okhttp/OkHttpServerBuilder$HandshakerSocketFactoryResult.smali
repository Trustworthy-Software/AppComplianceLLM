.class final Lio/grpc/okhttp/OkHttpServerBuilder$HandshakerSocketFactoryResult;
.super Ljava/lang/Object;
.source "OkHttpServerBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/okhttp/OkHttpServerBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "HandshakerSocketFactoryResult"
.end annotation


# instance fields
.field public final error:Ljava/lang/String;

.field public final factory:Lio/grpc/okhttp/HandshakerSocketFactory;


# direct methods
.method private constructor <init>(Lio/grpc/okhttp/HandshakerSocketFactory;Ljava/lang/String;)V
    .locals 0
    .param p1, "factory"    # Lio/grpc/okhttp/HandshakerSocketFactory;
    .param p2, "error"    # Ljava/lang/String;

    .line 483
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 484
    iput-object p1, p0, Lio/grpc/okhttp/OkHttpServerBuilder$HandshakerSocketFactoryResult;->factory:Lio/grpc/okhttp/HandshakerSocketFactory;

    .line 485
    iput-object p2, p0, Lio/grpc/okhttp/OkHttpServerBuilder$HandshakerSocketFactoryResult;->error:Ljava/lang/String;

    .line 486
    return-void
.end method

.method public static error(Ljava/lang/String;)Lio/grpc/okhttp/OkHttpServerBuilder$HandshakerSocketFactoryResult;
    .locals 3
    .param p0, "error"    # Ljava/lang/String;

    .line 489
    new-instance v0, Lio/grpc/okhttp/OkHttpServerBuilder$HandshakerSocketFactoryResult;

    .line 490
    const-string v1, "error"

    invoke-static {p0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lio/grpc/okhttp/OkHttpServerBuilder$HandshakerSocketFactoryResult;-><init>(Lio/grpc/okhttp/HandshakerSocketFactory;Ljava/lang/String;)V

    .line 489
    return-object v0
.end method

.method public static factory(Lio/grpc/okhttp/HandshakerSocketFactory;)Lio/grpc/okhttp/OkHttpServerBuilder$HandshakerSocketFactoryResult;
    .locals 3
    .param p0, "factory"    # Lio/grpc/okhttp/HandshakerSocketFactory;

    .line 494
    new-instance v0, Lio/grpc/okhttp/OkHttpServerBuilder$HandshakerSocketFactoryResult;

    .line 495
    const-string v1, "factory"

    invoke-static {p0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/okhttp/HandshakerSocketFactory;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/grpc/okhttp/OkHttpServerBuilder$HandshakerSocketFactoryResult;-><init>(Lio/grpc/okhttp/HandshakerSocketFactory;Ljava/lang/String;)V

    .line 494
    return-object v0
.end method
