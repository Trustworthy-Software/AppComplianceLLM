.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzpy;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzcp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzcp<",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzpz;",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzpz;",
        ">;"
    }
.end annotation


# static fields
.field private static final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzpy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzpy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzpy;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzpy;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzpy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static zzc()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 17
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzpy;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzpy;

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzct;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzcp;)V

    .line 18
    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzpz;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/google/android/gms/internal/firebase-auth-api/zzpz;

    return-object v0
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/firebase-auth-api/zzcg;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 3
    nop

    .line 4
    if-eqz p1, :cond_3

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzcg;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzcl;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzcg;->zzd()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 9
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/firebase-auth-api/zzcl;

    .line 10
    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzcl;->zze()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/firebase-auth-api/zzpz;

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    goto :goto_0

    .line 13
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzqb;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzqb;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzcg;Lcom/google/android/gms/internal/firebase-auth-api/zzqa;)V

    .line 14
    return-object v0

    .line 7
    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "no primary in primitive set"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_3
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "primitive set must be non-null"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzb()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzpz;",
            ">;"
        }
    .end annotation

    .line 2
    const-class v0, Lcom/google/android/gms/internal/firebase-auth-api/zzpz;

    return-object v0
.end method
