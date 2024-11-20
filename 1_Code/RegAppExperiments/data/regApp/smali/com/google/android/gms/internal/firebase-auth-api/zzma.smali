.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzma;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/firebase-auth-api/zzma$zza;
    }
.end annotation


# static fields
.field private static final zza:Ljava/lang/Object;

.field private static final zzb:Ljava/lang/String;


# instance fields
.field private final zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzcd;

.field private final zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzbg;

.field private zze:Lcom/google/android/gms/internal/firebase-auth-api/zzcb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzma;->zza:Ljava/lang/Object;

    .line 10
    const-class v0, Lcom/google/android/gms/internal/firebase-auth-api/zzma;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzma;->zzb:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzma$zza;)V
    .locals 4

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzmf;

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzma$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzma$zza;)Landroid/content/Context;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzma$zza;->zzd(Lcom/google/android/gms/internal/firebase-auth-api/zzma$zza;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzma$zza;->zze(Lcom/google/android/gms/internal/firebase-auth-api/zzma$zza;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzmf;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzma;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzcd;

    .line 13
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzma$zza;->zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzma$zza;)Lcom/google/android/gms/internal/firebase-auth-api/zzbg;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzma;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzbg;

    .line 14
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzma$zza;->zzc(Lcom/google/android/gms/internal/firebase-auth-api/zzma$zza;)Lcom/google/android/gms/internal/firebase-auth-api/zzcb;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzma;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzcb;

    .line 15
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzma$zza;Lcom/google/android/gms/internal/firebase-auth-api/zzmc;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzma;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzma$zza;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase-auth-api/zzbx;Lcom/google/android/gms/internal/firebase-auth-api/zzcd;Lcom/google/android/gms/internal/firebase-auth-api/zzbg;)V
    .locals 0

    .line 2
    nop

    .line 3
    if-eqz p2, :cond_0

    .line 4
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzbx;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzcd;Lcom/google/android/gms/internal/firebase-auth-api/zzbg;)V

    return-void

    .line 5
    :cond_0
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzbl;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzbx;Lcom/google/android/gms/internal/firebase-auth-api/zzcd;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    return-void

    .line 7
    :catch_0
    move-exception p0

    .line 8
    new-instance p1, Ljava/security/GeneralSecurityException;

    invoke-direct {p1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method static bridge synthetic zzb()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzma;->zza:Ljava/lang/Object;

    return-object v0
.end method

.method static bridge synthetic zzc()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzma;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zzd()Z
    .locals 1

    .line 16
    const/4 v0, 0x1

    return v0
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

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzma;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzcb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzcb;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzbx;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
