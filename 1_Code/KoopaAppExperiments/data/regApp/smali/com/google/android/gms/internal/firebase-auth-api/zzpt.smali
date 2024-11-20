.class final Lcom/google/android/gms/internal/firebase-auth-api/zzpt;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzxt;

.field private static final zzb:Lcom/google/android/gms/internal/firebase-auth-api/zznz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-auth-api/zznz<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzpo;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzor;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzc:Lcom/google/android/gms/internal/firebase-auth-api/zznv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-auth-api/zznv<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzor;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzmx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-auth-api/zzmx<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzph;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzos;",
            ">;"
        }
    .end annotation
.end field

.field private static final zze:Lcom/google/android/gms/internal/firebase-auth-api/zzmu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-auth-api/zzmu<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzos;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 71
    const-string v0, "type.googleapis.com/google.crypto.tink.AesCmacKey"

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzpf;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzxt;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzpt;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzxt;

    .line 72
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzps;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzps;

    const-class v2, Lcom/google/android/gms/internal/firebase-auth-api/zzpo;

    const-class v3, Lcom/google/android/gms/internal/firebase-auth-api/zzor;

    .line 73
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zznz;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzob;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/firebase-auth-api/zznz;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzpt;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zznz;

    .line 74
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzpv;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzpv;

    const-class v2, Lcom/google/android/gms/internal/firebase-auth-api/zzor;

    .line 75
    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zznv;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zznx;Lcom/google/android/gms/internal/firebase-auth-api/zzxt;Ljava/lang/Class;)Lcom/google/android/gms/internal/firebase-auth-api/zznv;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzpt;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zznv;

    .line 76
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzpu;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzpu;

    const-class v2, Lcom/google/android/gms/internal/firebase-auth-api/zzph;

    const-class v3, Lcom/google/android/gms/internal/firebase-auth-api/zzos;

    .line 77
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzmx;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzmz;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/firebase-auth-api/zzmx;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzpt;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzmx;

    .line 78
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzpx;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzpx;

    const-class v2, Lcom/google/android/gms/internal/firebase-auth-api/zzos;

    .line 79
    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzmu;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzmv;Lcom/google/android/gms/internal/firebase-auth-api/zzxt;Ljava/lang/Class;)Lcom/google/android/gms/internal/firebase-auth-api/zzmu;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzpt;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzmu;

    .line 80
    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/firebase-auth-api/zzpo;)Lcom/google/android/gms/internal/firebase-auth-api/zzor;
    .locals 4

    .line 1
    nop

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzvb;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzvb$zza;

    move-result-object v0

    .line 3
    const-string v1, "type.googleapis.com/google.crypto.tink.AesCmacKey"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzvb$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzvb$zza;

    move-result-object v0

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzsa;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzsa$zza;

    move-result-object v1

    .line 5
    nop

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzsb;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzsb$zza;

    move-result-object v2

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzpo;->zzb()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzsb$zza;->zza(I)Lcom/google/android/gms/internal/firebase-auth-api/zzsb$zza;

    move-result-object v2

    .line 8
    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzb;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/firebase-auth-api/zzair;

    check-cast v2, Lcom/google/android/gms/internal/firebase-auth-api/zzsb;

    .line 9
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzsa$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzsb;)Lcom/google/android/gms/internal/firebase-auth-api/zzsa$zza;

    move-result-object v1

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzpo;->zzc()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzsa$zza;->zza(I)Lcom/google/android/gms/internal/firebase-auth-api/zzsa$zza;

    move-result-object v1

    .line 11
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzb;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/zzair;

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/zzsa;

    .line 12
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzagu;->zzi()Lcom/google/android/gms/internal/firebase-auth-api/zzahd;

    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzvb$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzahd;)Lcom/google/android/gms/internal/firebase-auth-api/zzvb$zza;

    move-result-object v0

    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzpo;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzpo$zzb;

    move-result-object p0

    .line 15
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzpo$zzb;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzpo$zzb;

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 16
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzvs;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzvs;

    goto :goto_0

    .line 17
    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzpo$zzb;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzpo$zzb;

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 18
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzvs;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzvs;

    goto :goto_0

    .line 19
    :cond_1
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzpo$zzb;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzpo$zzb;

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 20
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzvs;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzvs;

    goto :goto_0

    .line 21
    :cond_2
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzpo$zzb;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzpo$zzb;

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 22
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzvs;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzvs;

    .line 24
    :goto_0
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzvb$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzvs;)Lcom/google/android/gms/internal/firebase-auth-api/zzvb$zza;

    move-result-object p0

    .line 25
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzb;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/zzair;

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/zzvb;

    .line 26
    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzor;->zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzvb;)Lcom/google/android/gms/internal/firebase-auth-api/zzor;

    move-result-object p0

    .line 27
    return-object p0

    .line 23
    :cond_3
    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to serialize variant: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/firebase-auth-api/zzos;Lcom/google/android/gms/internal/firebase-auth-api/zzcs;)Lcom/google/android/gms/internal/firebase-auth-api/zzph;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzpt;->zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzos;Lcom/google/android/gms/internal/firebase-auth-api/zzcs;)Lcom/google/android/gms/internal/firebase-auth-api/zzph;

    move-result-object p0

    return-object p0
.end method

.method private static zza(Lcom/google/android/gms/internal/firebase-auth-api/zzvs;)Lcom/google/android/gms/internal/firebase-auth-api/zzpo$zzb;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 48
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzpw;->zza:[I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzvs;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 53
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 54
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzvs;->zza()I

    move-result p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to parse OutputPrefixType: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :pswitch_0
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzpo$zzb;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzpo$zzb;

    return-object p0

    .line 51
    :pswitch_1
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzpo$zzb;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzpo$zzb;

    return-object p0

    .line 50
    :pswitch_2
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzpo$zzb;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzpo$zzb;

    return-object p0

    .line 49
    :pswitch_3
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzpo$zzb;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzpo$zzb;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/firebase-auth-api/zzor;)Lcom/google/android/gms/internal/firebase-auth-api/zzpo;
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzpt;->zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzor;)Lcom/google/android/gms/internal/firebase-auth-api/zzpo;

    move-result-object p0

    return-object p0
.end method

.method public static zza()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 81
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zznu;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zznu;

    move-result-object v0

    .line 82
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzpt;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zznz;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zznu;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zznz;)V

    .line 83
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzpt;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zznv;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zznu;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zznv;)V

    .line 84
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzpt;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzmx;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zznu;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzmx;)V

    .line 85
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzpt;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzmu;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zznu;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzmu;)V

    .line 86
    return-void
.end method

.method private static zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzos;Lcom/google/android/gms/internal/firebase-auth-api/zzcs;)Lcom/google/android/gms/internal/firebase-auth-api/zzph;
    .locals 4
    .param p1    # Lcom/google/android/gms/internal/firebase-auth-api/zzcs;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 28
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzos;->zzf()Ljava/lang/String;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.AesCmacKey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 30
    nop

    .line 31
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzos;->zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzahd;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaig;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzaig;

    move-result-object v1

    .line 32
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzrw;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzahd;Lcom/google/android/gms/internal/firebase-auth-api/zzaig;)Lcom/google/android/gms/internal/firebase-auth-api/zzrw;

    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzrw;->zza()I

    move-result v1

    if-nez v1, :cond_0

    .line 35
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzpo;->zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzpo$zza;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzrw;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzahd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzahd;->zzb()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzpo$zza;->zza(I)Lcom/google/android/gms/internal/firebase-auth-api/zzpo$zza;

    move-result-object v1

    .line 36
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzrw;->zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzsb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzsb;->zza()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzpo$zza;->zzb(I)Lcom/google/android/gms/internal/firebase-auth-api/zzpo$zza;

    move-result-object v1

    .line 37
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzos;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzvs;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzpt;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzvs;)Lcom/google/android/gms/internal/firebase-auth-api/zzpo$zzb;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzpo$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzpo$zzb;)Lcom/google/android/gms/internal/firebase-auth-api/zzpo$zza;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzpo$zza;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzpo;

    move-result-object v1

    .line 38
    new-instance v2, Lcom/google/android/gms/internal/firebase-auth-api/zzph$zza;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzph$zza;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzpj;)V

    .line 39
    nop

    .line 40
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzph$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzpo;)Lcom/google/android/gms/internal/firebase-auth-api/zzph$zza;

    move-result-object v1

    .line 41
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzrw;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzahd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahd;->zzg()[B

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzcs;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzcs;)Lcom/google/android/gms/internal/firebase-auth-api/zzcs;

    move-result-object p1

    .line 42
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzxu;->zza([BLcom/google/android/gms/internal/firebase-auth-api/zzcs;)Lcom/google/android/gms/internal/firebase-auth-api/zzxu;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzph$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzxu;)Lcom/google/android/gms/internal/firebase-auth-api/zzph$zza;

    move-result-object p1

    .line 43
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzos;->zze()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzph$zza;->zza(Ljava/lang/Integer;)Lcom/google/android/gms/internal/firebase-auth-api/zzph$zza;

    move-result-object p0

    .line 44
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzph$zza;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzph;

    move-result-object p0

    .line 45
    return-object p0

    .line 34
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Only version 0 keys are accepted"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lcom/google/android/gms/internal/firebase-auth-api/zzaja; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    .line 47
    :goto_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Parsing AesCmacKey failed"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 29
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Wrong type URL in call to AesCmacProtoSerialization.parseKey"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzor;)Lcom/google/android/gms/internal/firebase-auth-api/zzpo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 55
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzor;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzvb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzvb;->zzf()Ljava/lang/String;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.AesCmacKey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    nop

    .line 59
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzor;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzvb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzvb;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzahd;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaig;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzaig;

    move-result-object v1

    .line 60
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzsa;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzahd;Lcom/google/android/gms/internal/firebase-auth-api/zzaig;)Lcom/google/android/gms/internal/firebase-auth-api/zzsa;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/firebase-auth-api/zzaja; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    nop

    .line 64
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzpo;->zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzpo$zza;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzsa;->zza()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzpo$zza;->zza(I)Lcom/google/android/gms/internal/firebase-auth-api/zzpo$zza;

    move-result-object v1

    .line 65
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzsa;->zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzsb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzsb;->zza()I

    move-result v0

    .line 66
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzpo$zza;->zzb(I)Lcom/google/android/gms/internal/firebase-auth-api/zzpo$zza;

    move-result-object v0

    .line 67
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzor;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzvb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzvb;->zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzvs;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzpt;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzvs;)Lcom/google/android/gms/internal/firebase-auth-api/zzpo$zzb;

    move-result-object p0

    .line 68
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzpo$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzpo$zzb;)Lcom/google/android/gms/internal/firebase-auth-api/zzpo$zza;

    move-result-object p0

    .line 69
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzpo$zza;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzpo;

    move-result-object p0

    .line 70
    return-object p0

    .line 62
    :catch_0
    move-exception p0

    .line 63
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Parsing AesCmacParameters failed: "

    invoke-direct {v0, v1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 56
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 57
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzor;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzvb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzvb;->zzf()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Wrong type URL in call to AesCmacProtoSerialization.parseParameters: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
