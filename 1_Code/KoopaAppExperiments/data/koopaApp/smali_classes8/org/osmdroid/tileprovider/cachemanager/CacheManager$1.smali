.class Lorg/osmdroid/tileprovider/cachemanager/CacheManager$1;
.super Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog;
.source "CacheManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->getDownloadingDialog(Landroid/content/Context;Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;)Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/osmdroid/tileprovider/cachemanager/CacheManager;

.field final synthetic val$pCtx:Landroid/content/Context;


# direct methods
.method constructor <init>(Lorg/osmdroid/tileprovider/cachemanager/CacheManager;Landroid/content/Context;Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lorg/osmdroid/tileprovider/cachemanager/CacheManager;
    .param p2, "pCtx"    # Landroid/content/Context;
    .param p3, "pTask"    # Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;

    .line 814
    iput-object p1, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$1;->this$0:Lorg/osmdroid/tileprovider/cachemanager/CacheManager;

    iput-object p4, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$1;->val$pCtx:Landroid/content/Context;

    invoke-direct {p0, p2, p3}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog;-><init>(Landroid/content/Context;Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;)V

    return-void
.end method


# virtual methods
.method protected getUITitle()Ljava/lang/String;
    .locals 2

    .line 817
    iget-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$1;->val$pCtx:Landroid/content/Context;

    sget v1, Lorg/osmdroid/library/R$string;->cacheManagerDownloadingTitle:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTaskFailed(I)V
    .locals 4
    .param p1, "errors"    # I

    .line 822
    invoke-super {p0, p1}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog;->onTaskFailed(I)V

    .line 823
    iget-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$1;->val$pCtx:Landroid/content/Context;

    sget v1, Lorg/osmdroid/library/R$string;->cacheManagerFailed:I

    .line 824
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 823
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 825
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 826
    return-void
.end method
