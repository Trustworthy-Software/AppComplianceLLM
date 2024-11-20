.class final Lcom/google/android/gms/internal/firebase-auth-api/zzoq;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzmo;
.source "com.google.firebase:firebase-auth@@22.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzco;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<PrimitiveT:",
        "Ljava/lang/Object;",
        "KeyProtoT::",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzakb;",
        "PublicKeyProtoT::",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzakb;",
        ">",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzmo<",
        "TPrimitiveT;TKeyProtoT;>;",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzco<",
        "TPrimitiveT;>;"
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzop;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-auth-api/zzop<",
            "TKeyProtoT;TPublicKeyProtoT;>;"
        }
    .end annotation
.end field

.field private final zzb:Lcom/google/android/gms/internal/firebase-auth-api/zznb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-auth-api/zznb<",
            "TPublicKeyProtoT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzop;Lcom/google/android/gms/internal/firebase-auth-api/zznb;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzop<",
            "TKeyProtoT;TPublicKeyProtoT;>;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zznb<",
            "TPublicKeyProtoT;>;",
            "Ljava/lang/Class<",
            "TPrimitiveT;>;)V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzmo;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zznb;Ljava/lang/Class;)V

    .line 14
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzoq;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzop;

    .line 15
    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzoq;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zznb;

    .line 16
    return-void
.end method


# virtual methods
.method public final zzc(Lcom/google/android/gms/internal/firebase-auth-api/zzahd;)Lcom/google/android/gms/internal/firebase-auth-api/zzuy;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzoq;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzop;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zznb;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzahd;)Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzoq;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzop;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zznb;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzakb;)V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzoq;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzop;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzop;->zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzakb;)Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzoq;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zznb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zznb;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzakb;)V

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzuy;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzuy$zzb;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzoq;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zznb;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zznb;->zze()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzuy$zzb;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzuy$zzb;

    move-result-object v0

    .line 7
    invoke-interface {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakb;->zzi()Lcom/google/android/gms/internal/firebase-auth-api/zzahd;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzuy$zzb;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzahd;)Lcom/google/android/gms/internal/firebase-auth-api/zzuy$zzb;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzoq;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zznb;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zznb;->zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzuy$zza;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzuy$zzb;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzuy$zza;)Lcom/google/android/gms/internal/firebase-auth-api/zzuy$zzb;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzb;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzair;

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzuy;
    :try_end_0
    .catch Lcom/google/android/gms/internal/firebase-auth-api/zzaja; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    return-object p1

    .line 11
    :catch_0
    move-exception p1

    .line 12
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "expected serialized proto of type "

    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
