.class final Lcom/google/android/gms/internal/firebase-auth-api/zzakr;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzajz;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

.field private final zzb:Ljava/lang/String;

.field private final zzc:[Ljava/lang/Object;

.field private final zzd:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzakb;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakr;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    .line 10
    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakr;->zzb:Ljava/lang/String;

    .line 11
    iput-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakr;->zzc:[Ljava/lang/Object;

    .line 12
    nop

    .line 13
    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    .line 14
    const p3, 0xd800

    if-ge p1, p3, :cond_0

    .line 15
    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakr;->zzd:I

    return-void

    .line 16
    :cond_0
    and-int/lit16 p1, p1, 0x1fff

    .line 17
    const/16 v0, 0xd

    const/4 v1, 0x1

    .line 18
    :goto_0
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-lt v1, p3, :cond_1

    .line 19
    and-int/lit16 v1, v1, 0x1fff

    shl-int/2addr v1, v0

    or-int/2addr p1, v1

    .line 20
    add-int/lit8 v0, v0, 0xd

    move v1, v2

    goto :goto_0

    .line 21
    :cond_1
    shl-int p2, v1, v0

    or-int/2addr p1, p2

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakr;->zzd:I

    .line 22
    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/firebase-auth-api/zzakb;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakr;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzakq;
    .locals 2

    .line 2
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakr;->zzd:I

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzakq;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakq;

    return-object v0

    .line 4
    :cond_0
    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 5
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzakq;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzakq;

    return-object v0

    .line 6
    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzakq;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzakq;

    return-object v0
.end method

.method public final zzc()Z
    .locals 2

    .line 23
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakr;->zzd:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final zzd()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakr;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method final zze()[Ljava/lang/Object;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakr;->zzc:[Ljava/lang/Object;

    return-object v0
.end method
