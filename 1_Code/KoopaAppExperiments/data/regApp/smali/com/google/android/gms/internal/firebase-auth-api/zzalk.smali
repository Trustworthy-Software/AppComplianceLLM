.class Lcom/google/android/gms/internal/firebase-auth-api/zzalk;
.super Ljava/util/AbstractSet;
.source "com.google.firebase:firebase-auth@@22.2.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/firebase-auth-api/zzaky;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzaky;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalk;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzaky;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzaky;Lcom/google/android/gms/internal/firebase-auth-api/zzalj;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzalk;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzaky;)V

    return-void
.end method


# virtual methods
.method public synthetic add(Ljava/lang/Object;)Z
    .locals 2

    .line 6
    check-cast p1, Ljava/util/Map$Entry;

    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzalk;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalk;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzaky;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Comparable;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zza(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    const/4 p1, 0x1

    return p1

    .line 10
    :cond_0
    nop

    .line 11
    const/4 p1, 0x0

    return p1
.end method

.method public clear()V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalk;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzaky;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->clear()V

    .line 5
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2

    .line 12
    check-cast p1, Ljava/util/Map$Entry;

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalk;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzaky;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 14
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 15
    if-eq v0, p1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzali;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalk;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzaky;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzali;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzaky;Lcom/google/android/gms/internal/firebase-auth-api/zzalh;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    .line 16
    check-cast p1, Ljava/util/Map$Entry;

    .line 17
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzalk;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalk;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzaky;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    const/4 p1, 0x1

    return p1

    .line 20
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalk;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzaky;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->size()I

    move-result v0

    return v0
.end method
