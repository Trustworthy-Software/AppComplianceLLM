.class final Lcom/google/android/gms/internal/firebase-auth-api/zzyp;
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
.field private final synthetic zza:Lcom/google/android/gms/internal/firebase-auth-api/zzadg;

.field private final synthetic zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzacc;

.field private final synthetic zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzafe;

.field private final synthetic zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzafs;

.field private final synthetic zze:Lcom/google/android/gms/internal/firebase-auth-api/zzyj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzyj;Lcom/google/android/gms/internal/firebase-auth-api/zzadg;Lcom/google/android/gms/internal/firebase-auth-api/zzacc;Lcom/google/android/gms/internal/firebase-auth-api/zzafe;Lcom/google/android/gms/internal/firebase-auth-api/zzafs;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzyp;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzyj;

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzyp;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzadg;

    iput-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzyp;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzacc;

    iput-object p4, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzyp;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzafe;

    iput-object p5, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzyp;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzafs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)V
    .locals 7

    .line 4
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzaeu;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaeu;->zza()Ljava/util/List;

    move-result-object p1

    .line 6
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzyp;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzyj;

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzyp;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzacc;

    iget-object v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzyp;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzafe;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lcom/google/android/gms/internal/firebase-auth-api/zzaex;

    iget-object v5, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzyp;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzafs;

    iget-object v6, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzyp;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzadg;

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzyj;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzyj;Lcom/google/android/gms/internal/firebase-auth-api/zzacc;Lcom/google/android/gms/internal/firebase-auth-api/zzafe;Lcom/google/android/gms/internal/firebase-auth-api/zzaex;Lcom/google/android/gms/internal/firebase-auth-api/zzafs;Lcom/google/android/gms/internal/firebase-auth-api/zzadg;)V

    .line 9
    return-void

    .line 7
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzyp;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzadg;

    const-string v0, "No users"

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzadg;->zza(Ljava/lang/String;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzyp;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzadg;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzadg;->zza(Ljava/lang/String;)V

    .line 3
    return-void
.end method
