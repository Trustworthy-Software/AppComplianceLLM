.class public Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;
.super Lorg/osmdroid/tileprovider/ExpirableBitmapDrawable;
.source "ReusableBitmapDrawable.java"


# instance fields
.field private mBitmapRecycled:Z

.field private mUsageRefCount:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "pBitmap"    # Landroid/graphics/Bitmap;

    .line 20
    invoke-direct {p0, p1}, Lorg/osmdroid/tileprovider/ExpirableBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;->mBitmapRecycled:Z

    .line 17
    iput v0, p0, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;->mUsageRefCount:I

    .line 21
    return-void
.end method


# virtual methods
.method public beginUsingDrawable()V
    .locals 1

    .line 24
    monitor-enter p0

    .line 25
    :try_start_0
    iget v0, p0, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;->mUsageRefCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;->mUsageRefCount:I

    .line 26
    monitor-exit p0

    .line 27
    return-void

    .line 26
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public finishUsingDrawable()V
    .locals 2

    .line 30
    monitor-enter p0

    .line 31
    :try_start_0
    iget v0, p0, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;->mUsageRefCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;->mUsageRefCount:I

    .line 32
    if-ltz v0, :cond_0

    .line 34
    monitor-exit p0

    .line 35
    return-void

    .line 33
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unbalanced endUsingDrawable() called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isBitmapValid()Z
    .locals 1

    .line 48
    monitor-enter p0

    .line 49
    :try_start_0
    iget-boolean v0, p0, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;->mBitmapRecycled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public tryRecycle()Landroid/graphics/Bitmap;
    .locals 1

    .line 38
    monitor-enter p0

    .line 39
    :try_start_0
    iget v0, p0, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;->mUsageRefCount:I

    if-nez v0, :cond_0

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;->mBitmapRecycled:Z

    .line 41
    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 43
    :cond_0
    monitor-exit p0

    .line 44
    const/4 v0, 0x0

    return-object v0

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
