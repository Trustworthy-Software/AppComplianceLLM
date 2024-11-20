.class final Lcom/google/android/gms/internal/firebase-auth-api/zzhu;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"


# static fields
.field private static final zza:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzhu;->zza([B)[I

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzhu;->zza:[I

    .line 4
    return-void

    :array_0
    .array-data 1
        0x65t
        0x78t
        0x70t
        0x61t
        0x6et
        0x64t
        0x20t
        0x33t
        0x32t
        0x2dt
        0x62t
        0x79t
        0x74t
        0x65t
        0x20t
        0x6bt
    .end array-data
.end method

.method private static zza(II)I
    .locals 1

    .line 1
    shl-int v0, p0, p1

    neg-int p1, p1

    ushr-int/2addr p0, p1

    or-int/2addr p0, v0

    return p0
.end method

.method static zza([I)V
    .locals 16

    .line 17
    move-object/from16 v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0xa

    if-ge v2, v3, :cond_0

    .line 18
    const/4 v4, 0x4

    const/16 v5, 0x8

    const/16 v6, 0xc

    invoke-static {v0, v1, v4, v5, v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzhu;->zza([IIIII)V

    .line 19
    const/4 v7, 0x1

    const/4 v8, 0x5

    const/16 v9, 0x9

    const/16 v10, 0xd

    invoke-static {v0, v7, v8, v9, v10}, Lcom/google/android/gms/internal/firebase-auth-api/zzhu;->zza([IIIII)V

    .line 20
    const/4 v11, 0x2

    const/4 v12, 0x6

    const/16 v13, 0xe

    invoke-static {v0, v11, v12, v3, v13}, Lcom/google/android/gms/internal/firebase-auth-api/zzhu;->zza([IIIII)V

    .line 21
    const/4 v14, 0x3

    const/4 v15, 0x7

    const/16 v4, 0xb

    const/16 v9, 0xf

    invoke-static {v0, v14, v15, v4, v9}, Lcom/google/android/gms/internal/firebase-auth-api/zzhu;->zza([IIIII)V

    .line 22
    invoke-static {v0, v1, v8, v3, v9}, Lcom/google/android/gms/internal/firebase-auth-api/zzhu;->zza([IIIII)V

    .line 23
    invoke-static {v0, v7, v12, v4, v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzhu;->zza([IIIII)V

    .line 24
    invoke-static {v0, v11, v15, v5, v10}, Lcom/google/android/gms/internal/firebase-auth-api/zzhu;->zza([IIIII)V

    .line 25
    const/16 v3, 0x9

    const/4 v4, 0x4

    invoke-static {v0, v14, v4, v3, v13}, Lcom/google/android/gms/internal/firebase-auth-api/zzhu;->zza([IIIII)V

    .line 26
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method

.method private static zza([IIIII)V
    .locals 2

    .line 5
    aget v0, p0, p1

    aget v1, p0, p2

    add-int/2addr v0, v1

    aput v0, p0, p1

    .line 6
    aget v1, p0, p4

    xor-int/2addr v0, v1

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzhu;->zza(II)I

    move-result v0

    aput v0, p0, p4

    .line 7
    aget v1, p0, p3

    add-int/2addr v1, v0

    aput v1, p0, p3

    .line 8
    aget v0, p0, p2

    xor-int/2addr v0, v1

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzhu;->zza(II)I

    move-result v0

    aput v0, p0, p2

    .line 9
    aget v1, p0, p1

    add-int/2addr v1, v0

    aput v1, p0, p1

    .line 10
    aget p1, p0, p4

    xor-int/2addr p1, v1

    const/16 v0, 0x8

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzhu;->zza(II)I

    move-result p1

    aput p1, p0, p4

    .line 11
    aget p4, p0, p3

    add-int/2addr p4, p1

    aput p4, p0, p3

    .line 12
    aget p1, p0, p2

    xor-int/2addr p1, p4

    const/4 p3, 0x7

    invoke-static {p1, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzhu;->zza(II)I

    move-result p1

    aput p1, p0, p2

    .line 13
    return-void
.end method

.method static zza([I[I)V
    .locals 3

    .line 14
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzhu;->zza:[I

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15
    array-length v0, v0

    const/16 v1, 0x8

    invoke-static {p1, v2, p0, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 16
    return-void
.end method

.method static zza([B)[I
    .locals 1

    .line 28
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object p0

    .line 29
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [I

    .line 30
    invoke-virtual {p0, v0}, Ljava/nio/IntBuffer;->get([I)Ljava/nio/IntBuffer;

    .line 31
    return-object v0
.end method
