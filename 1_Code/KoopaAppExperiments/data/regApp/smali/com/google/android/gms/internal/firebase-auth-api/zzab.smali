.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzab;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzj;

.field private final zzb:Z

.field private final zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzah;

.field private final zzd:I


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzah;)V
    .locals 3

    .line 23
    nop

    .line 24
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzn;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzj;

    .line 25
    const v1, 0x7fffffff

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzab;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzah;ZLcom/google/android/gms/internal/firebase-auth-api/zzj;I)V

    .line 26
    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzah;ZLcom/google/android/gms/internal/firebase-auth-api/zzj;I)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzab;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzah;

    .line 29
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzab;->zzb:Z

    .line 30
    iput-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzab;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzj;

    .line 31
    const p1, 0x7fffffff

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzab;->zzd:I

    .line 32
    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/internal/firebase-auth-api/zzab;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzab;->zzd:I

    return p0
.end method

.method public static zza(C)Lcom/google/android/gms/internal/firebase-auth-api/zzab;
    .locals 2

    .line 1
    nop

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzl;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzl;-><init>(C)V

    .line 3
    nop

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzy;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance p0, Lcom/google/android/gms/internal/firebase-auth-api/zzab;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzaa;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaa;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzj;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzab;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzah;)V

    .line 6
    return-object p0
.end method

.method public static zza(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzab;
    .locals 2

    .line 7
    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzx;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzs;

    move-result-object p0

    .line 8
    nop

    .line 9
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzs;->zza(Ljava/lang/CharSequence;)Lcom/google/android/gms/internal/firebase-auth-api/zzp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzp;->zzc()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 10
    nop

    .line 11
    if-eqz v0, :cond_0

    .line 13
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzab;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzac;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzac;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzs;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzab;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzah;)V

    .line 14
    return-object v0

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "The pattern may not match the empty string: %s"

    invoke-static {v1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzag;->zza(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static bridge synthetic zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzab;)Lcom/google/android/gms/internal/firebase-auth-api/zzj;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzab;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzj;

    return-object p0
.end method


# virtual methods
.method public final zza(Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 15
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzy;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    nop

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzab;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzah;

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzah;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzab;Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object p1

    .line 18
    nop

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 20
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 21
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 22
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
