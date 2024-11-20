.class final Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzc;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzb;
.source "com.google.firebase:firebase-auth@@22.2.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/firebase-auth-api/zzahz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "zzc"
.end annotation


# instance fields
.field private final zzf:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(Ljava/io/OutputStream;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzb;-><init>(I)V

    .line 2
    if-eqz p1, :cond_0

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzc;->zzf:Ljava/io/OutputStream;

    .line 5
    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "out"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final zzc([BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzc;->zzc:I

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzc;->zzd:I

    sub-int/2addr v0, v1

    if-lt v0, p3, :cond_0

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzc;->zzb:[B

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzc;->zzd:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 21
    iget p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzc;->zzd:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzc;->zzd:I

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzc;->zzc:I

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzc;->zzd:I

    sub-int/2addr v0, v1

    .line 24
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzc;->zzb:[B

    iget v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzc;->zzd:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 25
    add-int/2addr p2, v0

    .line 26
    sub-int/2addr p3, v0

    .line 27
    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzc;->zzc:I

    iput v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzc;->zzd:I

    .line 28
    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzc;->zze:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzc;->zze:I

    .line 29
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzc;->zze()V

    .line 30
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzc;->zzc:I

    if-gt p3, v0, :cond_1

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzc;->zzb:[B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32
    iput p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzc;->zzd:I

    goto :goto_0

    .line 33
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzc;->zzf:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 34
    :goto_0
    iget p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzc;->zze:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzc;->zze:I

    .line 35
    return-void
.end method

.method private final zze()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzc;->zzf:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzc;->zzb:[B

    iget v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzc;->zzd:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 7
    iput v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzc;->zzd:I

    .line 8
    return-void
.end method

.method private final zzo(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzc;->zzc:I

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzc;->zzd:I

    sub-int/2addr v0, v1

    if-ge v0, p1, :cond_0

    .line 13
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzc;->zze()V

    .line 14
    :cond_0
    return-void
.end method


# virtual methods
.method public final zza(B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzc;->zzd:I

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzc;->zzc:I

    if-ne v0, v1, :cond_0

    .line 16
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzc;->zze()V

    .line 17
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzb;->zzb(B)V

    .line 18
    return-void
.end method

.method public final zza([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzc;->zzc([BII)V

    .line 75
    return-void
.end method

.method public final zzb(ILcom/google/android/gms/internal/firebase-auth-api/zzakb;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzj(II)V

    .line 86
    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzk(II)V

    .line 87
    nop

    .line 88
    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzj(II)V

    .line 89
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzc(Lcom/google/android/gms/internal/firebase-auth-api/zzakb;)V

    .line 90
    const/4 p1, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzj(II)V

    .line 91
    return-void
.end method

.method public final zzb(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzj(II)V

    .line 98
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzb(Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method public final zzb(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzc;->zzo(I)V

    .line 37
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzb;->zzl(II)V

    .line 38
    int-to-byte p1, p2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzb;->zzb(B)V

    .line 39
    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzahd;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahd;->zzb()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzl(I)V

    .line 47
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahd;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzahe;)V

    .line 48
    return-void
.end method

.method final zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzakb;Lcom/google/android/gms/internal/firebase-auth-api/zzakt;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzagu;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzagu;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzakt;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzl(I)V

    .line 83
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzaib;

    invoke-interface {p2, p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakt;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/firebase-auth-api/zzams;)V

    .line 84
    return-void
.end method

.method public final zzb(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    .line 101
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzc;->zzh(I)I

    move-result v1

    .line 102
    add-int v2, v1, v0

    iget v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzc;->zzc:I

    if-le v2, v3, :cond_0

    .line 103
    new-array v1, v0, [B

    .line 104
    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzamc;->zza(Ljava/lang/CharSequence;[BII)I

    move-result v0

    .line 105
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzl(I)V

    .line 106
    invoke-virtual {p0, v1, v2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahe;->zza([BII)V

    .line 107
    return-void

    .line 108
    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzc;->zzc:I

    iget v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzc;->zzd:I

    sub-int/2addr v0, v3

    if-le v2, v0, :cond_1

    .line 109
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzc;->zze()V

    .line 110
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzc;->zzh(I)I

    move-result v0

    .line 111
    iget v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzc;->zzd:I
    :try_end_0
    .catch Lcom/google/android/gms/internal/firebase-auth-api/zzamg; {:try_start_0 .. :try_end_0} :catch_2

    .line 112
    if-ne v0, v1, :cond_2

    .line 113
    add-int v1, v2, v0

    :try_start_1
    iput v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzc;->zzd:I

    .line 114
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzc;->zzb:[B

    iget v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzc;->zzd:I

    iget v4, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzc;->zzc:I

    iget v5, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzc;->zzd:I

    sub-int/2addr v4, v5

    invoke-static {p1, v1, v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzamc;->zza(Ljava/lang/CharSequence;[BII)I

    move-result v1

    .line 115
    iput v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzc;->zzd:I

    .line 116
    sub-int v3, v1, v2

    sub-int/2addr v3, v0

    .line 117
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzb;->zzn(I)V

    .line 118
    iput v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzc;->zzd:I

    .line 119
    goto :goto_0

    .line 120
    :cond_2
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzamc;->zza(Ljava/lang/CharSequence;)I

    move-result v3

    .line 121
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzb;->zzn(I)V

    .line 122
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzc;->zzb:[B

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzc;->zzd:I

    invoke-static {p1, v0, v1, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzamc;->zza(Ljava/lang/CharSequence;[BII)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzc;->zzd:I

    .line 123
    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzc;->zze:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzc;->zze:I
    :try_end_1
    .catch Lcom/google/android/gms/internal/firebase-auth-api/zzamg; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 124
    return-void

    .line 129
    :catch_0
    move-exception v0

    .line 130
    :try_start_2
    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzd;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzd;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 125
    :catch_1
    move-exception v0

    .line 126
    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzc;->zze:I

    iget v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzc;->zzd:I

    sub-int/2addr v3, v2

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzc;->zze:I

    .line 127
    iput v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzc;->zzd:I

    .line 128
    throw v0
    :try_end_2
    .catch Lcom/google/android/gms/internal/firebase-auth-api/zzamg; {:try_start_2 .. :try_end_2} :catch_2

    .line 131
    :catch_2
    move-exception v0

    .line 132
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzamg;)V

    .line 133
    return-void
.end method

.method public final zzb([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzl(I)V

    .line 41
    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzc;->zzc([BII)V

    .line 42
    return-void
.end method

.method public final zzc()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzc;->zzd:I

    if-lez v0, :cond_0

    .line 10
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzc;->zze()V

    .line 11
    :cond_0
    return-void
.end method

.method public final zzc(ILcom/google/android/gms/internal/firebase-auth-api/zzahd;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzj(II)V

    .line 44
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzahd;)V

    .line 45
    return-void
.end method

.method final zzc(ILcom/google/android/gms/internal/firebase-auth-api/zzakb;Lcom/google/android/gms/internal/firebase-auth-api/zzakt;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzj(II)V

    .line 77
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzakb;Lcom/google/android/gms/internal/firebase-auth-api/zzakt;)V

    .line 78
    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/firebase-auth-api/zzakb;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    invoke-interface {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakb;->zzk()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzl(I)V

    .line 80
    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakb;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzahz;)V

    .line 81
    return-void
.end method

.method public final zzd(ILcom/google/android/gms/internal/firebase-auth-api/zzahd;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzj(II)V

    .line 93
    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzk(II)V

    .line 94
    invoke-virtual {p0, v1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzc(ILcom/google/android/gms/internal/firebase-auth-api/zzahd;)V

    .line 95
    const/4 p1, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzj(II)V

    .line 96
    return-void
.end method

.method public final zzf(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    const/16 v0, 0x12

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzc;->zzo(I)V

    .line 57
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzb;->zzl(II)V

    .line 58
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzb;->zzi(J)V

    .line 59
    return-void
.end method

.method public final zzf(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzc;->zzo(I)V

    .line 61
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzb;->zzi(J)V

    .line 62
    return-void
.end method

.method public final zzg(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzc;->zzo(I)V

    .line 50
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzb;->zzl(II)V

    .line 51
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzb;->zzm(I)V

    .line 52
    return-void
.end method

.method public final zzh(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzc;->zzo(I)V

    .line 64
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzb;->zzl(II)V

    .line 65
    nop

    .line 66
    if-ltz p2, :cond_0

    .line 67
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzb;->zzn(I)V

    return-void

    .line 68
    :cond_0
    int-to-long p1, p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzb;->zzj(J)V

    .line 69
    return-void
.end method

.method public final zzh(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzc;->zzo(I)V

    .line 146
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzb;->zzl(II)V

    .line 147
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzb;->zzj(J)V

    .line 148
    return-void
.end method

.method public final zzh(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 149
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzc;->zzo(I)V

    .line 150
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzb;->zzj(J)V

    .line 151
    return-void
.end method

.method public final zzi(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzc;->zzo(I)V

    .line 54
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzb;->zzm(I)V

    .line 55
    return-void
.end method

.method public final zzj(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    if-ltz p1, :cond_0

    .line 71
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzl(I)V

    return-void

    .line 72
    :cond_0
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzh(J)V

    .line 73
    return-void
.end method

.method public final zzj(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    nop

    .line 135
    shl-int/lit8 p1, p1, 0x3

    or-int/2addr p1, p2

    .line 136
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzl(I)V

    .line 137
    return-void
.end method

.method public final zzk(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzc;->zzo(I)V

    .line 139
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzb;->zzl(II)V

    .line 140
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzb;->zzn(I)V

    .line 141
    return-void
.end method

.method public final zzl(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzc;->zzo(I)V

    .line 143
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz$zzb;->zzn(I)V

    .line 144
    return-void
.end method
