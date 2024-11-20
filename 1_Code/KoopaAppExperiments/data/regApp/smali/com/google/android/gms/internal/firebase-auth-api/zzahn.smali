.class Lcom/google/android/gms/internal/firebase-auth-api/zzahn;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzaho;
.source "com.google.firebase:firebase-auth@@22.2.0"


# instance fields
.field protected final zzb:[B


# direct methods
.method constructor <init>([B)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaho;-><init>()V

    .line 15
    if-eqz p1, :cond_0

    .line 17
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahn;->zzb:[B

    .line 18
    return-void

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 23
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 24
    return v0

    .line 25
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzahd;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 26
    return v2

    .line 27
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahd;->zzb()I

    move-result v1

    move-object v3, p1

    check-cast v3, Lcom/google/android/gms/internal/firebase-auth-api/zzahd;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzahd;->zzb()I

    move-result v3

    if-eq v1, v3, :cond_2

    .line 28
    return v2

    .line 29
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahd;->zzb()I

    move-result v1

    if-nez v1, :cond_3

    .line 30
    return v0

    .line 31
    :cond_3
    instance-of v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzahn;

    if-eqz v0, :cond_5

    .line 32
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzahn;

    .line 33
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahd;->zza()I

    move-result v0

    .line 34
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahd;->zza()I

    move-result v1

    .line 35
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    if-eq v0, v1, :cond_4

    .line 36
    return v2

    .line 37
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahd;->zzb()I

    move-result v0

    invoke-virtual {p0, p1, v2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaho;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzahd;II)Z

    move-result p1

    return p1

    .line 38
    :cond_5
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public zza(I)B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahn;->zzb:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method public final zza(II)Lcom/google/android/gms/internal/firebase-auth-api/zzahd;
    .locals 2

    .line 6
    const/4 p1, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahd;->zzb()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahn;->zza(III)I

    move-result p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/zzahd;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzahd;

    return-object p1

    .line 9
    :cond_0
    new-instance p2, Lcom/google/android/gms/internal/firebase-auth-api/zzahh;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahn;->zzb:[B

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahn;->zzh()I

    move-result v1

    invoke-direct {p2, v0, v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahh;-><init>([BII)V

    return-object p2
.end method

.method protected final zza(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 4

    .line 13
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahn;->zzb:[B

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahn;->zzh()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahd;->zzb()I

    move-result v3

    invoke-direct {v0, v1, v2, v3, p1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0
.end method

.method final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzahe;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahn;->zzb:[B

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahn;->zzh()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahd;->zzb()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzahe;->zza([BII)V

    .line 22
    return-void
.end method

.method protected zza([BIII)V
    .locals 0

    .line 19
    iget-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahn;->zzb:[B

    const/4 p3, 0x0

    invoke-static {p2, p3, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 20
    return-void
.end method

.method final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzahd;II)Z
    .locals 5

    .line 39
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahd;->zzb()I

    move-result p2

    if-gt p3, p2, :cond_4

    .line 41
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahd;->zzb()I

    move-result p2

    const/4 v0, 0x0

    if-gt p3, p2, :cond_3

    .line 44
    instance-of p2, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzahn;

    if-eqz p2, :cond_2

    .line 45
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzahn;

    .line 46
    iget-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahn;->zzb:[B

    .line 47
    iget-object v1, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzahn;->zzb:[B

    .line 48
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahn;->zzh()I

    move-result v2

    add-int/2addr v2, p3

    .line 49
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahn;->zzh()I

    move-result p3

    .line 50
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahn;->zzh()I

    move-result p1

    .line 51
    :goto_0
    if-ge p3, v2, :cond_1

    .line 52
    aget-byte v3, p2, p3

    aget-byte v4, v1, p1

    if-eq v3, v4, :cond_0

    .line 53
    return v0

    .line 54
    :cond_0
    add-int/lit8 p3, p3, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 55
    :cond_1
    const/4 p1, 0x1

    return p1

    .line 56
    :cond_2
    invoke-virtual {p1, v0, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzahd;->zza(II)Lcom/google/android/gms/internal/firebase-auth-api/zzahd;

    move-result-object p1

    invoke-virtual {p0, v0, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzahd;->zza(II)Lcom/google/android/gms/internal/firebase-auth-api/zzahd;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzahd;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 42
    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 43
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahd;->zzb()I

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ran off end of other: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 40
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahd;->zzb()I

    move-result p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Length too large: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method zzb(I)B
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahn;->zzb:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method public zzb()I
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahn;->zzb:[B

    array-length v0, v0

    return v0
.end method

.method protected final zzb(III)I
    .locals 1

    .line 4
    iget-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahn;->zzb:[B

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahn;->zzh()I

    move-result v0

    invoke-static {p1, p2, v0, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzait;->zza(I[BII)I

    move-result p1

    return p1
.end method

.method public final zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzahs;
    .locals 4

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahn;->zzb:[B

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahn;->zzh()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahd;->zzb()I

    move-result v2

    .line 12
    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzahs;->zza([BIIZ)Lcom/google/android/gms/internal/firebase-auth-api/zzahs;

    move-result-object v0

    return-object v0
.end method

.method public final zzf()Z
    .locals 3

    .line 57
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahn;->zzh()I

    move-result v0

    .line 58
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahn;->zzb:[B

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahd;->zzb()I

    move-result v2

    add-int/2addr v2, v0

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzamc;->zzc([BII)Z

    move-result v0

    return v0
.end method

.method protected zzh()I
    .locals 1

    .line 3
    const/4 v0, 0x0

    return v0
.end method
