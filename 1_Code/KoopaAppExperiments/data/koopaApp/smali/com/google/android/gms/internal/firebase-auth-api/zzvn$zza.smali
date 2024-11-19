.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzvn$zza;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzb;
.source "com.google.firebase:firebase-auth@@22.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzakd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/firebase-auth-api/zzvn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzb<",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzvn;",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzvn$zza;",
        ">;",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzakd;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzvn;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzvn;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzb;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzair;)V

    .line 5
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzvm;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzvn$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzvn$zza;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzb;->zzh()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzvn$zza;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzair;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzvn;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzvn;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzvn;Ljava/lang/String;)V

    .line 3
    return-object p0
.end method
