.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zza;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzb;
.source "com.google.firebase:firebase-auth@@22.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzakd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/firebase-auth-api/zzvg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzb<",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzvg;",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zza;",
        ">;",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzakd;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzvg;->zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzvg;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzb;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzair;)V

    .line 13
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzvh;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zza;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzair;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzvg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzvg;->zza()I

    move-result v0

    return v0
.end method

.method public final zza(I)Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zza;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzb;->zzh()V

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zza;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzair;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzvg;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzvg;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzvg;I)V

    .line 7
    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;)Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zza;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzb;->zzh()V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zza;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzair;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzvg;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzvg;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzvg;Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;)V

    .line 4
    return-object p0
.end method

.method public final zzb(I)Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zza;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzair;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzvg;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzvg;->zza(I)Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;

    move-result-object p1

    return-object p1
.end method

.method public final zzb()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;",
            ">;"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zza;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzair;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzvg;

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzvg;->zze()Ljava/util/List;

    move-result-object v0

    .line 11
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
