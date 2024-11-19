.class public final Llu/snt/trux/koopaapp/databinding/ActivityHomeBinding;
.super Ljava/lang/Object;
.source "ActivityHomeBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final appBarHome:Llu/snt/trux/koopaapp/databinding/HomeAppBarBinding;

.field public final drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

.field public final navView:Lcom/google/android/material/navigation/NavigationView;

.field private final rootView:Landroidx/drawerlayout/widget/DrawerLayout;


# direct methods
.method private constructor <init>(Landroidx/drawerlayout/widget/DrawerLayout;Llu/snt/trux/koopaapp/databinding/HomeAppBarBinding;Landroidx/drawerlayout/widget/DrawerLayout;Lcom/google/android/material/navigation/NavigationView;)V
    .locals 0
    .param p1, "rootView"    # Landroidx/drawerlayout/widget/DrawerLayout;
    .param p2, "appBarHome"    # Llu/snt/trux/koopaapp/databinding/HomeAppBarBinding;
    .param p3, "drawerLayout"    # Landroidx/drawerlayout/widget/DrawerLayout;
    .param p4, "navView"    # Lcom/google/android/material/navigation/NavigationView;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Llu/snt/trux/koopaapp/databinding/ActivityHomeBinding;->rootView:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 34
    iput-object p2, p0, Llu/snt/trux/koopaapp/databinding/ActivityHomeBinding;->appBarHome:Llu/snt/trux/koopaapp/databinding/HomeAppBarBinding;

    .line 35
    iput-object p3, p0, Llu/snt/trux/koopaapp/databinding/ActivityHomeBinding;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 36
    iput-object p4, p0, Llu/snt/trux/koopaapp/databinding/ActivityHomeBinding;->navView:Lcom/google/android/material/navigation/NavigationView;

    .line 37
    return-void
.end method

.method public static bind(Landroid/view/View;)Llu/snt/trux/koopaapp/databinding/ActivityHomeBinding;
    .locals 7
    .param p0, "rootView"    # Landroid/view/View;

    .line 66
    sget v0, Llu/snt/trux/koopaapp/R$id;->app_bar_home:I

    .line 67
    .local v0, "id":I
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 68
    .local v1, "appBarHome":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 71
    invoke-static {v1}, Llu/snt/trux/koopaapp/databinding/HomeAppBarBinding;->bind(Landroid/view/View;)Llu/snt/trux/koopaapp/databinding/HomeAppBarBinding;

    move-result-object v2

    .line 73
    .local v2, "binding_appBarHome":Llu/snt/trux/koopaapp/databinding/HomeAppBarBinding;
    move-object v3, p0

    check-cast v3, Landroidx/drawerlayout/widget/DrawerLayout;

    .line 75
    .local v3, "drawerLayout":Landroidx/drawerlayout/widget/DrawerLayout;
    sget v0, Llu/snt/trux/koopaapp/R$id;->nav_view:I

    .line 76
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/navigation/NavigationView;

    .line 77
    .local v4, "navView":Lcom/google/android/material/navigation/NavigationView;
    if-eqz v4, :cond_0

    .line 81
    new-instance v5, Llu/snt/trux/koopaapp/databinding/ActivityHomeBinding;

    move-object v6, p0

    check-cast v6, Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-direct {v5, v6, v2, v3, v4}, Llu/snt/trux/koopaapp/databinding/ActivityHomeBinding;-><init>(Landroidx/drawerlayout/widget/DrawerLayout;Llu/snt/trux/koopaapp/databinding/HomeAppBarBinding;Landroidx/drawerlayout/widget/DrawerLayout;Lcom/google/android/material/navigation/NavigationView;)V

    return-object v5

    .line 78
    :cond_0
    goto :goto_0

    .line 69
    .end local v2    # "binding_appBarHome":Llu/snt/trux/koopaapp/databinding/HomeAppBarBinding;
    .end local v3    # "drawerLayout":Landroidx/drawerlayout/widget/DrawerLayout;
    .end local v4    # "navView":Lcom/google/android/material/navigation/NavigationView;
    :cond_1
    nop

    .line 84
    .end local v1    # "appBarHome":Landroid/view/View;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 85
    .local v1, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Llu/snt/trux/koopaapp/databinding/ActivityHomeBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 47
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Llu/snt/trux/koopaapp/databinding/ActivityHomeBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Llu/snt/trux/koopaapp/databinding/ActivityHomeBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Llu/snt/trux/koopaapp/databinding/ActivityHomeBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 53
    sget v0, Llu/snt/trux/koopaapp/R$layout;->activity_home:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 54
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 55
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 57
    :cond_0
    invoke-static {v0}, Llu/snt/trux/koopaapp/databinding/ActivityHomeBinding;->bind(Landroid/view/View;)Llu/snt/trux/koopaapp/databinding/ActivityHomeBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 18
    invoke-virtual {p0}, Llu/snt/trux/koopaapp/databinding/ActivityHomeBinding;->getRoot()Landroidx/drawerlayout/widget/DrawerLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/drawerlayout/widget/DrawerLayout;
    .locals 1

    .line 42
    iget-object v0, p0, Llu/snt/trux/koopaapp/databinding/ActivityHomeBinding;->rootView:Landroidx/drawerlayout/widget/DrawerLayout;

    return-object v0
.end method
