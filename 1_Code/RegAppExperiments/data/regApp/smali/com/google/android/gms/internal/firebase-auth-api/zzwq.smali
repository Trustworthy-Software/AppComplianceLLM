.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzwq;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzbg;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzxi;

.field private final zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzce;

.field private final zzc:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzxi;Lcom/google/android/gms/internal/firebase-auth-api/zzce;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzwq;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzxi;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzwq;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzce;

    .line 4
    iput p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzwq;->zzc:I

    .line 5
    return-void
.end method


# virtual methods
.method public final zza([B[B)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 6
    array-length v0, p1

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzwq;->zzc:I

    if-lt v0, v1, :cond_1

    .line 8
    array-length v0, p1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 9
    array-length v2, p1

    iget v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzwq;->zzc:I

    sub-int/2addr v2, v3

    array-length v3, p1

    .line 10
    invoke-static {p1, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    .line 11
    nop

    .line 12
    if-nez p2, :cond_0

    .line 13
    new-array p2, v1, [B

    .line 14
    :cond_0
    nop

    .line 15
    const/16 v2, 0x8

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    array-length v4, p2

    int-to-long v4, v4

    const-wide/16 v6, 0x8

    mul-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    .line 16
    iget-object v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzwq;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzce;

    const/4 v4, 0x3

    new-array v4, v4, [[B

    aput-object p2, v4, v1

    const/4 p2, 0x1

    aput-object v0, v4, p2

    const/4 p2, 0x2

    aput-object v2, v4, p2

    invoke-static {v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzwg;->zza([[B)[B

    move-result-object p2

    invoke-interface {v3, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzce;->zza([B[B)V

    .line 17
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzwq;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzxi;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzxi;->zza([B)[B

    move-result-object p1

    return-object p1

    .line 7
    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "ciphertext too short"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzb([B[B)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzwq;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzxi;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzxi;->zzb([B)[B

    move-result-object p1

    .line 19
    nop

    .line 20
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 21
    new-array p2, v0, [B

    .line 22
    :cond_0
    nop

    .line 23
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    array-length v3, p2

    int-to-long v3, v3

    const-wide/16 v5, 0x8

    mul-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    .line 24
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzwq;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzce;

    const/4 v3, 0x3

    new-array v3, v3, [[B

    aput-object p2, v3, v0

    const/4 p2, 0x1

    aput-object p1, v3, p2

    const/4 v4, 0x2

    aput-object v1, v3, v4

    invoke-static {v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzwg;->zza([[B)[B

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzce;->zza([B)[B

    move-result-object v1

    .line 25
    new-array v2, v4, [[B

    aput-object p1, v2, v0

    aput-object v1, v2, p2

    invoke-static {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzwg;->zza([[B)[B

    move-result-object p1

    return-object p1
.end method
