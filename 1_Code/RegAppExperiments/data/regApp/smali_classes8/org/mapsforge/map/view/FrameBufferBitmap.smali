.class Lorg/mapsforge/map/view/FrameBufferBitmap;
.super Ljava/lang/Object;
.source "FrameBufferBitmap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mapsforge/map/view/FrameBufferBitmap$Lock;,
        Lorg/mapsforge/map/view/FrameBufferBitmap$BitmapRequest;
    }
.end annotation


# static fields
.field private static final LOGGER:Ljava/util/logging/Logger;


# instance fields
.field private bitmap:Lorg/mapsforge/core/graphics/Bitmap;

.field private bitmapRequest:Lorg/mapsforge/map/view/FrameBufferBitmap$BitmapRequest;

.field private final bitmapRequestSync:Ljava/lang/Object;

.field private final frameLock:Lorg/mapsforge/map/view/FrameBufferBitmap$Lock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 75
    const-class v0, Lorg/mapsforge/map/view/FrameBufferBitmap;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/mapsforge/map/view/FrameBufferBitmap;->LOGGER:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mapsforge/map/view/FrameBufferBitmap;->bitmap:Lorg/mapsforge/core/graphics/Bitmap;

    .line 78
    iput-object v0, p0, Lorg/mapsforge/map/view/FrameBufferBitmap;->bitmapRequest:Lorg/mapsforge/map/view/FrameBufferBitmap$BitmapRequest;

    .line 79
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/mapsforge/map/view/FrameBufferBitmap;->bitmapRequestSync:Ljava/lang/Object;

    .line 80
    new-instance v0, Lorg/mapsforge/map/view/FrameBufferBitmap$Lock;

    invoke-direct {v0}, Lorg/mapsforge/map/view/FrameBufferBitmap$Lock;-><init>()V

    iput-object v0, p0, Lorg/mapsforge/map/view/FrameBufferBitmap;->frameLock:Lorg/mapsforge/map/view/FrameBufferBitmap$Lock;

    return-void
.end method

.method static synthetic access$000()Ljava/util/logging/Logger;
    .locals 1

    .line 23
    sget-object v0, Lorg/mapsforge/map/view/FrameBufferBitmap;->LOGGER:Ljava/util/logging/Logger;

    return-object v0
.end method

.method private createBitmapIfRequested()V
    .locals 2

    .line 89
    iget-object v0, p0, Lorg/mapsforge/map/view/FrameBufferBitmap;->bitmapRequestSync:Ljava/lang/Object;

    monitor-enter v0

    .line 90
    :try_start_0
    iget-object v1, p0, Lorg/mapsforge/map/view/FrameBufferBitmap;->bitmapRequest:Lorg/mapsforge/map/view/FrameBufferBitmap$BitmapRequest;

    if-eqz v1, :cond_0

    .line 91
    invoke-direct {p0}, Lorg/mapsforge/map/view/FrameBufferBitmap;->destroyBitmap()V

    .line 92
    iget-object v1, p0, Lorg/mapsforge/map/view/FrameBufferBitmap;->bitmapRequest:Lorg/mapsforge/map/view/FrameBufferBitmap$BitmapRequest;

    invoke-virtual {v1}, Lorg/mapsforge/map/view/FrameBufferBitmap$BitmapRequest;->create()Lorg/mapsforge/core/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lorg/mapsforge/map/view/FrameBufferBitmap;->bitmap:Lorg/mapsforge/core/graphics/Bitmap;

    .line 93
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/mapsforge/map/view/FrameBufferBitmap;->bitmapRequest:Lorg/mapsforge/map/view/FrameBufferBitmap$BitmapRequest;

    .line 95
    :cond_0
    monitor-exit v0

    .line 96
    return-void

    .line 95
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private destroyBitmap()V
    .locals 1

    .line 108
    iget-object v0, p0, Lorg/mapsforge/map/view/FrameBufferBitmap;->bitmap:Lorg/mapsforge/core/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 109
    invoke-interface {v0}, Lorg/mapsforge/core/graphics/Bitmap;->decrementRefCount()V

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mapsforge/map/view/FrameBufferBitmap;->bitmap:Lorg/mapsforge/core/graphics/Bitmap;

    .line 112
    :cond_0
    return-void
.end method

.method static swap(Lorg/mapsforge/map/view/FrameBufferBitmap;Lorg/mapsforge/map/view/FrameBufferBitmap;)V
    .locals 3
    .param p0, "a"    # Lorg/mapsforge/map/view/FrameBufferBitmap;
    .param p1, "b"    # Lorg/mapsforge/map/view/FrameBufferBitmap;

    .line 131
    iget-object v0, p0, Lorg/mapsforge/map/view/FrameBufferBitmap;->bitmap:Lorg/mapsforge/core/graphics/Bitmap;

    .line 132
    .local v0, "t":Lorg/mapsforge/core/graphics/Bitmap;
    iget-object v1, p1, Lorg/mapsforge/map/view/FrameBufferBitmap;->bitmap:Lorg/mapsforge/core/graphics/Bitmap;

    iput-object v1, p0, Lorg/mapsforge/map/view/FrameBufferBitmap;->bitmap:Lorg/mapsforge/core/graphics/Bitmap;

    .line 133
    iput-object v0, p1, Lorg/mapsforge/map/view/FrameBufferBitmap;->bitmap:Lorg/mapsforge/core/graphics/Bitmap;

    .line 135
    iget-object v1, p0, Lorg/mapsforge/map/view/FrameBufferBitmap;->bitmapRequest:Lorg/mapsforge/map/view/FrameBufferBitmap$BitmapRequest;

    .line 136
    .local v1, "r":Lorg/mapsforge/map/view/FrameBufferBitmap$BitmapRequest;
    iget-object v2, p1, Lorg/mapsforge/map/view/FrameBufferBitmap;->bitmapRequest:Lorg/mapsforge/map/view/FrameBufferBitmap$BitmapRequest;

    iput-object v2, p0, Lorg/mapsforge/map/view/FrameBufferBitmap;->bitmapRequest:Lorg/mapsforge/map/view/FrameBufferBitmap$BitmapRequest;

    .line 137
    iput-object v1, p1, Lorg/mapsforge/map/view/FrameBufferBitmap;->bitmapRequest:Lorg/mapsforge/map/view/FrameBufferBitmap$BitmapRequest;

    .line 138
    return-void
.end method


# virtual methods
.method create(Lorg/mapsforge/core/graphics/GraphicFactory;Lorg/mapsforge/core/model/Dimension;IZ)V
    .locals 2
    .param p1, "factory"    # Lorg/mapsforge/core/graphics/GraphicFactory;
    .param p2, "dimension"    # Lorg/mapsforge/core/model/Dimension;
    .param p3, "color"    # I
    .param p4, "isTransparent"    # Z

    .line 83
    iget-object v0, p0, Lorg/mapsforge/map/view/FrameBufferBitmap;->bitmapRequestSync:Ljava/lang/Object;

    monitor-enter v0

    .line 84
    :try_start_0
    new-instance v1, Lorg/mapsforge/map/view/FrameBufferBitmap$BitmapRequest;

    invoke-direct {v1, p1, p2, p3, p4}, Lorg/mapsforge/map/view/FrameBufferBitmap$BitmapRequest;-><init>(Lorg/mapsforge/core/graphics/GraphicFactory;Lorg/mapsforge/core/model/Dimension;IZ)V

    iput-object v1, p0, Lorg/mapsforge/map/view/FrameBufferBitmap;->bitmapRequest:Lorg/mapsforge/map/view/FrameBufferBitmap$BitmapRequest;

    .line 85
    monitor-exit v0

    .line 86
    return-void

    .line 85
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method destroy()V
    .locals 2

    .line 99
    iget-object v0, p0, Lorg/mapsforge/map/view/FrameBufferBitmap;->frameLock:Lorg/mapsforge/map/view/FrameBufferBitmap$Lock;

    monitor-enter v0

    .line 100
    :try_start_0
    iget-object v1, p0, Lorg/mapsforge/map/view/FrameBufferBitmap;->bitmap:Lorg/mapsforge/core/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 101
    iget-object v1, p0, Lorg/mapsforge/map/view/FrameBufferBitmap;->frameLock:Lorg/mapsforge/map/view/FrameBufferBitmap$Lock;

    invoke-virtual {v1}, Lorg/mapsforge/map/view/FrameBufferBitmap$Lock;->waitDisabled()V

    .line 102
    invoke-direct {p0}, Lorg/mapsforge/map/view/FrameBufferBitmap;->destroyBitmap()V

    .line 104
    :cond_0
    monitor-exit v0

    .line 105
    return-void

    .line 104
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method lock()Lorg/mapsforge/core/graphics/Bitmap;
    .locals 2

    .line 115
    iget-object v0, p0, Lorg/mapsforge/map/view/FrameBufferBitmap;->frameLock:Lorg/mapsforge/map/view/FrameBufferBitmap$Lock;

    monitor-enter v0

    .line 116
    :try_start_0
    invoke-direct {p0}, Lorg/mapsforge/map/view/FrameBufferBitmap;->createBitmapIfRequested()V

    .line 117
    iget-object v1, p0, Lorg/mapsforge/map/view/FrameBufferBitmap;->bitmap:Lorg/mapsforge/core/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 118
    iget-object v1, p0, Lorg/mapsforge/map/view/FrameBufferBitmap;->frameLock:Lorg/mapsforge/map/view/FrameBufferBitmap$Lock;

    invoke-virtual {v1}, Lorg/mapsforge/map/view/FrameBufferBitmap$Lock;->enable()V

    .line 120
    :cond_0
    iget-object v1, p0, Lorg/mapsforge/map/view/FrameBufferBitmap;->bitmap:Lorg/mapsforge/core/graphics/Bitmap;

    monitor-exit v0

    return-object v1

    .line 121
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method release()V
    .locals 2

    .line 125
    iget-object v0, p0, Lorg/mapsforge/map/view/FrameBufferBitmap;->frameLock:Lorg/mapsforge/map/view/FrameBufferBitmap$Lock;

    monitor-enter v0

    .line 126
    :try_start_0
    iget-object v1, p0, Lorg/mapsforge/map/view/FrameBufferBitmap;->frameLock:Lorg/mapsforge/map/view/FrameBufferBitmap$Lock;

    invoke-virtual {v1}, Lorg/mapsforge/map/view/FrameBufferBitmap$Lock;->disable()V

    .line 127
    monitor-exit v0

    .line 128
    return-void

    .line 127
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
