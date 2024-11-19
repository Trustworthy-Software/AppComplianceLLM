.class abstract Lcom/google/android/gms/internal/firebase-auth-api/zzhy;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"


# instance fields
.field zza:[I

.field private final zzb:I


# direct methods
.method public constructor <init>([BI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    array-length v0, p1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 14
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzhu;->zza([B)[I

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzhy;->zza:[I

    .line 15
    iput p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzhy;->zzb:I

    .line 16
    return-void

    .line 13
    :cond_0
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string p2, "The key length in bytes must be 32."

    invoke-direct {p1, p2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final zza([BLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 21
    array-length v0, p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzhy;->zza()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 24
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 25
    div-int/lit8 v1, v0, 0x40

    add-int/lit8 v1, v1, 0x1

    .line 26
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 27
    iget v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzhy;->zzb:I

    add-int/2addr v3, v2

    invoke-virtual {p0, p1, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzhy;->zza([BI)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 28
    add-int/lit8 v4, v1, -0x1

    const/16 v5, 0x40

    if-ne v2, v4, :cond_0

    .line 29
    rem-int/lit8 v4, v0, 0x40

    invoke-static {p2, p3, v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzwg;->zza(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)V

    goto :goto_1

    .line 30
    :cond_0
    invoke-static {p2, p3, v3, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzwg;->zza(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)V

    .line 31
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 32
    :cond_1
    return-void

    .line 22
    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 23
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzhy;->zza()I

    move-result p2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "The nonce length (in bytes) must be "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method abstract zza()I
.end method

.method final zza([BI)Ljava/nio/ByteBuffer;
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzhu;->zza([B)[I

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzhy;->zza([II)[I

    move-result-object p1

    .line 2
    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [I

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzhu;->zza([I)V

    .line 4
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 5
    aget v2, p1, v1

    aget v3, p2, v1

    add-int/2addr v2, v3

    aput v2, p1, v1

    .line 6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_0
    nop

    .line 8
    const/16 p2, 0x40

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 9
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, p1, v0, v2}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    .line 10
    return-object p2
.end method

.method public zza(Ljava/nio/ByteBuffer;[B[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 17
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    array-length v1, p3

    if-lt v0, v1, :cond_0

    .line 19
    invoke-static {p3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p3

    invoke-direct {p0, p2, p1, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzhy;->zza([BLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    .line 20
    return-void

    .line 18
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Given ByteBuffer output is too small"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public zza([BLjava/nio/ByteBuffer;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 33
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 34
    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzhy;->zza([BLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    .line 35
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    return-object p1
.end method

.method abstract zza([II)[I
.end method
