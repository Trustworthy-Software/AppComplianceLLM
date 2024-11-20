.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzes$zza;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/firebase-auth-api/zzes;
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

.field private zzc:Ljava/lang/Integer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzes$zzb;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzes$zza;->zza:Ljava/lang/Integer;

    .line 24
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzes$zza;->zzb:Ljava/lang/Integer;

    .line 25
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzes$zza;->zzc:Ljava/lang/Integer;

    .line 26
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzes$zzb;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzes$zzb;

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzes$zza;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzes$zzb;

    .line 27
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzeu;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzes$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(I)Lcom/google/android/gms/internal/firebase-auth-api/zzes$zza;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    const/16 p1, 0xc

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzes$zza;->zzb:Ljava/lang/Integer;

    .line 2
    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzes$zzb;)Lcom/google/android/gms/internal/firebase-auth-api/zzes$zza;
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzes$zza;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzes$zzb;

    .line 12
    return-object p0
.end method

.method public final zza()Lcom/google/android/gms/internal/firebase-auth-api/zzes;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzes$zza;->zza:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzes$zza;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzes$zzb;

    if-eqz v0, :cond_2

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzes$zza;->zzb:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzes$zza;->zzc:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 21
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzes;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzes$zza;->zza:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzes$zza;->zzb:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzes$zza;->zzc:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzes$zza;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzes$zzb;

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzes;-><init>(IIILcom/google/android/gms/internal/firebase-auth-api/zzes$zzb;Lcom/google/android/gms/internal/firebase-auth-api/zzev;)V

    return-object v0

    .line 20
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Tag size is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 18
    :cond_1
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "IV size is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 16
    :cond_2
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Variant is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14
    :cond_3
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Key size is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzb(I)Lcom/google/android/gms/internal/firebase-auth-api/zzes$zza;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 3
    const/16 v0, 0x10

    if-eq p1, v0, :cond_1

    const/16 v0, 0x18

    if-eq p1, v0, :cond_1

    const/16 v0, 0x20

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 6
    const-string v1, "Invalid key size %d; only 16-byte, 24-byte and 32-byte AES keys are supported"

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_1
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzes$zza;->zza:Ljava/lang/Integer;

    .line 8
    return-object p0
.end method

.method public final zzc(I)Lcom/google/android/gms/internal/firebase-auth-api/zzes$zza;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 9
    const/16 p1, 0x10

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzes$zza;->zzc:Ljava/lang/Integer;

    .line 10
    return-object p0
.end method
