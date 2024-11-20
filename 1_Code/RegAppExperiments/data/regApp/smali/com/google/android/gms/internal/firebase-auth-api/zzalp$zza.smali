.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzalp$zza;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzb;
.source "com.google.firebase:firebase-auth@@22.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzakd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/firebase-auth-api/zzalp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzb<",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzalp;",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzalp$zza;",
        ">;",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzakd;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzalp;->zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzalp;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzb;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzair;)V

    .line 12
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzalr;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzalp$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(I)Lcom/google/android/gms/internal/firebase-auth-api/zzalp$zza;
    .locals 1

    .line 1
    nop

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzb;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzair;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzair;->zzv()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzb;->zzi()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalp$zza;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzair;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzalp;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzalp;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzalp;I)V

    .line 5
    return-object p0
.end method

.method public final zza(J)Lcom/google/android/gms/internal/firebase-auth-api/zzalp$zza;
    .locals 1

    .line 6
    nop

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzb;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzair;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzair;->zzv()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzb;->zzi()V

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalp$zza;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzair;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzalp;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzalp;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzalp;J)V

    .line 10
    return-object p0
.end method
