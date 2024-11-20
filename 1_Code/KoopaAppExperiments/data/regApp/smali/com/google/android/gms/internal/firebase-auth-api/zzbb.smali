.class final Lcom/google/android/gms/internal/firebase-auth-api/zzbb;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzau;
.source "com.google.firebase:firebase-auth@@22.2.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzau<",
        "TK;>;"
    }
.end annotation


# instance fields
.field private final transient zza:Lcom/google/android/gms/internal/firebase-auth-api/zzat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-auth-api/zzat<",
            "TK;*>;"
        }
    .end annotation
.end field

.field private final transient zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-auth-api/zzap<",
            "TK;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzat;Lcom/google/android/gms/internal/firebase-auth-api/zzap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzat<",
            "TK;*>;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzap<",
            "TK;>;)V"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzau;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbb;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzat;

    .line 8
    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbb;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzap;

    .line 9
    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbb;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzat;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzat;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzak;->zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzbc;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbb;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzat;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzat;->size()I

    move-result v0

    return v0
.end method

.method final zza([Ljava/lang/Object;I)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzak;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzap;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzak;->zza([Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public final zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzap<",
            "TK;>;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbb;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzap;

    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzbc;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzbc<",
            "TK;>;"
        }
    .end annotation

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzak;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzak;->iterator()Ljava/util/Iterator;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzbc;

    return-object v0
.end method

.method final zze()Z
    .locals 1

    .line 11
    const/4 v0, 0x1

    return v0
.end method
