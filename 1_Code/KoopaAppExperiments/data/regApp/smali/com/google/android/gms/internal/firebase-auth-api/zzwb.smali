.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzwb;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzxi;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzif$zza;

.field private static final zzb:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljavax/crypto/Cipher;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzc:Ljavax/crypto/spec/SecretKeySpec;

.field private final zzd:I

.field private final zze:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzif$zza;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzif$zza;

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzwb;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzif$zza;

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzwa;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzwa;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzwb;->zzb:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzwb;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzif$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzif$zza;->zza()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    array-length v0, p1

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzxo;->zza(I)V

    .line 7
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzwb;->zzc:Ljavax/crypto/spec/SecretKeySpec;

    .line 8
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/zzwb;->zzb:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/crypto/Cipher;

    invoke-virtual {p1}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzwb;->zze:I

    .line 9
    const/16 v0, 0xc

    if-lt p2, v0, :cond_0

    if-gt p2, p1, :cond_0

    .line 11
    iput p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzwb;->zzd:I

    .line 12
    return-void

    .line 10
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "invalid IV size"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Can not use AES-CTR in FIPS-mode, as BoringCrypto module is not available."

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final zza([BII[BI[BZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 13
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzwb;->zzb:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljavax/crypto/Cipher;

    .line 14
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzwb;->zze:I

    new-array v0, v0, [B

    .line 15
    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzwb;->zzd:I

    invoke-static {p6, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 16
    new-instance p6, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {p6, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 17
    if-eqz p7, :cond_0

    .line 18
    const/4 p7, 0x1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzwb;->zzc:Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v1, p7, v0, p6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    goto :goto_0

    .line 19
    :cond_0
    const/4 p7, 0x2

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzwb;->zzc:Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v1, p7, v0, p6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 20
    :goto_0
    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Ljavax/crypto/Cipher;->doFinal([BII[BI)I

    move-result p1

    .line 21
    if-ne p1, p3, :cond_1

    .line 23
    return-void

    .line 22
    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "stored output\'s length does not match input\'s length"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final zza([B)[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 24
    array-length v0, p1

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzwb;->zzd:I

    if-lt v0, v1, :cond_0

    .line 26
    new-array v8, v1, [B

    .line 27
    const/4 v0, 0x0

    invoke-static {p1, v0, v8, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 28
    array-length v0, p1

    iget v4, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzwb;->zzd:I

    sub-int/2addr v0, v4

    new-array v0, v0, [B

    .line 29
    array-length v1, p1

    sub-int v5, v1, v4

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v6, v0

    invoke-direct/range {v2 .. v9}, Lcom/google/android/gms/internal/firebase-auth-api/zzwb;->zza([BII[BI[BZ)V

    .line 30
    return-object v0

    .line 25
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "ciphertext too short"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzb([B)[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 31
    array-length v0, p1

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzwb;->zzd:I

    const v2, 0x7fffffff

    sub-int v3, v2, v1

    if-gt v0, v3, :cond_0

    .line 33
    array-length v0, p1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 34
    nop

    .line 35
    invoke-static {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzou;->zza(I)[B

    move-result-object v8

    .line 36
    nop

    .line 37
    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzwb;->zzd:I

    const/4 v2, 0x0

    invoke-static {v8, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 38
    const/4 v4, 0x0

    array-length v5, p1

    iget v7, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzwb;->zzd:I

    const/4 v9, 0x1

    move-object v2, p0

    move-object v3, p1

    move-object v6, v0

    invoke-direct/range {v2 .. v9}, Lcom/google/android/gms/internal/firebase-auth-api/zzwb;->zza([BII[BI[BZ)V

    .line 39
    return-object v0

    .line 32
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzwb;->zzd:I

    sub-int/2addr v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "plaintext length can not exceed "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
