.class public final Lcom/google/android/gms/internal/measurement/zzkd;
.super Ljava/util/LinkedHashMap;
.source "com.google.android.gms:play-services-measurement-base@@21.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedHashMap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final zza:Lcom/google/android/gms/internal/measurement/zzkd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzkd<",
            "**>;"
        }
    .end annotation
.end field


# instance fields
.field private zzb:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzkd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzkd;-><init>()V

    .line 24
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzkd;->zza:Lcom/google/android/gms/internal/measurement/zzkd;

    .line 25
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/gms/internal/measurement/zzkd;->zzb:Z

    .line 26
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzkd;->zzb:Z

    .line 29
    return-void
.end method

.method private constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 31
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/zzkd;->zzb:Z

    .line 32
    return-void
.end method

.method private static zza(Ljava/lang/Object;)I
    .locals 1

    .line 1
    instance-of v0, p0, [B

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, [B

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zziz;->zza([B)I

    move-result p0

    return p0

    .line 3
    :cond_0
    instance-of v0, p0, Lcom/google/android/gms/internal/measurement/zzjc;

    if-nez v0, :cond_1

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0

    .line 4
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public static zza()Lcom/google/android/gms/internal/measurement/zzkd;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/android/gms/internal/measurement/zzkd<",
            "TK;TV;>;"
        }
    .end annotation

    .line 14
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzkd;->zza:Lcom/google/android/gms/internal/measurement/zzkd;

    return-object v0
.end method

.method private final zze()V
    .locals 1

    .line 36
    nop

    .line 37
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzkd;->zzb:Z

    .line 38
    if-eqz v0, :cond_0

    .line 40
    return-void

    .line 39
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final clear()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzkd;->zze()V

    .line 34
    invoke-super {p0}, Ljava/util/LinkedHashMap;->clear()V

    .line 35
    return-void
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 22
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzkd;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-super {p0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .line 55
    instance-of v0, p1, Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    check-cast p1, Ljava/util/Map;

    .line 56
    const/4 v0, 0x1

    if-eq p0, p1, :cond_4

    .line 57
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 58
    move p1, v1

    goto :goto_2

    .line 59
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 60
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 61
    move p1, v1

    goto :goto_2

    .line 62
    :cond_1
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 63
    instance-of v5, v4, [B

    if-eqz v5, :cond_2

    instance-of v5, v3, [B

    if-eqz v5, :cond_2

    .line 64
    check-cast v4, [B

    check-cast v3, [B

    invoke-static {v4, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    goto :goto_1

    .line 65
    :cond_2
    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 66
    :goto_1
    if-nez v3, :cond_3

    .line 67
    move p1, v1

    goto :goto_2

    .line 68
    :cond_3
    goto :goto_0

    .line 69
    :cond_4
    move p1, v0

    .line 70
    :goto_2
    if-eqz p1, :cond_5

    return v0

    :cond_5
    return v1
.end method

.method public final hashCode()I
    .locals 4

    .line 6
    nop

    .line 7
    nop

    .line 8
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 9
    nop

    .line 10
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzkd;->zza(Ljava/lang/Object;)I

    move-result v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzkd;->zza(Ljava/lang/Object;)I

    move-result v2

    xor-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    nop

    .line 13
    return v1
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzkd;->zze()V

    .line 17
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zziz;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zziz;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    invoke-super {p0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final putAll(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzkd;->zze()V

    .line 48
    nop

    .line 49
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 50
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zziz;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zziz;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    .line 54
    return-void
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzkd;->zze()V

    .line 21
    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/zzkd;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/zzkd<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzkd;->zze()V

    .line 44
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzkd;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzkd;->putAll(Ljava/util/Map;)V

    .line 46
    :cond_0
    return-void
.end method

.method public final zzb()Lcom/google/android/gms/internal/measurement/zzkd;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/measurement/zzkd<",
            "TK;TV;>;"
        }
    .end annotation

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzkd;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzkd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzkd;-><init>()V

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzkd;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzkd;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public final zzc()V
    .locals 1

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzkd;->zzb:Z

    .line 42
    return-void
.end method

.method public final zzd()Z
    .locals 1

    .line 71
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzkd;->zzb:Z

    return v0
.end method
