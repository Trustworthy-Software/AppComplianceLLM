.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzxm;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzce;


# static fields
.field private static final zza:[B


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzrx;

.field private final zzc:I

.field private final zzd:[B

.field private final zze:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 3
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte v1, v0, v1

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzxm;->zza:[B

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzph;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzxl;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzph;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzxu;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzbq;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzcs;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzxu;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzcs;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzxl;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzxm;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzrx;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzqr;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzqq;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzpo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzpo;->zzb()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzxm;->zzc:I

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzqr;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzxt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzxt;->zzb()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzxm;->zzd:[B

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzqr;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzqq;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzpo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzpo;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzpo$zzb;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzpo$zzb;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzpo$zzb;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 9
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/zzxm;->zza:[B

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzxm;->zze:[B

    return-void

    .line 10
    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzxm;->zze:[B

    .line 11
    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzqc;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzxk;

    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzqr;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzqq;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/zzql;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzql;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzql$zzc;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "HMAC"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzqc;->zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzxu;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzbq;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzcs;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzxu;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzcs;)[B

    move-result-object v4

    invoke-direct {v2, v4, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzxk;-><init>(Ljava/lang/String;Ljava/security/Key;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzxm;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzrx;

    .line 16
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzqr;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzqq;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzql;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzql;->zzb()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzxm;->zzc:I

    .line 17
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzqr;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzxt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzxt;->zzb()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzxm;->zzd:[B

    .line 18
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzqr;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzqq;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzql;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzql;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzql$zzb;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzql$zzb;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzql$zzb;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 19
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/zzxm;->zza:[B

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzxm;->zze:[B

    return-void

    .line 20
    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzxm;->zze:[B

    .line 21
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzrx;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzxm;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzrx;

    .line 24
    iput p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzxm;->zzc:I

    .line 25
    const/4 v0, 0x0

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzxm;->zzd:[B

    .line 26
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzxm;->zze:[B

    .line 27
    const/16 v1, 0xa

    if-lt p2, v1, :cond_0

    .line 29
    new-array v0, v0, [B

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzrx;->zza([BI)[B

    .line 30
    return-void

    .line 28
    :cond_0
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "tag size too small, need at least 10 bytes"

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static zza(Lcom/google/android/gms/internal/firebase-auth-api/zzph;)Lcom/google/android/gms/internal/firebase-auth-api/zzce;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzxm;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzxm;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzph;)V

    return-object v0
.end method

.method public static zza(Lcom/google/android/gms/internal/firebase-auth-api/zzqc;)Lcom/google/android/gms/internal/firebase-auth-api/zzce;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzxm;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzxm;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzqc;)V

    return-object v0
.end method


# virtual methods
.method public final zza([B[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 31
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzxm;->zza([B)[B

    move-result-object p2

    .line 32
    invoke-static {p2, p1}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result p1

    .line 33
    if-eqz p1, :cond_0

    .line 35
    return-void

    .line 34
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "invalid MAC"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zza([B)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzxm;->zze:[B

    array-length v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-lez v1, :cond_0

    .line 37
    new-array v1, v4, [[B

    iget-object v5, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzxm;->zzd:[B

    aput-object v5, v1, v3

    iget-object v5, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzxm;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzrx;

    new-array v4, v4, [[B

    aput-object p1, v4, v3

    aput-object v0, v4, v2

    .line 38
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzwg;->zza([[B)[B

    move-result-object p1

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzxm;->zzc:I

    invoke-interface {v5, p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzrx;->zza([BI)[B

    move-result-object p1

    aput-object p1, v1, v2

    .line 39
    invoke-static {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzwg;->zza([[B)[B

    move-result-object p1

    return-object p1

    .line 40
    :cond_0
    new-array v0, v4, [[B

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzxm;->zzd:[B

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzxm;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzrx;

    iget v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzxm;->zzc:I

    invoke-interface {v1, p1, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzrx;->zza([BI)[B

    move-result-object p1

    aput-object p1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzwg;->zza([[B)[B

    move-result-object p1

    return-object p1
.end method
