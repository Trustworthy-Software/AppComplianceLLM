.class public Lio/grpc/inprocess/InternalInProcessServerBuilder;
.super Ljava/lang/Object;
.source "InternalInProcessServerBuilder.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setStatsEnabled(Lio/grpc/inprocess/InProcessServerBuilder;Z)V
    .locals 0
    .param p0, "builder"    # Lio/grpc/inprocess/InProcessServerBuilder;
    .param p1, "value"    # Z

    .line 28
    invoke-virtual {p0, p1}, Lio/grpc/inprocess/InProcessServerBuilder;->setStatsEnabled(Z)V

    .line 29
    return-void
.end method
