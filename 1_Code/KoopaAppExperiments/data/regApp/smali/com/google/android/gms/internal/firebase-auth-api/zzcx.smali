.class final Lcom/google/android/gms/internal/firebase-auth-api/zzcx;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"


# static fields
.field private static final zza:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzcx;->zza:Ljava/nio/charset/Charset;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/firebase-auth-api/zzvg;)Lcom/google/android/gms/internal/firebase-auth-api/zzvj;
    .locals 4

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzvj;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzvj$zzb;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzvg;->zzb()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzvj$zzb;->zza(I)Lcom/google/android/gms/internal/firebase-auth-api/zzvj$zzb;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzvg;->zze()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;

    .line 3
    nop

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzvj$zza;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzvj$zza$zza;

    move-result-object v2

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzuy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzuy;->zzf()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzvj$zza$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzvj$zza$zza;

    move-result-object v2

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzuz;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzvj$zza$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzuz;)Lcom/google/android/gms/internal/firebase-auth-api/zzvj$zza$zza;

    move-result-object v2

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzvs;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzvj$zza$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzvs;)Lcom/google/android/gms/internal/firebase-auth-api/zzvj$zza$zza;

    move-result-object v2

    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;->zza()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzvj$zza$zza;->zza(I)Lcom/google/android/gms/internal/firebase-auth-api/zzvj$zza$zza;

    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzb;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/zzair;

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/zzvj$zza;

    .line 10
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzvj$zzb;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzvj$zza;)Lcom/google/android/gms/internal/firebase-auth-api/zzvj$zzb;

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzb;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/zzair;

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/zzvj;

    return-object p0
.end method

.method public static zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzvg;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzvg;->zzb()I

    move-result v0

    .line 15
    nop

    .line 16
    nop

    .line 17
    nop

    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzvg;->zze()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v3, v1

    move v4, v3

    move v5, v2

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;

    .line 19
    invoke-virtual {v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzuz;

    move-result-object v7

    sget-object v8, Lcom/google/android/gms/internal/firebase-auth-api/zzuz;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzuz;

    if-ne v7, v8, :cond_0

    .line 20
    nop

    .line 21
    invoke-virtual {v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;->zzg()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 23
    invoke-virtual {v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzvs;

    move-result-object v7

    sget-object v8, Lcom/google/android/gms/internal/firebase-auth-api/zzvs;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzvs;

    if-eq v7, v8, :cond_5

    .line 26
    invoke-virtual {v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzuz;

    move-result-object v7

    sget-object v8, Lcom/google/android/gms/internal/firebase-auth-api/zzuz;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzuz;

    if-eq v7, v8, :cond_4

    .line 29
    invoke-virtual {v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;->zza()I

    move-result v7

    if-ne v7, v0, :cond_2

    .line 30
    if-nez v4, :cond_1

    .line 32
    move v4, v2

    goto :goto_1

    .line 31
    :cond_1
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "keyset contains multiple primary keys"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 33
    :cond_2
    :goto_1
    invoke-virtual {v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzuy;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzuy;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzuy$zza;

    move-result-object v6

    sget-object v7, Lcom/google/android/gms/internal/firebase-auth-api/zzuy$zza;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzuy$zza;

    if-eq v6, v7, :cond_3

    .line 34
    move v5, v1

    .line 35
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 36
    goto :goto_0

    .line 27
    :cond_4
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 28
    invoke-virtual {v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;->zza()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "key %d has unknown status"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 24
    :cond_5
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 25
    invoke-virtual {v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;->zza()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "key %d has unknown prefix"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 22
    :cond_6
    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;->zza()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "key %d has no key data"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 37
    :cond_7
    if-eqz v3, :cond_a

    .line 39
    if-nez v4, :cond_9

    if-eqz v5, :cond_8

    goto :goto_2

    .line 40
    :cond_8
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "keyset doesn\'t contain a valid primary key"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 41
    :cond_9
    :goto_2
    return-void

    .line 38
    :cond_a
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "keyset must contain at least one ENABLED key"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
