.class public Llu/snt/trux/regapp/HomeActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "HomeActivity.java"


# instance fields
.field private binding:Llu/snt/trux/regapp/databinding/ActivityHomeBinding;

.field private firebaseAuth:Lcom/google/firebase/auth/FirebaseAuth;

.field private firebaseCurrentUser:Lcom/google/firebase/auth/FirebaseUser;

.field private mAppBarConfiguration:Landroidx/navigation/ui/AppBarConfiguration;

.field private userEmailTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onCreate$0$lu-snt-trux-regapp-HomeActivity(Landroidx/navigation/NavController;Landroidx/drawerlayout/widget/DrawerLayout;Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "navController"    # Landroidx/navigation/NavController;
    .param p2, "drawer"    # Landroidx/drawerlayout/widget/DrawerLayout;
    .param p3, "item"    # Landroid/view/MenuItem;

    .line 69
    invoke-interface {p3}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 72
    .local v0, "id":I
    sget v1, Llu/snt/trux/regapp/R$id;->nav_log_out:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 74
    iget-object v1, p0, Llu/snt/trux/regapp/HomeActivity;->firebaseAuth:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {v1}, Lcom/google/firebase/auth/FirebaseAuth;->signOut()V

    .line 76
    const-string v1, "\u2705 Logout successful."

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 78
    new-instance v1, Landroid/content/Intent;

    const-class v3, Llu/snt/trux/regapp/MainActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 79
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Llu/snt/trux/regapp/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 80
    invoke-virtual {p0}, Llu/snt/trux/regapp/HomeActivity;->finish()V

    .line 81
    return v2

    .line 85
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    sget v1, Llu/snt/trux/regapp/R$id;->nav_my_account:I

    if-ne v0, v1, :cond_1

    .line 86
    sget v1, Llu/snt/trux/regapp/R$id;->nav_my_account:I

    invoke-virtual {p1, v1}, Landroidx/navigation/NavController;->navigate(I)V

    .line 87
    invoke-virtual {p2}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawers()V

    .line 88
    return v2

    .line 92
    :cond_1
    sget v1, Llu/snt/trux/regapp/R$id;->nav_training:I

    if-ne v0, v1, :cond_2

    .line 93
    sget v1, Llu/snt/trux/regapp/R$id;->nav_training:I

    invoke-virtual {p1, v1}, Landroidx/navigation/NavController;->navigate(I)V

    .line 94
    invoke-virtual {p2}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawers()V

    .line 95
    return v2

    .line 99
    :cond_2
    sget v1, Llu/snt/trux/regapp/R$id;->nav_request_data_1:I

    if-ne v0, v1, :cond_3

    .line 100
    sget v1, Llu/snt/trux/regapp/R$id;->nav_request_data_1:I

    invoke-virtual {p1, v1}, Landroidx/navigation/NavController;->navigate(I)V

    .line 101
    invoke-virtual {p2}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawers()V

    .line 102
    return v2

    .line 106
    :cond_3
    sget v1, Llu/snt/trux/regapp/R$id;->nav_request_data_2:I

    if-ne v0, v1, :cond_4

    .line 107
    sget v1, Llu/snt/trux/regapp/R$id;->nav_request_data_2:I

    invoke-virtual {p1, v1}, Landroidx/navigation/NavController;->navigate(I)V

    .line 108
    invoke-virtual {p2}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawers()V

    .line 109
    return v2

    .line 113
    :cond_4
    sget v1, Llu/snt/trux/regapp/R$id;->nav_request_data_3:I

    if-ne v0, v1, :cond_5

    .line 114
    sget v1, Llu/snt/trux/regapp/R$id;->nav_request_data_3:I

    invoke-virtual {p1, v1}, Landroidx/navigation/NavController;->navigate(I)V

    .line 115
    invoke-virtual {p2}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawers()V

    .line 116
    return v2

    .line 121
    :cond_5
    const/4 v1, 0x0

    return v1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 36
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const-string v0, "RegApp"

    const-string v1, "\u2705Home Activity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    iput-object v0, p0, Llu/snt/trux/regapp/HomeActivity;->firebaseAuth:Lcom/google/firebase/auth/FirebaseAuth;

    .line 42
    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v0

    iput-object v0, p0, Llu/snt/trux/regapp/HomeActivity;->firebaseCurrentUser:Lcom/google/firebase/auth/FirebaseUser;

    .line 45
    invoke-virtual {p0}, Llu/snt/trux/regapp/HomeActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Llu/snt/trux/regapp/databinding/ActivityHomeBinding;->inflate(Landroid/view/LayoutInflater;)Llu/snt/trux/regapp/databinding/ActivityHomeBinding;

    move-result-object v0

    iput-object v0, p0, Llu/snt/trux/regapp/HomeActivity;->binding:Llu/snt/trux/regapp/databinding/ActivityHomeBinding;

    .line 46
    iget-object v0, v0, Llu/snt/trux/regapp/databinding/ActivityHomeBinding;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 47
    .local v0, "drawer":Landroidx/drawerlayout/widget/DrawerLayout;
    iget-object v1, p0, Llu/snt/trux/regapp/HomeActivity;->binding:Llu/snt/trux/regapp/databinding/ActivityHomeBinding;

    iget-object v1, v1, Llu/snt/trux/regapp/databinding/ActivityHomeBinding;->navView:Lcom/google/android/material/navigation/NavigationView;

    .line 48
    .local v1, "navigationView":Lcom/google/android/material/navigation/NavigationView;
    iget-object v2, p0, Llu/snt/trux/regapp/HomeActivity;->binding:Llu/snt/trux/regapp/databinding/ActivityHomeBinding;

    invoke-virtual {v2}, Llu/snt/trux/regapp/databinding/ActivityHomeBinding;->getRoot()Landroidx/drawerlayout/widget/DrawerLayout;

    move-result-object v2

    invoke-virtual {p0, v2}, Llu/snt/trux/regapp/HomeActivity;->setContentView(Landroid/view/View;)V

    .line 49
    iget-object v2, p0, Llu/snt/trux/regapp/HomeActivity;->binding:Llu/snt/trux/regapp/databinding/ActivityHomeBinding;

    iget-object v2, v2, Llu/snt/trux/regapp/databinding/ActivityHomeBinding;->appBarHome:Llu/snt/trux/regapp/databinding/HomeAppBarBinding;

    iget-object v2, v2, Llu/snt/trux/regapp/databinding/HomeAppBarBinding;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v2}, Llu/snt/trux/regapp/HomeActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 51
    new-instance v2, Landroidx/navigation/ui/AppBarConfiguration$Builder;

    sget v3, Llu/snt/trux/regapp/R$id;->nav_home:I

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/navigation/ui/AppBarConfiguration$Builder;-><init>([I)V

    .line 52
    invoke-virtual {v2, v0}, Landroidx/navigation/ui/AppBarConfiguration$Builder;->setOpenableLayout(Landroidx/customview/widget/Openable;)Landroidx/navigation/ui/AppBarConfiguration$Builder;

    move-result-object v2

    .line 53
    invoke-virtual {v2}, Landroidx/navigation/ui/AppBarConfiguration$Builder;->build()Landroidx/navigation/ui/AppBarConfiguration;

    move-result-object v2

    iput-object v2, p0, Llu/snt/trux/regapp/HomeActivity;->mAppBarConfiguration:Landroidx/navigation/ui/AppBarConfiguration;

    .line 55
    sget v2, Llu/snt/trux/regapp/R$id;->nav_host_fragment_content_home:I

    invoke-static {p0, v2}, Landroidx/navigation/Navigation;->findNavController(Landroid/app/Activity;I)Landroidx/navigation/NavController;

    move-result-object v2

    .line 56
    .local v2, "navController":Landroidx/navigation/NavController;
    iget-object v3, p0, Llu/snt/trux/regapp/HomeActivity;->mAppBarConfiguration:Landroidx/navigation/ui/AppBarConfiguration;

    invoke-static {p0, v2, v3}, Landroidx/navigation/ui/NavigationUI;->setupActionBarWithNavController(Landroidx/appcompat/app/AppCompatActivity;Landroidx/navigation/NavController;Landroidx/navigation/ui/AppBarConfiguration;)V

    .line 57
    invoke-static {v1, v2}, Landroidx/navigation/ui/NavigationUI;->setupWithNavController(Lcom/google/android/material/navigation/NavigationView;Landroidx/navigation/NavController;)V

    .line 60
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/google/android/material/navigation/NavigationView;->getHeaderView(I)Landroid/view/View;

    move-result-object v3

    .line 61
    .local v3, "headerView":Landroid/view/View;
    sget v4, Llu/snt/trux/regapp/R$id;->textViewUserEmail:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Llu/snt/trux/regapp/HomeActivity;->userEmailTextView:Landroid/widget/TextView;

    .line 62
    iget-object v5, p0, Llu/snt/trux/regapp/HomeActivity;->firebaseCurrentUser:Lcom/google/firebase/auth/FirebaseUser;

    if-eqz v5, :cond_0

    .line 63
    invoke-virtual {v5}, Lcom/google/firebase/auth/FirebaseUser;->getEmail()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    :cond_0
    new-instance v4, Llu/snt/trux/regapp/HomeActivity$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v2, v0}, Llu/snt/trux/regapp/HomeActivity$$ExternalSyntheticLambda0;-><init>(Llu/snt/trux/regapp/HomeActivity;Landroidx/navigation/NavController;Landroidx/drawerlayout/widget/DrawerLayout;)V

    invoke-virtual {v1, v4}, Lcom/google/android/material/navigation/NavigationView;->setNavigationItemSelectedListener(Lcom/google/android/material/navigation/NavigationView$OnNavigationItemSelectedListener;)V

    .line 124
    return-void
.end method

.method public onSupportNavigateUp()Z
    .locals 2

    .line 128
    sget v0, Llu/snt/trux/regapp/R$id;->nav_host_fragment_content_home:I

    invoke-static {p0, v0}, Landroidx/navigation/Navigation;->findNavController(Landroid/app/Activity;I)Landroidx/navigation/NavController;

    move-result-object v0

    .line 129
    .local v0, "navController":Landroidx/navigation/NavController;
    iget-object v1, p0, Llu/snt/trux/regapp/HomeActivity;->mAppBarConfiguration:Landroidx/navigation/ui/AppBarConfiguration;

    invoke-static {v0, v1}, Landroidx/navigation/ui/NavigationUI;->navigateUp(Landroidx/navigation/NavController;Landroidx/navigation/ui/AppBarConfiguration;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 130
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onSupportNavigateUp()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 129
    :goto_1
    return v1
.end method
