.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzcb;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zza;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zza;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzcb;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zza;

    .line 37
    return-void
.end method

.method private final declared-synchronized zza(Lcom/google/android/gms/internal/firebase-auth-api/zzvb;Z)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzcb;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzvb;)Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzcb;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zza;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;)Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zza;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;->zza()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    .line 0
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static zza(Lcom/google/android/gms/internal/firebase-auth-api/zzbx;)Lcom/google/android/gms/internal/firebase-auth-api/zzcb;
    .locals 2

    .line 21
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzcb;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzbx;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzvg;

    move-result-object p0

    .line 22
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzair;->zzm()Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzb;

    move-result-object p0

    .line 23
    move-object v1, p0

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzb;

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzcb;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zza;)V

    return-object v0
.end method

.method private final declared-synchronized zza(Lcom/google/android/gms/internal/firebase-auth-api/zzuy;Lcom/google/android/gms/internal/firebase-auth-api/zzvs;)Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    monitor-enter p0

    .line 24
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzcb;->zzc()I

    move-result v0

    .line 25
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzvs;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzvs;

    if-eq p2, v1, :cond_0

    .line 27
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;->zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb$zza;

    move-result-object v1

    .line 28
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzuy;)Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb$zza;

    move-result-object p1

    .line 29
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb$zza;->zza(I)Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb$zza;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzuz;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzuz;

    .line 30
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzuz;)Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb$zza;

    move-result-object p1

    .line 31
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzvs;)Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb$zza;

    move-result-object p1

    .line 32
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzb;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzair;

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    monitor-exit p0

    return-object p1

    .line 26
    :cond_0
    :try_start_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "unknown output prefix type"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final declared-synchronized zza(Lcom/google/android/gms/internal/firebase-auth-api/zzvb;)Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    monitor-enter p0

    .line 34
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzct;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzvb;)Lcom/google/android/gms/internal/firebase-auth-api/zzuy;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzvb;->zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzvs;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzcb;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzuy;Lcom/google/android/gms/internal/firebase-auth-api/zzvs;)Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 34
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzcb;
    .locals 2

    .line 20
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzcb;

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzvg;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zza;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzcb;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zza;)V

    return-object v0
.end method

.method private final declared-synchronized zzb(I)Z
    .locals 2

    monitor-enter p0

    .line 38
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzcb;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zza;->zzb()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;

    .line 39
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;->zza()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, p1, :cond_0

    .line 40
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    .line 41
    :cond_0
    goto :goto_0

    .line 42
    :cond_1
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    .line 37
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final declared-synchronized zzc()I
    .locals 2

    monitor-enter p0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzpf;->zza()I

    move-result v0

    .line 5
    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzcb;->zzb(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzpf;->zza()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 7
    :cond_0
    monitor-exit p0

    return v0

    .line 3
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized zza()Lcom/google/android/gms/internal/firebase-auth-api/zzbx;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    monitor-enter p0

    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzcb;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzb;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzair;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzvg;

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzbx;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzvg;)Lcom/google/android/gms/internal/firebase-auth-api/zzbx;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 8
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zza(I)Lcom/google/android/gms/internal/firebase-auth-api/zzcb;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    monitor-enter p0

    .line 11
    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzcb;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zza;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zza;->zza()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 12
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzcb;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zza;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zza;->zzb(I)Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;

    move-result-object v1

    .line 13
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;->zza()I

    move-result v2

    if-ne v2, p1, :cond_1

    .line 14
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzuz;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzuz;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzuz;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzuz;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzcb;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zza;->zza(I)Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zza;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    monitor-exit p0

    return-object p0

    .line 15
    :cond_0
    :try_start_1
    new-instance v0, Ljava/security/GeneralSecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cannot set key as primary because it\'s not enabled: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 18
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 19
    :cond_2
    new-instance v0, Ljava/security/GeneralSecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "key not found: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/firebase-auth-api/zzbu;)Lcom/google/android/gms/internal/firebase-auth-api/zzcb;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    monitor-enter p0

    .line 9
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzbu;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzvb;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzcb;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzvb;Z)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit p0

    return-object p0

    .line 8
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
