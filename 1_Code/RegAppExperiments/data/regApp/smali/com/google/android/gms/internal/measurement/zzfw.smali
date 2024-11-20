.class public Lcom/google/android/gms/internal/measurement/zzfw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@21.5.0"


# static fields
.field private static zza:Landroid/os/UserManager;

.field private static volatile zzb:Z

.field private static zzc:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfw;->zza()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/google/android/gms/internal/measurement/zzfw;->zzb:Z

    .line 2
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/gms/internal/measurement/zzfw;->zzc:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza()Z
    .locals 1

    .line 40
    const/4 v0, 0x1

    return v0
.end method

.method public static zza(Landroid/content/Context;)Z
    .locals 1

    .line 38
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfw;->zza()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzfw;->zzc(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static zzb(Landroid/content/Context;)Z
    .locals 1

    .line 39
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfw;->zza()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzfw;->zzc(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static zzc(Landroid/content/Context;)Z
    .locals 3

    .line 4
    sget-boolean v0, Lcom/google/android/gms/internal/measurement/zzfw;->zzb:Z

    .line 5
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 6
    return v1

    .line 7
    :cond_0
    const-class v0, Lcom/google/android/gms/internal/measurement/zzfw;

    monitor-enter v0

    .line 8
    :try_start_0
    sget-boolean v2, Lcom/google/android/gms/internal/measurement/zzfw;->zzb:Z

    .line 9
    if-eqz v2, :cond_1

    .line 10
    monitor-exit v0

    return v1

    .line 11
    :cond_1
    nop

    .line 12
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzfw;->zzd(Landroid/content/Context;)Z

    move-result p0

    .line 13
    if-eqz p0, :cond_2

    .line 14
    sput-boolean p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzb:Z

    .line 15
    :cond_2
    monitor-exit v0

    .line 16
    return p0

    .line 15
    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static zzd(Landroid/content/Context;)Z
    .locals 6

    .line 17
    nop

    .line 18
    const/4 v0, 0x1

    move v1, v0

    :goto_0
    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-gt v1, v2, :cond_4

    .line 19
    nop

    .line 20
    sget-object v2, Lcom/google/android/gms/internal/measurement/zzfw;->zza:Landroid/os/UserManager;

    if-nez v2, :cond_0

    .line 21
    const-class v2, Landroid/os/UserManager;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    sput-object v2, Lcom/google/android/gms/internal/measurement/zzfw;->zza:Landroid/os/UserManager;

    .line 22
    :cond_0
    sget-object v2, Lcom/google/android/gms/internal/measurement/zzfw;->zza:Landroid/os/UserManager;

    .line 23
    nop

    .line 24
    if-nez v2, :cond_1

    .line 25
    nop

    .line 26
    return v0

    .line 27
    :cond_1
    nop

    .line 28
    :try_start_0
    invoke-virtual {v2}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v5

    if-nez v5, :cond_3

    .line 29
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/os/UserManager;->isUserRunning(Landroid/os/UserHandle;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    move v0, v4

    goto :goto_2

    :cond_3
    :goto_1
    nop

    .line 30
    :goto_2
    move v4, v0

    goto :goto_3

    .line 31
    :catch_0
    move-exception v2

    .line 32
    const-string v4, "DirectBootUtils"

    const-string v5, "Failed to check if user is unlocked."

    invoke-static {v4, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 33
    sput-object v3, Lcom/google/android/gms/internal/measurement/zzfw;->zza:Landroid/os/UserManager;

    .line 34
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 35
    :cond_4
    :goto_3
    if-eqz v4, :cond_5

    .line 36
    sput-object v3, Lcom/google/android/gms/internal/measurement/zzfw;->zza:Landroid/os/UserManager;

    .line 37
    :cond_5
    return v4
.end method
