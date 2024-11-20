.class public Lcom/google/firebase/auth/internal/GenericIdpActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "com.google.firebase:firebase-auth@@22.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzacf;


# static fields
.field private static zzb:J

.field private static final zzc:Lcom/google/firebase/auth/internal/zzbx;


# instance fields
.field private zzd:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 87
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/google/firebase/auth/internal/GenericIdpActivity;->zzb:J

    .line 88
    invoke-static {}, Lcom/google/firebase/auth/internal/zzbx;->zzc()Lcom/google/firebase/auth/internal/zzbx;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/auth/internal/GenericIdpActivity;->zzc:Lcom/google/firebase/auth/internal/zzbx;

    .line 89
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 90
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/firebase/auth/internal/GenericIdpActivity;->zzd:Z

    return-void
.end method

.method private final zza(Landroid/net/Uri$Builder;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
    .locals 20

    .line 2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "com.google.firebase.auth.KEY_API_KEY"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3
    const-string v4, "com.google.firebase.auth.KEY_PROVIDER_ID"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4
    const-string v5, "com.google.firebase.auth.KEY_TENANT_ID"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 5
    const-string v5, "com.google.firebase.auth.KEY_FIREBASE_APP_NAME"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 6
    nop

    .line 7
    const-string v5, "com.google.firebase.auth.KEY_PROVIDER_SCOPES"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 8
    nop

    .line 9
    const/16 v16, 0x0

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 10
    const-string v6, ","

    invoke-static {v6, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    move-object v13, v5

    goto :goto_0

    .line 11
    :cond_0
    move-object/from16 v13, v16

    :goto_0
    nop

    .line 12
    const-string v5, "com.google.firebase.auth.KEY_PROVIDER_CUSTOM_PARAMS"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 13
    invoke-static {v5}, Lcom/google/firebase/auth/internal/GenericIdpActivity;->zza(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v12

    .line 14
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v11

    .line 15
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    .line 16
    invoke-static {v0, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzaci;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzacf;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 17
    nop

    .line 18
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    .line 19
    const-string v5, "com.google.firebase.auth.internal.CLIENT_VERSION"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 20
    invoke-static {}, Lcom/google/firebase/auth/internal/zzi;->zza()Lcom/google/firebase/auth/internal/zzi;

    move-result-object v5

    .line 21
    invoke-virtual/range {p0 .. p0}, Lcom/google/firebase/auth/internal/GenericIdpActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    .line 22
    move-object/from16 v7, p3

    move-object v8, v11

    move-object v9, v10

    move-object/from16 v18, v3

    move-object v3, v10

    move-object/from16 v10, v17

    move-object/from16 v19, v11

    move-object v11, v4

    move-object/from16 p2, v12

    move-object v12, v14

    move-object/from16 v17, v13

    move-object v13, v15

    invoke-virtual/range {v5 .. v13}, Lcom/google/firebase/auth/internal/zzi;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-static {v15}, Lcom/google/firebase/FirebaseApp;->getInstance(Ljava/lang/String;)Lcom/google/firebase/FirebaseApp;

    move-result-object v5

    .line 24
    nop

    .line 25
    invoke-virtual/range {p0 .. p0}, Lcom/google/firebase/auth/internal/GenericIdpActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5}, Lcom/google/firebase/FirebaseApp;->getPersistenceKey()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/google/firebase/auth/internal/zzk;->zza(Landroid/content/Context;Ljava/lang/String;)Lcom/google/firebase/auth/internal/zzk;

    move-result-object v5

    .line 26
    invoke-virtual {v5}, Lcom/google/firebase/auth/internal/zzk;->zza()Ljava/lang/String;

    move-result-object v5

    .line 27
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 28
    const-string v1, "GenericIdpActivity"

    const-string v2, "Could not generate an encryption key for Generic IDP - cancelling flow."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    nop

    .line 30
    const-string v1, "Failed to generate/retrieve public encryption key for Generic IDP flow."

    invoke-static {v1}, Lcom/google/firebase/auth/internal/zzai;->zza(Ljava/lang/String;)Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    .line 31
    invoke-direct {v0, v1}, Lcom/google/firebase/auth/internal/GenericIdpActivity;->zza(Lcom/google/android/gms/common/api/Status;)V

    .line 32
    return-object v16

    .line 33
    :cond_1
    if-nez v3, :cond_2

    .line 34
    return-object v16

    .line 35
    :cond_2
    nop

    .line 36
    const-string v6, "eid"

    const-string v7, "p"

    invoke-virtual {v1, v6, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "X"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 37
    const-string v7, "v"

    invoke-virtual {v6, v7, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 38
    const-string v6, "authType"

    const-string v7, "signInWithRedirect"

    invoke-virtual {v2, v6, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 39
    const-string v6, "apiKey"

    move-object/from16 v7, v18

    invoke-virtual {v2, v6, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 40
    const-string v6, "providerId"

    invoke-virtual {v2, v6, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 41
    const-string v4, "sessionId"

    invoke-virtual {v2, v4, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 42
    const-string v3, "eventId"

    move-object/from16 v4, v19

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 43
    const-string v3, "apn"

    move-object/from16 v4, p3

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 44
    const-string v3, "sha1Cert"

    move-object/from16 v4, p4

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 45
    const-string v3, "publicKey"

    invoke-virtual {v2, v3, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 46
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 47
    const-string v2, "scopes"

    move-object/from16 v5, v17

    invoke-virtual {v1, v2, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 48
    :cond_3
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 49
    const-string v2, "customParameters"

    move-object/from16 v3, p2

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 50
    :cond_4
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 51
    const-string v2, "tid"

    invoke-virtual {v1, v2, v14}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 52
    :cond_5
    return-object v1
.end method

.method static synthetic zza(Landroid/net/Uri;Lcom/google/android/gms/tasks/Task;)Landroid/net/Uri;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 56
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    .line 57
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    const-string v1, "GenericIdpActivity"

    if-eqz v0, :cond_1

    .line 58
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/appcheck/AppCheckTokenResult;

    .line 59
    invoke-virtual {p1}, Lcom/google/firebase/appcheck/AppCheckTokenResult;->getError()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 60
    nop

    .line 61
    invoke-virtual {p1}, Lcom/google/firebase/appcheck/AppCheckTokenResult;->getError()Ljava/lang/Exception;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error getting App Check token; using placeholder token instead. Error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/appcheck/AppCheckTokenResult;->getToken()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fac="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 64
    goto :goto_0

    .line 65
    :cond_1
    nop

    .line 66
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected error getting App Check token: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 67
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :goto_0
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private static zza(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 5

    .line 70
    if-nez p0, :cond_0

    .line 71
    const/4 p0, 0x0

    return-object p0

    .line 72
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 73
    :try_start_0
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 74
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 75
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 76
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :cond_1
    goto :goto_0

    .line 78
    :cond_2
    goto :goto_1

    .line 79
    :catch_0
    move-exception p0

    .line 80
    const-string p0, "GenericIdpActivity"

    const-string v1, "Unexpected JSON exception when serializing developer specified custom params"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final zza(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    .line 107
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/google/firebase/auth/internal/GenericIdpActivity;->zzb:J

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/firebase/auth/internal/GenericIdpActivity;->zzd:Z

    .line 109
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 110
    invoke-static {v0, p1}, Lcom/google/firebase/auth/internal/zzby;->zza(Landroid/content/Intent;Lcom/google/android/gms/common/api/Status;)V

    .line 111
    const-string v1, "com.google.firebase.auth.ACTION_RECEIVE_FIREBASE_AUTH_INTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    invoke-direct {p0, v0}, Lcom/google/firebase/auth/internal/GenericIdpActivity;->zza(Landroid/content/Intent;)Z

    move-result v0

    .line 113
    if-nez v0, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/google/firebase/auth/internal/GenericIdpActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 115
    invoke-static {v0, p1}, Lcom/google/firebase/auth/internal/zzbe;->zza(Landroid/content/Context;Lcom/google/android/gms/common/api/Status;)V

    .line 116
    goto :goto_0

    .line 117
    :cond_0
    sget-object p1, Lcom/google/firebase/auth/internal/GenericIdpActivity;->zzc:Lcom/google/firebase/auth/internal/zzbx;

    invoke-virtual {p1, p0}, Lcom/google/firebase/auth/internal/zzbx;->zza(Landroid/content/Context;)V

    .line 118
    :goto_0
    invoke-virtual {p0}, Lcom/google/firebase/auth/internal/GenericIdpActivity;->finish()V

    .line 119
    return-void
.end method

.method private final zza(Landroid/content/Intent;)Z
    .locals 1

    .line 241
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method private final zzb()V
    .locals 3

    .line 92
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/google/firebase/auth/internal/GenericIdpActivity;->zzb:J

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/firebase/auth/internal/GenericIdpActivity;->zzd:Z

    .line 94
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 95
    const-string v1, "com.google.firebase.auth.internal.EXTRA_CANCELED"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 96
    const-string v1, "com.google.firebase.auth.ACTION_RECEIVE_FIREBASE_AUTH_INTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    invoke-direct {p0, v0}, Lcom/google/firebase/auth/internal/GenericIdpActivity;->zza(Landroid/content/Intent;)Z

    move-result v0

    .line 98
    if-nez v0, :cond_0

    .line 99
    nop

    .line 100
    const-string v0, "WEB_CONTEXT_CANCELED"

    invoke-static {v0}, Lcom/google/firebase/auth/internal/zzai;->zza(Ljava/lang/String;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    .line 101
    nop

    .line 102
    invoke-static {p0, v0}, Lcom/google/firebase/auth/internal/zzbe;->zza(Landroid/content/Context;Lcom/google/android/gms/common/api/Status;)V

    .line 103
    goto :goto_0

    .line 104
    :cond_0
    sget-object v0, Lcom/google/firebase/auth/internal/GenericIdpActivity;->zzc:Lcom/google/firebase/auth/internal/zzbx;

    invoke-virtual {v0, p0}, Lcom/google/firebase/auth/internal/zzbx;->zza(Landroid/content/Context;)V

    .line 105
    :goto_0
    invoke-virtual {p0}, Lcom/google/firebase/auth/internal/GenericIdpActivity;->finish()V

    .line 106
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 135
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 136
    invoke-virtual {p0}, Lcom/google/firebase/auth/internal/GenericIdpActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 137
    const-string v1, "com.google.firebase.auth.internal.NONGMSCORE_SIGN_IN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "GenericIdpActivity"

    if-nez v1, :cond_0

    .line 138
    const-string v1, "com.google.firebase.auth.internal.NONGMSCORE_LINK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 139
    const-string v1, "com.google.firebase.auth.internal.NONGMSCORE_REAUTHENTICATE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 140
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 141
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Could not do operation - unknown action: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-direct {p0}, Lcom/google/firebase/auth/internal/GenericIdpActivity;->zzb()V

    .line 143
    return-void

    .line 144
    :cond_0
    invoke-static {}, Lcom/google/android/gms/common/util/DefaultClock;->getInstance()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    .line 145
    sget-wide v3, Lcom/google/firebase/auth/internal/GenericIdpActivity;->zzb:J

    sub-long v3, v0, v3

    const-wide/16 v5, 0x7530

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    .line 146
    const-string p1, "Could not start operation - already in progress"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    return-void

    .line 148
    :cond_1
    sput-wide v0, Lcom/google/firebase/auth/internal/GenericIdpActivity;->zzb:J

    .line 149
    if-eqz p1, :cond_2

    .line 150
    nop

    .line 151
    const-string v0, "com.google.firebase.auth.internal.KEY_STARTED_SIGN_IN"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/firebase/auth/internal/GenericIdpActivity;->zzd:Z

    .line 152
    :cond_2
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 153
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 154
    invoke-virtual {p0, p1}, Lcom/google/firebase/auth/internal/GenericIdpActivity;->setIntent(Landroid/content/Intent;)V

    .line 155
    return-void
.end method

.method protected onResume()V
    .locals 10

    .line 156
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 157
    invoke-virtual {p0}, Lcom/google/firebase/auth/internal/GenericIdpActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "GenericIdpActivity"

    const/4 v3, 0x1

    if-eqz v0, :cond_7

    .line 158
    invoke-virtual {p0}, Lcom/google/firebase/auth/internal/GenericIdpActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 159
    const-string v4, "firebaseError"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 160
    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 161
    invoke-static {v0}, Lcom/google/firebase/auth/internal/zzby;->zza(Ljava/lang/String;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    .line 162
    invoke-direct {p0, v0}, Lcom/google/firebase/auth/internal/GenericIdpActivity;->zza(Lcom/google/android/gms/common/api/Status;)V

    .line 163
    return-void

    :cond_0
    const-string v4, "link"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "eventId"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 164
    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 165
    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 166
    invoke-virtual {p0}, Lcom/google/firebase/auth/internal/GenericIdpActivity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 167
    const-string v7, "encryptionEnabled"

    invoke-virtual {v0, v7, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 168
    invoke-static {}, Lcom/google/firebase/auth/internal/zzi;->zza()Lcom/google/firebase/auth/internal/zzi;

    move-result-object v3

    invoke-virtual {v3, p0, v6, v5}, Lcom/google/firebase/auth/internal/zzi;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/auth/internal/zzh;

    move-result-object v3

    .line 169
    if-nez v3, :cond_1

    .line 170
    invoke-direct {p0}, Lcom/google/firebase/auth/internal/GenericIdpActivity;->zzb()V

    .line 171
    :cond_1
    if-eqz v0, :cond_2

    .line 172
    nop

    .line 173
    invoke-virtual {p0}, Lcom/google/firebase/auth/internal/GenericIdpActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 174
    invoke-virtual {v3}, Lcom/google/firebase/auth/internal/zzh;->zza()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/firebase/FirebaseApp;->getInstance(Ljava/lang/String;)Lcom/google/firebase/FirebaseApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/firebase/FirebaseApp;->getPersistenceKey()Ljava/lang/String;

    move-result-object v5

    .line 175
    invoke-static {v0, v5}, Lcom/google/firebase/auth/internal/zzk;->zza(Landroid/content/Context;Ljava/lang/String;)Lcom/google/firebase/auth/internal/zzk;

    move-result-object v0

    .line 176
    invoke-virtual {v0, v4}, Lcom/google/firebase/auth/internal/zzk;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 177
    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzagj;

    invoke-direct {v0, v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzagj;-><init>(Lcom/google/firebase/auth/internal/zzh;Ljava/lang/String;)V

    .line 178
    invoke-virtual {v3}, Lcom/google/firebase/auth/internal/zzh;->zze()Ljava/lang/String;

    move-result-object v4

    .line 179
    invoke-virtual {v3}, Lcom/google/firebase/auth/internal/zzh;->zzb()Ljava/lang/String;

    move-result-object v3

    .line 180
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzagj;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzagj;

    .line 181
    const-string v5, "com.google.firebase.auth.internal.NONGMSCORE_SIGN_IN"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 182
    const-string v5, "com.google.firebase.auth.internal.NONGMSCORE_LINK"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 183
    const-string v5, "com.google.firebase.auth.internal.NONGMSCORE_REAUTHENTICATE"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_0

    .line 201
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unsupported operation: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-direct {p0}, Lcom/google/firebase/auth/internal/GenericIdpActivity;->zzb()V

    .line 203
    return-void

    .line 184
    :cond_4
    :goto_0
    nop

    .line 185
    const-wide/16 v5, 0x0

    sput-wide v5, Lcom/google/firebase/auth/internal/GenericIdpActivity;->zzb:J

    .line 186
    iput-boolean v1, p0, Lcom/google/firebase/auth/internal/GenericIdpActivity;->zzd:Z

    .line 187
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 188
    const-string v2, "com.google.firebase.auth.internal.VERIFY_ASSERTION_REQUEST"

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelableSerializer;->serializeToIntentExtra(Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;Landroid/content/Intent;Ljava/lang/String;)V

    .line 189
    const-string v2, "com.google.firebase.auth.internal.OPERATION"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 190
    const-string v2, "com.google.firebase.auth.ACTION_RECEIVE_FIREBASE_AUTH_INTENT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 191
    invoke-direct {p0, v1}, Lcom/google/firebase/auth/internal/GenericIdpActivity;->zza(Landroid/content/Intent;)Z

    move-result v1

    .line 192
    if-nez v1, :cond_5

    .line 193
    nop

    .line 194
    invoke-virtual {p0}, Lcom/google/firebase/auth/internal/GenericIdpActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 195
    nop

    .line 196
    invoke-static {v1, v0, v3, v4}, Lcom/google/firebase/auth/internal/zzbe;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/firebase-auth-api/zzagj;Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    goto :goto_1

    .line 198
    :cond_5
    sget-object v0, Lcom/google/firebase/auth/internal/GenericIdpActivity;->zzc:Lcom/google/firebase/auth/internal/zzbx;

    invoke-virtual {v0, p0}, Lcom/google/firebase/auth/internal/zzbx;->zza(Landroid/content/Context;)V

    .line 199
    :goto_1
    invoke-virtual {p0}, Lcom/google/firebase/auth/internal/GenericIdpActivity;->finish()V

    .line 200
    return-void

    .line 204
    :cond_6
    invoke-direct {p0}, Lcom/google/firebase/auth/internal/GenericIdpActivity;->zzb()V

    .line 205
    return-void

    .line 206
    :cond_7
    iget-boolean v0, p0, Lcom/google/firebase/auth/internal/GenericIdpActivity;->zzd:Z

    if-nez v0, :cond_9

    .line 207
    nop

    .line 208
    invoke-virtual {p0}, Lcom/google/firebase/auth/internal/GenericIdpActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 209
    nop

    .line 210
    :try_start_0
    invoke-static {p0, v5}, Lcom/google/android/gms/common/util/AndroidUtilsLight;->getPackageCertificateHashBytes(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    .line 211
    invoke-static {v0}, Lcom/google/android/gms/common/util/Hex;->bytesToStringUppercase([B)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 212
    invoke-virtual {v0, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    nop

    .line 219
    invoke-virtual {p0}, Lcom/google/firebase/auth/internal/GenericIdpActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "com.google.firebase.auth.KEY_FIREBASE_APP_NAME"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 220
    invoke-static {v0}, Lcom/google/firebase/FirebaseApp;->getInstance(Ljava/lang/String;)Lcom/google/firebase/FirebaseApp;

    move-result-object v8

    .line 221
    invoke-static {v8}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    .line 222
    invoke-static {v8}, Lcom/google/android/gms/internal/firebase-auth-api/zzady;->zza(Lcom/google/firebase/FirebaseApp;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 223
    new-instance v2, Lcom/google/android/gms/internal/firebase-auth-api/zzacd;

    invoke-virtual {p0}, Lcom/google/firebase/auth/internal/GenericIdpActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    move-object v4, v2

    move-object v9, p0

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/internal/firebase-auth-api/zzacd;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Lcom/google/firebase/FirebaseApp;Lcom/google/android/gms/internal/firebase-auth-api/zzacf;)V

    .line 224
    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->zze()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzacd;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_2

    .line 225
    :cond_8
    nop

    .line 226
    invoke-virtual {v8}, Lcom/google/firebase/FirebaseApp;->getOptions()Lcom/google/firebase/FirebaseOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/FirebaseOptions;->getApiKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzady;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 227
    nop

    .line 228
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 229
    invoke-virtual {p0}, Lcom/google/firebase/auth/internal/GenericIdpActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 230
    invoke-direct {p0, v1, v2, v5, v6}, Lcom/google/firebase/auth/internal/GenericIdpActivity;->zza(Landroid/net/Uri$Builder;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 231
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 232
    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->zzc()Lcom/google/firebase/inject/Provider;

    move-result-object v0

    .line 233
    invoke-virtual {p0, v1, v5, v0}, Lcom/google/firebase/auth/internal/GenericIdpActivity;->zza(Landroid/net/Uri;Ljava/lang/String;Lcom/google/firebase/inject/Provider;)V

    goto :goto_2

    .line 214
    :catch_0
    move-exception v0

    .line 215
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Could not get package signature: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    nop

    .line 217
    invoke-static {p0, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzaci;->zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzacf;Ljava/lang/String;)V

    .line 218
    nop

    .line 234
    :goto_2
    iput-boolean v3, p0, Lcom/google/firebase/auth/internal/GenericIdpActivity;->zzd:Z

    .line 235
    return-void

    .line 236
    :cond_9
    invoke-direct {p0}, Lcom/google/firebase/auth/internal/GenericIdpActivity;->zzb()V

    .line 237
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 238
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 239
    const-string v0, "com.google.firebase.auth.internal.KEY_STARTED_SIGN_IN"

    iget-boolean v1, p0, Lcom/google/firebase/auth/internal/GenericIdpActivity;->zzd:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 240
    return-void
.end method

.method public final zza()Landroid/content/Context;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/auth/internal/GenericIdpActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
    .locals 2

    .line 53
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 54
    const-string v1, "https"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "__"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "auth"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "handler"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 55
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/firebase/auth/internal/GenericIdpActivity;->zza(Landroid/net/Uri$Builder;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 69
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzady;->zzb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 2

    .line 82
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzb;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzb;

    move-result-object v0

    const-string v1, "client-firebase-auth-api"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzb;->zza(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    return-object p1

    .line 84
    :catch_0
    move-exception p1

    .line 85
    const-string p1, "GenericIdpActivity"

    const-string v0, "Error generating URL connection"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const/4 p1, 0x0

    return-object p1
.end method

.method public final zza(Landroid/net/Uri;Ljava/lang/String;Lcom/google/firebase/inject/Provider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Lcom/google/firebase/inject/Provider<",
            "Lcom/google/firebase/appcheck/interop/InteropAppCheckTokenProvider;",
            ">;)V"
        }
    .end annotation

    .line 124
    nop

    .line 125
    invoke-interface {p3}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/firebase/appcheck/interop/InteropAppCheckTokenProvider;

    .line 126
    if-eqz p3, :cond_0

    .line 127
    nop

    .line 128
    const/4 v0, 0x0

    invoke-interface {p3, v0}, Lcom/google/firebase/appcheck/interop/InteropAppCheckTokenProvider;->getToken(Z)Lcom/google/android/gms/tasks/Task;

    move-result-object p3

    new-instance v0, Lcom/google/firebase/auth/internal/zzaz;

    invoke-direct {v0, p1}, Lcom/google/firebase/auth/internal/zzaz;-><init>(Landroid/net/Uri;)V

    .line 129
    invoke-virtual {p3, v0}, Lcom/google/android/gms/tasks/Task;->continueWith(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 130
    goto :goto_0

    .line 131
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 132
    :goto_0
    new-instance p3, Lcom/google/firebase/auth/internal/zzax;

    invoke-direct {p3, p0, p2}, Lcom/google/firebase/auth/internal/zzax;-><init>(Lcom/google/firebase/auth/internal/GenericIdpActivity;Ljava/lang/String;)V

    .line 133
    invoke-virtual {p1, p3}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 134
    return-void
.end method

.method public final zza(Ljava/lang/String;Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    .line 120
    if-nez p2, :cond_0

    .line 121
    invoke-direct {p0}, Lcom/google/firebase/auth/internal/GenericIdpActivity;->zzb()V

    return-void

    .line 122
    :cond_0
    invoke-direct {p0, p2}, Lcom/google/firebase/auth/internal/GenericIdpActivity;->zza(Lcom/google/android/gms/common/api/Status;)V

    .line 123
    return-void
.end method
