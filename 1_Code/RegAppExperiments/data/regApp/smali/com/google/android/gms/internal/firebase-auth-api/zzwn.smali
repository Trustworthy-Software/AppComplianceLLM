.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzwn;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"


# instance fields
.field private zza:Ljava/security/interfaces/ECPrivateKey;


# direct methods
.method public constructor <init>(Ljava/security/interfaces/ECPrivateKey;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzwn;->zza:Ljava/security/interfaces/ECPrivateKey;

    .line 3
    return-void
.end method


# virtual methods
.method public final zza([BLjava/lang/String;[B[BILcom/google/android/gms/internal/firebase-auth-api/zzwr;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzwn;->zza:Ljava/security/interfaces/ECPrivateKey;

    .line 5
    invoke-interface {v0}, Ljava/security/interfaces/ECPrivateKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    .line 6
    invoke-static {v0, p6, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzwp;->zza(Ljava/security/spec/ECParameterSpec;Lcom/google/android/gms/internal/firebase-auth-api/zzwr;[B)Ljava/security/interfaces/ECPublicKey;

    move-result-object p6

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzwn;->zza:Ljava/security/interfaces/ECPrivateKey;

    invoke-static {v0, p6}, Lcom/google/android/gms/internal/firebase-auth-api/zzwp;->zza(Ljava/security/interfaces/ECPrivateKey;Ljava/security/interfaces/ECPublicKey;)[B

    move-result-object p6

    .line 8
    nop

    .line 9
    const/4 v0, 0x2

    new-array v0, v0, [[B

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p6, v0, p1

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzwg;->zza([[B)[B

    move-result-object p6

    .line 10
    nop

    .line 11
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzwt;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzwt;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzwt;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/Mac;

    .line 12
    invoke-virtual {v0}, Ljavax/crypto/Mac;->getMacLength()I

    move-result v2

    mul-int/lit16 v2, v2, 0xff

    if-gt p5, v2, :cond_3

    .line 14
    if-eqz p3, :cond_1

    array-length v2, p3

    if-nez v2, :cond_0

    goto :goto_0

    .line 16
    :cond_0
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v2, p3, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    goto :goto_1

    .line 15
    :cond_1
    :goto_0
    new-instance p3, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v0}, Ljavax/crypto/Mac;->getMacLength()I

    move-result v2

    new-array v2, v2, [B

    invoke-direct {p3, v2, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, p3}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 17
    :goto_1
    invoke-virtual {v0, p6}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p3

    .line 18
    new-array p6, p5, [B

    .line 19
    nop

    .line 20
    nop

    .line 21
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v2, p3, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 22
    new-array p2, v1, [B

    move p3, v1

    .line 23
    :goto_2
    invoke-virtual {v0, p2}, Ljavax/crypto/Mac;->update([B)V

    .line 24
    invoke-virtual {v0, p4}, Ljavax/crypto/Mac;->update([B)V

    .line 25
    int-to-byte p2, p1

    invoke-virtual {v0, p2}, Ljavax/crypto/Mac;->update(B)V

    .line 26
    invoke-virtual {v0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object p2

    .line 27
    array-length v2, p2

    add-int/2addr v2, p3

    if-ge v2, p5, :cond_2

    .line 28
    array-length v2, p2

    invoke-static {p2, v1, p6, p3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 29
    array-length v2, p2

    add-int/2addr p3, v2

    .line 30
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 31
    :cond_2
    sub-int/2addr p5, p3

    invoke-static {p2, v1, p6, p3, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32
    nop

    .line 33
    return-object p6

    .line 13
    :cond_3
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "size too large"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
