.class public final Lcom/google/firebase/auth/internal/zzo;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"

# interfaces
.implements Lcom/google/firebase/auth/ActionCodeResult;


# instance fields
.field private final zza:I

.field private final zzb:Ljava/lang/String;

.field private final zzc:Ljava/lang/String;

.field private final zzd:Lcom/google/firebase/auth/ActionCodeInfo;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzafr;)V
    .locals 9

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzafr;->zzg()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzafr;->zzc()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzafr;->zzb()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/firebase/auth/internal/zzo;->zzb:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzafr;->zzb()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/auth/internal/zzo;->zzc:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzafr;->zzh()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-nez v0, :cond_1

    .line 13
    iput v2, p0, Lcom/google/firebase/auth/internal/zzo;->zza:I

    .line 14
    iput-object v1, p0, Lcom/google/firebase/auth/internal/zzo;->zzd:Lcom/google/firebase/auth/ActionCodeInfo;

    .line 15
    return-void

    .line 16
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzafr;->zzd()Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x5

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x4

    sparse-switch v3, :sswitch_data_0

    :cond_2
    goto :goto_1

    :sswitch_0
    const-string v3, "RECOVER_EMAIL"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v8

    goto :goto_2

    :sswitch_1
    const-string v3, "EMAIL_SIGNIN"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v4

    goto :goto_2

    :sswitch_2
    const-string v3, "VERIFY_AND_CHANGE_EMAIL"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_2

    :sswitch_3
    const-string v3, "VERIFY_EMAIL"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v6

    goto :goto_2

    :sswitch_4
    const-string v3, "PASSWORD_RESET"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v7

    goto :goto_2

    :sswitch_5
    const-string v3, "REVERT_SECOND_FACTOR_ADDITION"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v5

    goto :goto_2

    :goto_1
    const/4 v0, -0x1

    :goto_2
    packed-switch v0, :pswitch_data_0

    .line 24
    move v4, v2

    goto :goto_3

    .line 23
    :pswitch_0
    const/4 v4, 0x6

    goto :goto_3

    .line 22
    :pswitch_1
    goto :goto_3

    .line 21
    :pswitch_2
    move v4, v5

    goto :goto_3

    .line 20
    :pswitch_3
    move v4, v8

    goto :goto_3

    .line 19
    :pswitch_4
    move v4, v6

    goto :goto_3

    .line 18
    :pswitch_5
    move v4, v7

    .line 25
    :goto_3
    iput v4, p0, Lcom/google/firebase/auth/internal/zzo;->zza:I

    .line 26
    if-eq v4, v8, :cond_7

    if-ne v4, v2, :cond_3

    goto :goto_5

    .line 29
    :cond_3
    nop

    .line 30
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzafr;->zzf()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 31
    new-instance v1, Lcom/google/firebase/auth/internal/zzl;

    .line 32
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzafr;->zzb()Ljava/lang/String;

    move-result-object v0

    .line 33
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzafr;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzafi;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/auth/internal/zzba;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzafi;)Lcom/google/firebase/auth/MultiFactorInfo;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lcom/google/firebase/auth/internal/zzl;-><init>(Ljava/lang/String;Lcom/google/firebase/auth/MultiFactorInfo;)V

    .line 34
    goto :goto_4

    .line 35
    :cond_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzafr;->zzg()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 36
    new-instance v1, Lcom/google/firebase/auth/internal/zzj;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzafr;->zzc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzafr;->zzb()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lcom/google/firebase/auth/internal/zzj;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 37
    :cond_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzafr;->zze()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 38
    new-instance v1, Lcom/google/firebase/auth/internal/zzm;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzafr;->zzb()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/google/firebase/auth/internal/zzm;-><init>(Ljava/lang/String;)V

    goto :goto_4

    .line 39
    :cond_6
    nop

    .line 40
    :goto_4
    iput-object v1, p0, Lcom/google/firebase/auth/internal/zzo;->zzd:Lcom/google/firebase/auth/ActionCodeInfo;

    .line 41
    return-void

    .line 27
    :cond_7
    :goto_5
    iput-object v1, p0, Lcom/google/firebase/auth/internal/zzo;->zzd:Lcom/google/firebase/auth/ActionCodeInfo;

    .line 28
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6fbac124 -> :sswitch_5
        -0x56916d75 -> :sswitch_4
        -0x4ffacbca -> :sswitch_3
        -0x4183d145 -> :sswitch_2
        0x33e669c5 -> :sswitch_1
        0x39d86cc1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final getData(I)Ljava/lang/String;
    .locals 3

    .line 3
    iget v0, p0, Lcom/google/firebase/auth/internal/zzo;->zza:I

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 4
    return-object v2

    .line 5
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 8
    return-object v2

    .line 7
    :pswitch_0
    iget-object p1, p0, Lcom/google/firebase/auth/internal/zzo;->zzc:Ljava/lang/String;

    return-object p1

    .line 6
    :pswitch_1
    iget-object p1, p0, Lcom/google/firebase/auth/internal/zzo;->zzb:Ljava/lang/String;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getInfo()Lcom/google/firebase/auth/ActionCodeInfo;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzo;->zzd:Lcom/google/firebase/auth/ActionCodeInfo;

    return-object v0
.end method

.method public final getOperation()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/firebase/auth/internal/zzo;->zza:I

    return v0
.end method
