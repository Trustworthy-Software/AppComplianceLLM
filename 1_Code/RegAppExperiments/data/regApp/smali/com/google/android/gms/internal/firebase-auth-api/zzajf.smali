.class public Lcom/google/android/gms/internal/firebase-auth-api/zzajf;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzaig;


# instance fields
.field private zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzahd;

.field private volatile zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

.field private volatile zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzahd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzaig;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzaig;

    .line 36
    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzajf;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzaig;

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzakb;)Lcom/google/android/gms/internal/firebase-auth-api/zzakb;
    .locals 1

    .line 17
    nop

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzajf;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    if-nez v0, :cond_1

    .line 19
    monitor-enter p0

    .line 20
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzajf;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    if-eqz v0, :cond_0

    .line 21
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 22
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzajf;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    .line 23
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzahd;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzahd;

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzajf;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzahd;
    :try_end_1
    .catch Lcom/google/android/gms/internal/firebase-auth-api/zzaja; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    goto :goto_0

    .line 25
    :catch_0
    move-exception v0

    .line 26
    :try_start_2
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzajf;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    .line 27
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/zzahd;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzahd;

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzajf;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzahd;

    .line 28
    :goto_0
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 29
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzajf;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    return-object p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 39
    if-ne p0, p1, :cond_0

    .line 40
    const/4 p1, 0x1

    return p1

    .line 41
    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzajf;

    if-nez v0, :cond_1

    .line 42
    const/4 p1, 0x0

    return p1

    .line 43
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzajf;

    .line 44
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzajf;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    .line 45
    iget-object v1, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzajf;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    .line 46
    if-nez v0, :cond_2

    if-nez v1, :cond_2

    .line 47
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzajf;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzahd;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzajf;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzahd;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahd;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 48
    :cond_2
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 50
    :cond_3
    if-eqz v0, :cond_4

    .line 51
    invoke-interface {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakb;->zzr()Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzajf;->zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzakb;)Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 52
    :cond_4
    invoke-interface {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakb;->zzr()Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzajf;->zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzakb;)Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 6
    const/4 v0, 0x1

    return v0
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzakb;)Lcom/google/android/gms/internal/firebase-auth-api/zzakb;
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzajf;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    .line 31
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzajf;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzahd;

    .line 32
    iput-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzajf;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzahd;

    .line 33
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzajf;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    .line 34
    return-object v0
.end method

.method public final zzb()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzajf;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzahd;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzajf;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzahd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahd;->zzb()I

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzajf;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzajf;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakb;->zzk()I

    move-result v0

    return v0

    .line 5
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzahd;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzajf;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzahd;

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzajf;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzahd;

    return-object v0

    .line 9
    :cond_0
    monitor-enter p0

    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzajf;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzahd;

    if-eqz v0, :cond_1

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzajf;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzahd;

    monitor-exit p0

    return-object v0

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzajf;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    if-nez v0, :cond_2

    .line 13
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzahd;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzahd;

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzajf;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzahd;

    goto :goto_0

    .line 14
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzajf;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakb;->zzi()Lcom/google/android/gms/internal/firebase-auth-api/zzahd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzajf;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzahd;

    .line 15
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzajf;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzahd;

    monitor-exit p0

    return-object v0

    .line 16
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
