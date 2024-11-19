.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzaex;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"


# instance fields
.field private zza:Ljava/lang/String;

.field private zzb:Ljava/lang/String;

.field private zzc:Z

.field private zzd:Ljava/lang/String;

.field private zze:Ljava/lang/String;

.field private zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzafm;

.field private zzg:Ljava/lang/String;

.field private zzh:Ljava/lang/String;

.field private zzi:J

.field private zzj:J

.field private zzk:Z

.field private zzl:Lcom/google/firebase/auth/zzf;

.field private zzm:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzafi;",
            ">;"
        }
    .end annotation
.end field

.field private zzn:Lcom/google/android/gms/internal/firebase-auth-api/zzap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-auth-api/zzap<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzafl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzafm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzafm;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaex;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzafm;

    .line 34
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzap;->zzh()Lcom/google/android/gms/internal/firebase-auth-api/zzap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaex;->zzn:Lcom/google/android/gms/internal/firebase-auth-api/zzap;

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzafm;Ljava/lang/String;Ljava/lang/String;JJZLcom/google/firebase/auth/zzf;Ljava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/zzap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzafm;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJZ",
            "Lcom/google/firebase/auth/zzf;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzafi;",
            ">;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzap<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzafl;",
            ">;)V"
        }
    .end annotation

    .line 36
    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    move-object v1, p1

    iput-object v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzaex;->zza:Ljava/lang/String;

    .line 38
    move-object v1, p2

    iput-object v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzaex;->zzb:Ljava/lang/String;

    .line 39
    move v1, p3

    iput-boolean v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzaex;->zzc:Z

    .line 40
    move-object v1, p4

    iput-object v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzaex;->zzd:Ljava/lang/String;

    .line 41
    move-object v1, p5

    iput-object v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzaex;->zze:Ljava/lang/String;

    .line 42
    nop

    .line 43
    if-nez p6, :cond_0

    .line 44
    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzafm;

    invoke-direct {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzafm;-><init>()V

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    nop

    .line 47
    invoke-virtual {p6}, Lcom/google/android/gms/internal/firebase-auth-api/zzafm;->zza()Ljava/util/List;

    move-result-object v1

    .line 48
    new-instance v2, Lcom/google/android/gms/internal/firebase-auth-api/zzafm;

    invoke-direct {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzafm;-><init>()V

    .line 49
    if-eqz v1, :cond_1

    .line 50
    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzafm;->zza()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 51
    :cond_1
    move-object v1, v2

    .line 52
    :goto_0
    iput-object v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzaex;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzafm;

    .line 53
    move-object v1, p7

    iput-object v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzaex;->zzg:Ljava/lang/String;

    .line 54
    move-object v1, p8

    iput-object v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzaex;->zzh:Ljava/lang/String;

    .line 55
    move-wide v1, p9

    iput-wide v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzaex;->zzi:J

    .line 56
    move-wide v1, p11

    iput-wide v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzaex;->zzj:J

    .line 57
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzaex;->zzk:Z

    .line 58
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzaex;->zzl:Lcom/google/firebase/auth/zzf;

    .line 59
    if-nez p15, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1

    :cond_2
    move-object/from16 v1, p15

    :goto_1
    iput-object v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzaex;->zzm:Ljava/util/List;

    .line 60
    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzaex;->zzn:Lcom/google/android/gms/internal/firebase-auth-api/zzap;

    .line 61
    return-void
.end method


# virtual methods
.method public final zza()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaex;->zzi:J

    return-wide v0
.end method

.method public final zza(Lcom/google/firebase/auth/zzf;)Lcom/google/android/gms/internal/firebase-auth-api/zzaex;
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaex;->zzl:Lcom/google/firebase/auth/zzf;

    .line 9
    return-object p0
.end method

.method public final zza(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzaex;
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaex;->zzd:Ljava/lang/String;

    .line 11
    return-object p0
.end method

.method public final zza(Ljava/util/List;)Lcom/google/android/gms/internal/firebase-auth-api/zzaex;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzafn;",
            ">;)",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzaex;"
        }
    .end annotation

    .line 21
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzafm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzafm;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaex;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzafm;

    .line 23
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzafm;->zza()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 24
    return-object p0
.end method

.method public final zza(Z)Lcom/google/android/gms/internal/firebase-auth-api/zzaex;
    .locals 0

    .line 14
    iput-boolean p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaex;->zzk:Z

    .line 15
    return-object p0
.end method

.method public final zzb()J
    .locals 2

    .line 2
    iget-wide v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaex;->zzj:J

    return-wide v0
.end method

.method public final zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzaex;
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaex;->zzb:Ljava/lang/String;

    .line 13
    return-object p0
.end method

.method public final zzc()Landroid/net/Uri;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaex;->zze:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaex;->zze:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 5
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzaex;
    .locals 0

    .line 16
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaex;->zzg:Ljava/lang/String;

    .line 18
    return-object p0
.end method

.method public final zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzaex;
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaex;->zze:Ljava/lang/String;

    .line 20
    return-object p0
.end method

.method public final zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzap<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzafl;",
            ">;"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaex;->zzn:Lcom/google/android/gms/internal/firebase-auth-api/zzap;

    return-object v0
.end method

.method public final zze()Lcom/google/firebase/auth/zzf;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaex;->zzl:Lcom/google/firebase/auth/zzf;

    return-object v0
.end method

.method public final zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzafm;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaex;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzafm;

    return-object v0
.end method

.method public final zzg()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaex;->zzd:Ljava/lang/String;

    return-object v0
.end method

.method public final zzh()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaex;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method public final zzi()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaex;->zza:Ljava/lang/String;

    return-object v0
.end method

.method public final zzj()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaex;->zzh:Ljava/lang/String;

    return-object v0
.end method

.method public final zzk()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzafi;",
            ">;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaex;->zzm:Ljava/util/List;

    return-object v0
.end method

.method public final zzl()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzafn;",
            ">;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaex;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzafm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzafm;->zza()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final zzm()Z
    .locals 1

    .line 62
    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaex;->zzc:Z

    return v0
.end method

.method public final zzn()Z
    .locals 1

    .line 63
    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaex;->zzk:Z

    return v0
.end method
