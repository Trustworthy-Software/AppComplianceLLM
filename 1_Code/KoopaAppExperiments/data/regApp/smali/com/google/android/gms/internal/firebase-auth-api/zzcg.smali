.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzcg;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final zza:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzck;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzcl<",
            "TP;>;>;>;"
        }
    .end annotation
.end field

.field private final zzb:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzcl<",
            "TP;>;>;"
        }
    .end annotation
.end field

.field private zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzcl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-auth-api/zzcl<",
            "TP;>;"
        }
    .end annotation
.end field

.field private final zzd:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TP;>;"
        }
    .end annotation
.end field

.field private final zze:Lcom/google/android/gms/internal/firebase-auth-api/zzrn;

.field private final zzf:Z


# direct methods
.method private constructor <init>(Ljava/util/concurrent/ConcurrentMap;Ljava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/zzcl;Lcom/google/android/gms/internal/firebase-auth-api/zzrn;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentMap<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzck;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzcl<",
            "TP;>;>;>;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzcl<",
            "TP;>;>;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzcl<",
            "TP;>;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzrn;",
            "Ljava/lang/Class<",
            "TP;>;)V"
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzcg;->zza:Ljava/util/concurrent/ConcurrentMap;

    .line 10
    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzcg;->zzb:Ljava/util/List;

    .line 11
    iput-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzcg;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzcl;

    .line 12
    iput-object p5, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzcg;->zzd:Ljava/lang/Class;

    .line 13
    iput-object p4, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzcg;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzrn;

    .line 14
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzcg;->zzf:Z

    .line 15
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/concurrent/ConcurrentMap;Ljava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/zzcl;Lcom/google/android/gms/internal/firebase-auth-api/zzrn;Ljava/lang/Class;Lcom/google/android/gms/internal/firebase-auth-api/zzcm;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/google/android/gms/internal/firebase-auth-api/zzcg;-><init>(Ljava/util/concurrent/ConcurrentMap;Ljava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/zzcl;Lcom/google/android/gms/internal/firebase-auth-api/zzrn;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/firebase-auth-api/zzcl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzcl<",
            "TP;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzcg;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzcl;

    return-object v0
.end method

.method public final zza([B)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzcl<",
            "TP;>;>;"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzcg;->zza:Ljava/util/concurrent/ConcurrentMap;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzck;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzck;-><init>([BLcom/google/android/gms/internal/firebase-auth-api/zzcn;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 6
    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzrn;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzcg;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzrn;

    return-object v0
.end method

.method public final zzc()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TP;>;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzcg;->zzd:Ljava/lang/Class;

    return-object v0
.end method

.method public final zzd()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzcl<",
            "TP;>;>;>;"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzcg;->zza:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final zze()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzcl<",
            "TP;>;>;"
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzbn;->zza:[B

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzcg;->zza([B)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final zzf()Z
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzcg;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzrn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzrn;->zza()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
