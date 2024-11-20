.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzafg;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"


# direct methods
.method public static zza(Ljava/lang/String;)J
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzafg;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzafj;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzafj;->zza()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzafj;->zzb()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private static zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzafj;
    .locals 3

    .line 3
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    const/16 v0, 0x2e

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzab;->zza(C)Lcom/google/android/gms/internal/firebase-auth-api/zzab;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzab;->zza(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    .line 7
    const/4 p0, 0x1

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 8
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/google/android/gms/common/util/Base64Utils;->decodeUrlSafeNoPadding(Ljava/lang/String;)[B

    move-result-object p0

    const-string v1, "UTF-8"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 9
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzafj;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzafj;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 10
    :catch_0
    move-exception p0

    .line 11
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unable to decode token"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid idToken "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
