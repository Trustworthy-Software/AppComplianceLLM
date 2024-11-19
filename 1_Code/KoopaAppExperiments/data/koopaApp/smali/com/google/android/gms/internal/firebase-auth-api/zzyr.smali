.class final Lcom/google/android/gms/internal/firebase-auth-api/zzyr;
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

.field private final synthetic zzb:Ljava/lang/String;

.field private final synthetic zzc:Ljava/lang/String;

.field private final synthetic zzd:Ljava/lang/Boolean;

.field private final synthetic zze:Lcom/google/firebase/auth/zzf;

.field private final synthetic zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzacc;

.field private final synthetic zzg:Lcom/google/android/gms/internal/firebase-auth-api/zzafe;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzyj;Lcom/google/android/gms/internal/firebase-auth-api/zzadg;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/google/firebase/auth/zzf;Lcom/google/android/gms/internal/firebase-auth-api/zzacc;Lcom/google/android/gms/internal/firebase-auth-api/zzafe;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzyr;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzadg;

    iput-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzyr;->zzb:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzyr;->zzc:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzyr;->zzd:Ljava/lang/Boolean;

    iput-object p6, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzyr;->zze:Lcom/google/firebase/auth/zzf;

    iput-object p7, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzyr;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzacc;

    iput-object p8, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzyr;->zzg:Lcom/google/android/gms/internal/firebase-auth-api/zzafe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)V
    .locals 5

    .line 4
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzaeu;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaeu;->zza()Ljava/util/List;

    move-result-object p1

    .line 6
    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 8
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzaex;

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaex;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzafm;

    move-result-object v1

    .line 10
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzafm;->zza()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 11
    :goto_0
    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 12
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzyr;->zzb:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 13
    move v2, v0

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 14
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/firebase-auth-api/zzafn;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzafn;->zzf()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzyr;->zzb:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 15
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/zzafn;

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzyr;->zzc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzafn;->zza(Ljava/lang/String;)V

    .line 16
    goto :goto_2

    .line 17
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    goto :goto_2

    .line 18
    :cond_4
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/zzafn;

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzyr;->zzc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzafn;->zza(Ljava/lang/String;)V

    .line 19
    :cond_5
    :goto_2
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzyr;->zzd:Ljava/lang/Boolean;

    if-eqz v1, :cond_6

    .line 20
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaex;->zza(Z)Lcom/google/android/gms/internal/firebase-auth-api/zzaex;

    goto :goto_3

    .line 21
    :cond_6
    nop

    .line 22
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaex;->zzb()J

    move-result-wide v1

    .line 23
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaex;->zza()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    cmp-long v1, v1, v3

    if-gez v1, :cond_7

    const/4 v0, 0x1

    .line 24
    :cond_7
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaex;->zza(Z)Lcom/google/android/gms/internal/firebase-auth-api/zzaex;

    .line 25
    :goto_3
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzyr;->zze:Lcom/google/firebase/auth/zzf;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaex;->zza(Lcom/google/firebase/auth/zzf;)Lcom/google/android/gms/internal/firebase-auth-api/zzaex;

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzyr;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzacc;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzyr;->zzg:Lcom/google/android/gms/internal/firebase-auth-api/zzafe;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzacc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzafe;Lcom/google/android/gms/internal/firebase-auth-api/zzaex;)V

    .line 27
    return-void

    .line 7
    :cond_8
    :goto_4
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzyr;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzadg;

    const-string v0, "No users."

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzadg;->zza(Ljava/lang/String;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzyr;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzadg;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzadg;->zza(Ljava/lang/String;)V

    .line 3
    return-void
.end method
