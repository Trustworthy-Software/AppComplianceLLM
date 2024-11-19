.class public Lcom/google/firebase/auth/OAuthProvider;
.super Lcom/google/firebase/auth/FederatedAuthProvider;
.source "com.google.firebase:firebase-auth@@22.2.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/auth/OAuthProvider$Builder;,
        Lcom/google/firebase/auth/OAuthProvider$CredentialBuilder;
    }
.end annotation


# instance fields
.field private final zza:Landroid/os/Bundle;


# direct methods
.method private constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/google/firebase/auth/FederatedAuthProvider;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/google/firebase/auth/OAuthProvider;->zza:Landroid/os/Bundle;

    .line 15
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Bundle;Lcom/google/firebase/auth/zzal;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/auth/OAuthProvider;-><init>(Landroid/os/Bundle;)V

    return-void
.end method

.method public static getCredential(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/auth/AuthCredential;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/firebase/auth/zzf;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/auth/zzf;

    move-result-object p0

    return-object p0
.end method

.method public static newBuilder(Ljava/lang/String;)Lcom/google/firebase/auth/OAuthProvider$Builder;
    .locals 1

    .line 2
    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/firebase/auth/OAuthProvider;->newBuilder(Ljava/lang/String;Lcom/google/firebase/auth/FirebaseAuth;)Lcom/google/firebase/auth/OAuthProvider$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static newBuilder(Ljava/lang/String;Lcom/google/firebase/auth/FirebaseAuth;)Lcom/google/firebase/auth/OAuthProvider$Builder;
    .locals 2

    .line 3
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    const-string v0, "facebook.com"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseAuth;->getApp()Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzady;->zza(Lcom/google/firebase/FirebaseApp;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Sign in with Facebook is not supported via this method; the Facebook TOS dictate that you must use the Facebook Android SDK for Facebook login."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8
    :cond_1
    :goto_0
    new-instance v0, Lcom/google/firebase/auth/OAuthProvider$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/firebase/auth/OAuthProvider$Builder;-><init>(Ljava/lang/String;Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/firebase/auth/zzak;)V

    return-object v0
.end method

.method public static newCredentialBuilder(Ljava/lang/String;)Lcom/google/firebase/auth/OAuthProvider$CredentialBuilder;
    .locals 2

    .line 9
    new-instance v0, Lcom/google/firebase/auth/OAuthProvider$CredentialBuilder;

    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/firebase/auth/OAuthProvider$CredentialBuilder;-><init>(Ljava/lang/String;Lcom/google/firebase/auth/zzam;)V

    return-object v0
.end method


# virtual methods
.method public getProviderId()Ljava/lang/String;
    .locals 2

    .line 10
    iget-object v0, p0, Lcom/google/firebase/auth/OAuthProvider;->zza:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 11
    const/4 v0, 0x0

    return-object v0

    .line 12
    :cond_0
    const-string v1, "com.google.firebase.auth.KEY_PROVIDER_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Landroid/app/Activity;)V
    .locals 2

    .line 16
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.firebase.auth.internal.NONGMSCORE_LINK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 17
    const-class v1, Lcom/google/firebase/auth/internal/GenericIdpActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 18
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 19
    iget-object v1, p0, Lcom/google/firebase/auth/OAuthProvider;->zza:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 20
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 21
    return-void
.end method

.method public final zzb(Landroid/app/Activity;)V
    .locals 2

    .line 22
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.firebase.auth.internal.NONGMSCORE_REAUTHENTICATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 23
    const-class v1, Lcom/google/firebase/auth/internal/GenericIdpActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 24
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 25
    iget-object v1, p0, Lcom/google/firebase/auth/OAuthProvider;->zza:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 26
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 27
    return-void
.end method

.method public final zzc(Landroid/app/Activity;)V
    .locals 2

    .line 28
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.firebase.auth.internal.NONGMSCORE_SIGN_IN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 29
    const-class v1, Lcom/google/firebase/auth/internal/GenericIdpActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 30
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    iget-object v1, p0, Lcom/google/firebase/auth/OAuthProvider;->zza:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 32
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 33
    return-void
.end method
