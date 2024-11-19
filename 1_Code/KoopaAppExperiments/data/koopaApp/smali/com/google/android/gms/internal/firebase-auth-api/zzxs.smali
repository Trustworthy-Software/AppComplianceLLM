.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzxs;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"


# instance fields
.field private final zza:Ljava/math/BigInteger;


# direct methods
.method private constructor <init>(Ljava/math/BigInteger;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzxs;->zza:Ljava/math/BigInteger;

    .line 9
    return-void
.end method

.method public static zza(Ljava/math/BigInteger;Lcom/google/android/gms/internal/firebase-auth-api/zzcs;)Lcom/google/android/gms/internal/firebase-auth-api/zzxs;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 3
    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/zzxs;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzxs;-><init>(Ljava/math/BigInteger;)V

    return-object p1

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "SecretKeyAccess required"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzcs;)Ljava/math/BigInteger;
    .locals 1

    .line 4
    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzxs;->zza:Ljava/math/BigInteger;

    return-object p1

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "SecretKeyAccess required"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
