.class final Lcom/google/android/gms/internal/firebase-auth-api/zzala;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private zza:I

.field private zzb:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field private final synthetic zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzaky;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzaky;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzala;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzaky;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzaky;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzala;->zza:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzaky;Lcom/google/android/gms/internal/firebase-auth-api/zzakz;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzala;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzaky;)V

    return-void
.end method

.method private final zza()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzala;->zzb:Ljava/util/Iterator;

    if-nez v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzala;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzaky;

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzc(Lcom/google/android/gms/internal/firebase-auth-api/zzaky;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzala;->zzb:Ljava/util/Iterator;

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzala;->zzb:Ljava/util/Iterator;

    return-object v0
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    .line 12
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzala;->zza:I

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzala;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzaky;

    invoke-static {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzaky;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzala;->zza()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 2

    .line 1
    nop

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzala;->zza()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzala;->zza()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzala;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzaky;

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzaky;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzala;->zza:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzala;->zza:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 5
    return-object v0
.end method

.method public final remove()V
    .locals 1

    .line 11
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
