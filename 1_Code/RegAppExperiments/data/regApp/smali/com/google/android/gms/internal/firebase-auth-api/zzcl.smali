.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzcl;
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
.field private final zza:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TP;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final zzb:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TP;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final zzc:[B

.field private final zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzuz;

.field private final zze:Lcom/google/android/gms/internal/firebase-auth-api/zzvs;

.field private final zzf:I

.field private final zzg:Ljava/lang/String;

.field private final zzh:Lcom/google/android/gms/internal/firebase-auth-api/zzbt;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;[BLcom/google/android/gms/internal/firebase-auth-api/zzuz;Lcom/google/android/gms/internal/firebase-auth-api/zzvs;ILjava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzbt;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;TP;[B",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzuz;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzvs;",
            "I",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzbt;",
            ")V"
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzcl;->zza:Ljava/lang/Object;

    .line 10
    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzcl;->zzb:Ljava/lang/Object;

    .line 11
    array-length p1, p3

    invoke-static {p3, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzcl;->zzc:[B

    .line 12
    iput-object p4, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzcl;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzuz;

    .line 13
    iput-object p5, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzcl;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzvs;

    .line 14
    iput p6, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzcl;->zzf:I

    .line 15
    iput-object p7, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzcl;->zzg:Ljava/lang/String;

    .line 16
    iput-object p8, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzcl;->zzh:Lcom/google/android/gms/internal/firebase-auth-api/zzbt;

    .line 17
    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzcl;->zzf:I

    return v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzbt;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzcl;->zzh:Lcom/google/android/gms/internal/firebase-auth-api/zzbt;

    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzuz;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzcl;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzuz;

    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzvs;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzcl;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzvs;

    return-object v0
.end method

.method public final zze()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TP;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzcl;->zza:Ljava/lang/Object;

    return-object v0
.end method

.method public final zzf()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TP;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzcl;->zzb:Ljava/lang/Object;

    return-object v0
.end method

.method public final zzg()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzcl;->zzg:Ljava/lang/String;

    return-object v0
.end method

.method public final zzh()[B
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzcl;->zzc:[B

    if-nez v0, :cond_0

    .line 19
    const/4 v0, 0x0

    return-object v0

    .line 20
    :cond_0
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method
