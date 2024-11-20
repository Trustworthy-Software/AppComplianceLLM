.class final Lcom/google/android/gms/internal/firebase-auth-api/zzlw;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzlj;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzla;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzla;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzlw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzla;

    .line 3
    return-void
.end method


# virtual methods
.method public final zza()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzlw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzla;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzla;->zzb()[B

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzlt;->zzf:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzlt;->zzb:[B

    return-object v0

    .line 19
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Could not determine HPKE KEM ID"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zza([BLcom/google/android/gms/internal/firebase-auth-api/zzll;)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 4
    nop

    .line 5
    invoke-interface {p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzll;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzxt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzxt;->zzb()[B

    move-result-object v0

    .line 6
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzxr;->zza([B[B)[B

    move-result-object v3

    .line 7
    nop

    .line 8
    invoke-interface {p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzll;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzxt;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzxt;->zzb()[B

    move-result-object p2

    .line 9
    nop

    .line 10
    const/4 v0, 0x2

    new-array v0, v0, [[B

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzwg;->zza([[B)[B

    move-result-object v5

    .line 11
    nop

    .line 12
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/zzlt;->zzb:[B

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzlt;->zza([B)[B

    move-result-object v7

    .line 13
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzlw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzla;

    const/4 v2, 0x0

    const-string v4, "eae_prk"

    const-string v6, "shared_secret"

    .line 14
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzla;->zza()I

    move-result v8

    .line 15
    invoke-virtual/range {v1 .. v8}, Lcom/google/android/gms/internal/firebase-auth-api/zzla;->zza([B[BLjava/lang/String;[BLjava/lang/String;[BI)[B

    move-result-object p1

    .line 16
    return-object p1
.end method
