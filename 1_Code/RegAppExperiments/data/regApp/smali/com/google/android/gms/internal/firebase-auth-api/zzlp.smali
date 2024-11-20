.class final Lcom/google/android/gms/internal/firebase-auth-api/zzlp;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzne;
.source "com.google.firebase:firebase-auth@@22.2.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase-auth-api/zzne<",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzuq;",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzuu;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/firebase-auth-api/zzln;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzln;Ljava/lang/Class;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzlp;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzln;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzne;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/firebase-auth-api/zzahd;)Lcom/google/android/gms/internal/firebase-auth-api/zzakb;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/firebase-auth-api/zzaja;
        }
    .end annotation

    .line 70
    nop

    .line 71
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaig;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzaig;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzuq;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzahd;Lcom/google/android/gms/internal/firebase-auth-api/zzaig;)Lcom/google/android/gms/internal/firebase-auth-api/zzuq;

    move-result-object p1

    .line 72
    return-object p1
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/firebase-auth-api/zzakb;)Lcom/google/android/gms/internal/firebase-auth-api/zzakb;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzuq;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzuq;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzur;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzur;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzuo;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzlo;->zza:[I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzuo;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    .line 58
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "Invalid KEM"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :pswitch_0
    nop

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzuq;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzur;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzur;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzuo;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzlt;->zzc(Lcom/google/android/gms/internal/firebase-auth-api/zzuo;)Lcom/google/android/gms/internal/firebase-auth-api/zzwo;

    move-result-object v1

    .line 16
    nop

    .line 17
    invoke-static {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzwp;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzwo;)Ljava/security/spec/ECParameterSpec;

    move-result-object v3

    .line 18
    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/zzwt;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzwt;

    const-string v5, "EC"

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzwt;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/KeyPairGenerator;

    .line 19
    invoke-virtual {v4, v3}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 20
    invoke-virtual {v4}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v3

    .line 21
    nop

    .line 22
    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/zzwr;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzwr;

    .line 23
    invoke-virtual {v3}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v5

    check-cast v5, Ljava/security/interfaces/ECPublicKey;

    invoke-interface {v5}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v5

    .line 24
    nop

    .line 25
    invoke-static {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzwp;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzwo;)Ljava/security/spec/ECParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v1

    .line 26
    invoke-static {v5, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzmg;->zza(Ljava/security/spec/ECPoint;Ljava/security/spec/EllipticCurve;)V

    .line 27
    invoke-static {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzwp;->zza(Ljava/security/spec/EllipticCurve;)I

    move-result v1

    .line 28
    invoke-virtual {v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzwr;->ordinal()I

    move-result v6

    packed-switch v6, :pswitch_data_1

    .line 51
    new-instance p1, Ljava/security/GeneralSecurityException;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid format:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 36
    :pswitch_1
    mul-int/lit8 v4, v1, 0x2

    new-array v6, v4, [B

    .line 37
    invoke-virtual {v5}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/internal/firebase-auth-api/zzme;->zza(Ljava/math/BigInteger;)[B

    move-result-object v7

    .line 38
    array-length v8, v7

    if-le v8, v1, :cond_0

    .line 39
    array-length v8, v7

    sub-int/2addr v8, v1

    array-length v9, v7

    invoke-static {v7, v8, v9}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    .line 40
    :cond_0
    invoke-virtual {v5}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzme;->zza(Ljava/math/BigInteger;)[B

    move-result-object v5

    .line 41
    array-length v8, v5

    if-le v8, v1, :cond_1

    .line 42
    array-length v8, v5

    sub-int/2addr v8, v1

    array-length v9, v5

    invoke-static {v5, v8, v9}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    .line 43
    :cond_1
    array-length v8, v5

    sub-int/2addr v4, v8

    array-length v8, v5

    invoke-static {v5, v2, v6, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 44
    array-length v4, v7

    sub-int/2addr v1, v4

    array-length v4, v7

    invoke-static {v7, v2, v6, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 45
    goto :goto_1

    .line 46
    :pswitch_2
    add-int/lit8 v1, v1, 0x1

    new-array v6, v1, [B

    .line 47
    invoke-virtual {v5}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzme;->zza(Ljava/math/BigInteger;)[B

    move-result-object v4

    .line 48
    array-length v7, v4

    sub-int/2addr v1, v7

    array-length v7, v4

    invoke-static {v4, v2, v6, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 49
    invoke-virtual {v5}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    :goto_0
    int-to-byte v1, v1

    aput-byte v1, v6, v2

    .line 50
    goto :goto_1

    .line 29
    :pswitch_3
    mul-int/lit8 v4, v1, 0x2

    add-int/lit8 v4, v4, 0x1

    new-array v6, v4, [B

    .line 30
    invoke-virtual {v5}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/internal/firebase-auth-api/zzme;->zza(Ljava/math/BigInteger;)[B

    move-result-object v7

    .line 31
    invoke-virtual {v5}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzme;->zza(Ljava/math/BigInteger;)[B

    move-result-object v5

    .line 32
    array-length v8, v5

    sub-int/2addr v4, v8

    array-length v8, v5

    invoke-static {v5, v2, v6, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 33
    add-int/lit8 v1, v1, 0x1

    array-length v4, v7

    sub-int/2addr v1, v4

    array-length v4, v7

    invoke-static {v7, v2, v6, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 34
    const/4 v1, 0x4

    aput-byte v1, v6, v2

    .line 35
    nop

    .line 52
    :goto_1
    nop

    .line 53
    nop

    .line 54
    invoke-virtual {v3}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v1

    check-cast v1, Ljava/security/interfaces/ECPrivateKey;

    invoke-interface {v1}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v1

    .line 55
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzlt;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzuo;)I

    move-result v0

    .line 56
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzme;->zza(Ljava/math/BigInteger;I)[B

    move-result-object v0

    .line 57
    goto :goto_2

    .line 4
    :pswitch_4
    nop

    .line 5
    const/16 v0, 0x20

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzou;->zza(I)[B

    move-result-object v0

    .line 6
    nop

    .line 7
    aget-byte v1, v0, v2

    or-int/lit8 v1, v1, 0x7

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    .line 8
    const/16 v1, 0x1f

    aget-byte v3, v0, v1

    and-int/lit8 v3, v3, 0x3f

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 9
    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 10
    nop

    .line 11
    nop

    .line 12
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzxr;->zza([B)[B

    move-result-object v6

    .line 13
    nop

    .line 59
    :goto_2
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzuv;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzuv$zza;

    move-result-object v1

    .line 60
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzuv$zza;->zza(I)Lcom/google/android/gms/internal/firebase-auth-api/zzuv$zza;

    move-result-object v1

    .line 61
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzuq;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzur;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzuv$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzur;)Lcom/google/android/gms/internal/firebase-auth-api/zzuv$zza;

    move-result-object p1

    .line 62
    invoke-static {v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzahd;->zza([B)Lcom/google/android/gms/internal/firebase-auth-api/zzahd;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzuv$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzahd;)Lcom/google/android/gms/internal/firebase-auth-api/zzuv$zza;

    move-result-object p1

    .line 63
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzb;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzair;

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzuv;

    .line 64
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzuu;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzuu$zza;

    move-result-object v1

    .line 65
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzuu$zza;->zza(I)Lcom/google/android/gms/internal/firebase-auth-api/zzuu$zza;

    move-result-object v1

    .line 66
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzuu$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzuv;)Lcom/google/android/gms/internal/firebase-auth-api/zzuu$zza;

    move-result-object p1

    .line 67
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahd;->zza([B)Lcom/google/android/gms/internal/firebase-auth-api/zzahd;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzuu$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzahd;)Lcom/google/android/gms/internal/firebase-auth-api/zzuu$zza;

    move-result-object p1

    .line 68
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzb;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzair;

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzuu;

    .line 69
    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final synthetic zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzakb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 74
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzuq;

    .line 75
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzuq;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzur;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzlt;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzur;)V

    .line 76
    return-void
.end method
