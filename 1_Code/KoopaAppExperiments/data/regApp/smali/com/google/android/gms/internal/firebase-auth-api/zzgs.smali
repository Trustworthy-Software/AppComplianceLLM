.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzgs;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzdb;
.source "com.google.firebase:firebase-auth@@22.2.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/firebase-auth-api/zzgs$zzb;,
        Lcom/google/android/gms/internal/firebase-auth-api/zzgs$zza;
    }
.end annotation


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzgs$zzb;

.field private final zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzdb;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzgs$zzb;Lcom/google/android/gms/internal/firebase-auth-api/zzdb;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzdb;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzgs;->zza:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzgs;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzgs$zzb;

    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzgs;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzdb;

    .line 9
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzgs$zzb;Lcom/google/android/gms/internal/firebase-auth-api/zzdb;Lcom/google/android/gms/internal/firebase-auth-api/zzgv;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzgs;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzgs$zzb;Lcom/google/android/gms/internal/firebase-auth-api/zzdb;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 10
    instance-of v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzgs;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 11
    return v1

    .line 12
    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzgs;

    .line 13
    iget-object v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzgs;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzgs$zzb;

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzgs;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzgs$zzb;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzgs;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzdb;

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzgs;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzdb;

    .line 14
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzgs;->zza:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzgs;->zza:Ljava/lang/String;

    .line 15
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    nop

    .line 16
    return v1
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzgs;->zza:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzgs;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzgs$zzb;

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzgs;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzdb;

    const-class v3, Lcom/google/android/gms/internal/firebase-auth-api/zzgs;

    filled-new-array {v3, v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzgs;->zza:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzgs;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzgs$zzb;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzgs;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzdb;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "LegacyKmsEnvelopeAead Parameters (kekUri: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", dekParsingStrategy: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dekParametersForNewKeys: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()Z
    .locals 1

    .line 17
    const/4 v0, 0x0

    return v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzdb;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzgs;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzdb;

    return-object v0
.end method

.method public final zzc()Ljava/lang/String;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzgs;->zza:Ljava/lang/String;

    return-object v0
.end method
