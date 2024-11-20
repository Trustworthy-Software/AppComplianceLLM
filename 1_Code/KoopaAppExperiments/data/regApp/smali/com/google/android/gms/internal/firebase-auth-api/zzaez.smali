.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzaez;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzaco;


# instance fields
.field private zza:Ljava/lang/String;

.field private zzb:Ljava/lang/String;

.field private zzc:Ljava/lang/String;

.field private zzd:Ljava/lang/String;

.field private zze:Lcom/google/firebase/auth/ActionCodeSettings;

.field private zzf:Ljava/lang/String;

.field private zzg:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaez;->zza(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaez;->zza:Ljava/lang/String;

    .line 60
    return-void
.end method

.method private constructor <init>(ILcom/google/firebase/auth/ActionCodeSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 p1, 0x7

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaez;->zza(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaez;->zza:Ljava/lang/String;

    .line 63
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/auth/ActionCodeSettings;

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaez;->zze:Lcom/google/firebase/auth/ActionCodeSettings;

    .line 64
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaez;->zzb:Ljava/lang/String;

    .line 65
    iput-object p4, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaez;->zzc:Ljava/lang/String;

    .line 66
    iput-object p5, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaez;->zzd:Ljava/lang/String;

    .line 67
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaez;->zzf:Ljava/lang/String;

    .line 68
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaez;->zzg:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public static zza(Lcom/google/firebase/auth/ActionCodeSettings;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzaez;
    .locals 9

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v8, Lcom/google/android/gms/internal/firebase-auth-api/zzaez;

    const/4 v1, 0x7

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move-object v2, p0

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/firebase-auth-api/zzaez;-><init>(ILcom/google/firebase/auth/ActionCodeSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v8
.end method

.method private static zza(I)Ljava/lang/String;
    .locals 0

    .line 16
    packed-switch p0, :pswitch_data_0

    .line 21
    :pswitch_0
    const-string p0, "REQUEST_TYPE_UNSET_ENUM_VALUE"

    return-object p0

    .line 20
    :pswitch_1
    const-string p0, "VERIFY_AND_CHANGE_EMAIL"

    return-object p0

    .line 19
    :pswitch_2
    const-string p0, "EMAIL_SIGNIN"

    return-object p0

    .line 18
    :pswitch_3
    const-string p0, "VERIFY_EMAIL"

    return-object p0

    .line 17
    :pswitch_4
    const-string p0, "PASSWORD_RESET"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final zza(Lcom/google/firebase/auth/ActionCodeSettings;)Lcom/google/android/gms/internal/firebase-auth-api/zzaez;
    .locals 0

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/auth/ActionCodeSettings;

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaez;->zze:Lcom/google/firebase/auth/ActionCodeSettings;

    .line 7
    return-object p0
.end method

.method public final zza(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzaez;
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaez;->zzg:Ljava/lang/String;

    .line 9
    return-object p0
.end method

.method public final zza()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 22
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 23
    nop

    .line 24
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaez;->zza:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    sparse-switch v2, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v2, "EMAIL_SIGNIN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_1
    const-string v2, "VERIFY_AND_CHANGE_EMAIL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_2
    const-string v2, "VERIFY_EMAIL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v4

    goto :goto_1

    :sswitch_3
    const-string v2, "PASSWORD_RESET"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 29
    goto :goto_2

    .line 28
    :pswitch_0
    const/4 v3, 0x7

    goto :goto_2

    .line 27
    :pswitch_1
    const/4 v3, 0x6

    goto :goto_2

    .line 26
    :pswitch_2
    const/4 v3, 0x4

    goto :goto_2

    .line 25
    :pswitch_3
    move v3, v4

    .line 30
    :goto_2
    const-string v1, "requestType"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 31
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaez;->zzb:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 32
    const-string v2, "email"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaez;->zzc:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 34
    const-string v2, "newEmail"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 35
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaez;->zzd:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 36
    const-string v2, "idToken"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 37
    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaez;->zze:Lcom/google/firebase/auth/ActionCodeSettings;

    if-eqz v1, :cond_9

    .line 38
    const-string v2, "androidInstallApp"

    invoke-virtual {v1}, Lcom/google/firebase/auth/ActionCodeSettings;->getAndroidInstallApp()Z

    move-result v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 39
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaez;->zze:Lcom/google/firebase/auth/ActionCodeSettings;

    invoke-virtual {v1}, Lcom/google/firebase/auth/ActionCodeSettings;->canHandleCodeInApp()Z

    move-result v1

    const-string v2, "canHandleCodeInApp"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 40
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaez;->zze:Lcom/google/firebase/auth/ActionCodeSettings;

    invoke-virtual {v1}, Lcom/google/firebase/auth/ActionCodeSettings;->getUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 41
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaez;->zze:Lcom/google/firebase/auth/ActionCodeSettings;

    invoke-virtual {v1}, Lcom/google/firebase/auth/ActionCodeSettings;->getUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "continueUrl"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 42
    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaez;->zze:Lcom/google/firebase/auth/ActionCodeSettings;

    invoke-virtual {v1}, Lcom/google/firebase/auth/ActionCodeSettings;->getIOSBundle()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 43
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaez;->zze:Lcom/google/firebase/auth/ActionCodeSettings;

    invoke-virtual {v1}, Lcom/google/firebase/auth/ActionCodeSettings;->getIOSBundle()Ljava/lang/String;

    move-result-object v1

    const-string v2, "iosBundleId"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 44
    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaez;->zze:Lcom/google/firebase/auth/ActionCodeSettings;

    invoke-virtual {v1}, Lcom/google/firebase/auth/ActionCodeSettings;->zzd()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 45
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaez;->zze:Lcom/google/firebase/auth/ActionCodeSettings;

    invoke-virtual {v1}, Lcom/google/firebase/auth/ActionCodeSettings;->zzd()Ljava/lang/String;

    move-result-object v1

    const-string v2, "iosAppStoreId"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 46
    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaez;->zze:Lcom/google/firebase/auth/ActionCodeSettings;

    invoke-virtual {v1}, Lcom/google/firebase/auth/ActionCodeSettings;->getAndroidPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 47
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaez;->zze:Lcom/google/firebase/auth/ActionCodeSettings;

    invoke-virtual {v1}, Lcom/google/firebase/auth/ActionCodeSettings;->getAndroidPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "androidPackageName"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 48
    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaez;->zze:Lcom/google/firebase/auth/ActionCodeSettings;

    invoke-virtual {v1}, Lcom/google/firebase/auth/ActionCodeSettings;->getAndroidMinimumVersion()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 49
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaez;->zze:Lcom/google/firebase/auth/ActionCodeSettings;

    invoke-virtual {v1}, Lcom/google/firebase/auth/ActionCodeSettings;->getAndroidMinimumVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "androidMinimumVersion"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50
    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaez;->zze:Lcom/google/firebase/auth/ActionCodeSettings;

    invoke-virtual {v1}, Lcom/google/firebase/auth/ActionCodeSettings;->zzc()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 51
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaez;->zze:Lcom/google/firebase/auth/ActionCodeSettings;

    invoke-virtual {v1}, Lcom/google/firebase/auth/ActionCodeSettings;->zzc()Ljava/lang/String;

    move-result-object v1

    const-string v2, "dynamicLinkDomain"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 52
    :cond_9
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaez;->zzf:Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 53
    const-string v2, "tenantId"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    :cond_a
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaez;->zzg:Ljava/lang/String;

    if-eqz v1, :cond_b

    .line 55
    const-string v2, "captchaResp"

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzags;->zza(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 56
    :cond_b
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzags;->zza(Lorg/json/JSONObject;)V

    .line 57
    :goto_3
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x56916d75 -> :sswitch_3
        -0x4ffacbca -> :sswitch_2
        -0x4183d145 -> :sswitch_1
        0x33e669c5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzaez;
    .locals 0

    .line 10
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaez;->zzb:Ljava/lang/String;

    .line 11
    return-object p0
.end method

.method public final zzb()Lcom/google/firebase/auth/ActionCodeSettings;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaez;->zze:Lcom/google/firebase/auth/ActionCodeSettings;

    return-object v0
.end method

.method public final zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzaez;
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaez;->zzf:Ljava/lang/String;

    .line 13
    return-object p0
.end method

.method public final zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzaez;
    .locals 0

    .line 14
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaez;->zzd:Ljava/lang/String;

    .line 15
    return-object p0
.end method
