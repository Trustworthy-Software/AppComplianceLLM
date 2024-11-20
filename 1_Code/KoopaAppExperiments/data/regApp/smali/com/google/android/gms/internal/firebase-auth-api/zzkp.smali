.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzkp;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzcp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzcp<",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzbo;",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzbo;",
        ">;"
    }
.end annotation


# static fields
.field private static final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzkp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzkp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzkp;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzkp;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzkp;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzc()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzkp;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzkp;

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzct;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzcp;)V

    .line 9
    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzbo;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/google/android/gms/internal/firebase-auth-api/zzbo;

    return-object v0
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/firebase-auth-api/zzcg;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 3
    nop

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzko;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzko;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzcg;)V

    .line 5
    return-object v0
.end method

.method public final zzb()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzbo;",
            ">;"
        }
    .end annotation

    .line 2
    const-class v0, Lcom/google/android/gms/internal/firebase-auth-api/zzbo;

    return-object v0
.end method
