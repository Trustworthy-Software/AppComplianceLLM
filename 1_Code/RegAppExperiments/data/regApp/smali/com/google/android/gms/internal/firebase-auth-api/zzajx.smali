.class final Lcom/google/android/gms/internal/firebase-auth-api/zzajx;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzajy;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(ILjava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    nop

    .line 2
    check-cast p2, Lcom/google/android/gms/internal/firebase-auth-api/zzajv;

    .line 3
    check-cast p3, Lcom/google/android/gms/internal/firebase-auth-api/zzajt;

    .line 4
    invoke-virtual {p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzajv;->isEmpty()Z

    move-result p1

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    .line 5
    return p3

    .line 6
    :cond_0
    nop

    .line 7
    invoke-virtual {p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzajv;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_1

    .line 10
    nop

    .line 11
    return p3

    .line 7
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 8
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 9
    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1
.end method

.method public final zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/zzajw;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzajw<",
            "**>;"
        }
    .end annotation

    .line 12
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzajt;

    .line 13
    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1
.end method

.method public final zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 14
    nop

    .line 15
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzajv;

    .line 16
    check-cast p2, Lcom/google/android/gms/internal/firebase-auth-api/zzajv;

    .line 17
    invoke-virtual {p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzajv;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 18
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzajv;->zzd()Z

    move-result v0

    if-nez v0, :cond_0

    .line 19
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzajv;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzajv;

    move-result-object p1

    .line 20
    :cond_0
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzajv;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzajv;)V

    .line 21
    :cond_1
    nop

    .line 22
    return-object p1
.end method

.method public final zzb(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzajv;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzajv;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzajv;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzajv;

    move-result-object p1

    return-object p1
.end method

.method public final zzc(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 24
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzajv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzajv;->zzc()V

    .line 25
    return-object p1
.end method

.method public final zzd(Ljava/lang/Object;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "**>;"
        }
    .end annotation

    .line 26
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzajv;

    return-object p1
.end method

.method public final zze(Ljava/lang/Object;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "**>;"
        }
    .end annotation

    .line 27
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzajv;

    return-object p1
.end method

.method public final zzf(Ljava/lang/Object;)Z
    .locals 0

    .line 29
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzajv;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzajv;->zzd()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
