.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzxt;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"


# instance fields
.field private final zza:[B


# direct methods
.method private constructor <init>([BII)V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-array p2, p3, [B

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzxt;->zza:[B

    .line 15
    const/4 v0, 0x0

    invoke-static {p1, v0, p2, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 16
    return-void
.end method

.method public static zza([B)Lcom/google/android/gms/internal/firebase-auth-api/zzxt;
    .locals 3

    .line 3
    const-string v0, "data must be non-null"

    if-eqz p0, :cond_2

    .line 5
    array-length v1, p0

    .line 6
    if-eqz p0, :cond_1

    .line 8
    array-length v0, p0

    if-le v1, v0, :cond_0

    .line 9
    array-length v1, p0

    .line 10
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzxt;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzxt;-><init>([BII)V

    .line 11
    return-object v0

    .line 7
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 17
    instance-of v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzxt;

    if-nez v0, :cond_0

    .line 18
    const/4 p1, 0x0

    return p1

    .line 19
    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzxt;

    .line 20
    iget-object p1, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzxt;->zza:[B

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzxt;->zza:[B

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzxt;->zza:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzxt;->zza:[B

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzxj;->zza([B)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bytes("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()I
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzxt;->zza:[B

    array-length v0, v0

    return v0
.end method

.method public final zzb()[B
    .locals 4

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzxt;->zza:[B

    array-length v1, v0

    new-array v1, v1, [B

    .line 22
    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 23
    return-object v1
.end method
