.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzxl;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzrx;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzif$zza;


# instance fields
.field private final zzb:Ljavax/crypto/SecretKey;

.field private zzc:[B

.field private zzd:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzif$zza;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzif$zza;

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzxl;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzif$zza;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    array-length v0, p1

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzxo;->zza(I)V

    .line 7
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzxl;->zzb:Ljavax/crypto/SecretKey;

    .line 8
    nop

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzxl;->zza()Ljavax/crypto/Cipher;

    move-result-object p1

    .line 10
    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 11
    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 12
    invoke-virtual {p1, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    .line 13
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzrd;->zzb([B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzxl;->zzc:[B

    .line 14
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzrd;->zzb([B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzxl;->zzd:[B

    .line 15
    return-void
.end method

.method private static zza()Ljavax/crypto/Cipher;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzxl;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzif$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzif$zza;->zza()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzwt;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzwt;

    const-string v1, "AES/ECB/NoPadding"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzwt;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/Cipher;

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Can not use AES-CMAC in FIPS-mode."

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final zza([BI)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 16
    const/16 v0, 0x10

    if-gt p2, v0, :cond_2

    .line 18
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzxl;->zza()Ljavax/crypto/Cipher;

    move-result-object v1

    .line 19
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzxl;->zzb:Ljavax/crypto/SecretKey;

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 20
    array-length v2, p1

    int-to-double v4, v2

    const-wide/high16 v6, 0x4030000000000000L    # 16.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v2, v4

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 21
    shl-int/lit8 v4, v2, 0x4

    array-length v5, p1

    const/4 v6, 0x0

    if-ne v4, v5, :cond_0

    .line 22
    add-int/lit8 v4, v2, -0x1

    shl-int/lit8 v4, v4, 0x4

    iget-object v5, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzxl;->zzc:[B

    invoke-static {p1, v4, v5, v6, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzwg;->zza([BI[BII)[B

    move-result-object v4

    goto :goto_0

    .line 23
    :cond_0
    add-int/lit8 v4, v2, -0x1

    shl-int/lit8 v4, v4, 0x4

    array-length v5, p1

    .line 24
    invoke-static {p1, v4, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzrd;->zza([B)[B

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzxl;->zzd:[B

    .line 25
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzwg;->zza([B[B)[B

    move-result-object v4

    .line 26
    :goto_0
    new-array v5, v0, [B

    .line 27
    move v7, v6

    :goto_1
    add-int/lit8 v8, v2, -0x1

    if-ge v7, v8, :cond_1

    .line 28
    shl-int/lit8 v8, v7, 0x4

    invoke-static {v5, v6, p1, v8, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzwg;->zza([BI[BII)[B

    move-result-object v5

    .line 29
    invoke-virtual {v1, v5}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v5

    .line 30
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 31
    :cond_1
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzwg;->zza([B[B)[B

    move-result-object p1

    .line 32
    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    return-object p1

    .line 17
    :cond_2
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "outputLength too large, max is 16 bytes"

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
