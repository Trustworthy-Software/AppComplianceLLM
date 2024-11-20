.class final Lcom/google/android/gms/internal/firebase-auth-api/zzzo;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzadj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzadj<",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzaek;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzzl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzo;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)V
    .locals 10

    .line 5
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzaek;

    .line 6
    nop

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaek;->zza()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzafg;->zza(Ljava/lang/String;)J

    move-result-wide v0

    .line 8
    new-instance v3, Lcom/google/android/gms/internal/firebase-auth-api/zzafe;

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaek;->zzb()Ljava/lang/String;

    move-result-object v2

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaek;->zza()Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "Bearer"

    invoke-direct {v3, v2, p1, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzafe;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    .line 12
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzo;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzl;

    iget-object v2, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzzl;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzyj;

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 13
    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzo;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzl;

    iget-object v8, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzzl;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzacc;

    .line 14
    move-object v9, p0

    invoke-static/range {v2 .. v9}, Lcom/google/android/gms/internal/firebase-auth-api/zzyj;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzyj;Lcom/google/android/gms/internal/firebase-auth-api/zzafe;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/google/firebase/auth/zzf;Lcom/google/android/gms/internal/firebase-auth-api/zzacc;Lcom/google/android/gms/internal/firebase-auth-api/zzadg;)V

    .line 15
    return-void
.end method

.method public final zza(Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-static {p1}, Lcom/google/firebase/auth/internal/zzai;->zza(Ljava/lang/String;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzo;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzl;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzzl;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzacc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzacc;->zza(Lcom/google/android/gms/common/api/Status;)V

    .line 4
    return-void
.end method
