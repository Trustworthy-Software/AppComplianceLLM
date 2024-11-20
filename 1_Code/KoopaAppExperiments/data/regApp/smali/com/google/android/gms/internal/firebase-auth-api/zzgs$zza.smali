.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzgs$zza;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/firebase-auth-api/zzgs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zza"
.end annotation


# instance fields
.field private zza:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzgs$zzb;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzdb;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzgt;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzgs$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzdb;)Lcom/google/android/gms/internal/firebase-auth-api/zzgs$zza;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzgs$zza;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzdb;

    .line 2
    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzgs$zzb;)Lcom/google/android/gms/internal/firebase-auth-api/zzgs$zza;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzgs$zza;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzgs$zzb;

    .line 4
    return-object p0
.end method

.method public final zza(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzgs$zza;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzgs$zza;->zza:Ljava/lang/String;

    .line 6
    return-object p0
.end method

.method public final zza()Lcom/google/android/gms/internal/firebase-auth-api/zzgs;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzgs$zza;->zza:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzgs$zza;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzgs$zzb;

    if-eqz v0, :cond_9

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzgs$zza;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzdb;

    if-eqz v0, :cond_8

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzch;->zza()Z

    move-result v0

    if-nez v0, :cond_7

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzgs$zza;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzgs$zzb;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzgs$zza;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzdb;

    .line 16
    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzgs$zzb;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzgs$zzb;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    instance-of v2, v1, Lcom/google/android/gms/internal/firebase-auth-api/zzes;

    if-eqz v2, :cond_0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzgs$zzb;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzgs$zzb;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    instance-of v2, v1, Lcom/google/android/gms/internal/firebase-auth-api/zzfv;

    if-eqz v2, :cond_1

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzgs$zzb;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzgs$zzb;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    instance-of v2, v1, Lcom/google/android/gms/internal/firebase-auth-api/zzhm;

    if-eqz v2, :cond_2

    .line 21
    goto :goto_0

    .line 22
    :cond_2
    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzgs$zzb;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzgs$zzb;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    instance-of v2, v1, Lcom/google/android/gms/internal/firebase-auth-api/zzdl;

    if-eqz v2, :cond_3

    .line 23
    goto :goto_0

    .line 24
    :cond_3
    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzgs$zzb;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzgs$zzb;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    instance-of v2, v1, Lcom/google/android/gms/internal/firebase-auth-api/zzed;

    if-eqz v2, :cond_4

    .line 25
    goto :goto_0

    .line 26
    :cond_4
    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzgs$zzb;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzgs$zzb;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    instance-of v0, v1, Lcom/google/android/gms/internal/firebase-auth-api/zzfj;

    if-eqz v0, :cond_5

    .line 27
    goto :goto_0

    .line 28
    :cond_5
    const/4 v3, 0x0

    .line 29
    :goto_0
    if-eqz v3, :cond_6

    .line 32
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzgs;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzgs$zza;->zza:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzgs$zza;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzgs$zzb;

    iget-object v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzgs$zza;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzdb;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzgs;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzgs$zzb;Lcom/google/android/gms/internal/firebase-auth-api/zzdb;Lcom/google/android/gms/internal/firebase-auth-api/zzgv;)V

    return-object v0

    .line 30
    :cond_6
    new-instance v0, Ljava/security/GeneralSecurityException;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzgs$zza;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzgs$zzb;

    .line 31
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzgs$zzb;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzgs$zza;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzdb;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Cannot use parsing strategy "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " when new keys are picked according to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14
    :cond_7
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "dekParametersForNewKeys must note have ID Requirements"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12
    :cond_8
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "dekParametersForNewKeys must be set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10
    :cond_9
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "dekParsingStrategy must be set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8
    :cond_a
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "kekUri must be set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
