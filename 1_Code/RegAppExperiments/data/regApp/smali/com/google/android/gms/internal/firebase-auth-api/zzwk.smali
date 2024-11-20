.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzwk;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzbr;


# static fields
.field private static final zza:[B


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzwm;

.field private final zzc:Ljava/lang/String;

.field private final zzd:[B

.field private final zze:Lcom/google/android/gms/internal/firebase-auth-api/zzwr;

.field private final zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzwi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzwk;->zza:[B

    return-void
.end method

.method public constructor <init>(Ljava/security/interfaces/ECPublicKey;[BLjava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzwr;Lcom/google/android/gms/internal/firebase-auth-api/zzwi;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    nop

    .line 4
    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v0

    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzmg;->zza(Ljava/security/spec/ECPoint;Ljava/security/spec/EllipticCurve;)V

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzwm;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzwm;-><init>(Ljava/security/interfaces/ECPublicKey;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzwk;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzwm;

    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzwk;->zzd:[B

    .line 7
    iput-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzwk;->zzc:Ljava/lang/String;

    .line 8
    iput-object p4, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzwk;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzwr;

    .line 9
    iput-object p5, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzwk;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzwi;

    .line 10
    return-void
.end method
