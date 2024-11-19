.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzcu;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"


# direct methods
.method public static zza([B)Lcom/google/android/gms/internal/firebase-auth-api/zzch;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaig;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzaig;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzvb;->zza([BLcom/google/android/gms/internal/firebase-auth-api/zzaig;)Lcom/google/android/gms/internal/firebase-auth-api/zzvb;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    nop

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zznu;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zznu;

    move-result-object v0

    .line 6
    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzor;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzvb;)Lcom/google/android/gms/internal/firebase-auth-api/zzor;

    move-result-object p0

    .line 7
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zznu;->zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzov;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 8
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zznf;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zznf;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzor;)V

    return-object v0

    .line 9
    :cond_0
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zznu;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzov;)Lcom/google/android/gms/internal/firebase-auth-api/zzch;

    move-result-object p0

    .line 10
    return-object p0

    .line 3
    :catch_0
    move-exception p0

    .line 4
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Failed to parse proto"

    invoke-direct {v0, v1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static zza(Lcom/google/android/gms/internal/firebase-auth-api/zzch;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 11
    instance-of v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zznf;

    if-eqz v0, :cond_0

    .line 12
    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/zznf;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zznf;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzor;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzvb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzagu;->zzj()[B

    move-result-object p0

    return-object p0

    .line 13
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zznu;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zznu;

    move-result-object v0

    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/zzor;

    .line 14
    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zznu;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzch;Ljava/lang/Class;)Lcom/google/android/gms/internal/firebase-auth-api/zzov;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/zzor;

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzor;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzvb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzagu;->zzj()[B

    move-result-object p0

    return-object p0
.end method
