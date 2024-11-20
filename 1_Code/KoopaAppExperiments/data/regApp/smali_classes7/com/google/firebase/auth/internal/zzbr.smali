.class public final Lcom/google/firebase/auth/internal/zzbr;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"


# instance fields
.field private zza:Landroid/content/Context;

.field private zzb:Ljava/lang/String;

.field private zzc:Landroid/content/SharedPreferences;

.field private zzd:Lcom/google/android/gms/common/logging/Logger;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/firebase/auth/internal/zzbr;->zzb:Ljava/lang/String;

    .line 137
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzbr;->zza:Landroid/content/Context;

    .line 138
    iget-object p1, p0, Lcom/google/firebase/auth/internal/zzbr;->zzb:Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "com.google.firebase.auth.api.Store.%s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 139
    iget-object p2, p0, Lcom/google/firebase/auth/internal/zzbr;->zza:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzbr;->zzc:Landroid/content/SharedPreferences;

    .line 140
    new-instance p1, Lcom/google/android/gms/common/logging/Logger;

    const-string p2, "StorageHelpers"

    new-array v0, v0, [Ljava/lang/String;

    invoke-direct {p1, p2, v0}, Lcom/google/android/gms/common/logging/Logger;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzbr;->zzd:Lcom/google/android/gms/common/logging/Logger;

    .line 141
    return-void
.end method

.method private final zza(Lorg/json/JSONObject;)Lcom/google/firebase/auth/internal/zzv;
    .locals 13

    .line 20
    const-string v0, "userMultiFactorInfo"

    const-string v1, "userMetadata"

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "cachedTokenState"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 21
    const-string v4, "applicationName"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 22
    const-string v5, "anonymous"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 23
    const-string v6, "2"

    .line 24
    const-string v7, "version"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 25
    if-eqz v7, :cond_0

    .line 26
    move-object v6, v7

    .line 27
    :cond_0
    const-string v7, "userInfos"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 28
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v8

    .line 29
    if-nez v8, :cond_1

    .line 30
    return-object v2

    .line 31
    :cond_1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 32
    const/4 v10, 0x0

    move v11, v10

    :goto_0
    if-ge v11, v8, :cond_2

    .line 33
    invoke-virtual {v7, v11}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/google/firebase/auth/internal/zzr;->zza(Ljava/lang/String;)Lcom/google/firebase/auth/internal/zzr;

    move-result-object v12

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 35
    :cond_2
    invoke-static {v4}, Lcom/google/firebase/FirebaseApp;->getInstance(Ljava/lang/String;)Lcom/google/firebase/FirebaseApp;

    move-result-object v4

    .line 36
    new-instance v7, Lcom/google/firebase/auth/internal/zzv;

    invoke-direct {v7, v4, v9}, Lcom/google/firebase/auth/internal/zzv;-><init>(Lcom/google/firebase/FirebaseApp;Ljava/util/List;)V

    .line 37
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 38
    invoke-static {v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzafe;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzafe;

    move-result-object v3

    .line 39
    invoke-virtual {v7, v3}, Lcom/google/firebase/auth/FirebaseUser;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzafe;)V

    .line 40
    :cond_3
    if-nez v5, :cond_4

    .line 41
    invoke-virtual {v7}, Lcom/google/firebase/auth/FirebaseUser;->zzb()Lcom/google/firebase/auth/FirebaseUser;

    .line 42
    :cond_4
    invoke-virtual {v7, v6}, Lcom/google/firebase/auth/internal/zzv;->zza(Ljava/lang/String;)Lcom/google/firebase/auth/internal/zzv;

    .line 43
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 44
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 45
    invoke-static {v1}, Lcom/google/firebase/auth/internal/zzx;->zza(Lorg/json/JSONObject;)Lcom/google/firebase/auth/internal/zzx;

    move-result-object v1

    .line 46
    if-eqz v1, :cond_5

    .line 47
    invoke-virtual {v7, v1}, Lcom/google/firebase/auth/internal/zzv;->zza(Lcom/google/firebase/auth/internal/zzx;)V

    .line 48
    :cond_5
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 49
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 50
    if-eqz p1, :cond_b

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 52
    move v1, v10

    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_a

    .line 53
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 54
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 55
    nop

    .line 56
    const-string v3, "factorIdKey"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 57
    const-string v5, "phone"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 58
    invoke-static {v4}, Lcom/google/firebase/auth/PhoneMultiFactorInfo;->zza(Lorg/json/JSONObject;)Lcom/google/firebase/auth/PhoneMultiFactorInfo;

    move-result-object v3

    goto :goto_4

    .line 59
    :cond_6
    const-string v5, "totp"

    .line 60
    if-eq v3, v5, :cond_8

    if-eqz v3, :cond_7

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_2

    :cond_7
    move v3, v10

    goto :goto_3

    :cond_8
    :goto_2
    const/4 v3, 0x1

    .line 61
    :goto_3
    if-eqz v3, :cond_9

    .line 62
    invoke-static {v4}, Lcom/google/firebase/auth/TotpMultiFactorInfo;->zza(Lorg/json/JSONObject;)Lcom/google/firebase/auth/TotpMultiFactorInfo;

    move-result-object v3

    goto :goto_4

    .line 63
    :cond_9
    move-object v3, v2

    .line 64
    :goto_4
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 66
    :cond_a
    invoke-virtual {v7, v0}, Lcom/google/firebase/auth/FirebaseUser;->zzb(Ljava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/internal/firebase-auth-api/zzxw; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :cond_b
    return-object v7

    .line 68
    :catch_0
    move-exception p1

    goto :goto_5

    :catch_1
    move-exception p1

    goto :goto_5

    :catch_2
    move-exception p1

    goto :goto_5

    :catch_3
    move-exception p1

    .line 69
    :goto_5
    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzbr;->zzd:Lcom/google/android/gms/common/logging/Logger;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/logging/Logger;->wtf(Ljava/lang/Throwable;)V

    .line 70
    return-object v2
.end method

.method private final zzc(Lcom/google/firebase/auth/FirebaseUser;)Ljava/lang/String;
    .locals 12

    .line 71
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 72
    const-class v1, Lcom/google/firebase/auth/internal/zzv;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 73
    check-cast p1, Lcom/google/firebase/auth/internal/zzv;

    .line 74
    const/4 v1, 0x0

    :try_start_0
    const-string v2, "cachedTokenState"

    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->zze()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 75
    const-string v2, "applicationName"

    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->zza()Lcom/google/firebase/FirebaseApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firebase/FirebaseApp;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 76
    const-string v2, "type"

    const-string v3, "com.google.firebase.auth.internal.DefaultFirebaseUser"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 77
    invoke-virtual {p1}, Lcom/google/firebase/auth/internal/zzv;->zzi()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 78
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 79
    invoke-virtual {p1}, Lcom/google/firebase/auth/internal/zzv;->zzi()Ljava/util/List;

    move-result-object v3

    .line 80
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 81
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x2

    const/16 v7, 0x1e

    const/4 v8, 0x1

    if-le v5, v7, :cond_0

    .line 82
    nop

    .line 83
    iget-object v4, p0, Lcom/google/firebase/auth/internal/zzbr;->zzd:Lcom/google/android/gms/common/logging/Logger;

    const-string v5, "Provider user info list size larger than max size, truncating list to %d. Actual list size: %d"

    new-array v9, v6, [Ljava/lang/Object;

    .line 84
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v8

    .line 85
    invoke-virtual {v4, v5, v9}, Lcom/google/android/gms/common/logging/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v7

    .line 86
    :cond_0
    nop

    .line 87
    move v5, v1

    move v7, v5

    :goto_0
    const-string v9, "firebase"

    if-ge v5, v4, :cond_3

    .line 88
    :try_start_1
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/firebase/auth/internal/zzr;

    .line 89
    invoke-virtual {v10}, Lcom/google/firebase/auth/internal/zzr;->getProviderId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 90
    move v7, v8

    .line 91
    :cond_1
    add-int/lit8 v11, v4, -0x1

    if-ne v5, v11, :cond_2

    if-eqz v7, :cond_3

    .line 92
    :cond_2
    invoke-virtual {v10}, Lcom/google/firebase/auth/internal/zzr;->zzb()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 93
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 94
    :cond_3
    if-nez v7, :cond_8

    .line 95
    add-int/lit8 v5, v4, -0x1

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    if-ge v5, v10, :cond_6

    if-ltz v5, :cond_6

    .line 96
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/firebase/auth/internal/zzr;

    .line 97
    invoke-virtual {v10}, Lcom/google/firebase/auth/internal/zzr;->getProviderId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 98
    nop

    .line 99
    invoke-virtual {v10}, Lcom/google/firebase/auth/internal/zzr;->zzb()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 100
    move v7, v8

    goto :goto_2

    .line 101
    :cond_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    sub-int/2addr v11, v8

    if-ne v5, v11, :cond_5

    .line 102
    invoke-virtual {v10}, Lcom/google/firebase/auth/internal/zzr;->zzb()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 103
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 104
    :cond_6
    :goto_2
    if-nez v7, :cond_8

    .line 105
    iget-object v5, p0, Lcom/google/firebase/auth/internal/zzbr;->zzd:Lcom/google/android/gms/common/logging/Logger;

    const-string v7, "Malformed user object! No Firebase Auth provider id found. Provider user info list size: %d, trimmed size: %d"

    new-array v6, v6, [Ljava/lang/Object;

    .line 106
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v8

    .line 107
    invoke-virtual {v5, v7, v6}, Lcom/google/android/gms/common/logging/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x5

    if-ge v4, v5, :cond_8

    .line 109
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Provider user info list:\n"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/firebase/auth/internal/zzr;

    .line 111
    const-string v6, "Provider - %s\n"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-virtual {v5}, Lcom/google/firebase/auth/internal/zzr;->getProviderId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v1

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    goto :goto_3

    .line 113
    :cond_7
    iget-object v3, p0, Lcom/google/firebase/auth/internal/zzbr;->zzd:Lcom/google/android/gms/common/logging/Logger;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/common/logging/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    :cond_8
    const-string v3, "userInfos"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 115
    :cond_9
    const-string v2, "anonymous"

    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->isAnonymous()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 116
    const-string v2, "version"

    const-string v3, "2"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 117
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->getMetadata()Lcom/google/firebase/auth/FirebaseUserMetadata;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 118
    const-string v2, "userMetadata"

    .line 119
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->getMetadata()Lcom/google/firebase/auth/FirebaseUserMetadata;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/auth/internal/zzx;

    invoke-virtual {v3}, Lcom/google/firebase/auth/internal/zzx;->zza()Lorg/json/JSONObject;

    move-result-object v3

    .line 120
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 121
    :cond_a
    nop

    .line 122
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->getMultiFactor()Lcom/google/firebase/auth/MultiFactor;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/auth/internal/zzz;

    invoke-virtual {p1}, Lcom/google/firebase/auth/MultiFactor;->getEnrolledFactors()Ljava/util/List;

    move-result-object p1

    .line 123
    if-eqz p1, :cond_c

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c

    .line 124
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 125
    move v3, v1

    :goto_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_b

    .line 126
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/auth/MultiFactorInfo;

    invoke-virtual {v4}, Lcom/google/firebase/auth/MultiFactorInfo;->toJson()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 127
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 128
    :cond_b
    const-string p1, "userMultiFactorInfo"

    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 129
    :cond_c
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    .line 130
    :catch_0
    move-exception p1

    .line 131
    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzbr;->zzd:Lcom/google/android/gms/common/logging/Logger;

    const-string v2, "Failed to turn object into JSON"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, p1, v1}, Lcom/google/android/gms/common/logging/Logger;->wtf(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 132
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzxw;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzxw;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 133
    :cond_d
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public final zza(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/internal/firebase-auth-api/zzafe;
    .locals 2

    .line 14
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzbr;->zzc:Landroid/content/SharedPreferences;

    .line 16
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->getUid()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "com.google.firebase.auth.GET_TOKEN_RESPONSE.%s"

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzafe;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzafe;

    move-result-object p1

    return-object p1

    .line 19
    :cond_0
    return-object v1
.end method

.method public final zza()Lcom/google/firebase/auth/FirebaseUser;
    .locals 4

    .line 1
    const-string v0, "type"

    .line 2
    iget-object v1, p0, Lcom/google/firebase/auth/internal/zzbr;->zzc:Landroid/content/SharedPreferences;

    const-string v2, "com.google.firebase.auth.FIREBASE_USER"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    nop

    .line 4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    return-object v3

    .line 6
    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9
    const-string v1, "com.google.firebase.auth.internal.DefaultFirebaseUser"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    invoke-direct {p0, v2}, Lcom/google/firebase/auth/internal/zzbr;->zza(Lorg/json/JSONObject;)Lcom/google/firebase/auth/internal/zzv;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 11
    :cond_1
    goto :goto_0

    .line 12
    :catch_0
    move-exception v0

    .line 13
    :goto_0
    return-object v3
.end method

.method public final zza(Lcom/google/firebase/auth/FirebaseUser;Lcom/google/android/gms/internal/firebase-auth-api/zzafe;)V
    .locals 2

    .line 150
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzbr;->zzc:Landroid/content/SharedPreferences;

    .line 153
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 154
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->getUid()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "com.google.firebase.auth.GET_TOKEN_RESPONSE.%s"

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzafe;->zzf()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 155
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 156
    return-void
.end method

.method public final zza(Ljava/lang/String;)V
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzbr;->zzc:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 143
    return-void
.end method

.method public final zzb(Lcom/google/firebase/auth/FirebaseUser;)V
    .locals 2

    .line 144
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    invoke-direct {p0, p1}, Lcom/google/firebase/auth/internal/zzbr;->zzc(Lcom/google/firebase/auth/FirebaseUser;)Ljava/lang/String;

    move-result-object p1

    .line 146
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    nop

    .line 148
    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzbr;->zzc:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "com.google.firebase.auth.FIREBASE_USER"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 149
    :cond_0
    return-void
.end method
