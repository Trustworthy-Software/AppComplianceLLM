.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzpo$zza;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/firebase-auth-api/zzpo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation


# instance fields
.field private zza:Ljava/lang/Integer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private zzb:Ljava/lang/Integer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzpo$zzb;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzpo$zza;->zza:Ljava/lang/Integer;

    .line 22
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzpo$zza;->zzb:Ljava/lang/Integer;

    .line 23
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzpo$zzb;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzpo$zzb;

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzpo$zza;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzpo$zzb;

    .line 24
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzpq;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzpo$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(I)Lcom/google/android/gms/internal/firebase-auth-api/zzpo$zza;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    const/16 v0, 0x10

    if-eq p1, v0, :cond_1

    const/16 v0, 0x20

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    shl-int/lit8 p1, p1, 0x3

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 4
    const-string v1, "Invalid key size %d; only 128-bit and 256-bit AES keys are supported"

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_1
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzpo$zza;->zza:Ljava/lang/Integer;

    .line 6
    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzpo$zzb;)Lcom/google/android/gms/internal/firebase-auth-api/zzpo$zza;
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzpo$zza;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzpo$zzb;

    .line 12
    return-object p0
.end method

.method public final zza()Lcom/google/android/gms/internal/firebase-auth-api/zzpo;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzpo$zza;->zza:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzpo$zza;->zzb:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzpo$zza;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzpo$zzb;

    if-eqz v0, :cond_0

    .line 19
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzpo;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzpo$zza;->zza:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzpo$zza;->zzb:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzpo$zza;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzpo$zzb;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzpo;-><init>(IILcom/google/android/gms/internal/firebase-auth-api/zzpo$zzb;Lcom/google/android/gms/internal/firebase-auth-api/zzpr;)V

    return-object v0

    .line 18
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "variant not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 16
    :cond_1
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "tag size not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14
    :cond_2
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "key size not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzb(I)Lcom/google/android/gms/internal/firebase-auth-api/zzpo$zza;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 7
    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    const/16 v0, 0x10

    if-lt v0, p1, :cond_0

    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzpo$zza;->zzb:Ljava/lang/Integer;

    .line 10
    return-object p0

    .line 8
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid tag size for AesCmacParameters: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
