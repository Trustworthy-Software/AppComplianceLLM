.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzjq;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzkv;
.source "com.google.firebase:firebase-auth@@22.2.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzjy;

.field private final zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzxs;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzxu;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzjy;Lcom/google/android/gms/internal/firebase-auth-api/zzxs;Lcom/google/android/gms/internal/firebase-auth-api/zzxu;)V
    .locals 0
    .param p2    # Lcom/google/android/gms/internal/firebase-auth-api/zzxs;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/gms/internal/firebase-auth-api/zzxu;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 46
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzkv;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzjq;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzjy;

    .line 48
    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzjq;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzxs;

    .line 49
    iput-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzjq;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzxu;

    .line 50
    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/firebase-auth-api/zzjy;Lcom/google/android/gms/internal/firebase-auth-api/zzxs;)Lcom/google/android/gms/internal/firebase-auth-api/zzjq;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 17
    if-eqz p0, :cond_4

    .line 19
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzjy;->zzc()Ljava/security/spec/ECPoint;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 21
    if-eqz p1, :cond_2

    .line 23
    nop

    .line 24
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzbq;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzcs;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzxs;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzcs;)Ljava/math/BigInteger;

    move-result-object v0

    .line 25
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzjy;->zzc()Ljava/security/spec/ECPoint;

    move-result-object v1

    .line 26
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzjy;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzjl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzjl;->zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzc;

    move-result-object v2

    .line 27
    nop

    .line 28
    invoke-static {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzjq;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzc;)Ljava/security/spec/ECParameterSpec;

    move-result-object v3

    invoke-virtual {v3}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v3

    .line 29
    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v4

    const-string v5, "Invalid private value"

    if-lez v4, :cond_1

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-gez v3, :cond_1

    .line 31
    nop

    .line 32
    invoke-static {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzjq;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzc;)Ljava/security/spec/ECParameterSpec;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzmg;->zza(Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)Ljava/security/spec/ECPoint;

    move-result-object v0

    .line 33
    invoke-virtual {v0, v1}, Ljava/security/spec/ECPoint;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzjq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzjq;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzjy;Lcom/google/android/gms/internal/firebase-auth-api/zzxs;Lcom/google/android/gms/internal/firebase-auth-api/zzxu;)V

    return-object v0

    .line 34
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-direct {p0, v5}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 30
    :cond_1
    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-direct {p0, v5}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 22
    :cond_2
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "ECIES private key cannot be constructed without secret"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 20
    :cond_3
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "ECIES private key for NIST curve cannot be constructed with X25519-curve public key"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 18
    :cond_4
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "ECIES private key cannot be constructed without an ECIES public key"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static zza(Lcom/google/android/gms/internal/firebase-auth-api/zzjy;Lcom/google/android/gms/internal/firebase-auth-api/zzxu;)Lcom/google/android/gms/internal/firebase-auth-api/zzjq;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    if-eqz p0, :cond_4

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzjy;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzxt;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 5
    if-eqz p1, :cond_2

    .line 7
    nop

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzbq;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzcs;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzxu;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzcs;)[B

    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzjy;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzxt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzxt;->zzb()[B

    move-result-object v1

    .line 10
    nop

    .line 11
    array-length v2, v0

    const/16 v3, 0x20

    if-ne v2, v3, :cond_1

    .line 13
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzxr;->zza([B)[B

    move-result-object v0

    .line 14
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzjq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzjq;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzjy;Lcom/google/android/gms/internal/firebase-auth-api/zzxs;Lcom/google/android/gms/internal/firebase-auth-api/zzxu;)V

    return-object v0

    .line 15
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Invalid private key for public key."

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 12
    :cond_1
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Private key bytes length for X25519 curve must be 32"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :cond_2
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "ECIES private key cannot be constructed without secret"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4
    :cond_3
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "ECIES private key for X25519 curve cannot be constructed with NIST-curve public key"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2
    :cond_4
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "ECIES private key cannot be constructed without an ECIES public key"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static zza(Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzc;)Ljava/security/spec/ECParameterSpec;
    .locals 3

    .line 36
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzc;

    if-ne p0, v0, :cond_0

    .line 37
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzmg;->zza:Ljava/security/spec/ECParameterSpec;

    .line 38
    return-object p0

    .line 39
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzc;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzc;

    if-ne p0, v0, :cond_1

    .line 40
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzmg;->zzb:Ljava/security/spec/ECParameterSpec;

    .line 41
    return-object p0

    .line 42
    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzc;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzc;

    if-ne p0, v0, :cond_2

    .line 43
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzmg;->zzc:Ljava/security/spec/ECParameterSpec;

    .line 44
    return-object p0

    .line 45
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to determine NIST curve type for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
