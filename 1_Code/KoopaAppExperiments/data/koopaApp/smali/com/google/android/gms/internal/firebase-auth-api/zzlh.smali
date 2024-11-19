.class final Lcom/google/android/gms/internal/firebase-auth-api/zzlh;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzbr;


# static fields
.field private static final zza:[B


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzuv;

.field private final zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzlj;

.field private final zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzlg;

.field private final zze:Lcom/google/android/gms/internal/firebase-auth-api/zzld;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzlh;->zza:[B

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzuv;Lcom/google/android/gms/internal/firebase-auth-api/zzlj;Lcom/google/android/gms/internal/firebase-auth-api/zzlg;Lcom/google/android/gms/internal/firebase-auth-api/zzld;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzlh;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzuv;

    .line 11
    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzlh;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzlj;

    .line 12
    iput-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzlh;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzlg;

    .line 13
    iput-object p4, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzlh;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzld;

    .line 14
    return-void
.end method

.method static zza(Lcom/google/android/gms/internal/firebase-auth-api/zzuv;)Lcom/google/android/gms/internal/firebase-auth-api/zzlh;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzuv;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzahd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahd;->zze()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzuv;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzur;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzlk;->zzc(Lcom/google/android/gms/internal/firebase-auth-api/zzur;)Lcom/google/android/gms/internal/firebase-auth-api/zzlj;

    move-result-object v1

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzlk;->zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzur;)Lcom/google/android/gms/internal/firebase-auth-api/zzlg;

    move-result-object v2

    .line 6
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzlk;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzur;)Lcom/google/android/gms/internal/firebase-auth-api/zzld;

    move-result-object v0

    .line 7
    new-instance v3, Lcom/google/android/gms/internal/firebase-auth-api/zzlh;

    invoke-direct {v3, p0, v1, v2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzlh;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzuv;Lcom/google/android/gms/internal/firebase-auth-api/zzlj;Lcom/google/android/gms/internal/firebase-auth-api/zzlg;Lcom/google/android/gms/internal/firebase-auth-api/zzld;)V

    return-object v3

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "HpkePublicKey.public_key is empty."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
