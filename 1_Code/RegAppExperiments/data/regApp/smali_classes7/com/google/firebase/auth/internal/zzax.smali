.class public final synthetic Lcom/google/firebase/auth/internal/zzax;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field private synthetic zza:Lcom/google/firebase/auth/internal/GenericIdpActivity;

.field private synthetic zzb:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/auth/internal/GenericIdpActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzax;->zza:Lcom/google/firebase/auth/internal/GenericIdpActivity;

    iput-object p2, p0, Lcom/google/firebase/auth/internal/zzax;->zzb:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzax;->zza:Lcom/google/firebase/auth/internal/GenericIdpActivity;

    iget-object v1, p0, Lcom/google/firebase/auth/internal/zzax;->zzb:Ljava/lang/String;

    .line 2
    nop

    .line 3
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Lcom/google/firebase/auth/internal/GenericIdpActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 5
    const/4 v4, 0x1

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v5

    .line 6
    :goto_0
    const-string v6, "GenericIdpActivity"

    if-eqz v2, :cond_3

    .line 7
    nop

    .line 8
    invoke-virtual {v0}, Lcom/google/firebase/auth/internal/GenericIdpActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.support.customtabs.action.CustomTabsService"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v2, v7, v5}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 10
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    move v5, v4

    .line 11
    :cond_1
    if-eqz v5, :cond_2

    .line 12
    new-instance v1, Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    invoke-direct {v1}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;-><init>()V

    invoke-virtual {v1}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->build()Landroidx/browser/customtabs/CustomTabsIntent;

    move-result-object v1

    .line 13
    const-string v2, "Opening IDP Sign In link in a custom chrome tab."

    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    invoke-virtual {v1, v0, p1}, Landroidx/browser/customtabs/CustomTabsIntent;->launchUrl(Landroid/content/Context;Landroid/net/Uri;)V

    .line 15
    return-void

    .line 16
    :cond_2
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    invoke-direct {v2, v3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 17
    const-string p1, "com.android.browser.application_id"

    invoke-virtual {v2, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    const-string p1, "Opening IDP Sign In link in a browser window."

    invoke-static {v6, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    const/high16 p1, 0x40000000    # 2.0f

    invoke-virtual {v2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 20
    const/high16 p1, 0x10000000

    invoke-virtual {v2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 21
    invoke-virtual {v0, v2}, Lcom/google/firebase/auth/internal/GenericIdpActivity;->startActivity(Landroid/content/Intent;)V

    .line 22
    return-void

    .line 23
    :cond_3
    const-string p1, "Device cannot resolve intent for: android.intent.action.VIEW"

    invoke-static {v6, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    nop

    .line 25
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaci;->zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzacf;Ljava/lang/String;)V

    .line 26
    return-void
.end method
