.class public abstract Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog;
.super Ljava/lang/Object;
.source "CacheManager.java"

# interfaces
.implements Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/tileprovider/cachemanager/CacheManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CacheManagerDialog"
.end annotation


# instance fields
.field private handleMessage:Ljava/lang/String;

.field private final mProgressDialog:Landroid/app/ProgressDialog;

.field private final mTask:Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;)V
    .locals 2
    .param p1, "pCtx"    # Landroid/content/Context;
    .param p2, "pTask"    # Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;

    .line 604
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 605
    iput-object p2, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog;->mTask:Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;

    .line 606
    sget v0, Lorg/osmdroid/library/R$string;->cacheManagerHandlingMessage:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog;->handleMessage:Ljava/lang/String;

    .line 607
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 608
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 609
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 611
    invoke-static {p2}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->access$000(Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;)Lorg/osmdroid/tileprovider/cachemanager/CacheManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->getVerifyCancel()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 612
    new-instance v1, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog$1;

    invoke-direct {v1, p0, p1}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog$1;-><init>(Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_0

    .line 635
    :cond_0
    new-instance v1, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog$2;

    invoke-direct {v1, p0}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog$2;-><init>(Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 642
    :goto_0
    return-void
.end method

.method static synthetic access$100(Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog;)Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;
    .locals 1
    .param p0, "x0"    # Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog;

    .line 599
    iget-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog;->mTask:Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;

    return-object v0
.end method

.method static synthetic access$200(Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog;

    .line 599
    iget-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private dismiss()V
    .locals 1

    .line 678
    iget-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 679
    iget-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 681
    :cond_0
    return-void
.end method


# virtual methods
.method public downloadStarted()V
    .locals 2

    .line 658
    iget-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog;->getUITitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 659
    iget-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 660
    return-void
.end method

.method protected abstract getUITitle()Ljava/lang/String;
.end method

.method public onTaskComplete()V
    .locals 0

    .line 669
    invoke-direct {p0}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog;->dismiss()V

    .line 670
    return-void
.end method

.method public onTaskFailed(I)V
    .locals 0
    .param p1, "errors"    # I

    .line 674
    invoke-direct {p0}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog;->dismiss()V

    .line 675
    return-void
.end method

.method public setPossibleTilesInArea(I)V
    .locals 1
    .param p1, "total"    # I

    .line 664
    iget-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 665
    return-void
.end method

.method public updateProgress(IIII)V
    .locals 2
    .param p1, "progress"    # I
    .param p2, "currentZoomLevel"    # I
    .param p3, "zoomMin"    # I
    .param p4, "zoomMax"    # I

    .line 652
    iget-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 653
    iget-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0, p2, p3, p4}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog;->zoomMessage(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 654
    return-void
.end method

.method protected zoomMessage(III)Ljava/lang/String;
    .locals 4
    .param p1, "zoomLevel"    # I
    .param p2, "zoomMin"    # I
    .param p3, "zoomMax"    # I

    .line 645
    iget-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog;->handleMessage:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
