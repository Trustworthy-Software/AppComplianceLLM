.class public Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;
.super Landroid/os/AsyncTask;
.source "CacheManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/tileprovider/cachemanager/CacheManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CacheManagerTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAction:Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mManager:Lorg/osmdroid/tileprovider/cachemanager/CacheManager;

.field private final mTiles:Lorg/osmdroid/util/IterableWithSize;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/osmdroid/util/IterableWithSize<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mZoomMax:I

.field private final mZoomMin:I


# direct methods
.method public constructor <init>(Lorg/osmdroid/tileprovider/cachemanager/CacheManager;Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;Ljava/util/ArrayList;II)V
    .locals 6
    .param p1, "pManager"    # Lorg/osmdroid/tileprovider/cachemanager/CacheManager;
    .param p2, "pAction"    # Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;
    .param p4, "pZoomMin"    # I
    .param p5, "pZoomMax"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/osmdroid/tileprovider/cachemanager/CacheManager;",
            "Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;",
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;II)V"
        }
    .end annotation

    .line 718
    .local p3, "pGeoPoints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/osmdroid/util/GeoPoint;>;"
    invoke-static {p3, p4, p5}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->getTilesCoverage(Ljava/util/ArrayList;II)Ljava/util/List;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;-><init>(Lorg/osmdroid/tileprovider/cachemanager/CacheManager;Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;Ljava/util/List;II)V

    .line 719
    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/tileprovider/cachemanager/CacheManager;Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;Ljava/util/List;II)V
    .locals 6
    .param p1, "pManager"    # Lorg/osmdroid/tileprovider/cachemanager/CacheManager;
    .param p2, "pAction"    # Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;
    .param p4, "pZoomMin"    # I
    .param p5, "pZoomMax"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/osmdroid/tileprovider/cachemanager/CacheManager;",
            "Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;II)V"
        }
    .end annotation

    .line 712
    .local p3, "pTiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v3, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$ListWrapper;

    const/4 v0, 0x0

    invoke-direct {v3, p3, v0}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$ListWrapper;-><init>(Ljava/util/List;Lorg/osmdroid/tileprovider/cachemanager/CacheManager$1;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;-><init>(Lorg/osmdroid/tileprovider/cachemanager/CacheManager;Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;Lorg/osmdroid/util/IterableWithSize;II)V

    .line 713
    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/tileprovider/cachemanager/CacheManager;Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;Lorg/osmdroid/util/BoundingBox;II)V
    .locals 6
    .param p1, "pManager"    # Lorg/osmdroid/tileprovider/cachemanager/CacheManager;
    .param p2, "pAction"    # Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;
    .param p3, "pBB"    # Lorg/osmdroid/util/BoundingBox;
    .param p4, "pZoomMin"    # I
    .param p5, "pZoomMax"    # I

    .line 724
    invoke-static {p3, p4, p5}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->getTilesCoverageIterable(Lorg/osmdroid/util/BoundingBox;II)Lorg/osmdroid/util/IterableWithSize;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;-><init>(Lorg/osmdroid/tileprovider/cachemanager/CacheManager;Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;Lorg/osmdroid/util/IterableWithSize;II)V

    .line 725
    return-void
.end method

.method private constructor <init>(Lorg/osmdroid/tileprovider/cachemanager/CacheManager;Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;Lorg/osmdroid/util/IterableWithSize;II)V
    .locals 1
    .param p1, "pManager"    # Lorg/osmdroid/tileprovider/cachemanager/CacheManager;
    .param p2, "pAction"    # Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;
    .param p4, "pZoomMin"    # I
    .param p5, "pZoomMax"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/osmdroid/tileprovider/cachemanager/CacheManager;",
            "Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;",
            "Lorg/osmdroid/util/IterableWithSize<",
            "Ljava/lang/Long;",
            ">;II)V"
        }
    .end annotation

    .line 701
    .local p3, "pTiles":Lorg/osmdroid/util/IterableWithSize;, "Lorg/osmdroid/util/IterableWithSize<Ljava/lang/Long;>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 697
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mCallbacks:Ljava/util/ArrayList;

    .line 702
    iput-object p1, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mManager:Lorg/osmdroid/tileprovider/cachemanager/CacheManager;

    .line 703
    iput-object p2, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mAction:Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;

    .line 704
    iput-object p3, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mTiles:Lorg/osmdroid/util/IterableWithSize;

    .line 705
    iget v0, p1, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->mMinZoomLevel:I

    invoke-static {p4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mZoomMin:I

    .line 706
    iget v0, p1, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->mMaxZoomLevel:I

    invoke-static {p5, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mZoomMax:I

    .line 707
    return-void
.end method

.method static synthetic access$000(Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;)Lorg/osmdroid/tileprovider/cachemanager/CacheManager;
    .locals 1
    .param p0, "x0"    # Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;

    .line 691
    iget-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mManager:Lorg/osmdroid/tileprovider/cachemanager/CacheManager;

    return-object v0
.end method

.method private logFaultyCallback(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "pThrowable"    # Ljava/lang/Throwable;

    .line 748
    const-string v0, "OsmDroid"

    const-string v1, "Error caught processing cachemanager callback, your implementation is faulty"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 749
    return-void
.end method


# virtual methods
.method public addCallback(Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;)V
    .locals 1
    .param p1, "pCallback"    # Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;

    .line 728
    if-eqz p1, :cond_0

    .line 729
    iget-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 731
    :cond_0
    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 10
    .param p1, "params"    # [Ljava/lang/Object;

    .line 786
    iget-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mAction:Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;

    invoke-interface {v0}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;->preCheck()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 787
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 790
    :cond_0
    const/4 v0, 0x0

    .line 791
    .local v0, "tileCounter":I
    const/4 v2, 0x0

    .line 793
    .local v2, "errors":I
    iget-object v3, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mTiles:Lorg/osmdroid/util/IterableWithSize;

    invoke-interface {v3}, Lorg/osmdroid/util/IterableWithSize;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 794
    .local v4, "tile":J
    invoke-static {v4, v5}, Lorg/osmdroid/util/MapTileIndex;->getZoom(J)I

    move-result v6

    .line 795
    .local v6, "zoom":I
    iget v7, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mZoomMin:I

    if-lt v6, v7, :cond_1

    iget v7, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mZoomMax:I

    if-gt v6, v7, :cond_1

    .line 796
    iget-object v7, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mAction:Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;

    invoke-interface {v7, v4, v5}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;->tileAction(J)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 797
    add-int/lit8 v2, v2, 0x1

    .line 800
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 801
    iget-object v7, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mAction:Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;

    invoke-interface {v7}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;->getProgressModulo()I

    move-result v7

    rem-int v7, v0, v7

    if-nez v7, :cond_3

    .line 802
    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->isCancelled()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 803
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 805
    :cond_2
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-static {v4, v5}, Lorg/osmdroid/util/MapTileIndex;->getZoom(J)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    invoke-virtual {p0, v7}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->publishProgress([Ljava/lang/Object;)V

    .line 808
    .end local v4    # "tile":J
    .end local v6    # "zoom":I
    :cond_3
    goto :goto_0

    .line 809
    :cond_4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 691
    invoke-virtual {p0, p1}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected onCancelled()V
    .locals 1

    .line 765
    iget-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mManager:Lorg/osmdroid/tileprovider/cachemanager/CacheManager;

    iget-object v0, v0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->mPendingTasks:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 766
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "specialCount"    # Ljava/lang/Integer;

    .line 770
    iget-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mManager:Lorg/osmdroid/tileprovider/cachemanager/CacheManager;

    iget-object v0, v0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->mPendingTasks:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 771
    iget-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;

    .line 773
    .local v1, "callback":Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_0

    .line 774
    invoke-interface {v1}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;->onTaskComplete()V

    goto :goto_1

    .line 776
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;->onTaskFailed(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 780
    :goto_1
    goto :goto_2

    .line 778
    :catchall_0
    move-exception v2

    .line 779
    .local v2, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v2}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->logFaultyCallback(Ljava/lang/Throwable;)V

    .line 781
    .end local v1    # "callback":Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;
    .end local v2    # "t":Ljava/lang/Throwable;
    :goto_2
    goto :goto_0

    .line 782
    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 691
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 6

    .line 735
    iget-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mTiles:Lorg/osmdroid/util/IterableWithSize;

    invoke-interface {v0}, Lorg/osmdroid/util/IterableWithSize;->size()I

    move-result v0

    .line 736
    .local v0, "total":I
    iget-object v1, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;

    .line 738
    .local v2, "callback":Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;
    :try_start_0
    invoke-interface {v2, v0}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;->setPossibleTilesInArea(I)V

    .line 739
    invoke-interface {v2}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;->downloadStarted()V

    .line 740
    iget v3, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mZoomMin:I

    iget v4, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mZoomMax:I

    const/4 v5, 0x0

    invoke-interface {v2, v5, v3, v3, v4}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;->updateProgress(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 743
    goto :goto_1

    .line 741
    :catchall_0
    move-exception v3

    .line 742
    .local v3, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v3}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->logFaultyCallback(Ljava/lang/Throwable;)V

    .line 744
    .end local v2    # "callback":Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;
    .end local v3    # "t":Ljava/lang/Throwable;
    :goto_1
    goto :goto_0

    .line 745
    :cond_0
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 6
    .param p1, "count"    # [Ljava/lang/Integer;

    .line 754
    iget-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;

    .line 756
    .local v1, "callback":Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;
    const/4 v2, 0x0

    :try_start_0
    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    aget-object v3, p1, v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v4, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mZoomMin:I

    iget v5, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mZoomMax:I

    invoke-interface {v1, v2, v3, v4, v5}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;->updateProgress(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 759
    goto :goto_1

    .line 757
    :catchall_0
    move-exception v2

    .line 758
    .local v2, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v2}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->logFaultyCallback(Ljava/lang/Throwable;)V

    .line 760
    .end local v1    # "callback":Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;
    .end local v2    # "t":Ljava/lang/Throwable;
    :goto_1
    goto :goto_0

    .line 761
    :cond_0
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 691
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
