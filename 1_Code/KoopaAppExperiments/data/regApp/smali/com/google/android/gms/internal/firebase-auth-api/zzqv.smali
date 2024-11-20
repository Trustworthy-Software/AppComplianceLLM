.class final Lcom/google/android/gms/internal/firebase-auth-api/zzqv;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzce;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzcg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-auth-api/zzcg<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzce;",
            ">;"
        }
    .end annotation
.end field

.field private final zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzrr;

.field private final zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzrr;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzcg;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzcg<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzce;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzqv;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzcg;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzcg;->zzf()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zznn;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zznn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zznn;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzro;

    move-result-object v0

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zznh;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzcg;)Lcom/google/android/gms/internal/firebase-auth-api/zzrq;

    move-result-object p1

    .line 6
    const-string v1, "compute"

    const-string v2, "mac"

    invoke-interface {v0, p1, v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzro;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzrq;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzrr;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzqv;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzrr;

    .line 7
    const-string v1, "verify"

    invoke-interface {v0, p1, v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzro;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzrq;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzrr;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzqv;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzrr;

    .line 8
    return-void

    .line 9
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/zznh;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzrr;

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzqv;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzrr;

    .line 10
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/zznh;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzrr;

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzqv;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzrr;

    .line 11
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzcg;Lcom/google/android/gms/internal/firebase-auth-api/zzqu;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzqv;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzcg;)V

    return-void
.end method


# virtual methods
.method public final zza([B[B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 12
    array-length v0, p1

    const/4 v1, 0x5

    if-le v0, v1, :cond_2

    .line 15
    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    .line 16
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzqv;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzcg;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzcg;->zza([B)Ljava/util/List;

    move-result-object v0

    .line 17
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/zzcl;

    .line 18
    :try_start_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzcl;->zze()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/firebase-auth-api/zzce;

    invoke-interface {v2, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzce;->zza([B[B)V

    .line 19
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzqv;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzrr;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzcl;->zza()I

    move-result v1

    array-length v3, p2

    int-to-long v3, v3

    invoke-interface {v2, v1, v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzrr;->zza(IJ)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    return-void

    .line 21
    :catch_0
    move-exception v1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzqv;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzcg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzcg;->zze()Ljava/util/List;

    move-result-object v0

    .line 24
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/zzcl;

    .line 25
    :try_start_1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzcl;->zze()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/firebase-auth-api/zzce;

    invoke-interface {v2, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzce;->zza([B[B)V

    .line 26
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzqv;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzrr;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzcl;->zza()I

    move-result v1

    array-length v3, p2

    int-to-long v3, v3

    invoke-interface {v2, v1, v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzrr;->zza(IJ)V
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 27
    return-void

    .line 28
    :catch_1
    move-exception v1

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzqv;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzrr;

    invoke-interface {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzrr;->zza()V

    .line 31
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "invalid MAC"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzqv;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzrr;

    invoke-interface {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzrr;->zza()V

    .line 14
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "tag too short"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zza([B)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 32
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzqv;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzcg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzcg;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzcl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzcl;->zze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzce;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzce;->zza([B)[B

    move-result-object v0

    .line 33
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzqv;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzrr;

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzqv;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzcg;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzcg;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzcl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzcl;->zza()I

    move-result v2

    array-length p1, p1

    int-to-long v3, p1

    invoke-interface {v1, v2, v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzrr;->zza(IJ)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    return-object v0

    .line 35
    :catch_0
    move-exception p1

    .line 36
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzqv;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzrr;

    invoke-interface {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzrr;->zza()V

    .line 37
    throw p1
.end method
