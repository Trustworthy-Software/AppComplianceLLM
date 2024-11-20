.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzuh$zza;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzb;
.source "com.google.firebase:firebase-auth@@22.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzakd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/firebase-auth-api/zzuh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzb<",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzuh;",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzuh$zza;",
        ">;",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzakd;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzuh;->zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzuh;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzb;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzair;)V

    .line 8
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzui;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzuh$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(I)Lcom/google/android/gms/internal/firebase-auth-api/zzuh$zza;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzb;->zzh()V

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzuh$zza;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzair;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzuh;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzuh;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzuh;I)V

    .line 6
    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzub;)Lcom/google/android/gms/internal/firebase-auth-api/zzuh$zza;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzb;->zzh()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzuh$zza;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzair;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzuh;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzuh;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzuh;Lcom/google/android/gms/internal/firebase-auth-api/zzub;)V

    .line 3
    return-object p0
.end method
