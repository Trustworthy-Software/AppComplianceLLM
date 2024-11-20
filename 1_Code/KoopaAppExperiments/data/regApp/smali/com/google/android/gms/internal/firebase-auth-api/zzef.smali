.class final Lcom/google/android/gms/internal/firebase-auth-api/zzef;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzxt;

.field private static final zzb:Lcom/google/android/gms/internal/firebase-auth-api/zznz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-auth-api/zznz<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzed;",
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
            "Lcom/google/android/gms/internal/firebase-auth-api/zzdw;",
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

    .line 76
    const-string v0, "type.googleapis.com/google.crypto.tink.AesEaxKey"

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzpf;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzxt;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzef;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzxt;

    .line 77
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzei;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzei;

    const-class v2, Lcom/google/android/gms/internal/firebase-auth-api/zzed;

    const-class v3, Lcom/google/android/gms/internal/firebase-auth-api/zzor;

    .line 78
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zznz;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzob;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/firebase-auth-api/zznz;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzef;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zznz;

    .line 79
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzeh;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzeh;

    const-class v2, Lcom/google/android/gms/internal/firebase-auth-api/zzor;

    .line 80
    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zznv;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zznx;Lcom/google/android/gms/internal/firebase-auth-api/zzxt;Ljava/lang/Class;)Lcom/google/android/gms/internal/firebase-auth-api/zznv;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzef;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zznv;

    .line 81
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzek;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzek;

    const-class v2, Lcom/google/android/gms/internal/firebase-auth-api/zzdw;

    const-class v3, Lcom/google/android/gms/internal/firebase-auth-api/zzos;

    .line 82
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzmx;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzmz;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/firebase-auth-api/zzmx;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzef;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzmx;

    .line 83
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzej;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzej;

    const-class v2, Lcom/google/android/gms/internal/firebase-auth-api/zzos;

    .line 84
    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzmu;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzmv;Lcom/google/android/gms/internal/firebase-auth-api/zzxt;Ljava/lang/Class;)Lcom/google/android/gms/internal/firebase-auth-api/zzmu;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzef;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzmu;

    .line 85
    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/firebase-auth-api/zzos;Lcom/google/android/gms/internal/firebase-auth-api/zzcs;)Lcom/google/android/gms/internal/firebase-auth-api/zzdw;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzef;->zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzos;Lcom/google/android/gms/internal/firebase-auth-api/zzcs;)Lcom/google/android/gms/internal/firebase-auth-api/zzdw;

    move-result-object p0

    return-object p0
.end method

.method private static zza(Lcom/google/android/gms/internal/firebase-auth-api/zzvs;)Lcom/google/android/gms/internal/firebase-auth-api/zzed$zzb;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 25
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzem;->zza:[I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzvs;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 29
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 30
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

    .line 28
    :pswitch_0
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzed$zzb;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzed$zzb;

    return-object p0

    .line 27
    :pswitch_1
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzed$zzb;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzed$zzb;

    return-object p0

    .line 26
    :pswitch_2
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzed$zzb;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzed$zzb;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/firebase-auth-api/zzor;)Lcom/google/android/gms/internal/firebase-auth-api/zzed;
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzef;->zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzor;)Lcom/google/android/gms/internal/firebase-auth-api/zzed;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/firebase-auth-api/zzed;)Lcom/google/android/gms/internal/firebase-auth-api/zzor;
    .locals 4

    .line 47
    nop

    .line 48
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzvb;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzvb$zza;

    move-result-object v0

    .line 49
    const-string v1, "type.googleapis.com/google.crypto.tink.AesEaxKey"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzvb$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzvb$zza;

    move-result-object v0

    .line 50
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzsq;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzsq$zza;

    move-result-object v1

    .line 51
    nop

    .line 52
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzed;->zzd()I

    move-result v2

    const/16 v3, 0x10

    if-ne v2, v3, :cond_3

    .line 56
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzsr;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzsr$zza;

    move-result-object v2

    .line 57
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzed;->zzb()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzsr$zza;->zza(I)Lcom/google/android/gms/internal/firebase-auth-api/zzsr$zza;

    move-result-object v2

    .line 58
    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzb;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/firebase-auth-api/zzair;

    check-cast v2, Lcom/google/android/gms/internal/firebase-auth-api/zzsr;

    .line 59
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzsq$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzsr;)Lcom/google/android/gms/internal/firebase-auth-api/zzsq$zza;

    move-result-object v1

    .line 60
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzed;->zzc()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzsq$zza;->zza(I)Lcom/google/android/gms/internal/firebase-auth-api/zzsq$zza;

    move-result-object v1

    .line 61
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzb;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/zzair;

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/zzsq;

    .line 62
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzagu;->zzi()Lcom/google/android/gms/internal/firebase-auth-api/zzahd;

    move-result-object v1

    .line 63
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzvb$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzahd;)Lcom/google/android/gms/internal/firebase-auth-api/zzvb$zza;

    move-result-object v0

    .line 64
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzed;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzed$zzb;

    move-result-object p0

    .line 65
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzed$zzb;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzed$zzb;

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzvs;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzvs;

    goto :goto_0

    .line 67
    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzed$zzb;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzed$zzb;

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 68
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzvs;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzvs;

    goto :goto_0

    .line 69
    :cond_1
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzed$zzb;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzed$zzb;

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 70
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzvs;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzvs;

    .line 72
    :goto_0
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzvb$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzvs;)Lcom/google/android/gms/internal/firebase-auth-api/zzvb$zza;

    move-result-object p0

    .line 73
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzb;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/zzair;

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/zzvb;

    .line 74
    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzor;->zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzvb;)Lcom/google/android/gms/internal/firebase-auth-api/zzor;

    move-result-object p0

    .line 75
    return-object p0

    .line 71
    :cond_2
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

    .line 53
    :cond_3
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 54
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzed;->zzd()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 55
    const-string v1, "Invalid tag size in bytes %d. Currently Tink only supports aes eax keys with tag size equal to 16 bytes."

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static zza()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 86
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zznu;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zznu;

    move-result-object v0

    .line 87
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzef;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zznz;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zznu;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zznz;)V

    .line 88
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzef;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zznv;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zznu;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zznv;)V

    .line 89
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzef;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzmx;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zznu;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzmx;)V

    .line 90
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzef;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzmu;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zznu;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzmu;)V

    .line 91
    return-void
.end method

.method private static zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzos;Lcom/google/android/gms/internal/firebase-auth-api/zzcs;)Lcom/google/android/gms/internal/firebase-auth-api/zzdw;
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

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzos;->zzf()Ljava/lang/String;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.AesEaxKey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    nop

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzos;->zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzahd;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaig;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzaig;

    move-result-object v1

    .line 5
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzsn;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzahd;Lcom/google/android/gms/internal/firebase-auth-api/zzaig;)Lcom/google/android/gms/internal/firebase-auth-api/zzsn;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzsn;->zza()I

    move-result v1

    if-nez v1, :cond_0

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzed;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzed$zza;

    move-result-object v1

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzsn;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzahd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzahd;->zzb()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzed$zza;->zzb(I)Lcom/google/android/gms/internal/firebase-auth-api/zzed$zza;

    move-result-object v1

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzsn;->zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzsr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzsr;->zza()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzed$zza;->zza(I)Lcom/google/android/gms/internal/firebase-auth-api/zzed$zza;

    move-result-object v1

    .line 11
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzed$zza;->zzc(I)Lcom/google/android/gms/internal/firebase-auth-api/zzed$zza;

    move-result-object v1

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzos;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzvs;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzef;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzvs;)Lcom/google/android/gms/internal/firebase-auth-api/zzed$zzb;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzed$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzed$zzb;)Lcom/google/android/gms/internal/firebase-auth-api/zzed$zza;

    move-result-object v1

    .line 13
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzed$zza;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzed;

    move-result-object v1

    .line 14
    new-instance v2, Lcom/google/android/gms/internal/firebase-auth-api/zzdw$zza;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzdw$zza;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzdy;)V

    .line 15
    nop

    .line 16
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzdw$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzed;)Lcom/google/android/gms/internal/firebase-auth-api/zzdw$zza;

    move-result-object v1

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzsn;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzahd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahd;->zzg()[B

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzcs;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzcs;)Lcom/google/android/gms/internal/firebase-auth-api/zzcs;

    move-result-object p1

    .line 18
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzxu;->zza([BLcom/google/android/gms/internal/firebase-auth-api/zzcs;)Lcom/google/android/gms/internal/firebase-auth-api/zzxu;

    move-result-object p1

    .line 19
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzdw$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzxu;)Lcom/google/android/gms/internal/firebase-auth-api/zzdw$zza;

    move-result-object p1

    .line 20
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzos;->zze()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzdw$zza;->zza(Ljava/lang/Integer;)Lcom/google/android/gms/internal/firebase-auth-api/zzdw$zza;

    move-result-object p0

    .line 21
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzdw$zza;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzdw;

    move-result-object p0

    .line 22
    return-object p0

    .line 7
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Only version 0 keys are accepted"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lcom/google/android/gms/internal/firebase-auth-api/zzaja; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Parsing AesEaxcKey failed"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Wrong type URL in call to AesEaxProtoSerialization.parseKey"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzor;)Lcom/google/android/gms/internal/firebase-auth-api/zzed;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 31
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzor;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzvb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzvb;->zzf()Ljava/lang/String;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.AesEaxKey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    nop

    .line 35
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzor;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzvb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzvb;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzahd;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaig;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzaig;

    move-result-object v1

    .line 36
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzsq;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzahd;Lcom/google/android/gms/internal/firebase-auth-api/zzaig;)Lcom/google/android/gms/internal/firebase-auth-api/zzsq;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/firebase-auth-api/zzaja; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    nop

    .line 40
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzed;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzed$zza;

    move-result-object v1

    .line 41
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzsq;->zza()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzed$zza;->zzb(I)Lcom/google/android/gms/internal/firebase-auth-api/zzed$zza;

    move-result-object v1

    .line 42
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzsq;->zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzsr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzsr;->zza()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzed$zza;->zza(I)Lcom/google/android/gms/internal/firebase-auth-api/zzed$zza;

    move-result-object v0

    .line 43
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzed$zza;->zzc(I)Lcom/google/android/gms/internal/firebase-auth-api/zzed$zza;

    move-result-object v0

    .line 44
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzor;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzvb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzvb;->zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzvs;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzef;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzvs;)Lcom/google/android/gms/internal/firebase-auth-api/zzed$zzb;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzed$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzed$zzb;)Lcom/google/android/gms/internal/firebase-auth-api/zzed$zza;

    move-result-object p0

    .line 45
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzed$zza;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzed;

    move-result-object p0

    .line 46
    return-object p0

    .line 38
    :catch_0
    move-exception p0

    .line 39
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Parsing AesEaxParameters failed: "

    invoke-direct {v0, v1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 32
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 33
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzor;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzvb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzvb;->zzf()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Wrong type URL in call to AesEaxProtoSerialization.parseParameters: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
