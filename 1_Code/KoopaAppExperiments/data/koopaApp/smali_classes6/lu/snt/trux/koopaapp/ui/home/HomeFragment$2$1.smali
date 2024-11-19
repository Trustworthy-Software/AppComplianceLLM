.class Llu/snt/trux/koopaapp/ui/home/HomeFragment$2$1;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llu/snt/trux/koopaapp/ui/home/HomeFragment$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Llu/snt/trux/koopaapp/ui/home/HomeFragment$2;


# direct methods
.method constructor <init>(Llu/snt/trux/koopaapp/ui/home/HomeFragment$2;)V
    .locals 0
    .param p1, "this$1"    # Llu/snt/trux/koopaapp/ui/home/HomeFragment$2;

    .line 229
    iput-object p1, p0, Llu/snt/trux/koopaapp/ui/home/HomeFragment$2$1;->this$1:Llu/snt/trux/koopaapp/ui/home/HomeFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .line 233
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 234
    return-void
.end method
