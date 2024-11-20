.class public Lcom/google/android/gms/internal/firebase-auth-api/zzaff;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzacn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzacn<",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzaff;",
        ">;"
    }
.end annotation


# static fields
.field private static final zza:Ljava/lang/String;


# instance fields
.field private zzb:Ljava/lang/String;

.field private zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-auth-api/zzap<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzafp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    const-class v0, Lcom/google/android/gms/internal/firebase-auth-api/zzaff;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzaff;->zza:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzaff;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/firebase-auth-api/zzaad;
        }
    .end annotation

    .line 2
    const-string v0, "recaptchaEnforcementState"

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3
    const-string v2, "recaptchaKey"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/common/util/Strings;->emptyToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaff;->zzb:Ljava/lang/String;

    .line 4
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 5
    nop

    .line 6
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 7
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 9
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzap;->zzg()Lcom/google/android/gms/internal/firebase-auth-api/zzao;

    move-result-object v1

    .line 10
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 11
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 12
    if-nez v3, :cond_1

    .line 13
    const/4 v3, 0x0

    invoke-static {v3, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzafp;->zza(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzafp;

    move-result-object v3

    goto :goto_1

    .line 14
    :cond_1
    const-string v4, "provider"

    .line 15
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/common/util/Strings;->emptyToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "enforcementState"

    .line 16
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/common/util/Strings;->emptyToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 17
    invoke-static {v4, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzafp;->zza(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzafp;

    move-result-object v3

    .line 18
    :goto_1
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzao;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/zzan;

    .line 19
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 20
    :cond_2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzao;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzap;

    move-result-object v0

    goto :goto_3

    .line 8
    :cond_3
    :goto_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzap;->zza(Ljava/util/Collection;)Lcom/google/android/gms/internal/firebase-auth-api/zzap;

    move-result-object v0

    .line 21
    :goto_3
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaff;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzap;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    :cond_4
    return-object p0

    .line 23
    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    :goto_4
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzaff;->zza:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzags;->zza(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzaad;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzacn;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/firebase-auth-api/zzaad;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaff;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzaff;

    move-result-object p1

    return-object p1
.end method

.method public final zza()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaff;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method public final zzb(Ljava/lang/String;)Z
    .locals 8

    .line 27
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaff;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzap;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 28
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaff;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzap;

    move-object v2, v0

    check-cast v2, Lcom/google/android/gms/internal/firebase-auth-api/zzap;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzap;->size()I

    move-result v2

    move v3, v1

    :cond_1
    :goto_0
    if-ge v3, v2, :cond_5

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzap;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/google/android/gms/internal/firebase-auth-api/zzafp;

    .line 31
    invoke-virtual {v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzafp;->zza()Ljava/lang/String;

    move-result-object v5

    .line 32
    invoke-virtual {v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzafp;->zzb()Ljava/lang/String;

    move-result-object v4

    .line 33
    if-eqz v5, :cond_1

    if-eqz v4, :cond_1

    .line 34
    nop

    .line 35
    const-string v6, "ENFORCE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    if-nez v6, :cond_3

    .line 36
    const-string v6, "AUDIT"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    move v5, v1

    goto :goto_2

    :cond_3
    :goto_1
    move v5, v7

    .line 37
    :goto_2
    if-eqz v5, :cond_4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 38
    return v7

    .line 39
    :cond_4
    goto :goto_0

    .line 40
    :cond_5
    return v1

    .line 29
    :cond_6
    :goto_3
    return v1
.end method
