.class public Lcom/google/android/gms/internal/measurement/zzgj$zza;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@21.5.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzgj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zza"
.end annotation


# static fields
.field private static volatile zza:Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional<",
            "Lcom/google/android/gms/internal/measurement/zzgh;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzgj$zza;->zza:Lcom/google/common/base/Optional;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza(Landroid/content/Context;)Lcom/google/common/base/Optional;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/google/common/base/Optional<",
            "Lcom/google/android/gms/internal/measurement/zzgh;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/google/android/gms/internal/measurement/zzgj$zza;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzgj$zza;->zza:Lcom/google/common/base/Optional;

    .line 3
    if-nez v1, :cond_6

    .line 4
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzgj;

    invoke-direct {v1}, Lcom/google/android/gms/internal/measurement/zzgj;-><init>()V

    .line 5
    nop

    .line 6
    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    sget-object v2, Landroid/os/Build;->TAGS:Ljava/lang/String;

    .line 7
    const-string v3, "eng"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "userdebug"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "dev-keys"

    .line 8
    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "test-keys"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    .line 9
    :goto_1
    if-nez v1, :cond_3

    .line 10
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object p0

    move-object v1, p0

    goto :goto_3

    .line 11
    :cond_3
    nop

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfw;->zza()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 13
    nop

    .line 14
    invoke-virtual {p0}, Landroid/content/Context;->isDeviceProtectedStorage()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 15
    goto :goto_2

    .line 16
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object p0

    .line 17
    goto :goto_2

    .line 18
    :cond_5
    nop

    .line 19
    :goto_2
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzgj;->zza(Landroid/content/Context;)Lcom/google/common/base/Optional;

    move-result-object p0

    move-object v1, p0

    .line 20
    :goto_3
    sput-object v1, Lcom/google/android/gms/internal/measurement/zzgj$zza;->zza:Lcom/google/common/base/Optional;

    .line 21
    :cond_6
    monitor-exit v0

    return-object v1

    .line 22
    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
