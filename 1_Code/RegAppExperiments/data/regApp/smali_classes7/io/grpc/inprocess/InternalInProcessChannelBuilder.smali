.class public final Lio/grpc/inprocess/InternalInProcessChannelBuilder;
.super Ljava/lang/Object;
.source "InternalInProcessChannelBuilder.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setStatsEnabled(Lio/grpc/inprocess/InProcessChannelBuilder;Z)V
    .locals 0
    .param p0, "builder"    # Lio/grpc/inprocess/InProcessChannelBuilder;
    .param p1, "value"    # Z

    .line 29
    invoke-virtual {p0, p1}, Lio/grpc/inprocess/InProcessChannelBuilder;->setStatsEnabled(Z)V

    .line 30
    return-void
.end method
