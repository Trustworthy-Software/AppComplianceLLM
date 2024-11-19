.class Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog$1;
.super Ljava/lang/Object;
.source "CacheManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog;-><init>(Landroid/content/Context;Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog;

.field final synthetic val$pCtx:Landroid/content/Context;


# direct methods
.method constructor <init>(Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog;

    .line 612
    iput-object p1, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog$1;->this$0:Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog;

    iput-object p2, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog$1;->val$pCtx:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "cancelDialog"    # Landroid/content/DialogInterface;

    .line 615
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog$1;->val$pCtx:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 616
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog$1;->val$pCtx:Landroid/content/Context;

    sget v2, Lorg/osmdroid/library/R$string;->cacheManagerCancelTitle:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 617
    iget-object v1, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog$1;->val$pCtx:Landroid/content/Context;

    sget v2, Lorg/osmdroid/library/R$string;->cacheManagerCancelBody:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 618
    iget-object v1, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog$1;->val$pCtx:Landroid/content/Context;

    sget v2, Lorg/osmdroid/library/R$string;->cacheManagerYes:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog$1$1;

    invoke-direct {v2, p0}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog$1$1;-><init>(Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 624
    iget-object v1, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog$1;->val$pCtx:Landroid/content/Context;

    sget v2, Lorg/osmdroid/library/R$string;->cacheManagerNo:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog$1$2;

    invoke-direct {v2, p0}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog$1$2;-><init>(Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 631
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 632
    return-void
.end method
