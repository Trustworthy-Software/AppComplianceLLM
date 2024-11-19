.class final Lcom/google/android/gms/internal/firebase-auth-api/zzadu;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzacc;
.source "com.google.firebase:firebase-auth@@22.2.0"


# instance fields
.field private final zza:Ljava/lang/String;

.field private final synthetic zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzadt;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzadt;Lcom/google/android/gms/internal/firebase-auth-api/zzacc;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzadu;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzadt;

    .line 2
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzacc;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzacc;)V

    .line 3
    iput-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzadu;->zza:Ljava/lang/String;

    .line 4
    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/common/api/Status;)V
    .locals 5

    .line 23
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzadt;->zza()Lcom/google/android/gms/common/logging/Logger;

    move-result-object v0

    .line 24
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/common/api/CommonStatusCodes;->getStatusCodeString(I)Ljava/lang/String;

    move-result-object v1

    .line 25
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SMS verification code request failed: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 26
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/logging/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzadu;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzadt;

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzadt;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzadt;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzadu;->zza:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzadw;

    .line 28
    if-nez v0, :cond_0

    .line 29
    return-void

    .line 30
    :cond_0
    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzadw;->zzb:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/zzacc;

    .line 31
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzacc;->zza(Lcom/google/android/gms/common/api/Status;)V

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzadu;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzadt;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzadu;->zza:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzadt;->zzc(Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public final zzb(Ljava/lang/String;)V
    .locals 5

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzadt;->zza()Lcom/google/android/gms/common/logging/Logger;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onCodeSent"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/logging/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzadu;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzadt;

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzadt;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzadt;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzadu;->zza:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzadw;

    .line 7
    if-nez v0, :cond_0

    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzadw;->zzb:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/firebase-auth-api/zzacc;

    .line 10
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzacc;->zzb(Ljava/lang/String;)V

    .line 11
    goto :goto_0

    .line 12
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzadw;->zzg:Z

    .line 13
    iput-object p1, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzadw;->zzd:Ljava/lang/String;

    .line 14
    iget-wide v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzadw;->zza:J

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-gtz p1, :cond_2

    .line 15
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzadu;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzadt;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzadu;->zza:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzadt;->zzc(Lcom/google/android/gms/internal/firebase-auth-api/zzadt;Ljava/lang/String;)V

    .line 16
    return-void

    .line 17
    :cond_2
    iget-boolean p1, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzadw;->zzc:Z

    if-nez p1, :cond_3

    .line 18
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzadu;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzadt;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzadu;->zza:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzadt;->zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzadt;Ljava/lang/String;)V

    .line 19
    return-void

    .line 20
    :cond_3
    iget-object p1, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzadw;->zze:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzag;->zzc(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 21
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzadu;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzadt;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzadu;->zza:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzadt;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzadt;Ljava/lang/String;)V

    .line 22
    :cond_4
    return-void
.end method
