.class final Lcom/google/android/gms/internal/firebase-auth-api/zzla;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzlg;


# instance fields
.field private final zza:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzla;->zza:Ljava/lang/String;

    .line 4
    return-void
.end method

.method private final zza([B[B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 23
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzwt;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzwt;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzla;->zza:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzwt;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/Mac;

    .line 24
    if-eqz p2, :cond_1

    array-length v1, p2

    if-nez v1, :cond_0

    goto :goto_0

    .line 26
    :cond_0
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzla;->zza:Ljava/lang/String;

    invoke-direct {v1, p2, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    goto :goto_1

    .line 25
    :cond_1
    :goto_0
    new-instance p2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v0}, Ljavax/crypto/Mac;->getMacLength()I

    move-result v1

    new-array v1, v1, [B

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzla;->zza:Ljava/lang/String;

    invoke-direct {p2, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, p2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 27
    :goto_1
    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p1

    return-object p1
.end method

.method private final zza([B[BI)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzwt;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzwt;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzla;->zza:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzwt;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/Mac;

    .line 6
    invoke-virtual {v0}, Ljavax/crypto/Mac;->getMacLength()I

    move-result v1

    mul-int/lit16 v1, v1, 0xff

    if-gt p3, v1, :cond_1

    .line 8
    new-array v1, p3, [B

    .line 9
    nop

    .line 10
    nop

    .line 11
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzla;->zza:Ljava/lang/String;

    invoke-direct {v2, p1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 12
    const/4 p1, 0x0

    new-array v2, p1, [B

    const/4 v3, 0x1

    move v4, p1

    .line 13
    :goto_0
    invoke-virtual {v0, v2}, Ljavax/crypto/Mac;->update([B)V

    .line 14
    invoke-virtual {v0, p2}, Ljavax/crypto/Mac;->update([B)V

    .line 15
    int-to-byte v2, v3

    invoke-virtual {v0, v2}, Ljavax/crypto/Mac;->update(B)V

    .line 16
    invoke-virtual {v0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v2

    .line 17
    array-length v5, v2

    add-int/2addr v5, v4

    if-ge v5, p3, :cond_0

    .line 18
    array-length v5, v2

    invoke-static {v2, p1, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 19
    array-length v5, v2

    add-int/2addr v4, v5

    .line 20
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 21
    :cond_0
    sub-int/2addr p3, v4

    invoke-static {v2, p1, v1, v4, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 22
    return-object v1

    .line 7
    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "size too large"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method final zza()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzla;->zza:Ljava/lang/String;

    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/crypto/Mac;->getMacLength()I

    move-result v0

    return v0
.end method

.method public final zza([B[BLjava/lang/String;[B)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 36
    invoke-static {p3, p2, p4}, Lcom/google/android/gms/internal/firebase-auth-api/zzlt;->zza(Ljava/lang/String;[B[B)[B

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzla;->zza([B[B)[B

    move-result-object p1

    return-object p1
.end method

.method public final zza([B[BLjava/lang/String;[BI)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 35
    invoke-static {p3, p2, p4, p5}, Lcom/google/android/gms/internal/firebase-auth-api/zzlt;->zza(Ljava/lang/String;[B[BI)[B

    move-result-object p2

    invoke-direct {p0, p1, p2, p5}, Lcom/google/android/gms/internal/firebase-auth-api/zzla;->zza([B[BI)[B

    move-result-object p1

    return-object p1
.end method

.method public final zza([B[BLjava/lang/String;[BLjava/lang/String;[BI)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 28
    invoke-static {p3, p2, p6}, Lcom/google/android/gms/internal/firebase-auth-api/zzlt;->zza(Ljava/lang/String;[B[B)[B

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzla;->zza([B[B)[B

    move-result-object p1

    .line 29
    invoke-static {p5, p4, p6, p7}, Lcom/google/android/gms/internal/firebase-auth-api/zzlt;->zza(Ljava/lang/String;[B[BI)[B

    move-result-object p2

    invoke-direct {p0, p1, p2, p7}, Lcom/google/android/gms/internal/firebase-auth-api/zzla;->zza([B[BI)[B

    move-result-object p1

    return-object p1
.end method

.method public final zzb()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzla;->zza:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v1, "HmacSha512"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_1
    const-string v1, "HmacSha384"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string v1, "HmacSha256"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 34
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Could not determine HPKE KDF ID"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :pswitch_0
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzlt;->zzh:[B

    return-object v0

    .line 32
    :pswitch_1
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzlt;->zzg:[B

    return-object v0

    .line 31
    :pswitch_2
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzlt;->zzf:[B

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3aaea10e -> :sswitch_2
        0x3aaea52a -> :sswitch_1
        0x3aaeabd1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
