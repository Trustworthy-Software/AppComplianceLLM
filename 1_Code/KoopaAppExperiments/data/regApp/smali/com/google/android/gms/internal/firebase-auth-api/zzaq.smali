.class final Lcom/google/android/gms/internal/firebase-auth-api/zzaq;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzap;
.source "com.google.firebase:firebase-auth@@22.2.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase-auth-api/zzap<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final transient zza:I

.field private final transient zzb:I

.field private final synthetic zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzap;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzap;II)V
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaq;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzap;

    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzap;-><init>()V

    .line 10
    iput p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaq;->zza:I

    .line 11
    iput p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaq;->zzb:I

    .line 12
    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 6
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaq;->zzb:I

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzy;->zza(II)I

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaq;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzap;

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaq;->zza:I

    add-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzap;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .locals 1

    .line 3
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaq;->zzb:I

    return v0
.end method

.method public final synthetic subList(II)Ljava/util/List;
    .locals 0

    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzap;->zza(II)Lcom/google/android/gms/internal/firebase-auth-api/zzap;

    move-result-object p1

    return-object p1
.end method

.method final zza()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaq;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzap;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzak;->zzb()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaq;->zza:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaq;->zzb:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final zza(II)Lcom/google/android/gms/internal/firebase-auth-api/zzap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzap<",
            "TE;>;"
        }
    .end annotation

    .line 4
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaq;->zzb:I

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzy;->zza(III)V

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaq;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzap;

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaq;->zza:I

    add-int/2addr p1, v1

    add-int/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzap;->subList(II)Ljava/util/List;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzap;

    return-object p1
.end method

.method final zzb()I
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaq;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzap;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzak;->zzb()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaq;->zza:I

    add-int/2addr v0, v1

    return v0
.end method

.method final zze()Z
    .locals 1

    .line 13
    const/4 v0, 0x1

    return v0
.end method

.method final zzf()[Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaq;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzap;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzak;->zzf()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
