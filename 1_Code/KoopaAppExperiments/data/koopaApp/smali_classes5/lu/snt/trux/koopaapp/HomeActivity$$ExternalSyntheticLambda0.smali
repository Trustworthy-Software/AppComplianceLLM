.class public final synthetic Llu/snt/trux/koopaapp/HomeActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/material/navigation/NavigationView$OnNavigationItemSelectedListener;


# instance fields
.field public final synthetic f$0:Llu/snt/trux/koopaapp/HomeActivity;

.field public final synthetic f$1:Landroidx/navigation/NavController;

.field public final synthetic f$2:Landroidx/drawerlayout/widget/DrawerLayout;


# direct methods
.method public synthetic constructor <init>(Llu/snt/trux/koopaapp/HomeActivity;Landroidx/navigation/NavController;Landroidx/drawerlayout/widget/DrawerLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llu/snt/trux/koopaapp/HomeActivity$$ExternalSyntheticLambda0;->f$0:Llu/snt/trux/koopaapp/HomeActivity;

    iput-object p2, p0, Llu/snt/trux/koopaapp/HomeActivity$$ExternalSyntheticLambda0;->f$1:Landroidx/navigation/NavController;

    iput-object p3, p0, Llu/snt/trux/koopaapp/HomeActivity$$ExternalSyntheticLambda0;->f$2:Landroidx/drawerlayout/widget/DrawerLayout;

    return-void
.end method


# virtual methods
.method public final onNavigationItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    iget-object v0, p0, Llu/snt/trux/koopaapp/HomeActivity$$ExternalSyntheticLambda0;->f$0:Llu/snt/trux/koopaapp/HomeActivity;

    iget-object v1, p0, Llu/snt/trux/koopaapp/HomeActivity$$ExternalSyntheticLambda0;->f$1:Landroidx/navigation/NavController;

    iget-object v2, p0, Llu/snt/trux/koopaapp/HomeActivity$$ExternalSyntheticLambda0;->f$2:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v0, v1, v2, p1}, Llu/snt/trux/koopaapp/HomeActivity;->lambda$onCreate$0$lu-snt-trux-koopaapp-HomeActivity(Landroidx/navigation/NavController;Landroidx/drawerlayout/widget/DrawerLayout;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
