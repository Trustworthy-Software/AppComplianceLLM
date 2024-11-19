.class Llu/snt/trux/koopaapp/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llu/snt/trux/koopaapp/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llu/snt/trux/koopaapp/MainActivity;


# direct methods
.method constructor <init>(Llu/snt/trux/koopaapp/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Llu/snt/trux/koopaapp/MainActivity;

    .line 101
    iput-object p1, p0, Llu/snt/trux/koopaapp/MainActivity$2;->this$0:Llu/snt/trux/koopaapp/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 105
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Llu/snt/trux/koopaapp/MainActivity$2;->this$0:Llu/snt/trux/koopaapp/MainActivity;

    const-class v2, Llu/snt/trux/koopaapp/RegistrationActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 106
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Llu/snt/trux/koopaapp/MainActivity$2;->this$0:Llu/snt/trux/koopaapp/MainActivity;

    invoke-virtual {v1, v0}, Llu/snt/trux/koopaapp/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 107
    return-void
.end method
