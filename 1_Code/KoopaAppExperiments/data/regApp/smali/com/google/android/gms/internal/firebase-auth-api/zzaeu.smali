.class public Lcom/google/android/gms/internal/firebase-auth-api/zzaeu;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzacn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzacn<",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzaeu;",
        ">;"
    }
.end annotation


# static fields
.field private static final zza:Ljava/lang/String;


# instance fields
.field private zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzaew;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const-class v0, Lcom/google/android/gms/internal/firebase-auth-api/zzaeu;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzaeu;->zza:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzaeu;
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/firebase-auth-api/zzaad;
        }
    .end annotation

    .line 2
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "users"

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 4
    nop

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzaew;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaew;-><init>()V

    .line 6
    goto/16 :goto_3

    .line 7
    :cond_0
    nop

    .line 8
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 9
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_2

    .line 11
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    const/4 v4, 0x0

    move v5, v4

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 13
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 14
    if-nez v6, :cond_2

    .line 15
    new-instance v6, Lcom/google/android/gms/internal/firebase-auth-api/zzaex;

    invoke-direct {v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzaex;-><init>()V

    move/from16 v25, v5

    goto/16 :goto_1

    .line 16
    :cond_2
    new-instance v24, Lcom/google/android/gms/internal/firebase-auth-api/zzaex;

    const-string v7, "localId"

    .line 17
    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/common/util/Strings;->emptyToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v7, "email"

    .line 18
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/common/util/Strings;->emptyToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v7, "emailVerified"

    .line 19
    invoke-virtual {v6, v7, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v11

    const-string v7, "displayName"

    .line 20
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/common/util/Strings;->emptyToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v7, "photoUrl"

    .line 21
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/common/util/Strings;->emptyToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v7, "providerUserInfo"

    .line 22
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/internal/firebase-auth-api/zzafm;->zza(Lorg/json/JSONArray;)Lcom/google/android/gms/internal/firebase-auth-api/zzafm;

    move-result-object v14

    const-string v7, "rawPassword"

    .line 23
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/common/util/Strings;->emptyToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v7, "phoneNumber"

    .line 24
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/common/util/Strings;->emptyToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v7, "createdAt"

    .line 25
    move/from16 v25, v5

    const-wide/16 v4, 0x0

    invoke-virtual {v6, v7, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v17

    const-string v7, "lastLoginAt"

    .line 26
    invoke-virtual {v6, v7, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-string v7, "mfaInfo"

    .line 27
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/internal/firebase-auth-api/zzafi;->zza(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v22

    const-string v7, "passkeyInfo"

    .line 28
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzafl;->zza(Lorg/json/JSONArray;)Lcom/google/android/gms/internal/firebase-auth-api/zzap;

    move-result-object v23

    move-object/from16 v7, v24

    move-object v8, v9

    move-object v9, v10

    move v10, v11

    move-object v11, v12

    move-object v12, v13

    move-object v13, v14

    move-object v14, v15

    move-object/from16 v15, v16

    move-wide/from16 v16, v17

    move-wide/from16 v18, v4

    invoke-direct/range {v7 .. v23}, Lcom/google/android/gms/internal/firebase-auth-api/zzaex;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzafm;Ljava/lang/String;Ljava/lang/String;JJZLcom/google/firebase/auth/zzf;Ljava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/zzap;)V

    move-object/from16 v6, v24

    .line 29
    :goto_1
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    add-int/lit8 v5, v25, 0x1

    const/4 v4, 0x0

    goto/16 :goto_0

    .line 31
    :cond_3
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzaew;

    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzaew;-><init>(Ljava/util/List;)V

    goto :goto_3

    .line 10
    :cond_4
    :goto_2
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzaew;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzaew;-><init>(Ljava/util/List;)V

    .line 32
    :goto_3
    iput-object v0, v1, Lcom/google/android/gms/internal/firebase-auth-api/zzaeu;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzaew;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    return-object v1

    .line 34
    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    :goto_4
    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzaeu;->zza:Ljava/lang/String;

    invoke-static {v0, v3, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzags;->zza(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzaad;

    move-result-object v0

    throw v0
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
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaeu;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzaeu;

    move-result-object p1

    return-object p1
.end method

.method public final zza()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzaex;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaeu;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzaew;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaew;->zza()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
