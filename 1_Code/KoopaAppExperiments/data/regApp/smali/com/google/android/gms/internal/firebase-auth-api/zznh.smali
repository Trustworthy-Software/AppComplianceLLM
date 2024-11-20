.class public final Lcom/google/android/gms/internal/firebase-auth-api/zznh;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzrr;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zznj;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zznj;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zznm;)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zznh;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzrr;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/firebase-auth-api/zzcg;)Lcom/google/android/gms/internal/firebase-auth-api/zzrq;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzcg<",
            "TP;>;)",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzrq;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzrt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzrt;-><init>()V

    .line 2
    nop

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzcg;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzrn;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzrt;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzrn;)Lcom/google/android/gms/internal/firebase-auth-api/zzrt;

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzcg;->zzd()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 5
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/firebase-auth-api/zzcl;

    .line 6
    nop

    .line 7
    invoke-virtual {v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzcl;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzuz;

    move-result-object v4

    .line 8
    sget-object v5, Lcom/google/android/gms/internal/firebase-auth-api/zznk;->zza:[I

    invoke-virtual {v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzuz;->ordinal()I

    move-result v4

    aget v4, v5, v4

    packed-switch v4, :pswitch_data_0

    .line 12
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Unknown key status"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 11
    :pswitch_0
    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/zzbv;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzbv;

    goto :goto_2

    .line 10
    :pswitch_1
    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/zzbv;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzbv;

    goto :goto_2

    .line 9
    :pswitch_2
    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/zzbv;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzbv;

    .line 13
    :goto_2
    nop

    .line 14
    invoke-virtual {v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzcl;->zza()I

    move-result v5

    .line 15
    invoke-virtual {v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzcl;->zzg()Ljava/lang/String;

    move-result-object v6

    .line 16
    const-string v7, "type.googleapis.com/google.crypto."

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 17
    goto :goto_3

    .line 18
    :cond_0
    const/16 v7, 0x22

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 19
    :goto_3
    nop

    .line 20
    invoke-virtual {v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzcl;->zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzvs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzvs;->name()Ljava/lang/String;

    move-result-object v3

    .line 21
    invoke-virtual {v0, v4, v5, v6, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzrt;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzbv;ILjava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzrt;

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    goto :goto_0

    .line 24
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzcg;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzcl;

    move-result-object v1

    .line 25
    if-eqz v1, :cond_3

    .line 26
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzcg;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzcl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzcl;->zza()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzrt;->zza(I)Lcom/google/android/gms/internal/firebase-auth-api/zzrt;

    .line 27
    :cond_3
    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzrt;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzrq;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 28
    :catch_0
    move-exception p0

    .line 29
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
