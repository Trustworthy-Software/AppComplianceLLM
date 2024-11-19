.class final Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zza;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzahz;
.source "com.google.firebase:firebase-auth@@22.2.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/firebase-auth-api/zzahz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zza"
.end annotation


# instance fields
.field private final zzb:[B

.field private final zzc:I

.field private final zzd:I

.field private zze:I


# direct methods
.method constructor <init>([BII)V
    .locals 1

    .line 2
    const/4 p2, 0x0

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzaic;)V

    .line 3
    if-eqz p1, :cond_1

    .line 5
    or-int/lit8 p2, p3, 0x0

    array-length v0, p1

    sub-int/2addr v0, p3

    or-int/2addr p2, v0

    const/4 v0, 0x0

    if-ltz p2, :cond_0

    .line 9
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zza;->zzb:[B

    .line 10
    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zza;->zzc:I

    .line 11
    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zza;->zze:I

    .line 12
    iput p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zza;->zzd:I

    .line 13
    return-void

    .line 6
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    array-length p1, p1

    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p1, v0, p3}, [Ljava/lang/Object;

    move-result-object p1

    .line 8
    const-string p3, "Array range is invalid. Buffer.length=%d, offset=%d, length=%d"

    invoke-static {p3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "buffer"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final zzc([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zza;->zzb:[B

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zza;->zze:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 21
    iget p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zza;->zze:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zza;->zze:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return-void

    .line 23
    :catch_0
    move-exception p1

    .line 24
    new-instance p2, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzd;

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zza;->zze:I

    .line 25
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zza;->zzd:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {v0, v1, p3}, [Ljava/lang/Object;

    move-result-object p3

    const-string v0, "Pos: %d, limit: %d, len: %d"

    invoke-static {v0, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzd;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public final zza()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zza;->zzd:I

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zza;->zze:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final zza(B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zza;->zzb:[B

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zza;->zze:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zza;->zze:I

    aput-byte p1, v0, v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    return-void

    .line 17
    :catch_0
    move-exception p1

    .line 18
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzd;

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zza;->zze:I

    .line 19
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zza;->zzd:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Pos: %d, limit: %d, len: %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzd;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final zza([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zza;->zzc([BII)V

    .line 72
    return-void
.end method

.method public final zzb(ILcom/google/android/gms/internal/firebase-auth-api/zzakb;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzj(II)V

    .line 84
    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzk(II)V

    .line 85
    nop

    .line 86
    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzj(II)V

    .line 87
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzc(Lcom/google/android/gms/internal/firebase-auth-api/zzakb;)V

    .line 88
    const/4 p1, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzj(II)V

    .line 89
    return-void
.end method

.method public final zzb(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzj(II)V

    .line 96
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzb(Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public final zzb(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzj(II)V

    .line 27
    int-to-byte p1, p2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zza(B)V

    .line 28
    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzahd;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahd;->zzb()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzl(I)V

    .line 36
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahd;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzahe;)V

    .line 37
    return-void
.end method

.method final zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzakb;Lcom/google/android/gms/internal/firebase-auth-api/zzakt;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzagu;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzagu;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzakt;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzl(I)V

    .line 81
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zza;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzaib;

    invoke-interface {p2, p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakt;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/firebase-auth-api/zzams;)V

    .line 82
    return-void
.end method

.method public final zzb(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zza;->zze:I

    .line 99
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    .line 100
    invoke-static {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zza;->zzh(I)I

    move-result v1

    .line 101
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zza;->zzh(I)I

    move-result v2

    .line 102
    if-ne v2, v1, :cond_0

    .line 103
    add-int v1, v0, v2

    iput v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zza;->zze:I

    .line 104
    iget-object v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zza;->zzb:[B

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zza()I

    move-result v4

    invoke-static {p1, v3, v1, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzamc;->zza(Ljava/lang/CharSequence;[BII)I

    move-result v1

    .line 105
    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zza;->zze:I

    .line 106
    sub-int v3, v1, v0

    sub-int/2addr v3, v2

    .line 107
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzl(I)V

    .line 108
    iput v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zza;->zze:I

    .line 109
    return-void

    .line 110
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzamc;->zza(Ljava/lang/CharSequence;)I

    move-result v1

    .line 111
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzl(I)V

    .line 112
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zza;->zzb:[B

    iget v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zza;->zze:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zza()I

    move-result v3

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzamc;->zza(Ljava/lang/CharSequence;[BII)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zza;->zze:I
    :try_end_0
    .catch Lcom/google/android/gms/internal/firebase-auth-api/zzamg; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    return-void

    .line 118
    :catch_0
    move-exception p1

    .line 119
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzd;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzd;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 114
    :catch_1
    move-exception v1

    .line 115
    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zza;->zze:I

    .line 116
    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzamg;)V

    .line 117
    return-void
.end method

.method public final zzb([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzl(I)V

    .line 30
    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zza;->zzc([BII)V

    .line 31
    return-void
.end method

.method public final zzc()V
    .locals 0

    .line 14
    return-void
.end method

.method public final zzc(ILcom/google/android/gms/internal/firebase-auth-api/zzahd;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzj(II)V

    .line 33
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzahd;)V

    .line 34
    return-void
.end method

.method final zzc(ILcom/google/android/gms/internal/firebase-auth-api/zzakb;Lcom/google/android/gms/internal/firebase-auth-api/zzakt;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzj(II)V

    .line 74
    move-object p1, p2

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzagu;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzagu;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzakt;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzl(I)V

    .line 75
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zza;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzaib;

    invoke-interface {p3, p2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakt;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/firebase-auth-api/zzams;)V

    .line 76
    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/firebase-auth-api/zzakb;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    invoke-interface {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakb;->zzk()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzl(I)V

    .line 78
    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakb;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzahz;)V

    .line 79
    return-void
.end method

.method public final zzd(ILcom/google/android/gms/internal/firebase-auth-api/zzahd;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzj(II)V

    .line 91
    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzk(II)V

    .line 92
    invoke-virtual {p0, v1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzc(ILcom/google/android/gms/internal/firebase-auth-api/zzahd;)V

    .line 93
    const/4 p1, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzj(II)V

    .line 94
    return-void
.end method

.method public final zzf(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzj(II)V

    .line 50
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzf(J)V

    .line 51
    return-void
.end method

.method public final zzf(J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zza;->zzb:[B

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zza;->zze:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zza;->zze:I

    long-to-int v3, p1

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 53
    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zza;->zze:I

    const/16 v3, 0x8

    shr-long v3, p1, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 54
    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zza;->zze:I

    const/16 v3, 0x10

    shr-long v3, p1, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 55
    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zza;->zze:I

    const/16 v3, 0x18

    shr-long v3, p1, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 56
    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zza;->zze:I

    const/16 v3, 0x20

    shr-long v3, p1, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 57
    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zza;->zze:I

    const/16 v3, 0x28

    shr-long v3, p1, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 58
    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zza;->zze:I

    const/16 v3, 0x30

    shr-long v3, p1, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 59
    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zza;->zze:I

    const/16 v1, 0x38

    shr-long/2addr p1, v1

    long-to-int p1, p1

    int-to-byte p1, p1

    aput-byte p1, v0, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    return-void

    .line 61
    :catch_0
    move-exception p1

    .line 62
    new-instance p2, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzd;

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zza;->zze:I

    .line 63
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zza;->zzd:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Pos: %d, limit: %d, len: %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzd;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final zzg(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzj(II)V

    .line 39
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzi(I)V

    .line 40
    return-void
.end method

.method public final zzh(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzj(II)V

    .line 65
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzj(I)V

    .line 66
    return-void
.end method

.method public final zzh(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzj(II)V

    .line 136
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzh(J)V

    .line 137
    return-void
.end method

.method public final zzh(J)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzd()Z

    move-result v0

    const/4 v1, 0x7

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x80

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zza()I

    move-result v0

    const/16 v6, 0xa

    if-lt v0, v6, :cond_1

    .line 139
    :goto_0
    and-long v6, p1, v4

    cmp-long v0, v6, v2

    if-nez v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zza;->zzb:[B

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zza;->zze:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zza;->zze:I

    int-to-long v1, v1

    long-to-int p1, p1

    int-to-byte p1, p1

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaly;->zza([BJB)V

    .line 141
    return-void

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zza;->zzb:[B

    iget v6, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zza;->zze:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zza;->zze:I

    int-to-long v6, v6

    long-to-int v8, p1

    and-int/lit8 v8, v8, 0x7f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    invoke-static {v0, v6, v7, v8}, Lcom/google/android/gms/internal/firebase-auth-api/zzaly;->zza([BJB)V

    .line 143
    ushr-long/2addr p1, v1

    goto :goto_0

    .line 144
    :cond_1
    :goto_1
    and-long v6, p1, v4

    cmp-long v0, v6, v2

    if-nez v0, :cond_2

    .line 145
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zza;->zzb:[B

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zza;->zze:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zza;->zze:I

    long-to-int p1, p1

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    .line 146
    return-void

    .line 147
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zza;->zzb:[B

    iget v6, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zza;->zze:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zza;->zze:I

    long-to-int v7, p1

    and-int/lit8 v7, v7, 0x7f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v0, v6
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    ushr-long/2addr p1, v1

    goto :goto_1

    .line 149
    :catch_0
    move-exception p1

    .line 150
    new-instance p2, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzd;

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zza;->zze:I

    .line 151
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zza;->zzd:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Pos: %d, limit: %d, len: %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzd;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final zzi(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zza;->zzb:[B

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zza;->zze:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zza;->zze:I

    int-to-byte v3, p1

    aput-byte v3, v0, v1

    .line 42
    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zza;->zze:I

    shr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 43
    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zza;->zze:I

    shr-int/lit8 v3, p1, 0x10

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 44
    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zza;->zze:I

    ushr-int/lit8 p1, p1, 0x18

    int-to-byte p1, p1

    aput-byte p1, v0, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    return-void

    .line 46
    :catch_0
    move-exception p1

    .line 47
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzd;

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zza;->zze:I

    .line 48
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zza;->zzd:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Pos: %d, limit: %d, len: %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzd;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final zzj(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    if-ltz p1, :cond_0

    .line 68
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzl(I)V

    return-void

    .line 69
    :cond_0
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzh(J)V

    .line 70
    return-void
.end method

.method public final zzj(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    nop

    .line 121
    shl-int/lit8 p1, p1, 0x3

    or-int/2addr p1, p2

    .line 122
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzl(I)V

    .line 123
    return-void
.end method

.method public final zzk(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzj(II)V

    .line 125
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzl(I)V

    .line 126
    return-void
.end method

.method public final zzl(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    nop

    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zza;->zzb:[B

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zza;->zze:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zza;->zze:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    .line 129
    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zza;->zzb:[B

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zza;->zze:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zza;->zze:I

    and-int/lit8 v2, p1, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    .line 132
    :catch_0
    move-exception p1

    .line 133
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzd;

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zza;->zze:I

    .line 134
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zza;->zzd:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Pos: %d, limit: %d, len: %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzd;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
