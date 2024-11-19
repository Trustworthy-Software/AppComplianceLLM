.class public abstract Lorg/mapsforge/map/layer/hills/LazyFuture;
.super Lorg/mapsforge/map/layer/hills/LatchedLazyFuture;
.source "LazyFuture.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<X:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/mapsforge/map/layer/hills/LatchedLazyFuture<",
        "TX;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    .local p0, "this":Lorg/mapsforge/map/layer/hills/LazyFuture;, "Lorg/mapsforge/map/layer/hills/LazyFuture<TX;>;"
    invoke-direct {p0}, Lorg/mapsforge/map/layer/hills/LatchedLazyFuture;-><init>()V

    return-void
.end method
