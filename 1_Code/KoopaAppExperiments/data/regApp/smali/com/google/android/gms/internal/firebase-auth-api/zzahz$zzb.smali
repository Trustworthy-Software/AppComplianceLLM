.class abstract Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzb;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzahz;
.source "com.google.firebase:firebase-auth@@22.2.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/firebase-auth-api/zzahz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "zzb"
.end annotation


# instance fields
.field final zzb:[B

.field final zzc:I

.field zzd:I

.field zze:I


# direct methods
.method constructor <init>(I)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzaic;)V

    .line 3
    if-ltz p1, :cond_0

    .line 5
    const/16 v0, 0x14

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzb;->zzb:[B

    .line 6
    array-length p1, p1

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzb;->zzc:I

    .line 7
    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "bufferSize must be >= 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final zza()I
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "spaceLeft() can only be called on CodedOutputStreams that are writing to a flat array or ByteBuffer."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final zzb(B)V
    .locals 3

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzb;->zzb:[B

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzb;->zzd:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzb;->zzd:I

    aput-byte p1, v0, v1

    .line 9
    iget p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzb;->zze:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzb;->zze:I

    .line 10
    return-void
.end method

.method final zzi(J)V
    .locals 8

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzb;->zzb:[B

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzb;->zzd:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzb;->zzd:I

    const-wide/16 v3, 0xff

    and-long v5, p1, v3

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v0, v1

    .line 18
    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzb;->zzd:I

    const/16 v5, 0x8

    shr-long v6, p1, v5

    and-long/2addr v6, v3

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v0, v2

    .line 19
    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzb;->zzd:I

    const/16 v6, 0x10

    shr-long v6, p1, v6

    and-long/2addr v6, v3

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v0, v1

    .line 20
    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzb;->zzd:I

    const/16 v6, 0x18

    shr-long v6, p1, v6

    and-long/2addr v3, v6

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 21
    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzb;->zzd:I

    const/16 v3, 0x20

    shr-long v3, p1, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 22
    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzb;->zzd:I

    const/16 v3, 0x28

    shr-long v3, p1, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 23
    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzb;->zzd:I

    const/16 v3, 0x30

    shr-long v3, p1, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 24
    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzb;->zzd:I

    const/16 v1, 0x38

    shr-long/2addr p1, v1

    long-to-int p1, p1

    int-to-byte p1, p1

    aput-byte p1, v0, v2

    .line 25
    iget p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzb;->zze:I

    add-int/2addr p1, v5

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzb;->zze:I

    .line 26
    return-void
.end method

.method final zzj(J)V
    .locals 11

    .line 48
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzd()Z

    move-result v0

    const/4 v1, 0x7

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x80

    if-eqz v0, :cond_1

    .line 49
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzb;->zzd:I

    int-to-long v6, v0

    .line 50
    :goto_0
    and-long v8, p1, v4

    cmp-long v0, v8, v2

    if-nez v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzb;->zzb:[B

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzb;->zzd:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzb;->zzd:I

    int-to-long v1, v1

    long-to-int p1, p1

    int-to-byte p1, p1

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaly;->zza([BJB)V

    .line 52
    nop

    .line 55
    iget p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzb;->zzd:I

    int-to-long p1, p1

    sub-long/2addr p1, v6

    long-to-int p1, p1

    .line 56
    iget p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzb;->zze:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzb;->zze:I

    .line 57
    return-void

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzb;->zzb:[B

    iget v8, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzb;->zzd:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzb;->zzd:I

    int-to-long v8, v8

    long-to-int v10, p1

    and-int/lit8 v10, v10, 0x7f

    or-int/lit16 v10, v10, 0x80

    int-to-byte v10, v10

    invoke-static {v0, v8, v9, v10}, Lcom/google/android/gms/internal/firebase-auth-api/zzaly;->zza([BJB)V

    .line 54
    ushr-long/2addr p1, v1

    goto :goto_0

    .line 58
    :cond_1
    :goto_1
    and-long v6, p1, v4

    cmp-long v0, v6, v2

    if-nez v0, :cond_2

    .line 59
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzb;->zzb:[B

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzb;->zzd:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzb;->zzd:I

    long-to-int p1, p1

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    .line 60
    iget p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzb;->zze:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzb;->zze:I

    .line 61
    return-void

    .line 62
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzb;->zzb:[B

    iget v6, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzb;->zzd:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzb;->zzd:I

    long-to-int v7, p1

    and-int/lit8 v7, v7, 0x7f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v0, v6

    .line 63
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzb;->zze:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzb;->zze:I

    .line 64
    ushr-long/2addr p1, v1

    goto :goto_1
.end method

.method final zzl(II)V
    .locals 0

    .line 27
    nop

    .line 28
    shl-int/lit8 p1, p1, 0x3

    or-int/2addr p1, p2

    .line 29
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzb;->zzn(I)V

    .line 30
    return-void
.end method

.method final zzm(I)V
    .locals 4

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzb;->zzb:[B

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzb;->zzd:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzb;->zzd:I

    int-to-byte v3, p1

    aput-byte v3, v0, v1

    .line 12
    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzb;->zzd:I

    shr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 13
    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzb;->zzd:I

    shr-int/lit8 v3, p1, 0x10

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 14
    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzb;->zzd:I

    ushr-int/lit8 p1, p1, 0x18

    int-to-byte p1, p1

    aput-byte p1, v0, v2

    .line 15
    iget p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzb;->zze:I

    add-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzb;->zze:I

    .line 16
    return-void
.end method

.method final zzn(I)V
    .locals 6

    .line 31
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzd()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 32
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzb;->zzd:I

    int-to-long v0, v0

    .line 33
    :goto_0
    and-int/lit8 v2, p1, -0x80

    if-nez v2, :cond_0

    .line 34
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzb;->zzb:[B

    iget v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzb;->zzd:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzb;->zzd:I

    int-to-long v3, v3

    int-to-byte p1, p1

    invoke-static {v2, v3, v4, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaly;->zza([BJB)V

    .line 35
    nop

    .line 38
    iget p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzb;->zzd:I

    int-to-long v2, p1

    sub-long/2addr v2, v0

    long-to-int p1, v2

    .line 39
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzb;->zze:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzb;->zze:I

    .line 40
    return-void

    .line 36
    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzb;->zzb:[B

    iget v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzb;->zzd:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzb;->zzd:I

    int-to-long v3, v3

    and-int/lit8 v5, p1, 0x7f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    invoke-static {v2, v3, v4, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzaly;->zza([BJB)V

    .line 37
    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    .line 41
    :cond_1
    :goto_1
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_2

    .line 42
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzb;->zzb:[B

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzb;->zzd:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzb;->zzd:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    .line 43
    iget p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzb;->zze:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzb;->zze:I

    .line 44
    return-void

    .line 45
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzb;->zzb:[B

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzb;->zzd:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzb;->zzd:I

    and-int/lit8 v2, p1, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 46
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzb;->zze:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzb;->zze:I

    .line 47
    ushr-int/lit8 p1, p1, 0x7

    goto :goto_1
.end method
