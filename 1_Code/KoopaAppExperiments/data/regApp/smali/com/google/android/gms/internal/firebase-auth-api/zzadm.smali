.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzadm;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"


# instance fields
.field private final zza:Lcom/google/firebase/auth/FirebaseAuth;

.field private final zzb:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lcom/google/firebase/auth/FirebaseAuth;Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzadm;->zza:Lcom/google/firebase/auth/FirebaseAuth;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzadm;->zzb:Landroid/app/Activity;

    .line 4
    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 3

    .line 5
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.firebase.auth.internal.ACTION_SHOW_RECAPTCHA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzadm;->zzb:Landroid/app/Activity;

    const-class v2, Lcom/google/firebase/auth/internal/RecaptchaActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzadm;->zzb:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzadm;->zza:Lcom/google/firebase/auth/FirebaseAuth;

    .line 9
    invoke-virtual {v1}, Lcom/google/firebase/auth/FirebaseAuth;->getApp()Lcom/google/firebase/FirebaseApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/FirebaseApp;->getOptions()Lcom/google/firebase/FirebaseOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/FirebaseOptions;->getApiKey()Ljava/lang/String;

    move-result-object v1

    .line 10
    const-string v2, "com.google.firebase.auth.KEY_API_KEY"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzadm;->zza:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {v1}, Lcom/google/firebase/auth/FirebaseAuth;->getTenantId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 12
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzadm;->zza:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {v1}, Lcom/google/firebase/auth/FirebaseAuth;->getTenantId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google.firebase.auth.KEY_TENANT_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    :cond_0
    nop

    .line 14
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzacq;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzacq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzacq;->zzb()Ljava/lang/String;

    move-result-object v1

    .line 15
    const-string v2, "com.google.firebase.auth.internal.CLIENT_VERSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzadm;->zza:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {v1}, Lcom/google/firebase/auth/FirebaseAuth;->getApp()Lcom/google/firebase/FirebaseApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/FirebaseApp;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google.firebase.auth.internal.FIREBASE_APP_NAME"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 17
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzadm;->zza:Lcom/google/firebase/auth/FirebaseAuth;

    .line 18
    invoke-virtual {v1}, Lcom/google/firebase/auth/FirebaseAuth;->getCustomAuthDomain()Ljava/lang/String;

    move-result-object v1

    .line 19
    const-string v2, "com.google.firebase.auth.KEY_CUSTOM_AUTH_DOMAIN"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 20
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzadm;->zzb:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 21
    return-void
.end method
