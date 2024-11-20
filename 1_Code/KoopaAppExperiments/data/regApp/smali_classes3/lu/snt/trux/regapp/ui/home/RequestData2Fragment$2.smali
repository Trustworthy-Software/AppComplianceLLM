.class Llu/snt/trux/regapp/ui/home/RequestData2Fragment$2;
.super Ljava/lang/Object;
.source "RequestData2Fragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llu/snt/trux/regapp/ui/home/RequestData2Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llu/snt/trux/regapp/ui/home/RequestData2Fragment;


# direct methods
.method constructor <init>(Llu/snt/trux/regapp/ui/home/RequestData2Fragment;)V
    .locals 0
    .param p1, "this$0"    # Llu/snt/trux/regapp/ui/home/RequestData2Fragment;

    .line 46
    iput-object p1, p0, Llu/snt/trux/regapp/ui/home/RequestData2Fragment$2;->this$0:Llu/snt/trux/regapp/ui/home/RequestData2Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 49
    iget-object v0, p0, Llu/snt/trux/regapp/ui/home/RequestData2Fragment$2;->this$0:Llu/snt/trux/regapp/ui/home/RequestData2Fragment;

    const-string v1, "reg.app.dpo@gmail.com"

    invoke-static {v0, v1}, Llu/snt/trux/regapp/ui/home/RequestData2Fragment;->-$$Nest$msendEmail(Llu/snt/trux/regapp/ui/home/RequestData2Fragment;Ljava/lang/String;)V

    .line 50
    return-void
.end method
