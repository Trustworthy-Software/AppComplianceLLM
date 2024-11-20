.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzagm;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzaco;


# instance fields
.field private zza:Ljava/lang/String;

.field private zzb:Ljava/lang/String;

.field private final zzc:Ljava/lang/String;

.field private final zzd:Ljava/lang/String;

.field private zze:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzagm;->zza:Ljava/lang/String;

    .line 13
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzagm;->zzb:Ljava/lang/String;

    .line 14
    iput-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzagm;->zzc:Ljava/lang/String;

    .line 15
    iput-object p4, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzagm;->zzd:Ljava/lang/String;

    .line 16
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzagm;->zze:Z

    .line 17
    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    const-string v1, "email"

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzagm;->zza:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3
    const-string v1, "password"

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzagm;->zzb:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4
    const-string v1, "returnSecureToken"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzagm;->zze:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzagm;->zzc:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 6
    const-string v2, "tenantId"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzagm;->zzd:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 8
    const-string v2, "captchaResponse"

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzags;->zza(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzags;->zza(Lorg/json/JSONObject;)V

    .line 10
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
