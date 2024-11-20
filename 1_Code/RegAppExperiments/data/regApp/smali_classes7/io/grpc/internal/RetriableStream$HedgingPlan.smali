.class final Lio/grpc/internal/RetriableStream$HedgingPlan;
.super Ljava/lang/Object;
.source "RetriableStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/RetriableStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HedgingPlan"
.end annotation


# instance fields
.field final hedgingPushbackMillis:Ljava/lang/Integer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final isHedgeable:Z


# direct methods
.method public constructor <init>(ZLjava/lang/Integer;)V
    .locals 0
    .param p1, "isHedgeable"    # Z
    .param p2, "hedgingPushbackMillis"    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1513
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1514
    iput-boolean p1, p0, Lio/grpc/internal/RetriableStream$HedgingPlan;->isHedgeable:Z

    .line 1515
    iput-object p2, p0, Lio/grpc/internal/RetriableStream$HedgingPlan;->hedgingPushbackMillis:Ljava/lang/Integer;

    .line 1516
    return-void
.end method
