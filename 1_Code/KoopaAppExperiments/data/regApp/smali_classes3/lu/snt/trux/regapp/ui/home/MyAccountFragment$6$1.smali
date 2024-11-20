.class Llu/snt/trux/regapp/ui/home/MyAccountFragment$6$1;
.super Ljava/lang/Object;
.source "MyAccountFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llu/snt/trux/regapp/ui/home/MyAccountFragment$6;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Llu/snt/trux/regapp/ui/home/MyAccountFragment$6;


# direct methods
.method constructor <init>(Llu/snt/trux/regapp/ui/home/MyAccountFragment$6;)V
    .locals 0
    .param p1, "this$1"    # Llu/snt/trux/regapp/ui/home/MyAccountFragment$6;

    .line 401
    iput-object p1, p0, Llu/snt/trux/regapp/ui/home/MyAccountFragment$6$1;->this$1:Llu/snt/trux/regapp/ui/home/MyAccountFragment$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .line 405
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 406
    return-void
.end method
