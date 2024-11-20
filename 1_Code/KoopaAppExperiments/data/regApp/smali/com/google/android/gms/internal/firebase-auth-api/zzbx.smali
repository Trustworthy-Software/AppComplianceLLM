.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzbx;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzvg;

.field private final zzb:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzbz;",
            ">;"
        }
    .end annotation
.end field

.field private final zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzrn;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzvg;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzvg;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzbz;",
            ">;)V"
        }
    .end annotation

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbx;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzvg;

    .line 134
    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbx;->zzb:Ljava/util/List;

    .line 135
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/zzrn;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzrn;

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbx;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzrn;

    .line 136
    return-void
.end method

.method public static final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzca;Lcom/google/android/gms/internal/firebase-auth-api/zzbg;)Lcom/google/android/gms/internal/firebase-auth-api/zzbx;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 23
    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 24
    invoke-interface {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzca;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzua;

    move-result-object p0

    .line 25
    nop

    .line 26
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzua;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzahd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahd;->zzb()I

    move-result v1

    if-eqz v1, :cond_0

    .line 28
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzbx;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzua;Lcom/google/android/gms/internal/firebase-auth-api/zzbg;[B)Lcom/google/android/gms/internal/firebase-auth-api/zzvg;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzbx;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzvg;)Lcom/google/android/gms/internal/firebase-auth-api/zzbx;

    move-result-object p0

    .line 29
    return-object p0

    .line 27
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "empty keyset"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzvg;)Lcom/google/android/gms/internal/firebase-auth-api/zzbx;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzbx;->zzc(Lcom/google/android/gms/internal/firebase-auth-api/zzvg;)V

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzbx;->zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzvg;)Ljava/util/List;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzbx;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzbx;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzvg;Ljava/util/List;)V

    return-object v1
.end method

.method private static zza(Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;)Lcom/google/android/gms/internal/firebase-auth-api/zzos;
    .locals 4

    .line 30
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;->zza()I

    move-result v0

    .line 31
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzvs;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzvs;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzvs;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 32
    :goto_0
    nop

    .line 33
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzuy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzuy;->zzf()Ljava/lang/String;

    move-result-object v1

    .line 34
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzuy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzuy;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzahd;

    move-result-object v2

    .line 35
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzuy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzuy;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzuy$zza;

    move-result-object v3

    .line 36
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzvs;

    move-result-object p0

    .line 37
    invoke-static {v1, v2, v3, p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzos;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzahd;Lcom/google/android/gms/internal/firebase-auth-api/zzuy$zza;Lcom/google/android/gms/internal/firebase-auth-api/zzvs;Ljava/lang/Integer;)Lcom/google/android/gms/internal/firebase-auth-api/zzos;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 38
    :catch_0
    move-exception p0

    .line 39
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzpd;

    const-string v1, "Creating a protokey serialization failed"

    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzpd;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static zza(Lcom/google/android/gms/internal/firebase-auth-api/zzvg;Lcom/google/android/gms/internal/firebase-auth-api/zzbg;[B)Lcom/google/android/gms/internal/firebase-auth-api/zzua;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 40
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzagu;->zzj()[B

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzbg;->zzb([B[B)[B

    move-result-object v0

    .line 41
    nop

    .line 42
    :try_start_0
    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzbg;->zza([B[B)[B

    move-result-object p1

    .line 43
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaig;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzaig;

    move-result-object p2

    .line 44
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzvg;->zza([BLcom/google/android/gms/internal/firebase-auth-api/zzaig;)Lcom/google/android/gms/internal/firebase-auth-api/zzvg;

    move-result-object p1

    .line 45
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzair;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/firebase-auth-api/zzaja; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    .line 47
    nop

    .line 50
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzua;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzua$zza;

    move-result-object p1

    .line 51
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahd;->zza([B)Lcom/google/android/gms/internal/firebase-auth-api/zzahd;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzua$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzahd;)Lcom/google/android/gms/internal/firebase-auth-api/zzua$zza;

    move-result-object p1

    .line 52
    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzcx;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzvg;)Lcom/google/android/gms/internal/firebase-auth-api/zzvj;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzua$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzvj;)Lcom/google/android/gms/internal/firebase-auth-api/zzua$zza;

    move-result-object p0

    .line 53
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzb;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/zzair;

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/zzua;

    .line 54
    return-object p0

    .line 46
    :cond_0
    :try_start_1
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "cannot encrypt keyset"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catch Lcom/google/android/gms/internal/firebase-auth-api/zzaja; {:try_start_1 .. :try_end_1} :catch_0

    .line 48
    :catch_0
    move-exception p0

    .line 49
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "invalid keyset, corrupted key material"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static zza(Lcom/google/android/gms/internal/firebase-auth-api/zzua;Lcom/google/android/gms/internal/firebase-auth-api/zzbg;[B)Lcom/google/android/gms/internal/firebase-auth-api/zzvg;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 55
    nop

    .line 56
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzua;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzahd;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahd;->zzg()[B

    move-result-object p0

    invoke-interface {p1, p0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzbg;->zza([B[B)[B

    move-result-object p0

    .line 57
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaig;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzaig;

    move-result-object p1

    .line 58
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzvg;->zza([BLcom/google/android/gms/internal/firebase-auth-api/zzaig;)Lcom/google/android/gms/internal/firebase-auth-api/zzvg;

    move-result-object p0

    .line 59
    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzbx;->zzc(Lcom/google/android/gms/internal/firebase-auth-api/zzvg;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/firebase-auth-api/zzaja; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    return-object p0

    .line 61
    :catch_0
    move-exception p0

    .line 62
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "invalid keyset, corrupted key material"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static zza(Lcom/google/android/gms/internal/firebase-auth-api/zzmp;Lcom/google/android/gms/internal/firebase-auth-api/zzbt;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzmp;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzbt;",
            "Ljava/lang/Class<",
            "TB;>;)TB;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 65
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzmp;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzbt;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 66
    :catch_0
    move-exception p0

    .line 67
    const/4 p0, 0x0

    return-object p0
.end method

.method private static zza(Lcom/google/android/gms/internal/firebase-auth-api/zzmp;Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzmp;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;",
            "Ljava/lang/Class<",
            "TB;>;)TB;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 68
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzuy;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzmp;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzuy;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 74
    :catch_0
    move-exception p0

    .line 75
    return-object v0

    .line 69
    :catch_1
    move-exception p0

    .line 70
    invoke-virtual {p0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "No key manager found for key type "

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 71
    invoke-virtual {p0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, " not supported by key manager of type "

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    throw p0

    .line 72
    :cond_1
    :goto_0
    return-object v0
.end method

.method private static zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzvg;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzvg;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzbz;",
            ">;"
        }
    .end annotation

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzvg;->zza()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 112
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzvg;->zze()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;

    .line 113
    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;->zza()I

    move-result v6

    .line 114
    invoke-static {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzbx;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;)Lcom/google/android/gms/internal/firebase-auth-api/zzos;

    move-result-object v3

    .line 115
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zznu;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zznu;

    move-result-object v4

    .line 116
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzcs;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzcs;

    move-result-object v5

    .line 117
    invoke-virtual {v4, v3, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zznu;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzos;Lcom/google/android/gms/internal/firebase-auth-api/zzcs;)Lcom/google/android/gms/internal/firebase-auth-api/zzbt;

    move-result-object v4

    .line 118
    new-instance v9, Lcom/google/android/gms/internal/firebase-auth-api/zzbz;

    .line 119
    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzuz;

    move-result-object v2

    .line 120
    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzbw;->zza:[I

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzuz;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    .line 124
    new-instance v2, Ljava/security/GeneralSecurityException;

    goto :goto_3

    .line 123
    :pswitch_0
    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzbv;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzbv;

    move-object v5, v2

    goto :goto_1

    .line 122
    :pswitch_1
    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzbv;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzbv;

    move-object v5, v2

    goto :goto_1

    .line 121
    :pswitch_2
    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzbv;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzbv;

    move-object v5, v2

    .line 125
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzvg;->zzb()I

    move-result v2

    if-ne v6, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_2

    :cond_0
    const/4 v2, 0x0

    :goto_2
    move v7, v2

    const/4 v8, 0x0

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/firebase-auth-api/zzbz;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzbt;Lcom/google/android/gms/internal/firebase-auth-api/zzbv;IZLcom/google/android/gms/internal/firebase-auth-api/zzby;)V

    .line 126
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    goto :goto_0

    .line 124
    :goto_3
    const-string v3, "Unknown key status"

    invoke-direct {v2, v3}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :catch_0
    move-exception v2

    .line 129
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    goto :goto_0

    .line 131
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static zzc(Lcom/google/android/gms/internal/firebase-auth-api/zzvg;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 137
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzvg;->zza()I

    move-result p0

    if-lez p0, :cond_0

    .line 139
    return-void

    .line 138
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "empty keyset"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .line 108
    nop

    .line 109
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbx;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzvg;

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzcx;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzvg;)Lcom/google/android/gms/internal/firebase-auth-api/zzvj;

    move-result-object v0

    .line 110
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzair;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()Lcom/google/android/gms/internal/firebase-auth-api/zzbx;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbx;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzvg;

    if-eqz v0, :cond_2

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzvg;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zza;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbx;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzvg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzvg;->zze()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;

    .line 8
    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzuy;

    move-result-object v3

    .line 9
    invoke-virtual {v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzuy;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzuy$zza;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/internal/firebase-auth-api/zzuy$zza;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzuy$zza;

    if-ne v4, v5, :cond_0

    .line 11
    nop

    .line 12
    invoke-virtual {v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzuy;->zzf()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzuy;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzahd;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzct;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzahd;)Lcom/google/android/gms/internal/firebase-auth-api/zzuy;

    move-result-object v3

    .line 13
    nop

    .line 14
    invoke-static {v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzct;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzuy;)Ljava/lang/Object;

    .line 15
    nop

    .line 16
    nop

    .line 17
    nop

    .line 18
    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzair;->zzm()Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzb;

    move-result-object v2

    .line 19
    move-object v4, v2

    check-cast v4, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzb;

    check-cast v2, Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb$zza;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzuy;)Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb$zza;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzb;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/firebase-auth-api/zzair;

    check-cast v2, Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;)Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zza;

    .line 20
    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "The keyset contains a non-private key"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 21
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbx;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzvg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzvg;->zzb()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zza;->zza(I)Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zza;

    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzb;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzair;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzvg;

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzbx;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzvg;)Lcom/google/android/gms/internal/firebase-auth-api/zzbx;

    move-result-object v0

    return-object v0

    .line 5
    :cond_2
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "cleartext keyset is not available"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zza(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TP;>;)TP;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 76
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzow;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzow;

    move-result-object v0

    .line 77
    instance-of v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzmp;

    if-eqz v1, :cond_7

    .line 79
    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzmp;

    .line 80
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzmp;->zza(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 81
    if-eqz v1, :cond_6

    .line 83
    nop

    .line 84
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbx;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzvg;

    invoke-static {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzcx;->zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzvg;)V

    .line 85
    nop

    .line 86
    new-instance v2, Lcom/google/android/gms/internal/firebase-auth-api/zzcj;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzcj;-><init>(Ljava/lang/Class;Lcom/google/android/gms/internal/firebase-auth-api/zzci;)V

    .line 87
    nop

    .line 88
    iget-object v4, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbx;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzrn;

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzcj;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzrn;)Lcom/google/android/gms/internal/firebase-auth-api/zzcj;

    .line 89
    const/4 v4, 0x0

    .line 90
    :goto_0
    iget-object v5, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbx;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzvg;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzvg;->zza()I

    move-result v5

    .line 91
    if-ge v4, v5, :cond_5

    .line 92
    iget-object v5, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbx;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzvg;

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzvg;->zza(I)Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;

    move-result-object v5

    .line 93
    invoke-virtual {v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzuz;

    move-result-object v6

    sget-object v7, Lcom/google/android/gms/internal/firebase-auth-api/zzuz;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzuz;

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/firebase-auth-api/zzuz;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 94
    invoke-static {v0, v5, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzbx;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzmp;Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    .line 95
    nop

    .line 96
    iget-object v7, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbx;->zzb:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 97
    iget-object v7, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbx;->zzb:Ljava/util/List;

    .line 98
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/firebase-auth-api/zzbz;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/firebase-auth-api/zzbz;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzbt;

    move-result-object v7

    invoke-static {v0, v7, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzbx;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzmp;Lcom/google/android/gms/internal/firebase-auth-api/zzbt;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_1

    .line 96
    :cond_0
    move-object v7, v3

    .line 99
    :goto_1
    if-nez v7, :cond_2

    if-eqz v6, :cond_1

    goto :goto_2

    .line 100
    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 101
    invoke-virtual {v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzuy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzuy;->zzf()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to get primitive "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " for key of type "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 102
    :cond_2
    :goto_2
    invoke-virtual {v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;->zza()I

    move-result v8

    iget-object v9, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbx;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzvg;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/firebase-auth-api/zzvg;->zzb()I

    move-result v9

    if-ne v8, v9, :cond_3

    .line 103
    invoke-virtual {v2, v7, v6, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzcj;->zzb(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;)Lcom/google/android/gms/internal/firebase-auth-api/zzcj;

    goto :goto_3

    .line 104
    :cond_3
    invoke-virtual {v2, v7, v6, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzcj;->zza(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;)Lcom/google/android/gms/internal/firebase-auth-api/zzcj;

    .line 105
    :cond_4
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 106
    :cond_5
    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzcj;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzcg;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzmp;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzcg;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    .line 107
    return-object p1

    .line 82
    :cond_6
    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No wrapper found for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_7
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "Currently only subclasses of InternalConfiguration are accepted"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzcd;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbx;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzvg;

    .line 145
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzvg;->zze()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;

    .line 146
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzuy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzuy;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzuy$zza;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzuy$zza;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzuy$zza;

    if-eq v2, v3, :cond_0

    .line 147
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzuy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzuy;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzuy$zza;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzuy$zza;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzuy$zza;

    if-eq v2, v3, :cond_0

    .line 148
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzuy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzuy;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzuy$zza;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzuy$zza;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzuy$zza;

    if-eq v2, v3, :cond_0

    .line 152
    goto :goto_0

    .line 149
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 150
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzuy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzuy;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzuy$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzuy$zza;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzuy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzuy;->zzf()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 151
    const-string v1, "keyset contains key material of type %s for type url %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbx;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzvg;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzcd;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzvg;)V

    .line 154
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzcd;Lcom/google/android/gms/internal/firebase-auth-api/zzbg;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 140
    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 141
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbx;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzvg;

    invoke-static {v1, p2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzbx;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzvg;Lcom/google/android/gms/internal/firebase-auth-api/zzbg;[B)Lcom/google/android/gms/internal/firebase-auth-api/zzua;

    move-result-object p2

    .line 142
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzcd;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzua;)V

    .line 143
    return-void
.end method

.method final zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzvg;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbx;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzvg;

    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzvj;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbx;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzvg;

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzcx;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzvg;)Lcom/google/android/gms/internal/firebase-auth-api/zzvj;

    move-result-object v0

    return-object v0
.end method
