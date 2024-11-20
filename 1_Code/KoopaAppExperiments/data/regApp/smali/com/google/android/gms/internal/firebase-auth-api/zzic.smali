.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzic;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzia;
.source "com.google.firebase:firebase-auth@@22.2.0"


# direct methods
.method public constructor <init>([B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzia;-><init>([B)V

    .line 3
    return-void
.end method


# virtual methods
.method final zza([BI)Lcom/google/android/gms/internal/firebase-auth-api/zzhy;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzhz;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzhz;-><init>([BI)V

    return-object v0
.end method

.method public final bridge synthetic zza(Ljava/nio/ByteBuffer;[B[B[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 4
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/firebase-auth-api/zzia;->zza(Ljava/nio/ByteBuffer;[B[B[B)V

    return-void
.end method

.method public final bridge synthetic zza(Ljava/nio/ByteBuffer;[B[B)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 5
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzia;->zza(Ljava/nio/ByteBuffer;[B[B)[B

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic zza([B[B[B)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 6
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzia;->zza([B[B[B)[B

    move-result-object p1

    return-object p1
.end method
