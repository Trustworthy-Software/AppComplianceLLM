.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzxu;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzxt;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzxt;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzxu;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzxt;

    .line 7
    return-void
.end method

.method public static zza([BLcom/google/android/gms/internal/firebase-auth-api/zzcs;)Lcom/google/android/gms/internal/firebase-auth-api/zzxu;
    .locals 0

    .line 2
    if-eqz p1, :cond_0

    .line 4
    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/zzxu;

    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzxt;->zza([B)Lcom/google/android/gms/internal/firebase-auth-api/zzxt;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzxu;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzxt;)V

    return-object p1

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "SecretKeyAccess required"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final zza()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzxu;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzxt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzxt;->zza()I

    move-result v0

    return v0
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzcs;)[B
    .locals 1

    .line 8
    if-eqz p1, :cond_0

    .line 10
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzxu;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzxt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzxt;->zzb()[B

    move-result-object p1

    return-object p1

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "SecretKeyAccess required"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
