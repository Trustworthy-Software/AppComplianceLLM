.class final Lcom/google/android/gms/internal/firebase-auth-api/zzck;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzck;",
        ">;"
    }
.end annotation


# instance fields
.field private final zza:[B


# direct methods
.method private constructor <init>([B)V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzck;->zza:[B

    .line 14
    return-void
.end method

.method synthetic constructor <init>([BLcom/google/android/gms/internal/firebase-auth-api/zzcn;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzck;-><init>([B)V

    return-void
.end method


# virtual methods
.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 4

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzck;

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzck;->zza:[B

    array-length v1, v0

    iget-object v2, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzck;->zza:[B

    array-length v3, v2

    if-eq v1, v3, :cond_0

    .line 3
    array-length p1, v0

    array-length v0, v2

    sub-int/2addr p1, v0

    return p1

    .line 4
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzck;->zza:[B

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 5
    aget-byte v2, v2, v1

    iget-object v3, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzck;->zza:[B

    aget-byte v3, v3, v1

    if-eq v2, v3, :cond_1

    .line 6
    sub-int/2addr v2, v3

    return v2

    .line 7
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_2
    nop

    .line 9
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 15
    instance-of v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzck;

    if-nez v0, :cond_0

    .line 16
    const/4 p1, 0x0

    return p1

    .line 17
    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzck;

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzck;->zza:[B

    iget-object p1, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzck;->zza:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzck;->zza:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzck;->zza:[B

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzxj;->zza([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
