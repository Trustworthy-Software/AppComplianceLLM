.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzht;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"


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
.field private final zzc:Ljavax/crypto/SecretKey;

.field private final zzd:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzif$zza;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzif$zza;

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzht;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzif$zza;

    .line 8
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzhw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzhw;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzht;->zzb:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>([BZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzht;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzif$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzif$zza;->zza()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12
    array-length v0, p1

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzxo;->zza(I)V

    .line 13
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzht;->zzc:Ljavax/crypto/SecretKey;

    .line 14
    iput-boolean p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzht;->zzd:Z

    .line 15
    return-void

    .line 11
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Can not use AES-GCM in FIPS-mode, as BoringCrypto module is not available."

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static zza([B)Ljava/security/spec/AlgorithmParameterSpec;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    array-length v0, p0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzpf;->zzb()Ljava/lang/Integer;

    move-result-object v1

    .line 3
    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v3, 0x13

    if-gt v1, v3, :cond_0

    .line 4
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, p0, v2, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([BII)V

    return-object v1

    .line 5
    :cond_0
    new-instance v1, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v3, 0x80

    invoke-direct {v1, v3, p0, v2, v0}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[BII)V

    .line 6
    return-object v1
.end method


# virtual methods
.method public final zza([B[B[B)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 16
    array-length v0, p1

    const/16 v1, 0xc

    if-ne v0, v1, :cond_7

    .line 18
    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzht;->zzd:Z

    if-eqz v0, :cond_0

    const/16 v2, 0x1c

    goto :goto_0

    :cond_0
    const/16 v2, 0x10

    .line 19
    :goto_0
    array-length v3, p2

    if-lt v3, v2, :cond_6

    .line 21
    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 22
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {p2, v2, v1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 23
    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "iv does not match prepended iv"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 24
    :cond_2
    :goto_1
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzht;->zza([B)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object p1

    .line 25
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzht;->zzb:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/crypto/Cipher;

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzht;->zzc:Ljavax/crypto/SecretKey;

    invoke-virtual {v3, v4, v5, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 26
    if-eqz p3, :cond_3

    array-length p1, p3

    if-eqz p1, :cond_3

    .line 27
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/crypto/Cipher;

    invoke-virtual {p1, p3}, Ljavax/crypto/Cipher;->updateAAD([B)V

    .line 28
    :cond_3
    iget-boolean p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzht;->zzd:Z

    if-eqz p1, :cond_4

    move v2, v1

    .line 29
    :cond_4
    if-eqz p1, :cond_5

    array-length p1, p2

    sub-int/2addr p1, v1

    goto :goto_2

    :cond_5
    array-length p1, p2

    .line 30
    :goto_2
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljavax/crypto/Cipher;

    invoke-virtual {p3, p2, v2, p1}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object p1

    return-object p1

    .line 20
    :cond_6
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "ciphertext too short"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_7
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "iv is wrong size"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzb([B[B[B)[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 31
    array-length v0, p1

    const/16 v1, 0xc

    if-ne v0, v1, :cond_6

    .line 33
    array-length v0, p2

    const v2, 0x7fffffe3

    if-gt v0, v2, :cond_5

    .line 35
    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzht;->zzd:Z

    const/16 v2, 0x10

    if-eqz v0, :cond_0

    .line 36
    array-length v3, p2

    add-int/2addr v3, v1

    add-int/2addr v3, v2

    goto :goto_0

    .line 37
    :cond_0
    array-length v3, p2

    add-int/2addr v3, v2

    .line 38
    :goto_0
    new-array v3, v3, [B

    .line 39
    const/4 v4, 0x0

    if-eqz v0, :cond_1

    .line 40
    invoke-static {p1, v4, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 41
    :cond_1
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzht;->zza([B)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object p1

    .line 42
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzht;->zzb:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/crypto/Cipher;

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzht;->zzc:Ljavax/crypto/SecretKey;

    invoke-virtual {v5, v6, v7, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 43
    if-eqz p3, :cond_2

    array-length p1, p3

    if-eqz p1, :cond_2

    .line 44
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/crypto/Cipher;

    invoke-virtual {p1, p3}, Ljavax/crypto/Cipher;->updateAAD([B)V

    .line 45
    :cond_2
    iget-boolean p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzht;->zzd:Z

    if-eqz p1, :cond_3

    move v9, v1

    goto :goto_1

    :cond_3
    move v9, v4

    .line 46
    :goto_1
    nop

    .line 47
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Ljavax/crypto/Cipher;

    const/4 v6, 0x0

    array-length v7, p2

    .line 48
    move-object v5, p2

    move-object v8, v3

    invoke-virtual/range {v4 .. v9}, Ljavax/crypto/Cipher;->doFinal([BII[BI)I

    move-result p1

    .line 49
    array-length p3, p2

    add-int/2addr p3, v2

    if-ne p1, p3, :cond_4

    .line 54
    return-object v3

    .line 50
    :cond_4
    array-length p2, p2

    sub-int/2addr p1, p2

    .line 51
    new-instance p2, Ljava/security/GeneralSecurityException;

    .line 52
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p3, p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 53
    const-string p3, "encryption failed; GCM tag must be %s bytes, but got only %s bytes"

    invoke-static {p3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 34
    :cond_5
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "plaintext too long"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 32
    :cond_6
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "iv is wrong size"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
