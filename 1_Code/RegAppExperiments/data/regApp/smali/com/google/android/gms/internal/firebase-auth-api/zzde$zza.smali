.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzde$zza;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/firebase-auth-api/zzde;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zza"
.end annotation


# instance fields
.field private zza:Lcom/google/android/gms/internal/firebase-auth-api/zzdl;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzxu;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzxu;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private zzd:Ljava/lang/Integer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzde$zza;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzdl;

    .line 34
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzde$zza;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzxu;

    .line 35
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzde$zza;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzxu;

    .line 36
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzde$zza;->zzd:Ljava/lang/Integer;

    .line 37
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzdg;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzde$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzdl;)Lcom/google/android/gms/internal/firebase-auth-api/zzde$zza;
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzde$zza;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzdl;

    .line 8
    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzxu;)Lcom/google/android/gms/internal/firebase-auth-api/zzde$zza;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzde$zza;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzxu;

    .line 2
    return-object p0
.end method

.method public final zza(Ljava/lang/Integer;)Lcom/google/android/gms/internal/firebase-auth-api/zzde$zza;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzde$zza;->zzd:Ljava/lang/Integer;

    .line 6
    return-object p0
.end method

.method public final zza()Lcom/google/android/gms/internal/firebase-auth-api/zzde;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzde$zza;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzdl;

    if-eqz v0, :cond_a

    .line 11
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzde$zza;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzxu;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzde$zza;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzxu;

    if-eqz v1, :cond_9

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzdl;->zzb()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzde$zza;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzxu;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzxu;->zza()I

    move-result v1

    if-ne v0, v1, :cond_8

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzde$zza;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzdl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzdl;->zzc()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzde$zza;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzxu;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzxu;->zza()I

    move-result v1

    if-ne v0, v1, :cond_7

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzde$zza;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzdl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzch;->zza()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzde$zza;->zzd:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 18
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Cannot create key without ID requirement with parameters with ID requirement"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzde$zza;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzdl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzch;->zza()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzde$zza;->zzd:Ljava/lang/Integer;

    if-nez v0, :cond_2

    goto :goto_1

    .line 20
    :cond_2
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Cannot create key with ID requirement with parameters without ID requirement"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 21
    :cond_3
    :goto_1
    nop

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzde$zza;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzdl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzdl;->zzh()Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zzc;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zzc;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zzc;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_4

    .line 23
    new-array v0, v2, [B

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzxt;->zza([B)Lcom/google/android/gms/internal/firebase-auth-api/zzxt;

    move-result-object v0

    move-object v5, v0

    goto :goto_2

    .line 24
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzde$zza;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzdl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzdl;->zzh()Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zzc;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zzc;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zzc;

    const/4 v3, 0x5

    if-ne v0, v1, :cond_5

    .line 25
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzde$zza;->zzd:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzxt;->zza([B)Lcom/google/android/gms/internal/firebase-auth-api/zzxt;

    move-result-object v0

    move-object v5, v0

    goto :goto_2

    .line 26
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzde$zza;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzdl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzdl;->zzh()Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zzc;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zzc;

    if-ne v0, v1, :cond_6

    .line 27
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzde$zza;->zzd:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzxt;->zza([B)Lcom/google/android/gms/internal/firebase-auth-api/zzxt;

    move-result-object v0

    move-object v5, v0

    .line 30
    :goto_2
    nop

    .line 31
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzde;

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzde$zza;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzdl;

    iget-object v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzde$zza;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzxu;

    iget-object v4, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzde$zza;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzxu;

    iget-object v6, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzde$zza;->zzd:Ljava/lang/Integer;

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/firebase-auth-api/zzde;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzdl;Lcom/google/android/gms/internal/firebase-auth-api/zzxu;Lcom/google/android/gms/internal/firebase-auth-api/zzxu;Lcom/google/android/gms/internal/firebase-auth-api/zzxt;Ljava/lang/Integer;Lcom/google/android/gms/internal/firebase-auth-api/zzdf;)V

    return-object v0

    .line 28
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzde$zza;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzdl;

    .line 29
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzdl;->zzh()Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zzc;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown AesCtrHmacAeadParameters.Variant: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 16
    :cond_7
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "HMAC key size mismatch"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14
    :cond_8
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "AES key size mismatch"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12
    :cond_9
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Cannot build without key material"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10
    :cond_a
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Cannot build without parameters"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzxu;)Lcom/google/android/gms/internal/firebase-auth-api/zzde$zza;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzde$zza;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzxu;

    .line 4
    return-object p0
.end method
