.class abstract Lcom/google/android/gms/internal/firebase-auth-api/zzi;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private zza:I

.field private zzb:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    sget v0, Lcom/google/android/gms/internal/firebase-auth-api/zzh;->zzb:I

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzi;->zza:I

    .line 12
    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 4

    .line 14
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzi;->zza:I

    sget v1, Lcom/google/android/gms/internal/firebase-auth-api/zzh;->zzd:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    .line 15
    :goto_0
    if-eqz v0, :cond_2

    .line 17
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzi;->zza:I

    sub-int/2addr v0, v3

    packed-switch v0, :pswitch_data_0

    .line 20
    :pswitch_0
    nop

    .line 21
    sget v0, Lcom/google/android/gms/internal/firebase-auth-api/zzh;->zzd:I

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzi;->zza:I

    .line 22
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzi;->zza()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzi;->zzb:Ljava/lang/Object;

    .line 23
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzi;->zza:I

    sget v1, Lcom/google/android/gms/internal/firebase-auth-api/zzh;->zzc:I

    if-eq v0, v1, :cond_1

    .line 24
    sget v0, Lcom/google/android/gms/internal/firebase-auth-api/zzh;->zza:I

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzi;->zza:I

    .line 25
    return v3

    .line 18
    :pswitch_1
    return v2

    .line 19
    :pswitch_2
    return v3

    .line 26
    :cond_1
    nop

    .line 27
    return v2

    .line 16
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzi;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    sget v0, Lcom/google/android/gms/internal/firebase-auth-api/zzh;->zzb:I

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzi;->zza:I

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzi;->zzb:Ljava/lang/Object;

    .line 7
    nop

    .line 8
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzi;->zzb:Ljava/lang/Object;

    .line 9
    return-object v0

    .line 4
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .locals 1

    .line 13
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected abstract zza()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end method

.method protected final zzb()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1
    sget v0, Lcom/google/android/gms/internal/firebase-auth-api/zzh;->zzc:I

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzi;->zza:I

    .line 2
    const/4 v0, 0x0

    return-object v0
.end method
