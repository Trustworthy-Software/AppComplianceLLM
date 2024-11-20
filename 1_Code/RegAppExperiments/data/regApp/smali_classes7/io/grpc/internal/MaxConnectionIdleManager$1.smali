.class Lio/grpc/internal/MaxConnectionIdleManager$1;
.super Ljava/lang/Object;
.source "MaxConnectionIdleManager.java"

# interfaces
.implements Lio/grpc/internal/MaxConnectionIdleManager$Ticker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/MaxConnectionIdleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public nanoTime()J
    .locals 2

    .line 32
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method
