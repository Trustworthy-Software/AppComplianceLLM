.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzaeq;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzaen;


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Ljava/lang/String;

.field private final zzc:Ljava/lang/String;

.field private final zzd:Ljava/lang/String;

.field private final zze:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaeq;->zza:Ljava/lang/String;

    .line 33
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaeq;->zzb:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaeq;->zzc:Ljava/lang/String;

    .line 35
    iput-object p4, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaeq;->zzd:Ljava/lang/String;

    .line 36
    iput-object p5, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaeq;->zze:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public static zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzaeq;
    .locals 7

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    new-instance v6, Lcom/google/android/gms/internal/firebase-auth-api/zzaeq;

    const-string v1, "totp"

    move-object v0, v6

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzaeq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method


# virtual methods
.method public final zza()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 4
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 5
    nop

    .line 6
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 7
    nop

    .line 8
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaeq;->zzc:Ljava/lang/String;

    .line 9
    if-eqz v2, :cond_0

    .line 10
    nop

    .line 11
    nop

    .line 12
    const-string v3, "verificationCode"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13
    :cond_0
    nop

    .line 14
    const-string v2, "totpVerificationInfo"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15
    nop

    .line 16
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaeq;->zzb:Ljava/lang/String;

    .line 17
    const-string v2, "mfaPendingCredential"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    nop

    .line 19
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaeq;->zzd:Ljava/lang/String;

    .line 20
    if-eqz v1, :cond_1

    .line 21
    nop

    .line 22
    nop

    .line 23
    const-string v2, "tenantId"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 24
    :cond_1
    nop

    .line 25
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaeq;->zze:Ljava/lang/String;

    .line 26
    if-eqz v1, :cond_2

    .line 27
    nop

    .line 28
    nop

    .line 29
    const-string v2, "mfaEnrollmentId"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 30
    :cond_2
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
