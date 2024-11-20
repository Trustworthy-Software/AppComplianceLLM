.class final Lcom/google/android/gms/internal/firebase-auth-api/zzjk;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzne;
.source "com.google.firebase:firebase-auth@@22.2.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase-auth-api/zzne<",
        "Lcom/google/android/gms/internal/firebase-auth-api/zztn;",
        "Lcom/google/android/gms/internal/firebase-auth-api/zztr;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/firebase-auth-api/zzji;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzji;Ljava/lang/Class;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzjk;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzji;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzne;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/firebase-auth-api/zzahd;)Lcom/google/android/gms/internal/firebase-auth-api/zzakb;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/firebase-auth-api/zzaja;
        }
    .end annotation

    .line 24
    nop

    .line 25
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaig;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzaig;

    move-result-object v0

    .line 26
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zztn;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzahd;Lcom/google/android/gms/internal/firebase-auth-api/zzaig;)Lcom/google/android/gms/internal/firebase-auth-api/zztn;

    move-result-object p1

    .line 27
    return-object p1
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/firebase-auth-api/zzakb;)Lcom/google/android/gms/internal/firebase-auth-api/zzakb;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zztn;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zztn;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zztq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zztq;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zztv;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zztv;->zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzty;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzkx;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzty;)Lcom/google/android/gms/internal/firebase-auth-api/zzwo;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzwp;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzwo;)Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    .line 5
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzwt;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzwt;

    const-string v2, "EC"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzwt;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/KeyPairGenerator;

    .line 6
    invoke-virtual {v1, v0}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 7
    invoke-virtual {v1}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v0

    .line 8
    nop

    .line 9
    invoke-virtual {v0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v1

    check-cast v1, Ljava/security/interfaces/ECPublicKey;

    .line 10
    invoke-virtual {v0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/ECPrivateKey;

    .line 11
    invoke-interface {v1}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v1

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zztu;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zztu$zza;

    move-result-object v2

    .line 13
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zztu$zza;->zza(I)Lcom/google/android/gms/internal/firebase-auth-api/zztu$zza;

    move-result-object v2

    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zztn;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zztq;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zztu$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zztq;)Lcom/google/android/gms/internal/firebase-auth-api/zztu$zza;

    move-result-object p1

    .line 15
    invoke-virtual {v1}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzahd;->zza([B)Lcom/google/android/gms/internal/firebase-auth-api/zzahd;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zztu$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzahd;)Lcom/google/android/gms/internal/firebase-auth-api/zztu$zza;

    move-result-object p1

    .line 16
    invoke-virtual {v1}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahd;->zza([B)Lcom/google/android/gms/internal/firebase-auth-api/zzahd;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zztu$zza;->zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzahd;)Lcom/google/android/gms/internal/firebase-auth-api/zztu$zza;

    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzb;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzair;

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zztu;

    .line 18
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zztr;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zztr$zza;

    move-result-object v1

    .line 19
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zztr$zza;->zza(I)Lcom/google/android/gms/internal/firebase-auth-api/zztr$zza;

    move-result-object v1

    .line 20
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zztr$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zztu;)Lcom/google/android/gms/internal/firebase-auth-api/zztr$zza;

    move-result-object p1

    .line 21
    invoke-interface {v0}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahd;->zza([B)Lcom/google/android/gms/internal/firebase-auth-api/zzahd;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zztr$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzahd;)Lcom/google/android/gms/internal/firebase-auth-api/zztr$zza;

    move-result-object p1

    .line 22
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzb;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzair;

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zztr;

    .line 23
    return-object p1
.end method

.method public final synthetic zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzakb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 29
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zztn;

    .line 30
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zztn;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zztq;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzkx;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zztq;)V

    .line 31
    return-void
.end method
