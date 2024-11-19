.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzacq;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"


# instance fields
.field private final zza:I


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzacq;->zza(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacq;->zza:I

    .line 25
    return-void
.end method

.method private static zza(Ljava/lang/String;)I
    .locals 5

    .line 1
    const/4 v0, 0x3

    :try_start_0
    const-string v1, "[.-]"

    invoke-static {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzab;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzab;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzab;->zza(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v1

    .line 2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 3
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 4
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v2, v0, :cond_1

    .line 5
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const v4, 0xf4240

    mul-int/2addr v2, v4

    .line 6
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    add-int/2addr v2, v3

    .line 7
    const/4 v3, 0x2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v2, p0

    .line 8
    return v2

    .line 9
    :cond_1
    goto :goto_0

    .line 10
    :catch_0
    move-exception v1

    .line 11
    const-string v2, "LibraryVersionContainer"

    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12
    filled-new-array {p0, v1}, [Ljava/lang/Object;

    move-result-object p0

    .line 13
    const-string v0, "Version code parsing failed for: %s with exception %s."

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 14
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    :cond_2
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method public static zza()Lcom/google/android/gms/internal/firebase-auth-api/zzacq;
    .locals 3

    .line 16
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzacq;

    .line 17
    invoke-static {}, Lcom/google/android/gms/common/internal/LibraryVersion;->getInstance()Lcom/google/android/gms/common/internal/LibraryVersion;

    move-result-object v1

    const-string v2, "firebase-auth"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/internal/LibraryVersion;->getVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 18
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "UNKNOWN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 19
    :cond_0
    const-string v1, "-1"

    .line 20
    :cond_1
    nop

    .line 21
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzacq;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final zzb()Ljava/lang/String;
    .locals 2

    .line 22
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacq;->zza:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "X%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
