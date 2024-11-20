.class public Lorg/osmdroid/tileprovider/BitmapPool;
.super Ljava/lang/Object;
.source "BitmapPool.java"


# static fields
.field private static final sInstance:Lorg/osmdroid/tileprovider/BitmapPool;


# instance fields
.field private final mExecutor:Ljava/util/concurrent/ExecutorService;

.field private final mPool:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Lorg/osmdroid/tileprovider/BitmapPool;

    invoke-direct {v0}, Lorg/osmdroid/tileprovider/BitmapPool;-><init>()V

    sput-object v0, Lorg/osmdroid/tileprovider/BitmapPool;->sInstance:Lorg/osmdroid/tileprovider/BitmapPool;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/tileprovider/BitmapPool;->mPool:Ljava/util/LinkedList;

    .line 20
    new-instance v0, Lorg/osmdroid/tileprovider/modules/ConfigurablePriorityThreadFactory;

    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lorg/osmdroid/tileprovider/modules/ConfigurablePriorityThreadFactory;-><init>(ILjava/lang/String;)V

    .line 20
    invoke-static {v2, v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/tileprovider/BitmapPool;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 25
    return-void
.end method

.method static synthetic access$000(Lorg/osmdroid/tileprovider/BitmapPool;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p0, "x0"    # Lorg/osmdroid/tileprovider/BitmapPool;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;

    .line 17
    invoke-direct {p0, p1}, Lorg/osmdroid/tileprovider/BitmapPool;->syncRecycle(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static getInstance()Lorg/osmdroid/tileprovider/BitmapPool;
    .locals 1

    .line 30
    sget-object v0, Lorg/osmdroid/tileprovider/BitmapPool;->sInstance:Lorg/osmdroid/tileprovider/BitmapPool;

    return-object v0
.end method

.method private syncRecycle(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "pDrawable"    # Landroid/graphics/drawable/Drawable;

    .line 140
    if-nez p1, :cond_0

    .line 141
    return-void

    .line 143
    :cond_0
    nop

    .line 151
    instance-of v0, p1, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;

    if-eqz v0, :cond_1

    .line 152
    move-object v0, p1

    check-cast v0, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;

    invoke-virtual {p0, v0}, Lorg/osmdroid/tileprovider/BitmapPool;->returnDrawableToPool(Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;)V

    .line 154
    :cond_1
    return-void
.end method


# virtual methods
.method public applyReusableOptions(Landroid/graphics/BitmapFactory$Options;)V
    .locals 1
    .param p1, "aBitmapOptions"    # Landroid/graphics/BitmapFactory$Options;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 53
    nop

    .line 54
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 55
    const/4 v0, 0x1

    iput v0, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 56
    iput-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 58
    return-void
.end method

.method public applyReusableOptions(Landroid/graphics/BitmapFactory$Options;II)V
    .locals 1
    .param p1, "aBitmapOptions"    # Landroid/graphics/BitmapFactory$Options;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 61
    nop

    .line 65
    invoke-virtual {p0, p2, p3}, Lorg/osmdroid/tileprovider/BitmapPool;->obtainSizedBitmapFromPool(II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 66
    const/4 v0, 0x1

    iput v0, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 67
    iput-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 69
    return-void
.end method

.method public asyncRecycle(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "pDrawable"    # Landroid/graphics/drawable/Drawable;

    .line 125
    if-nez p1, :cond_0

    .line 126
    return-void

    .line 128
    :cond_0
    iget-object v0, p0, Lorg/osmdroid/tileprovider/BitmapPool;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lorg/osmdroid/tileprovider/BitmapPool$1;

    invoke-direct {v1, p0, p1}, Lorg/osmdroid/tileprovider/BitmapPool$1;-><init>(Lorg/osmdroid/tileprovider/BitmapPool;Landroid/graphics/drawable/Drawable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 134
    return-void
.end method

.method public clearBitmapPool()V
    .locals 3

    .line 112
    sget-object v0, Lorg/osmdroid/tileprovider/BitmapPool;->sInstance:Lorg/osmdroid/tileprovider/BitmapPool;

    iget-object v0, v0, Lorg/osmdroid/tileprovider/BitmapPool;->mPool:Ljava/util/LinkedList;

    monitor-enter v0

    .line 113
    :goto_0
    :try_start_0
    sget-object v1, Lorg/osmdroid/tileprovider/BitmapPool;->sInstance:Lorg/osmdroid/tileprovider/BitmapPool;

    iget-object v2, v1, Lorg/osmdroid/tileprovider/BitmapPool;->mPool:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 114
    iget-object v1, v1, Lorg/osmdroid/tileprovider/BitmapPool;->mPool:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 115
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 116
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 117
    :cond_0
    monitor-exit v0

    .line 118
    return-void

    .line 117
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public obtainBitmapFromPool()Landroid/graphics/Bitmap;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 77
    iget-object v0, p0, Lorg/osmdroid/tileprovider/BitmapPool;->mPool:Ljava/util/LinkedList;

    monitor-enter v0

    .line 78
    :try_start_0
    iget-object v1, p0, Lorg/osmdroid/tileprovider/BitmapPool;->mPool:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    .line 81
    :cond_0
    iget-object v1, p0, Lorg/osmdroid/tileprovider/BitmapPool;->mPool:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 82
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 83
    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/BitmapPool;->obtainBitmapFromPool()Landroid/graphics/Bitmap;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 85
    :cond_1
    monitor-exit v0

    return-object v1

    .line 88
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public obtainSizedBitmapFromPool(II)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "aWidth"    # I
    .param p2, "aHeight"    # I

    .line 92
    iget-object v0, p0, Lorg/osmdroid/tileprovider/BitmapPool;->mPool:Ljava/util/LinkedList;

    monitor-enter v0

    .line 93
    :try_start_0
    iget-object v1, p0, Lorg/osmdroid/tileprovider/BitmapPool;->mPool:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 94
    monitor-exit v0

    return-object v2

    .line 96
    :cond_0
    iget-object v1, p0, Lorg/osmdroid/tileprovider/BitmapPool;->mPool:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    .line 97
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 98
    iget-object v1, p0, Lorg/osmdroid/tileprovider/BitmapPool;->mPool:Ljava/util/LinkedList;

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 99
    invoke-virtual {p0, p1, p2}, Lorg/osmdroid/tileprovider/BitmapPool;->obtainSizedBitmapFromPool(II)Landroid/graphics/Bitmap;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 100
    :cond_1
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-ne v4, p1, :cond_2

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-ne v4, p2, :cond_2

    .line 101
    iget-object v1, p0, Lorg/osmdroid/tileprovider/BitmapPool;->mPool:Ljava/util/LinkedList;

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 102
    monitor-exit v0

    return-object v3

    .line 104
    .end local v3    # "bitmap":Landroid/graphics/Bitmap;
    :cond_2
    goto :goto_0

    .line 106
    :cond_3
    monitor-exit v0

    .line 108
    return-object v2

    .line 106
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public returnDrawableToPool(Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;)V
    .locals 3
    .param p1, "drawable"    # Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;

    .line 35
    invoke-virtual {p1}, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;->tryRecycle()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 36
    .local v0, "b":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 37
    iget-object v1, p0, Lorg/osmdroid/tileprovider/BitmapPool;->mPool:Ljava/util/LinkedList;

    monitor-enter v1

    .line 38
    :try_start_0
    iget-object v2, p0, Lorg/osmdroid/tileprovider/BitmapPool;->mPool:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 39
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 40
    :cond_0
    if-eqz v0, :cond_1

    .line 41
    const-string v1, "OsmDroid"

    const-string v2, "Rejected bitmap from being added to BitmapPool."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :cond_1
    :goto_0
    return-void
.end method
