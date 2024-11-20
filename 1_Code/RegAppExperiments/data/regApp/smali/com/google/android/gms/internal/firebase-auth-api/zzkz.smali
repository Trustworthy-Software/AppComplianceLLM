.class final Lcom/google/android/gms/internal/firebase-auth-api/zzkz;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzwi;


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:I

.field private zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzsu;

.field private zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzse;

.field private zze:I

.field private zzf:Lcom/google/android/gms/internal/firebase-auth-api/zztc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzvb;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzvb;->zzf()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzkz;->zza:Ljava/lang/String;

    .line 44
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzcw;->zzb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    nop

    .line 46
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzvb;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzahd;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaig;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzaig;

    move-result-object v1

    .line 47
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzsv;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzahd;Lcom/google/android/gms/internal/firebase-auth-api/zzaig;)Lcom/google/android/gms/internal/firebase-auth-api/zzsv;

    move-result-object v0

    .line 48
    nop

    .line 49
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzct;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzvb;)Lcom/google/android/gms/internal/firebase-auth-api/zzuy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzuy;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzahd;

    move-result-object p1

    .line 50
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaig;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzaig;

    move-result-object v1

    .line 51
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzsu;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzahd;Lcom/google/android/gms/internal/firebase-auth-api/zzaig;)Lcom/google/android/gms/internal/firebase-auth-api/zzsu;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzkz;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzsu;

    .line 52
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzsv;->zza()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzkz;->zzb:I
    :try_end_0
    .catch Lcom/google/android/gms/internal/firebase-auth-api/zzaja; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    return-void

    .line 54
    :catch_0
    move-exception p1

    .line 55
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "invalid KeyFormat protobuf, expected AesGcmKeyFormat"

    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 56
    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzcw;->zza:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "invalid KeyFormat protobuf, expected AesCtrHmacAeadKeyFormat"

    if-eqz v1, :cond_1

    .line 57
    nop

    .line 58
    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzvb;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzahd;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaig;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzaig;

    move-result-object v1

    .line 59
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzsf;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzahd;Lcom/google/android/gms/internal/firebase-auth-api/zzaig;)Lcom/google/android/gms/internal/firebase-auth-api/zzsf;

    move-result-object v0

    .line 60
    nop

    .line 61
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzct;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzvb;)Lcom/google/android/gms/internal/firebase-auth-api/zzuy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzuy;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzahd;

    move-result-object p1

    .line 62
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaig;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzaig;

    move-result-object v1

    .line 63
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzse;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzahd;Lcom/google/android/gms/internal/firebase-auth-api/zzaig;)Lcom/google/android/gms/internal/firebase-auth-api/zzse;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzkz;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzse;

    .line 64
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzsf;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzsj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzsj;->zza()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzkz;->zze:I

    .line 65
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzsf;->zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzug;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzug;->zza()I

    move-result p1

    .line 66
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzkz;->zze:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzkz;->zzb:I
    :try_end_1
    .catch Lcom/google/android/gms/internal/firebase-auth-api/zzaja; {:try_start_1 .. :try_end_1} :catch_1

    .line 67
    return-void

    .line 68
    :catch_1
    move-exception p1

    .line 69
    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-direct {v0, v2, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 70
    :cond_1
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zziz;->zza:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 71
    nop

    .line 72
    :try_start_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzvb;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzahd;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaig;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzaig;

    move-result-object v1

    .line 73
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zztd;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzahd;Lcom/google/android/gms/internal/firebase-auth-api/zzaig;)Lcom/google/android/gms/internal/firebase-auth-api/zztd;

    move-result-object v0

    .line 74
    nop

    .line 75
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzct;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzvb;)Lcom/google/android/gms/internal/firebase-auth-api/zzuy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzuy;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzahd;

    move-result-object p1

    .line 76
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaig;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzaig;

    move-result-object v1

    .line 77
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zztc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzahd;Lcom/google/android/gms/internal/firebase-auth-api/zzaig;)Lcom/google/android/gms/internal/firebase-auth-api/zztc;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzkz;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/zztc;

    .line 78
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zztd;->zza()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzkz;->zzb:I
    :try_end_2
    .catch Lcom/google/android/gms/internal/firebase-auth-api/zzaja; {:try_start_2 .. :try_end_2} :catch_2

    .line 79
    return-void

    .line 80
    :catch_2
    move-exception p1

    .line 81
    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-direct {v0, v2, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 82
    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unsupported AEAD DEM key type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final zza()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzkz;->zzb:I

    return v0
.end method

.method public final zza([B)Lcom/google/android/gms/internal/firebase-auth-api/zzly;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 2
    array-length v0, p1

    .line 3
    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzkz;->zzb:I

    .line 4
    if-ne v0, v1, :cond_3

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzkz;->zza:Ljava/lang/String;

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzcw;->zzb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzsu;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzsu$zza;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzkz;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzsu;

    .line 8
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzb;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzair;)Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzsu$zza;

    iget v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzkz;->zzb:I

    .line 9
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzahd;->zza([BII)Lcom/google/android/gms/internal/firebase-auth-api/zzahd;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzsu$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzahd;)Lcom/google/android/gms/internal/firebase-auth-api/zzsu$zza;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzb;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzair;

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzsu;

    .line 11
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzly;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzkz;->zza:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzagu;->zzi()Lcom/google/android/gms/internal/firebase-auth-api/zzahd;

    move-result-object p1

    const-class v2, Lcom/google/android/gms/internal/firebase-auth-api/zzbg;

    invoke-static {v1, p1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzct;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzahd;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzbg;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzly;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzbg;)V

    .line 13
    return-object v0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzkz;->zza:Ljava/lang/String;

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzcw;->zza:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzkz;->zze:I

    invoke-static {p1, v1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 16
    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzkz;->zze:I

    iget v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzkz;->zzb:I

    invoke-static {p1, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    .line 17
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzsi;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzsi$zza;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzkz;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzse;

    .line 18
    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzse;->zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzsi;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzb;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzair;)Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzb;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/zzsi$zza;

    .line 19
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahd;->zza([B)Lcom/google/android/gms/internal/firebase-auth-api/zzahd;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzsi$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzahd;)Lcom/google/android/gms/internal/firebase-auth-api/zzsi$zza;

    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzb;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzair;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzsi;

    .line 21
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzuc;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzuc$zza;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzkz;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzse;

    .line 22
    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzse;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzuc;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzb;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzair;)Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzb;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/zzuc$zza;

    .line 23
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahd;->zza([B)Lcom/google/android/gms/internal/firebase-auth-api/zzahd;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzuc$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzahd;)Lcom/google/android/gms/internal/firebase-auth-api/zzuc$zza;

    move-result-object p1

    .line 24
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzb;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzair;

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzuc;

    .line 25
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzse;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzse$zza;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzkz;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzse;

    .line 26
    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzse;->zza()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzse$zza;->zza(I)Lcom/google/android/gms/internal/firebase-auth-api/zzse$zza;

    move-result-object v1

    .line 27
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzse$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzsi;)Lcom/google/android/gms/internal/firebase-auth-api/zzse$zza;

    move-result-object v0

    .line 28
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzse$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzuc;)Lcom/google/android/gms/internal/firebase-auth-api/zzse$zza;

    move-result-object p1

    .line 29
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzb;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzair;

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzse;

    .line 30
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzly;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzkz;->zza:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzagu;->zzi()Lcom/google/android/gms/internal/firebase-auth-api/zzahd;

    move-result-object p1

    const-class v2, Lcom/google/android/gms/internal/firebase-auth-api/zzbg;

    invoke-static {v1, p1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzct;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzahd;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzbg;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzly;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzbg;)V

    .line 32
    return-object v0

    .line 33
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzkz;->zza:Ljava/lang/String;

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zziz;->zza:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 34
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zztc;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zztc$zza;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzkz;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/zztc;

    .line 35
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzb;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzair;)Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zztc$zza;

    iget v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzkz;->zzb:I

    .line 36
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzahd;->zza([BII)Lcom/google/android/gms/internal/firebase-auth-api/zzahd;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zztc$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzahd;)Lcom/google/android/gms/internal/firebase-auth-api/zztc$zza;

    move-result-object p1

    .line 37
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzb;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzair;

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zztc;

    .line 38
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzly;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzkz;->zza:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzagu;->zzi()Lcom/google/android/gms/internal/firebase-auth-api/zzahd;

    move-result-object p1

    const-class v2, Lcom/google/android/gms/internal/firebase-auth-api/zzbp;

    invoke-static {v1, p1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzct;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzahd;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzbp;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzly;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzbp;)V

    .line 40
    return-object v0

    .line 41
    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "unknown DEM key type"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_3
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "Symmetric key has incorrect length"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
