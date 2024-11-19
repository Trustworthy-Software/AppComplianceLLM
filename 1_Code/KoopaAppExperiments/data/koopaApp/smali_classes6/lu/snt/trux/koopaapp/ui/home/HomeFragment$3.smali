.class Llu/snt/trux/koopaapp/ui/home/HomeFragment$3;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llu/snt/trux/koopaapp/ui/home/HomeFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llu/snt/trux/koopaapp/ui/home/HomeFragment;


# direct methods
.method constructor <init>(Llu/snt/trux/koopaapp/ui/home/HomeFragment;)V
    .locals 0
    .param p1, "this$0"    # Llu/snt/trux/koopaapp/ui/home/HomeFragment;

    .line 245
    iput-object p1, p0, Llu/snt/trux/koopaapp/ui/home/HomeFragment$3;->this$0:Llu/snt/trux/koopaapp/ui/home/HomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 249
    invoke-static {p1}, Landroidx/navigation/Navigation;->findNavController(Landroid/view/View;)Landroidx/navigation/NavController;

    move-result-object v0

    sget v1, Llu/snt/trux/koopaapp/R$id;->nav_training:I

    invoke-virtual {v0, v1}, Landroidx/navigation/NavController;->navigate(I)V

    .line 250
    return-void
.end method
