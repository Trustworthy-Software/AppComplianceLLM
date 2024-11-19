.class Llu/snt/trux/koopaapp/MainActivity$3$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llu/snt/trux/koopaapp/MainActivity$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Llu/snt/trux/koopaapp/MainActivity$3;


# direct methods
.method constructor <init>(Llu/snt/trux/koopaapp/MainActivity$3;)V
    .locals 0
    .param p1, "this$1"    # Llu/snt/trux/koopaapp/MainActivity$3;

    .line 151
    iput-object p1, p0, Llu/snt/trux/koopaapp/MainActivity$3$2;->this$1:Llu/snt/trux/koopaapp/MainActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 154
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 155
    return-void
.end method
