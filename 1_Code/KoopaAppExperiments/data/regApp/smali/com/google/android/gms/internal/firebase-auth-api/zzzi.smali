.class final Lcom/google/android/gms/internal/firebase-auth-api/zzzi;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzadj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzadj<",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzaeu;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/firebase-auth-api/zzadj;

.field private final synthetic zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzafe;

.field private final synthetic zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzzf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzzf;Lcom/google/android/gms/internal/firebase-auth-api/zzadj;Lcom/google/android/gms/internal/firebase-auth-api/zzafe;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzi;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzzf;

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzi;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzadj;

    iput-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzi;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzafe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)V
    .locals 6

    .line 5
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzaeu;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaeu;->zza()Ljava/util/List;

    move-result-object p1

    .line 7
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/google/android/gms/internal/firebase-auth-api/zzaex;

    .line 10
    new-instance v4, Lcom/google/android/gms/internal/firebase-auth-api/zzafs;

    invoke-direct {v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzafs;-><init>()V

    .line 11
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzi;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzafe;

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzafe;->zzc()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzafs;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzafs;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzi;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzzf;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzzf;->zza:Ljava/lang/String;

    .line 13
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzafs;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzafs;

    .line 14
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzi;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzzf;

    iget-object v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzzf;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzyj;

    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzi;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzzf;

    iget-object v1, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzzf;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzacc;

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzi;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzafe;

    iget-object v5, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzi;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzadj;

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzyj;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzyj;Lcom/google/android/gms/internal/firebase-auth-api/zzacc;Lcom/google/android/gms/internal/firebase-auth-api/zzafe;Lcom/google/android/gms/internal/firebase-auth-api/zzaex;Lcom/google/android/gms/internal/firebase-auth-api/zzafs;Lcom/google/android/gms/internal/firebase-auth-api/zzadg;)V

    .line 15
    return-void

    .line 8
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzi;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzadj;

    const-string v0, "No users."

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzadj;->zza(Ljava/lang/String;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-static {p1}, Lcom/google/firebase/auth/internal/zzai;->zza(Ljava/lang/String;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzi;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzzf;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzzf;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzacc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzacc;->zza(Lcom/google/android/gms/common/api/Status;)V

    .line 4
    return-void
.end method
