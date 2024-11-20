.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzafs;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzaco;


# instance fields
.field private zza:Ljava/lang/String;

.field private zzb:Ljava/lang/String;

.field private zzc:Ljava/lang/String;

.field private zzd:Ljava/lang/String;

.field private zze:Ljava/lang/String;

.field private zzf:Ljava/lang/String;

.field private zzg:Lcom/google/android/gms/internal/firebase-auth-api/zzage;

.field private zzh:Z

.field private zzi:Lcom/google/android/gms/internal/firebase-auth-api/zzage;

.field private zzj:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafs;->zzh:Z

    .line 78
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzage;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzage;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafs;->zzg:Lcom/google/android/gms/internal/firebase-auth-api/zzage;

    .line 79
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzage;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzage;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafs;->zzi:Lcom/google/android/gms/internal/firebase-auth-api/zzage;

    .line 80
    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzafs;
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafs;->zzi:Lcom/google/android/gms/internal/firebase-auth-api/zzage;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzage;->zzb()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    return-object p0
.end method

.method public final zza()Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 30
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 31
    const-string v1, "returnSecureToken"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafs;->zzh:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 32
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafs;->zzi:Lcom/google/android/gms/internal/firebase-auth-api/zzage;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzage;->zzb()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 33
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafs;->zzi:Lcom/google/android/gms/internal/firebase-auth-api/zzage;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzage;->zzb()Ljava/util/List;

    move-result-object v1

    .line 34
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 35
    move v4, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 36
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 37
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 38
    :cond_0
    nop

    .line 39
    const-string v1, "deleteProvider"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 40
    :cond_1
    nop

    .line 41
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafs;->zzg:Lcom/google/android/gms/internal/firebase-auth-api/zzage;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzage;->zzb()Ljava/util/List;

    move-result-object v1

    .line 42
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v4, v3, [I

    .line 43
    move v5, v2

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 44
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 45
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/4 v8, 0x2

    const/4 v9, 0x1

    sparse-switch v7, :sswitch_data_0

    :cond_2
    goto :goto_2

    :sswitch_0
    const-string v7, "PASSWORD"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v6, v8

    goto :goto_3

    :sswitch_1
    const-string v7, "PHOTO_URL"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x3

    goto :goto_3

    :sswitch_2
    const-string v7, "EMAIL"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v6, v2

    goto :goto_3

    :sswitch_3
    const-string v7, "DISPLAY_NAME"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v6, v9

    goto :goto_3

    :goto_2
    const/4 v6, -0x1

    :goto_3
    packed-switch v6, :pswitch_data_0

    .line 50
    move v8, v2

    goto :goto_4

    .line 49
    :pswitch_0
    const/4 v8, 0x4

    goto :goto_4

    .line 48
    :pswitch_1
    const/4 v8, 0x5

    goto :goto_4

    .line 47
    :pswitch_2
    goto :goto_4

    .line 46
    :pswitch_3
    move v8, v9

    .line 51
    :goto_4
    aput v8, v4, v5

    .line 52
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 53
    :cond_3
    nop

    .line 54
    nop

    .line 55
    if-lez v3, :cond_5

    .line 56
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 57
    nop

    :goto_5
    if-ge v2, v3, :cond_4

    .line 58
    aget v5, v4, v2

    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 59
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 60
    :cond_4
    const-string v2, "deleteAttribute"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafs;->zza:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 62
    const-string v2, "idToken"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63
    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafs;->zzc:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 64
    const-string v2, "email"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafs;->zzd:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 66
    const-string v2, "password"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafs;->zzb:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 68
    const-string v2, "displayName"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 69
    :cond_9
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafs;->zzf:Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 70
    const-string v2, "photoUrl"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    :cond_a
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafs;->zze:Ljava/lang/String;

    if-eqz v1, :cond_b

    .line 72
    const-string v2, "oobCode"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    :cond_b
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafs;->zzj:Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 74
    const-string v2, "tenantId"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 75
    :cond_c
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x13d9e3f8 -> :sswitch_3
        0x3f0537c -> :sswitch_2
        0x73a065a2 -> :sswitch_1
        0x772faa9b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzafs;
    .locals 1

    .line 4
    if-nez p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafs;->zzg:Lcom/google/android/gms/internal/firebase-auth-api/zzage;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzage;->zzb()Ljava/util/List;

    move-result-object p1

    const-string v0, "DISPLAY_NAME"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafs;->zzb:Ljava/lang/String;

    .line 7
    :goto_0
    return-object p0
.end method

.method public final zzb()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafs;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method public final zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzafs;
    .locals 1

    .line 8
    if-nez p1, :cond_0

    .line 9
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafs;->zzg:Lcom/google/android/gms/internal/firebase-auth-api/zzage;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzage;->zzb()Ljava/util/List;

    move-result-object p1

    const-string v0, "EMAIL"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafs;->zzc:Ljava/lang/String;

    .line 11
    :goto_0
    return-object p0
.end method

.method public final zzc()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafs;->zzc:Ljava/lang/String;

    return-object v0
.end method

.method public final zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzafs;
    .locals 0

    .line 12
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafs;->zza:Ljava/lang/String;

    .line 13
    return-object p0
.end method

.method public final zzd()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafs;->zzd:Ljava/lang/String;

    return-object v0
.end method

.method public final zze(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzafs;
    .locals 0

    .line 14
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafs;->zze:Ljava/lang/String;

    .line 15
    return-object p0
.end method

.method public final zze()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafs;->zzf:Ljava/lang/String;

    return-object v0
.end method

.method public final zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzafs;
    .locals 1

    .line 16
    if-nez p1, :cond_0

    .line 17
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafs;->zzg:Lcom/google/android/gms/internal/firebase-auth-api/zzage;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzage;->zzb()Ljava/util/List;

    move-result-object p1

    const-string v0, "PASSWORD"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 18
    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafs;->zzd:Ljava/lang/String;

    .line 19
    :goto_0
    return-object p0
.end method

.method public final zzg(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzafs;
    .locals 1

    .line 20
    if-nez p1, :cond_0

    .line 21
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafs;->zzg:Lcom/google/android/gms/internal/firebase-auth-api/zzage;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzage;->zzb()Ljava/util/List;

    move-result-object p1

    const-string v0, "PHOTO_URL"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 22
    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafs;->zzf:Ljava/lang/String;

    .line 23
    :goto_0
    return-object p0
.end method

.method public final zzh(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzafs;
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafs;->zzj:Ljava/lang/String;

    .line 25
    return-object p0
.end method

.method public final zzi(Ljava/lang/String;)Z
    .locals 1

    .line 81
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 82
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafs;->zzg:Lcom/google/android/gms/internal/firebase-auth-api/zzage;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzage;->zzb()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
