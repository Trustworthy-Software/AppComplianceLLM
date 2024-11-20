.class public final Lcom/google/firebase/auth/internal/zzak;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"


# static fields
.field private static zzc:Lcom/google/android/gms/common/logging/Logger;


# instance fields
.field volatile zza:J

.field volatile zzb:J

.field private final zzd:Lcom/google/firebase/FirebaseApp;

.field private zze:J

.field private zzf:Landroid/os/HandlerThread;

.field private zzg:Landroid/os/Handler;

.field private zzh:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/common/logging/Logger;

    const-string v1, "FirebaseAuth:"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "TokenRefresher"

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/common/logging/Logger;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/google/firebase/auth/internal/zzak;->zzc:Lcom/google/android/gms/common/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/FirebaseApp;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object v0, Lcom/google/firebase/auth/internal/zzak;->zzc:Lcom/google/android/gms/common/logging/Logger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Initializing TokenRefresher"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/logging/Logger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/FirebaseApp;

    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzak;->zzd:Lcom/google/firebase/FirebaseApp;

    .line 5
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "TokenRefresher"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/google/firebase/auth/internal/zzak;->zzf:Landroid/os/HandlerThread;

    .line 6
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzg;

    iget-object v1, p0, Lcom/google/firebase/auth/internal/zzak;->zzf:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzg;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/firebase/auth/internal/zzak;->zzg:Landroid/os/Handler;

    .line 8
    new-instance v0, Lcom/google/firebase/auth/internal/zzaj;

    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/auth/internal/zzaj;-><init>(Lcom/google/firebase/auth/internal/zzak;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/firebase/auth/internal/zzak;->zzh:Ljava/lang/Runnable;

    .line 9
    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lcom/google/firebase/auth/internal/zzak;->zze:J

    .line 10
    return-void
.end method

.method static bridge synthetic zza()Lcom/google/android/gms/common/logging/Logger;
    .locals 1

    sget-object v0, Lcom/google/firebase/auth/internal/zzak;->zzc:Lcom/google/android/gms/common/logging/Logger;

    return-object v0
.end method


# virtual methods
.method public final zzb()V
    .locals 2

    .line 11
    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzak;->zzg:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/firebase/auth/internal/zzak;->zzh:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 12
    return-void
.end method

.method public final zzc()V
    .locals 6

    .line 13
    sget-object v0, Lcom/google/firebase/auth/internal/zzak;->zzc:Lcom/google/android/gms/common/logging/Logger;

    iget-wide v1, p0, Lcom/google/firebase/auth/internal/zzak;->zza:J

    iget-wide v3, p0, Lcom/google/firebase/auth/internal/zzak;->zze:J

    sub-long/2addr v1, v3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Scheduling refresh for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/logging/Logger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    invoke-virtual {p0}, Lcom/google/firebase/auth/internal/zzak;->zzb()V

    .line 15
    invoke-static {}, Lcom/google/android/gms/common/util/DefaultClock;->getInstance()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    .line 16
    iget-wide v2, p0, Lcom/google/firebase/auth/internal/zzak;->zza:J

    sub-long/2addr v2, v0

    iget-wide v0, p0, Lcom/google/firebase/auth/internal/zzak;->zze:J

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/firebase/auth/internal/zzak;->zzb:J

    .line 17
    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzak;->zzg:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/firebase/auth/internal/zzak;->zzh:Ljava/lang/Runnable;

    iget-wide v4, p0, Lcom/google/firebase/auth/internal/zzak;->zzb:J

    mul-long/2addr v4, v2

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 18
    return-void
.end method

.method final zzd()V
    .locals 7

    .line 19
    nop

    .line 20
    iget-wide v0, p0, Lcom/google/firebase/auth/internal/zzak;->zzb:J

    long-to-int v0, v0

    sparse-switch v0, :sswitch_data_0

    .line 25
    const-wide/16 v0, 0x1e

    goto :goto_0

    .line 23
    :sswitch_0
    nop

    .line 24
    const-wide/16 v0, 0x3c0

    goto :goto_0

    .line 21
    :sswitch_1
    const-wide/16 v0, 0x2

    iget-wide v2, p0, Lcom/google/firebase/auth/internal/zzak;->zzb:J

    mul-long/2addr v0, v2

    .line 22
    nop

    .line 26
    :goto_0
    nop

    .line 27
    iput-wide v0, p0, Lcom/google/firebase/auth/internal/zzak;->zzb:J

    .line 28
    invoke-static {}, Lcom/google/android/gms/common/util/DefaultClock;->getInstance()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/firebase/auth/internal/zzak;->zzb:J

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/firebase/auth/internal/zzak;->zza:J

    .line 29
    sget-object v0, Lcom/google/firebase/auth/internal/zzak;->zzc:Lcom/google/android/gms/common/logging/Logger;

    iget-wide v1, p0, Lcom/google/firebase/auth/internal/zzak;->zza:J

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "Scheduling refresh for "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/logging/Logger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzak;->zzg:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/firebase/auth/internal/zzak;->zzh:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/google/firebase/auth/internal/zzak;->zzb:J

    mul-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 31
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1e -> :sswitch_1
        0x3c -> :sswitch_1
        0x78 -> :sswitch_1
        0xf0 -> :sswitch_1
        0x1e0 -> :sswitch_1
        0x3c0 -> :sswitch_0
    .end sparse-switch
.end method
