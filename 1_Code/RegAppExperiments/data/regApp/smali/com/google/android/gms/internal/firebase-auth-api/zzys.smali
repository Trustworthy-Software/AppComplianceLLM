.class final Lcom/google/android/gms/internal/firebase-auth-api/zzys;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzadj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzadj<",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzafv;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafs;

.field private final synthetic zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzaex;

.field private final synthetic zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzacc;

.field private final synthetic zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzafe;

.field private final synthetic zze:Lcom/google/android/gms/internal/firebase-auth-api/zzadg;

.field private final synthetic zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzyj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzyj;Lcom/google/android/gms/internal/firebase-auth-api/zzafs;Lcom/google/android/gms/internal/firebase-auth-api/zzaex;Lcom/google/android/gms/internal/firebase-auth-api/zzacc;Lcom/google/android/gms/internal/firebase-auth-api/zzafe;Lcom/google/android/gms/internal/firebase-auth-api/zzadg;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzys;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzyj;

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzys;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafs;

    iput-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzys;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzaex;

    iput-object p4, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzys;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzacc;

    iput-object p5, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzys;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzafe;

    iput-object p6, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzys;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzadg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)V
    .locals 6

    .line 4
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzafv;

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzys;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafs;

    const-string v1, "EMAIL"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzafs;->zzi(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzys;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzaex;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaex;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzaex;

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzys;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzafs;->zzc()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzys;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzaex;

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzys;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafs;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzafs;->zzc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzaex;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzaex;

    .line 9
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzys;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafs;

    const-string v2, "DISPLAY_NAME"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzafs;->zzi(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzys;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzaex;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaex;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzaex;

    goto :goto_1

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzys;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzafs;->zzb()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzys;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzaex;

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzys;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafs;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzafs;->zzb()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzaex;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzaex;

    .line 13
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzys;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafs;

    const-string v2, "PHOTO_URL"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzafs;->zzi(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzys;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzaex;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaex;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzaex;

    goto :goto_2

    .line 15
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzys;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzafs;->zze()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzys;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzaex;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzys;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafs;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzafs;->zze()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaex;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzaex;

    .line 17
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzys;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzafs;->zzd()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzys;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzaex;

    const-string v1, "redacted"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/util/Base64Utils;->encode([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaex;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzaex;

    .line 19
    :cond_6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzafv;->zze()Ljava/util/List;

    move-result-object v0

    .line 20
    if-eqz v0, :cond_7

    goto :goto_3

    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    :goto_3
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzys;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzaex;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaex;->zza(Ljava/util/List;)Lcom/google/android/gms/internal/firebase-auth-api/zzaex;

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzys;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzacc;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzys;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzafe;

    .line 23
    nop

    .line 24
    nop

    .line 25
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzafv;->zzc()Ljava/lang/String;

    move-result-object v2

    .line 28
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzafv;->zzd()Ljava/lang/String;

    move-result-object v3

    .line 29
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 30
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzafv;->zza()J

    move-result-wide v4

    .line 31
    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/zzafe;

    .line 32
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzafe;->zze()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v3, v2, v4, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzafe;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    .line 33
    move-object v1, p1

    goto :goto_4

    .line 34
    :cond_8
    nop

    .line 35
    :goto_4
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzys;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzaex;

    .line 36
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzacc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzafe;Lcom/google/android/gms/internal/firebase-auth-api/zzaex;)V

    .line 37
    return-void
.end method

.method public final zza(Ljava/lang/String;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzys;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzadg;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzadg;->zza(Ljava/lang/String;)V

    .line 3
    return-void
.end method
