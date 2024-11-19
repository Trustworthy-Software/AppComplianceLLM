.class Lorg/mapsforge/map/view/FrameBufferBitmap$Lock;
.super Ljava/lang/Object;
.source "FrameBufferBitmap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapsforge/map/view/FrameBufferBitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Lock"
.end annotation


# instance fields
.field private enabled:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mapsforge/map/view/FrameBufferBitmap$Lock;->enabled:Z

    return-void
.end method


# virtual methods
.method declared-synchronized disable()V
    .locals 1

    monitor-enter p0

    .line 52
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lorg/mapsforge/map/view/FrameBufferBitmap$Lock;->enabled:Z

    .line 53
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    monitor-exit p0

    return-void

    .line 51
    .end local p0    # "this":Lorg/mapsforge/map/view/FrameBufferBitmap$Lock;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized enable()V
    .locals 1

    monitor-enter p0

    .line 57
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/mapsforge/map/view/FrameBufferBitmap$Lock;->enabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    monitor-exit p0

    return-void

    .line 56
    .end local p0    # "this":Lorg/mapsforge/map/view/FrameBufferBitmap$Lock;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method isEnabled()Z
    .locals 1

    .line 61
    iget-boolean v0, p0, Lorg/mapsforge/map/view/FrameBufferBitmap$Lock;->enabled:Z

    return v0
.end method

.method declared-synchronized waitDisabled()V
    .locals 3

    monitor-enter p0

    .line 66
    nop

    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lorg/mapsforge/map/view/FrameBufferBitmap$Lock;->enabled:Z

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 71
    .end local p0    # "this":Lorg/mapsforge/map/view/FrameBufferBitmap$Lock;
    :cond_0
    goto :goto_1

    .line 65
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_1
    invoke-static {}, Lorg/mapsforge/map/view/FrameBufferBitmap;->access$000()Ljava/util/logging/Logger;

    move-result-object v1

    const-string v2, "Frame buffer interrupted"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_1
    monitor-exit p0

    return-void

    .line 65
    :goto_2
    monitor-exit p0

    throw v0
.end method
