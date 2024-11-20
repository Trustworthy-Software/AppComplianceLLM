.class public final Lcom/google/firebase/auth/internal/zzba;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"


# direct methods
.method public static zza(Lcom/google/android/gms/internal/firebase-auth-api/zzafi;)Lcom/google/firebase/auth/MultiFactorInfo;
    .locals 8
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 2
    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzafi;->zze()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    nop

    .line 5
    new-instance v0, Lcom/google/firebase/auth/PhoneMultiFactorInfo;

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzafi;->zzd()Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzafi;->zzc()Ljava/lang/String;

    move-result-object v4

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzafi;->zza()J

    move-result-wide v5

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzafi;->zze()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/google/firebase/auth/PhoneMultiFactorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 10
    return-object v0

    .line 11
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzafi;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzagh;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 12
    nop

    .line 13
    new-instance v0, Lcom/google/firebase/auth/TotpMultiFactorInfo;

    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzafi;->zzd()Ljava/lang/String;

    move-result-object v3

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzafi;->zzc()Ljava/lang/String;

    move-result-object v4

    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzafi;->zza()J

    move-result-wide v5

    .line 17
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzafi;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzagh;

    move-result-object p0

    const-string v1, "totpInfo cannot be null."

    invoke-static {p0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v7, p0

    check-cast v7, Lcom/google/android/gms/internal/firebase-auth-api/zzagh;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/google/firebase/auth/TotpMultiFactorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/google/android/gms/internal/firebase-auth-api/zzagh;)V

    .line 18
    return-object v0

    .line 19
    :cond_2
    return-object v0
.end method

.method public static zza(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzafi;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/google/firebase/auth/MultiFactorInfo;",
            ">;"
        }
    .end annotation

    .line 20
    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 22
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/zzafi;

    .line 24
    invoke-static {v1}, Lcom/google/firebase/auth/internal/zzba;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzafi;)Lcom/google/firebase/auth/MultiFactorInfo;

    move-result-object v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    :cond_1
    goto :goto_0

    .line 28
    :cond_2
    return-object v0

    .line 21
    :cond_3
    :goto_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method
