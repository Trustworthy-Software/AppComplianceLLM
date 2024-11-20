.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzke;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzxt;

.field private static final zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzxt;

.field private static final zzc:Lcom/google/android/gms/internal/firebase-auth-api/zznz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-auth-api/zznz<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzka;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzor;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzd:Lcom/google/android/gms/internal/firebase-auth-api/zznv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-auth-api/zznv<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzor;",
            ">;"
        }
    .end annotation
.end field

.field private static final zze:Lcom/google/android/gms/internal/firebase-auth-api/zzmx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-auth-api/zzmx<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzkn;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzos;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzmu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-auth-api/zzmu<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzos;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzg:Lcom/google/android/gms/internal/firebase-auth-api/zzmx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-auth-api/zzmx<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzkf;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzos;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzh:Lcom/google/android/gms/internal/firebase-auth-api/zzmu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-auth-api/zzmu<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzos;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzi:Lcom/google/android/gms/internal/firebase-auth-api/zzmi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-auth-api/zzmi<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzvs;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzf;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzj:Lcom/google/android/gms/internal/firebase-auth-api/zzmi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-auth-api/zzmi<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzuo;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzd;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzk:Lcom/google/android/gms/internal/firebase-auth-api/zzmi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-auth-api/zzmi<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzum;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzka$zze;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzl:Lcom/google/android/gms/internal/firebase-auth-api/zzmi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-auth-api/zzmi<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzuk;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzka$zza;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 87
    const-string v0, "type.googleapis.com/google.crypto.tink.HpkePrivateKey"

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzpf;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzxt;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzke;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzxt;

    .line 88
    const-string v1, "type.googleapis.com/google.crypto.tink.HpkePublicKey"

    invoke-static {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzpf;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzxt;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzke;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzxt;

    .line 89
    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzkh;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzkh;

    const-class v3, Lcom/google/android/gms/internal/firebase-auth-api/zzka;

    const-class v4, Lcom/google/android/gms/internal/firebase-auth-api/zzor;

    .line 90
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zznz;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzob;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/firebase-auth-api/zznz;

    move-result-object v2

    sput-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzke;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zznz;

    .line 91
    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzkg;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzkg;

    const-class v3, Lcom/google/android/gms/internal/firebase-auth-api/zzor;

    .line 92
    invoke-static {v2, v0, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zznv;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zznx;Lcom/google/android/gms/internal/firebase-auth-api/zzxt;Ljava/lang/Class;)Lcom/google/android/gms/internal/firebase-auth-api/zznv;

    move-result-object v2

    sput-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzke;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zznv;

    .line 93
    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzkj;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzkj;

    const-class v3, Lcom/google/android/gms/internal/firebase-auth-api/zzkn;

    const-class v4, Lcom/google/android/gms/internal/firebase-auth-api/zzos;

    .line 94
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzmx;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzmz;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/firebase-auth-api/zzmx;

    move-result-object v2

    sput-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzke;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzmx;

    .line 95
    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzki;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzki;

    const-class v3, Lcom/google/android/gms/internal/firebase-auth-api/zzos;

    .line 96
    invoke-static {v2, v1, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzmu;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzmv;Lcom/google/android/gms/internal/firebase-auth-api/zzxt;Ljava/lang/Class;)Lcom/google/android/gms/internal/firebase-auth-api/zzmu;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzke;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzmu;

    .line 97
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzkl;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzkl;

    const-class v2, Lcom/google/android/gms/internal/firebase-auth-api/zzkf;

    const-class v3, Lcom/google/android/gms/internal/firebase-auth-api/zzos;

    .line 98
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzmx;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzmz;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/firebase-auth-api/zzmx;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzke;->zzg:Lcom/google/android/gms/internal/firebase-auth-api/zzmx;

    .line 99
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzkk;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzkk;

    const-class v2, Lcom/google/android/gms/internal/firebase-auth-api/zzos;

    .line 100
    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzmu;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzmv;Lcom/google/android/gms/internal/firebase-auth-api/zzxt;Ljava/lang/Class;)Lcom/google/android/gms/internal/firebase-auth-api/zzmu;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzke;->zzh:Lcom/google/android/gms/internal/firebase-auth-api/zzmu;

    .line 101
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzmi;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzml;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzvs;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzvs;

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzf;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzf;

    .line 102
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzml;->zza(Ljava/lang/Enum;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/zzml;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzvs;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzvs;

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzf;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzf;

    .line 103
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzml;->zza(Ljava/lang/Enum;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/zzml;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzvs;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzvs;

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzf;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzf;

    .line 104
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzml;->zza(Ljava/lang/Enum;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/zzml;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzvs;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzvs;

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzf;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzf;

    .line 105
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzml;->zza(Ljava/lang/Enum;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/zzml;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzml;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzmi;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzke;->zzi:Lcom/google/android/gms/internal/firebase-auth-api/zzmi;

    .line 107
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzmi;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzml;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzuo;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzuo;

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzd;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzd;

    .line 108
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzml;->zza(Ljava/lang/Enum;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/zzml;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzuo;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzuo;

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzd;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzd;

    .line 109
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzml;->zza(Ljava/lang/Enum;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/zzml;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzuo;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzuo;

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzd;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzd;

    .line 110
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzml;->zza(Ljava/lang/Enum;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/zzml;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzuo;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzuo;

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzd;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzd;

    .line 111
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzml;->zza(Ljava/lang/Enum;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/zzml;

    move-result-object v0

    .line 112
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzml;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzmi;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzke;->zzj:Lcom/google/android/gms/internal/firebase-auth-api/zzmi;

    .line 113
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzmi;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzml;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzum;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzum;

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zze;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zze;

    .line 114
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzml;->zza(Ljava/lang/Enum;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/zzml;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzum;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzum;

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zze;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zze;

    .line 115
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzml;->zza(Ljava/lang/Enum;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/zzml;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzum;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzum;

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zze;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zze;

    .line 116
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzml;->zza(Ljava/lang/Enum;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/zzml;

    move-result-object v0

    .line 117
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzml;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzmi;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzke;->zzk:Lcom/google/android/gms/internal/firebase-auth-api/zzmi;

    .line 118
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzmi;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzml;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzuk;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzuk;

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zza;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zza;

    .line 119
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzml;->zza(Ljava/lang/Enum;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/zzml;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzuk;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzuk;

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zza;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zza;

    .line 120
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzml;->zza(Ljava/lang/Enum;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/zzml;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzuk;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzuk;

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zza;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zza;

    .line 121
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzml;->zza(Ljava/lang/Enum;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/zzml;

    move-result-object v0

    .line 122
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzml;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzmi;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzke;->zzl:Lcom/google/android/gms/internal/firebase-auth-api/zzmi;

    .line 123
    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/firebase-auth-api/zzor;)Lcom/google/android/gms/internal/firebase-auth-api/zzka;
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzke;->zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzor;)Lcom/google/android/gms/internal/firebase-auth-api/zzka;

    move-result-object p0

    return-object p0
.end method

.method private static zza(Lcom/google/android/gms/internal/firebase-auth-api/zzvs;Lcom/google/android/gms/internal/firebase-auth-api/zzur;)Lcom/google/android/gms/internal/firebase-auth-api/zzka;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzka;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzke;->zzi:Lcom/google/android/gms/internal/firebase-auth-api/zzmi;

    .line 2
    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzmi;->zza(Ljava/lang/Enum;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzf;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzf;)Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;

    move-result-object p0

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzke;->zzj:Lcom/google/android/gms/internal/firebase-auth-api/zzmi;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzur;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzuo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzmi;->zza(Ljava/lang/Enum;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzd;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzd;)Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;

    move-result-object p0

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzke;->zzk:Lcom/google/android/gms/internal/firebase-auth-api/zzmi;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzur;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzum;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzmi;->zza(Ljava/lang/Enum;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zze;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzka$zze;)Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;

    move-result-object p0

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzke;->zzl:Lcom/google/android/gms/internal/firebase-auth-api/zzmi;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzur;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzuk;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzmi;->zza(Ljava/lang/Enum;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zza;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzka$zza;)Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;

    move-result-object p0

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzka;

    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/firebase-auth-api/zzos;Lcom/google/android/gms/internal/firebase-auth-api/zzcs;)Lcom/google/android/gms/internal/firebase-auth-api/zzkf;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzke;->zzc(Lcom/google/android/gms/internal/firebase-auth-api/zzos;Lcom/google/android/gms/internal/firebase-auth-api/zzcs;)Lcom/google/android/gms/internal/firebase-auth-api/zzkf;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/firebase-auth-api/zzka;)Lcom/google/android/gms/internal/firebase-auth-api/zzor;
    .locals 5

    .line 64
    nop

    .line 65
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzvb;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzvb$zza;

    move-result-object v0

    .line 66
    const-string v1, "type.googleapis.com/google.crypto.tink.HpkePrivateKey"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzvb$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzvb$zza;

    move-result-object v0

    .line 67
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzuq;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzuq$zza;

    move-result-object v1

    .line 68
    nop

    .line 69
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzur;->zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzur$zza;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzke;->zzj:Lcom/google/android/gms/internal/firebase-auth-api/zzmi;

    .line 70
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzka;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzd;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzmi;->zza(Ljava/lang/Object;)Ljava/lang/Enum;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/firebase-auth-api/zzuo;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzur$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzuo;)Lcom/google/android/gms/internal/firebase-auth-api/zzur$zza;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzke;->zzk:Lcom/google/android/gms/internal/firebase-auth-api/zzmi;

    .line 71
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzka;->zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzka$zze;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzmi;->zza(Ljava/lang/Object;)Ljava/lang/Enum;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/firebase-auth-api/zzum;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzur$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzum;)Lcom/google/android/gms/internal/firebase-auth-api/zzur$zza;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzke;->zzl:Lcom/google/android/gms/internal/firebase-auth-api/zzmi;

    .line 72
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzka;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzka$zza;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzmi;->zza(Ljava/lang/Object;)Ljava/lang/Enum;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/firebase-auth-api/zzuk;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzur$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzuk;)Lcom/google/android/gms/internal/firebase-auth-api/zzur$zza;

    move-result-object v2

    .line 73
    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzb;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/firebase-auth-api/zzair;

    check-cast v2, Lcom/google/android/gms/internal/firebase-auth-api/zzur;

    .line 74
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzuq$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzur;)Lcom/google/android/gms/internal/firebase-auth-api/zzuq$zza;

    move-result-object v1

    .line 75
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzb;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/zzair;

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/zzuq;

    .line 76
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzagu;->zzi()Lcom/google/android/gms/internal/firebase-auth-api/zzahd;

    move-result-object v1

    .line 77
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzvb$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzahd;)Lcom/google/android/gms/internal/firebase-auth-api/zzvb$zza;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzke;->zzi:Lcom/google/android/gms/internal/firebase-auth-api/zzmi;

    .line 78
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzka;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzf;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzmi;->zza(Ljava/lang/Object;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/zzvs;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzvb$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzvs;)Lcom/google/android/gms/internal/firebase-auth-api/zzvb$zza;

    move-result-object p0

    .line 79
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzb;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/zzair;

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/zzvb;

    .line 80
    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzor;->zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzvb;)Lcom/google/android/gms/internal/firebase-auth-api/zzor;

    move-result-object p0

    .line 81
    return-object p0
.end method

.method private static zza(Lcom/google/android/gms/internal/firebase-auth-api/zzuo;[B)Lcom/google/android/gms/internal/firebase-auth-api/zzxt;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 82
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzme;->zza([B)Ljava/math/BigInteger;

    move-result-object p1

    .line 83
    nop

    .line 84
    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzlt;->zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzuo;)I

    move-result p0

    .line 85
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzme;->zza(Ljava/math/BigInteger;I)[B

    move-result-object p0

    .line 86
    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzxt;->zza([B)Lcom/google/android/gms/internal/firebase-auth-api/zzxt;

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

    .line 124
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zznu;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zznu;

    move-result-object v0

    .line 125
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzke;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zznz;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zznu;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zznz;)V

    .line 126
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzke;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zznv;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zznu;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zznv;)V

    .line 127
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzke;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzmx;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zznu;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzmx;)V

    .line 128
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzke;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzmu;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zznu;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzmu;)V

    .line 129
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzke;->zzg:Lcom/google/android/gms/internal/firebase-auth-api/zzmx;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zznu;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzmx;)V

    .line 130
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzke;->zzh:Lcom/google/android/gms/internal/firebase-auth-api/zzmu;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zznu;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzmu;)V

    .line 131
    return-void
.end method

.method private static zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzor;)Lcom/google/android/gms/internal/firebase-auth-api/zzka;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzor;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzvb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzvb;->zzf()Ljava/lang/String;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.HpkePrivateKey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11
    nop

    .line 12
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzor;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzvb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzvb;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzahd;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaig;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzaig;

    move-result-object v1

    .line 13
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzuq;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzahd;Lcom/google/android/gms/internal/firebase-auth-api/zzaig;)Lcom/google/android/gms/internal/firebase-auth-api/zzuq;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/firebase-auth-api/zzaja; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    nop

    .line 17
    nop

    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzor;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzvb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzvb;->zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzvs;

    move-result-object p0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzuq;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzur;

    move-result-object v0

    .line 19
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzke;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzvs;Lcom/google/android/gms/internal/firebase-auth-api/zzur;)Lcom/google/android/gms/internal/firebase-auth-api/zzka;

    move-result-object p0

    return-object p0

    .line 15
    :catch_0
    move-exception p0

    .line 16
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Parsing HpkeParameters failed: "

    invoke-direct {v0, v1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzor;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzvb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzvb;->zzf()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Wrong type URL in call to HpkeProtoSerialization.parseParameters: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzos;Lcom/google/android/gms/internal/firebase-auth-api/zzcs;)Lcom/google/android/gms/internal/firebase-auth-api/zzkn;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzke;->zzd(Lcom/google/android/gms/internal/firebase-auth-api/zzos;Lcom/google/android/gms/internal/firebase-auth-api/zzcs;)Lcom/google/android/gms/internal/firebase-auth-api/zzkn;

    move-result-object p0

    return-object p0
.end method

.method private static zzc(Lcom/google/android/gms/internal/firebase-auth-api/zzos;Lcom/google/android/gms/internal/firebase-auth-api/zzcs;)Lcom/google/android/gms/internal/firebase-auth-api/zzkf;
    .locals 5
    .param p1    # Lcom/google/android/gms/internal/firebase-auth-api/zzcs;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 20
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzos;->zzf()Ljava/lang/String;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.HpkePrivateKey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 23
    nop

    .line 24
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzos;->zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzahd;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaig;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzaig;

    move-result-object v1

    .line 25
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzuu;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzahd;Lcom/google/android/gms/internal/firebase-auth-api/zzaig;)Lcom/google/android/gms/internal/firebase-auth-api/zzuu;

    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzuu;->zza()I

    move-result v1

    if-nez v1, :cond_0

    .line 28
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzuu;->zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzuv;

    move-result-object v1

    .line 29
    nop

    .line 30
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzos;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzvs;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzuv;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzur;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzke;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzvs;Lcom/google/android/gms/internal/firebase-auth-api/zzur;)Lcom/google/android/gms/internal/firebase-auth-api/zzka;

    move-result-object v2

    .line 31
    nop

    .line 32
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzuv;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzur;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzur;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzuo;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzuv;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzahd;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzahd;->zzg()[B

    move-result-object v4

    .line 33
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzke;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzuo;[B)Lcom/google/android/gms/internal/firebase-auth-api/zzxt;

    move-result-object v3

    .line 34
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzos;->zze()Ljava/lang/Integer;

    move-result-object p0

    .line 35
    invoke-static {v2, v3, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzkn;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzka;Lcom/google/android/gms/internal/firebase-auth-api/zzxt;Ljava/lang/Integer;)Lcom/google/android/gms/internal/firebase-auth-api/zzkn;

    move-result-object p0

    .line 36
    nop

    .line 37
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzuv;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzur;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzur;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzuo;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzuu;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzahd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahd;->zzg()[B

    move-result-object v0

    .line 38
    nop

    .line 39
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzme;->zza([B)Ljava/math/BigInteger;

    move-result-object v0

    .line 40
    nop

    .line 41
    invoke-static {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzlt;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzuo;)I

    move-result v1

    .line 42
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzme;->zza(Ljava/math/BigInteger;I)[B

    move-result-object v0

    .line 43
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzcs;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzcs;)Lcom/google/android/gms/internal/firebase-auth-api/zzcs;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzxu;->zza([BLcom/google/android/gms/internal/firebase-auth-api/zzcs;)Lcom/google/android/gms/internal/firebase-auth-api/zzxu;

    move-result-object p1

    .line 44
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzkf;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzkn;Lcom/google/android/gms/internal/firebase-auth-api/zzxu;)Lcom/google/android/gms/internal/firebase-auth-api/zzkf;

    move-result-object p0

    return-object p0

    .line 27
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Only version 0 keys are accepted"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lcom/google/android/gms/internal/firebase-auth-api/zzaja; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :catch_0
    move-exception p0

    .line 46
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Parsing HpkePrivateKey failed"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 21
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 22
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzos;->zzf()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Wrong type URL in call to HpkeProtoSerialization.parsePrivateKey: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static zzd(Lcom/google/android/gms/internal/firebase-auth-api/zzos;Lcom/google/android/gms/internal/firebase-auth-api/zzcs;)Lcom/google/android/gms/internal/firebase-auth-api/zzkn;
    .locals 2
    .param p1    # Lcom/google/android/gms/internal/firebase-auth-api/zzcs;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 47
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzos;->zzf()Ljava/lang/String;

    move-result-object p1

    const-string v0, "type.googleapis.com/google.crypto.tink.HpkePublicKey"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 50
    nop

    .line 51
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzos;->zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzahd;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaig;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzaig;

    move-result-object v0

    .line 52
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzuv;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzahd;Lcom/google/android/gms/internal/firebase-auth-api/zzaig;)Lcom/google/android/gms/internal/firebase-auth-api/zzuv;

    move-result-object p1

    .line 53
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzuv;->zza()I

    move-result v0

    if-nez v0, :cond_0

    .line 55
    nop

    .line 56
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzos;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzvs;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzuv;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzur;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzke;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzvs;Lcom/google/android/gms/internal/firebase-auth-api/zzur;)Lcom/google/android/gms/internal/firebase-auth-api/zzka;

    move-result-object v0

    .line 57
    nop

    .line 58
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzuv;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzur;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzur;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzuo;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzuv;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzahd;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahd;->zzg()[B

    move-result-object p1

    .line 59
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzke;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzuo;[B)Lcom/google/android/gms/internal/firebase-auth-api/zzxt;

    move-result-object p1

    .line 60
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzos;->zze()Ljava/lang/Integer;

    move-result-object p0

    .line 61
    invoke-static {v0, p1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzkn;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzka;Lcom/google/android/gms/internal/firebase-auth-api/zzxt;Ljava/lang/Integer;)Lcom/google/android/gms/internal/firebase-auth-api/zzkn;

    move-result-object p0

    return-object p0

    .line 54
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Only version 0 keys are accepted"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lcom/google/android/gms/internal/firebase-auth-api/zzaja; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :catch_0
    move-exception p0

    .line 63
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Parsing HpkePublicKey failed"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 48
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 49
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzos;->zzf()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Wrong type URL in call to HpkeProtoSerialization.parsePublicKey: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
