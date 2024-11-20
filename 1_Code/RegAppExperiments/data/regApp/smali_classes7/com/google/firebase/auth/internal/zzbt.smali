.class final Lcom/google/firebase/auth/internal/zzbt;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/BackgroundDetector$BackgroundStateChangeListener;


# instance fields
.field private final synthetic zza:Lcom/google/firebase/auth/internal/zzbu;


# direct methods
.method constructor <init>(Lcom/google/firebase/auth/internal/zzbu;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzbt;->zza:Lcom/google/firebase/auth/internal/zzbu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBackgroundStateChanged(Z)V
    .locals 1

    .line 2
    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/google/firebase/auth/internal/zzbt;->zza:Lcom/google/firebase/auth/internal/zzbu;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/google/firebase/auth/internal/zzbu;->zza(Lcom/google/firebase/auth/internal/zzbu;Z)V

    .line 4
    iget-object p1, p0, Lcom/google/firebase/auth/internal/zzbt;->zza:Lcom/google/firebase/auth/internal/zzbu;

    invoke-virtual {p1}, Lcom/google/firebase/auth/internal/zzbu;->zza()V

    return-void

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/google/firebase/auth/internal/zzbt;->zza:Lcom/google/firebase/auth/internal/zzbu;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/firebase/auth/internal/zzbu;->zza(Lcom/google/firebase/auth/internal/zzbu;Z)V

    .line 6
    iget-object p1, p0, Lcom/google/firebase/auth/internal/zzbt;->zza:Lcom/google/firebase/auth/internal/zzbu;

    invoke-static {p1}, Lcom/google/firebase/auth/internal/zzbu;->zzb(Lcom/google/firebase/auth/internal/zzbu;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/google/firebase/auth/internal/zzbt;->zza:Lcom/google/firebase/auth/internal/zzbu;

    invoke-static {p1}, Lcom/google/firebase/auth/internal/zzbu;->zza(Lcom/google/firebase/auth/internal/zzbu;)Lcom/google/firebase/auth/internal/zzak;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/auth/internal/zzak;->zzc()V

    .line 8
    :cond_1
    return-void
.end method
