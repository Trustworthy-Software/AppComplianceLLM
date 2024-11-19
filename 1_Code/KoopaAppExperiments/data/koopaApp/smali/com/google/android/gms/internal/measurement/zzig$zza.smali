.class final Lcom/google/android/gms/internal/measurement/zzig$zza;
.super Lcom/google/android/gms/internal/measurement/zzig;
.source "com.google.android.gms:play-services-measurement-base@@21.5.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzig;
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

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/measurement/zzig;-><init>(Lcom/google/android/gms/internal/measurement/zzih;)V

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
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zzb:[B

    .line 10
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zzc:I

    .line 11
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zze:I

    .line 12
    iput p3, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zzd:I

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

    .line 19
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zzb:[B

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zze:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 20
    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zze:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zze:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    return-void

    .line 22
    :catch_0
    move-exception p1

    .line 23
    new-instance p2, Lcom/google/android/gms/internal/measurement/zzig$zzb;

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zze:I

    .line 24
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zzd:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {v0, v1, p3}, [Ljava/lang/Object;

    move-result-object p3

    const-string v0, "Pos: %d, limit: %d, len: %d"

    invoke-static {v0, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/google/android/gms/internal/measurement/zzig$zzb;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public final zza()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zzd:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zze:I

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

    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zzb:[B

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zze:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zze:I

    aput-byte p1, v0, v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return-void

    .line 16
    :catch_0
    move-exception p1

    .line 17
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzig$zzb;

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zze:I

    .line 18
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zzd:I

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

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/measurement/zzig$zzb;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final zza(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zzb:[B

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zze:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zze:I

    int-to-byte v3, p1

    aput-byte v3, v0, v1

    .line 41
    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zze:I

    shr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 42
    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zze:I

    shr-int/lit8 v3, p1, 0x10

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 43
    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zze:I

    ushr-int/lit8 p1, p1, 0x18

    int-to-byte p1, p1

    aput-byte p1, v0, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    return-void

    .line 45
    :catch_0
    move-exception p1

    .line 46
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzig$zzb;

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zze:I

    .line 47
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zzd:I

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

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/measurement/zzig$zzb;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final zza(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzig;->zzc(II)V

    .line 38
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzig;->zza(I)V

    .line 39
    return-void
.end method

.method public final zza(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzig;->zzc(II)V

    .line 49
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/measurement/zzig;->zza(J)V

    .line 50
    return-void
.end method

.method public final zza(ILcom/google/android/gms/internal/measurement/zzhm;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzig;->zzc(II)V

    .line 32
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzig;->zza(Lcom/google/android/gms/internal/measurement/zzhm;)V

    .line 33
    return-void
.end method

.method public final zza(ILcom/google/android/gms/internal/measurement/zzkj;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/zzig;->zzc(II)V

    .line 80
    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1}, Lcom/google/android/gms/internal/measurement/zzig;->zzd(II)V

    .line 81
    nop

    .line 82
    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzig;->zzc(II)V

    .line 83
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzig;->zza(Lcom/google/android/gms/internal/measurement/zzkj;)V

    .line 84
    const/4 p1, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/zzig;->zzc(II)V

    .line 85
    return-void
.end method

.method final zza(ILcom/google/android/gms/internal/measurement/zzkj;Lcom/google/android/gms/internal/measurement/zzlb;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzig;->zzc(II)V

    .line 73
    move-object p1, p2

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/measurement/zzhd;->zza(Lcom/google/android/gms/internal/measurement/zzlb;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzig;->zzc(I)V

    .line 74
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zza:Lcom/google/android/gms/internal/measurement/zzij;

    invoke-interface {p3, p2, p1}, Lcom/google/android/gms/internal/measurement/zzlb;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzmw;)V

    .line 75
    return-void
.end method

.method public final zza(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzig;->zzc(II)V

    .line 92
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzig;->zza(Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public final zza(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzig;->zzc(II)V

    .line 26
    int-to-byte p1, p2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzig;->zza(B)V

    .line 27
    return-void
.end method

.method public final zza(J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zzb:[B

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zze:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zze:I

    long-to-int v3, p1

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 52
    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zze:I

    const/16 v3, 0x8

    shr-long v3, p1, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 53
    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zze:I

    const/16 v3, 0x10

    shr-long v3, p1, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 54
    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zze:I

    const/16 v3, 0x18

    shr-long v3, p1, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 55
    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zze:I

    const/16 v3, 0x20

    shr-long v3, p1, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 56
    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zze:I

    const/16 v3, 0x28

    shr-long v3, p1, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 57
    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zze:I

    const/16 v3, 0x30

    shr-long v3, p1, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 58
    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zze:I

    const/16 v1, 0x38

    shr-long/2addr p1, v1

    long-to-int p1, p1

    int-to-byte p1, p1

    aput-byte p1, v0, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    return-void

    .line 60
    :catch_0
    move-exception p1

    .line 61
    new-instance p2, Lcom/google/android/gms/internal/measurement/zzig$zzb;

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zze:I

    .line 62
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zzd:I

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

    invoke-direct {p2, v0, p1}, Lcom/google/android/gms/internal/measurement/zzig$zzb;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/zzhm;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhm;->zzb()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzig;->zzc(I)V

    .line 35
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/measurement/zzhm;->zza(Lcom/google/android/gms/internal/measurement/zzhn;)V

    .line 36
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/zzkj;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/zzkj;->zzbw()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzig;->zzc(I)V

    .line 77
    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/measurement/zzkj;->zza(Lcom/google/android/gms/internal/measurement/zzig;)V

    .line 78
    return-void
.end method

.method public final zza(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zze:I

    .line 95
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    .line 96
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzig$zza;->zzj(I)I

    move-result v1

    .line 97
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzig$zza;->zzj(I)I

    move-result v2

    .line 98
    if-ne v2, v1, :cond_0

    .line 99
    add-int v1, v0, v2

    iput v1, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zze:I

    .line 100
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zzb:[B

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzig;->zza()I

    move-result v4

    invoke-static {p1, v3, v1, v4}, Lcom/google/android/gms/internal/measurement/zzmh;->zza(Ljava/lang/CharSequence;[BII)I

    move-result v1

    .line 101
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zze:I

    .line 102
    sub-int v3, v1, v0

    sub-int/2addr v3, v2

    .line 103
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/measurement/zzig;->zzc(I)V

    .line 104
    iput v1, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zze:I

    .line 105
    return-void

    .line 106
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzmh;->zza(Ljava/lang/CharSequence;)I

    move-result v1

    .line 107
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/zzig;->zzc(I)V

    .line 108
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zzb:[B

    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zze:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzig;->zza()I

    move-result v3

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzmh;->zza(Ljava/lang/CharSequence;[BII)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zze:I
    :try_end_0
    .catch Lcom/google/android/gms/internal/measurement/zzmk; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    return-void

    .line 114
    :catch_0
    move-exception p1

    .line 115
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzig$zzb;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/measurement/zzig$zzb;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 110
    :catch_1
    move-exception v1

    .line 111
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zze:I

    .line 112
    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/internal/measurement/zzig;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzmk;)V

    .line 113
    return-void
.end method

.method public final zza([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzig$zza;->zzc([BII)V

    .line 71
    return-void
.end method

.method public final zzb(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    if-ltz p1, :cond_0

    .line 67
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzig;->zzc(I)V

    return-void

    .line 68
    :cond_0
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/zzig;->zzb(J)V

    .line 69
    return-void
.end method

.method public final zzb(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzig;->zzc(II)V

    .line 64
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzig;->zzb(I)V

    .line 65
    return-void
.end method

.method public final zzb(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzig;->zzc(II)V

    .line 132
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/measurement/zzig;->zzb(J)V

    .line 133
    return-void
.end method

.method public final zzb(ILcom/google/android/gms/internal/measurement/zzhm;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/zzig;->zzc(II)V

    .line 87
    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1}, Lcom/google/android/gms/internal/measurement/zzig;->zzd(II)V

    .line 88
    invoke-virtual {p0, v1, p2}, Lcom/google/android/gms/internal/measurement/zzig;->zza(ILcom/google/android/gms/internal/measurement/zzhm;)V

    .line 89
    const/4 p1, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/zzig;->zzc(II)V

    .line 90
    return-void
.end method

.method public final zzb(J)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzig;->zzc()Z

    move-result v0

    const/4 v1, 0x7

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x80

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzig;->zza()I

    move-result v0

    const/16 v6, 0xa

    if-lt v0, v6, :cond_1

    .line 135
    :goto_0
    and-long v6, p1, v4

    cmp-long v0, v6, v2

    if-nez v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zzb:[B

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zze:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zze:I

    int-to-long v1, v1

    long-to-int p1, p1

    int-to-byte p1, p1

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/gms/internal/measurement/zzmg;->zza([BJB)V

    .line 137
    return-void

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zzb:[B

    iget v6, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zze:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zze:I

    int-to-long v6, v6

    long-to-int v8, p1

    and-int/lit8 v8, v8, 0x7f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    invoke-static {v0, v6, v7, v8}, Lcom/google/android/gms/internal/measurement/zzmg;->zza([BJB)V

    .line 139
    ushr-long/2addr p1, v1

    goto :goto_0

    .line 140
    :cond_1
    :goto_1
    and-long v6, p1, v4

    cmp-long v0, v6, v2

    if-nez v0, :cond_2

    .line 141
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zzb:[B

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zze:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zze:I

    long-to-int p1, p1

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    .line 142
    return-void

    .line 143
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zzb:[B

    iget v6, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zze:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zze:I

    long-to-int v7, p1

    and-int/lit8 v7, v7, 0x7f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v0, v6
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    ushr-long/2addr p1, v1

    goto :goto_1

    .line 145
    :catch_0
    move-exception p1

    .line 146
    new-instance p2, Lcom/google/android/gms/internal/measurement/zzig$zzb;

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zze:I

    .line 147
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zzd:I

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

    invoke-direct {p2, v0, p1}, Lcom/google/android/gms/internal/measurement/zzig$zzb;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final zzb([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/measurement/zzig;->zzc(I)V

    .line 29
    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzig$zza;->zzc([BII)V

    .line 30
    return-void
.end method

.method public final zzc(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    nop

    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zzb:[B

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zze:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zze:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    .line 125
    return-void

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zzb:[B

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zze:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zze:I

    and-int/lit8 v2, p1, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    .line 128
    :catch_0
    move-exception p1

    .line 129
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzig$zzb;

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zze:I

    .line 130
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zzd:I

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

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/measurement/zzig$zzb;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final zzc(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    nop

    .line 117
    shl-int/lit8 p1, p1, 0x3

    or-int/2addr p1, p2

    .line 118
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzig;->zzc(I)V

    .line 119
    return-void
.end method

.method public final zzd(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzig;->zzc(II)V

    .line 121
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzig;->zzc(I)V

    .line 122
    return-void
.end method
