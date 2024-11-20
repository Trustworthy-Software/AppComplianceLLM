.class public Lorg/mapsforge/map/rendertheme/rule/RenderThemeFuture;
.super Ljava/util/concurrent/FutureTask;
.source "RenderThemeFuture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mapsforge/map/rendertheme/rule/RenderThemeFuture$RenderThemeCallable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask<",
        "Lorg/mapsforge/map/rendertheme/rule/RenderTheme;",
        ">;"
    }
.end annotation


# instance fields
.field private final refCount:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Lorg/mapsforge/core/graphics/GraphicFactory;Lorg/mapsforge/map/rendertheme/XmlRenderTheme;Lorg/mapsforge/map/model/DisplayModel;)V
    .locals 2
    .param p1, "graphicFactory"    # Lorg/mapsforge/core/graphics/GraphicFactory;
    .param p2, "xmlRenderTheme"    # Lorg/mapsforge/map/rendertheme/XmlRenderTheme;
    .param p3, "displayModel"    # Lorg/mapsforge/map/model/DisplayModel;

    .line 70
    new-instance v0, Lorg/mapsforge/map/rendertheme/rule/RenderThemeFuture$RenderThemeCallable;

    invoke-direct {v0, p1, p2, p3}, Lorg/mapsforge/map/rendertheme/rule/RenderThemeFuture$RenderThemeCallable;-><init>(Lorg/mapsforge/core/graphics/GraphicFactory;Lorg/mapsforge/map/rendertheme/XmlRenderTheme;Lorg/mapsforge/map/model/DisplayModel;)V

    invoke-direct {p0, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 37
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lorg/mapsforge/map/rendertheme/rule/RenderThemeFuture;->refCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 71
    return-void
.end method


# virtual methods
.method public decrementRefCount()V
    .locals 2

    .line 74
    iget-object v0, p0, Lorg/mapsforge/map/rendertheme/rule/RenderThemeFuture;->refCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    .line 75
    .local v0, "c":I
    if-gtz v0, :cond_1

    .line 77
    :try_start_0
    invoke-virtual {p0}, Lorg/mapsforge/map/rendertheme/rule/RenderThemeFuture;->isDone()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    invoke-virtual {p0}, Lorg/mapsforge/map/rendertheme/rule/RenderThemeFuture;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mapsforge/map/rendertheme/rule/RenderTheme;

    invoke-virtual {v1}, Lorg/mapsforge/map/rendertheme/rule/RenderTheme;->destroy()V

    goto :goto_0

    .line 80
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/mapsforge/map/rendertheme/rule/RenderThemeFuture;->cancel(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_0
    goto :goto_1

    .line 82
    :catch_0
    move-exception v1

    .line 86
    :cond_1
    :goto_1
    return-void
.end method

.method public incrementRefCount()V
    .locals 1

    .line 89
    iget-object v0, p0, Lorg/mapsforge/map/rendertheme/rule/RenderThemeFuture;->refCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 90
    return-void
.end method
