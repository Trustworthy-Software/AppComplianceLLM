.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzalx;
.super Ljava/util/AbstractList;
.source "com.google.firebase:firebase-auth@@22.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzajh;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Ljava/lang/String;",
        ">;",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzajh;",
        "Ljava/util/RandomAccess;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzajh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzajh;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalx;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzajh;

    .line 12
    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/internal/firebase-auth-api/zzalx;)Lcom/google/android/gms/internal/firebase-auth-api/zzajh;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalx;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzajh;

    return-object p0
.end method


# virtual methods
.method public final a_()Lcom/google/android/gms/internal/firebase-auth-api/zzajh;
    .locals 0

    .line 2
    return-object p0
.end method

.method public final synthetic get(I)Ljava/lang/Object;
    .locals 1

    .line 3
    nop

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalx;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzajh;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzajh;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 5
    return-object p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzalz;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzalz;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzalx;)V

    return-object v0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 9
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzalw;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzalw;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzalx;I)V

    return-object v0
.end method

.method public final size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalx;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzajh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzajh;->size()I

    move-result v0

    return v0
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzahd;)V
    .locals 0

    .line 13
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final zzb(I)Ljava/lang/Object;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalx;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzajh;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzajh;->zzb(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final zzb()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalx;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzajh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzajh;->zzb()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
