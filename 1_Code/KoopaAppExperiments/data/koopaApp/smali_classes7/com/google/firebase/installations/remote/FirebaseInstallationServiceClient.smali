.class public Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;
.super Ljava/lang/Object;
.source "FirebaseInstallationServiceClient.java"


# static fields
.field private static final ACCEPT_HEADER_KEY:Ljava/lang/String; = "Accept"

.field private static final API_KEY_HEADER:Ljava/lang/String; = "x-goog-api-key"

.field private static final CACHE_CONTROL_DIRECTIVE:Ljava/lang/String; = "no-cache"

.field private static final CACHE_CONTROL_HEADER_KEY:Ljava/lang/String; = "Cache-Control"

.field private static final CONTENT_ENCODING_HEADER_KEY:Ljava/lang/String; = "Content-Encoding"

.field private static final CONTENT_TYPE_HEADER_KEY:Ljava/lang/String; = "Content-Type"

.field private static final CREATE_REQUEST_RESOURCE_NAME_FORMAT:Ljava/lang/String; = "projects/%s/installations"

.field private static final DELETE_REQUEST_RESOURCE_NAME_FORMAT:Ljava/lang/String; = "projects/%s/installations/%s"

.field private static final EXPIRATION_TIMESTAMP_PATTERN:Ljava/util/regex/Pattern;

.field private static final FIREBASE_INSTALLATIONS_API_DOMAIN:Ljava/lang/String; = "firebaseinstallations.googleapis.com"

.field private static final FIREBASE_INSTALLATIONS_API_VERSION:Ljava/lang/String; = "v1"

.field private static final FIREBASE_INSTALLATIONS_ID_HEARTBEAT_TAG:Ljava/lang/String; = "fire-installations-id"

.field private static final FIREBASE_INSTALLATION_AUTH_VERSION:Ljava/lang/String; = "FIS_v2"

.field private static final FIS_TAG:Ljava/lang/String; = "Firebase-Installations"

.field private static final GENERATE_AUTH_TOKEN_REQUEST_RESOURCE_NAME_FORMAT:Ljava/lang/String; = "projects/%s/installations/%s/authTokens:generate"

.field private static final GZIP_CONTENT_ENCODING:Ljava/lang/String; = "gzip"

.field private static final HEART_BEAT_HEADER:Ljava/lang/String; = "x-firebase-client"

.field private static final JSON_CONTENT_TYPE:Ljava/lang/String; = "application/json"

.field private static final MAX_RETRIES:I = 0x1

.field private static final NETWORK_TIMEOUT_MILLIS:I = 0x2710

.field static final PARSING_EXPIRATION_TIME_ERROR_MESSAGE:Ljava/lang/String; = "Invalid Expiration Timestamp."

.field private static final SDK_VERSION_PREFIX:Ljava/lang/String; = "a:"

.field private static final TRAFFIC_STATS_CREATE_INSTALLATION_TAG:I = 0x8001

.field private static final TRAFFIC_STATS_DELETE_INSTALLATION_TAG:I = 0x8002

.field private static final TRAFFIC_STATS_FIREBASE_INSTALLATIONS_TAG:I = 0x8000

.field private static final TRAFFIC_STATS_GENERATE_AUTH_TOKEN_TAG:I = 0x8003

.field private static final UTF_8:Ljava/nio/charset/Charset;

.field private static final X_ANDROID_CERT_HEADER_KEY:Ljava/lang/String; = "X-Android-Cert"

.field private static final X_ANDROID_IID_MIGRATION_KEY:Ljava/lang/String; = "x-goog-fis-android-iid-migration-auth"

.field private static final X_ANDROID_PACKAGE_HEADER_KEY:Ljava/lang/String; = "X-Android-Package"


# instance fields
.field private final context:Landroid/content/Context;

.field private final heartBeatProvider:Lcom/google/firebase/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/inject/Provider<",
            "Lcom/google/firebase/heartbeatinfo/HeartBeatController;",
            ">;"
        }
    .end annotation
.end field

.field private final requestLimiter:Lcom/google/firebase/installations/remote/RequestLimiter;

.field private shouldServerErrorRetry:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 102
    const-string v0, "[0-9]+s"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->EXPIRATION_TIMESTAMP_PATTERN:Ljava/util/regex/Pattern;

    .line 105
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->UTF_8:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/firebase/inject/Provider;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/firebase/inject/Provider<",
            "Lcom/google/firebase/heartbeatinfo/HeartBeatController;",
            ">;)V"
        }
    .end annotation

    .line 120
    .local p2, "heartBeatProvider":Lcom/google/firebase/inject/Provider;, "Lcom/google/firebase/inject/Provider<Lcom/google/firebase/heartbeatinfo/HeartBeatController;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p1, p0, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->context:Landroid/content/Context;

    .line 122
    iput-object p2, p0, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->heartBeatProvider:Lcom/google/firebase/inject/Provider;

    .line 123
    new-instance v0, Lcom/google/firebase/installations/remote/RequestLimiter;

    invoke-direct {v0}, Lcom/google/firebase/installations/remote/RequestLimiter;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->requestLimiter:Lcom/google/firebase/installations/remote/RequestLimiter;

    .line 124
    return-void
.end method

.method private static availableFirebaseOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "apiKey"    # Ljava/lang/String;
    .param p2, "projectId"    # Ljava/lang/String;

    .line 617
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 619
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 617
    const-string v1, "Firebase options used while communicating with Firebase server APIs: %s, %s%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static buildCreateFirebaseInstallationRequestBody(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3
    .param p0, "fid"    # Ljava/lang/String;
    .param p1, "appId"    # Ljava/lang/String;

    .line 262
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 263
    .local v0, "firebaseInstallationData":Lorg/json/JSONObject;
    const-string v1, "fid"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 264
    const-string v1, "appId"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 265
    const-string v1, "authVersion"

    const-string v2, "FIS_v2"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 266
    const-string v1, "sdkVersion"

    const-string v2, "a:17.2.0"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    return-object v0

    .line 268
    .end local v0    # "firebaseInstallationData":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 269
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static buildGenerateAuthTokenRequestBody()Lorg/json/JSONObject;
    .locals 3

    .line 289
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 290
    .local v0, "sdkVersionData":Lorg/json/JSONObject;
    const-string v1, "sdkVersion"

    const-string v2, "a:17.2.0"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 292
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 293
    .local v1, "firebaseInstallationData":Lorg/json/JSONObject;
    const-string v2, "installation"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    return-object v1

    .line 295
    .end local v0    # "sdkVersionData":Lorg/json/JSONObject;
    .end local v1    # "firebaseInstallationData":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 296
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getFingerprintHashForPackage()Ljava/lang/String;
    .locals 5

    .line 574
    const-string v0, "ContentValues"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/util/AndroidUtilsLight;->getPackageCertificateHashBytes(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v2

    .line 576
    .local v2, "hash":[B
    if-nez v2, :cond_0

    .line 577
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not get fingerprint hash for package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    return-object v1

    .line 580
    :cond_0
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/google/android/gms/common/util/Hex;->bytesToStringUppercase([BZ)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 582
    .end local v2    # "hash":[B
    :catch_0
    move-exception v2

    .line 583
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No such package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 584
    return-object v1
.end method

.method private getFullyQualifiedRequestUri(Ljava/lang/String;)Ljava/net/URL;
    .locals 5
    .param p1, "resourceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/installations/FirebaseInstallationsException;
        }
    .end annotation

    .line 359
    :try_start_0
    new-instance v0, Ljava/net/URL;

    const-string v1, "https://%s/%s/%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "firebaseinstallations.googleapis.com"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "v1"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    aput-object p1, v2, v3

    .line 360
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    return-object v0

    .line 363
    :catch_0
    move-exception v0

    .line 364
    .local v0, "e":Ljava/net/MalformedURLException;
    new-instance v1, Lcom/google/firebase/installations/FirebaseInstallationsException;

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/firebase/installations/FirebaseInstallationsException$Status;->UNAVAILABLE:Lcom/google/firebase/installations/FirebaseInstallationsException$Status;

    invoke-direct {v1, v2, v3}, Lcom/google/firebase/installations/FirebaseInstallationsException;-><init>(Ljava/lang/String;Lcom/google/firebase/installations/FirebaseInstallationsException$Status;)V

    throw v1
.end method

.method private static getJsonBytes(Lorg/json/JSONObject;)[B
    .locals 2
    .param p0, "jsonObject"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 229
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method private static isSuccessfulResponseCode(I)Z
    .locals 1
    .param p0, "responseCode"    # I

    .line 453
    const/16 v0, 0xc8

    if-lt p0, v0, :cond_0

    const/16 v0, 0x12c

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static logBadConfigError()V
    .locals 2

    .line 457
    const-string v0, "Firebase-Installations"

    const-string v1, "Firebase Installations can not communicate with Firebase server APIs due to invalid configuration. Please update your Firebase initialization process and set valid Firebase options (API key, Project ID, Application ID) when initializing Firebase."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    return-void
.end method

.method private static logFisCommunicationError(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "conn"    # Ljava/net/HttpURLConnection;
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "apiKey"    # Ljava/lang/String;
    .param p3, "projectId"    # Ljava/lang/String;

    .line 608
    invoke-static {p0}, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->readErrorResponse(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v0

    .line 609
    .local v0, "logString":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 610
    const-string v1, "Firebase-Installations"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    invoke-static {p1, p2, p3}, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->availableFirebaseOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    :cond_0
    return-void
.end method

.method private openHttpURLConnection(Ljava/net/URL;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 6
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "apiKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/installations/FirebaseInstallationsException;
        }
    .end annotation

    .line 469
    const-string v0, "Failed to get heartbeats header"

    const-string v1, "ContentValues"

    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 474
    .local v2, "httpURLConnection":Ljava/net/HttpURLConnection;
    nop

    .line 475
    const/16 v3, 0x2710

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 476
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 477
    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 478
    const-string v3, "Content-Type"

    const-string v4, "application/json"

    invoke-virtual {v2, v3, v4}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    const-string v3, "Accept"

    invoke-virtual {v2, v3, v4}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    const-string v3, "Content-Encoding"

    const-string v4, "gzip"

    invoke-virtual {v2, v3, v4}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    const-string v3, "Cache-Control"

    const-string v4, "no-cache"

    invoke-virtual {v2, v3, v4}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    iget-object v3, p0, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "X-Android-Package"

    invoke-virtual {v2, v4, v3}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    iget-object v3, p0, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->heartBeatProvider:Lcom/google/firebase/inject/Provider;

    invoke-interface {v3}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/heartbeatinfo/HeartBeatController;

    .line 484
    .local v3, "heartBeatController":Lcom/google/firebase/heartbeatinfo/HeartBeatController;
    if-eqz v3, :cond_0

    .line 486
    :try_start_1
    const-string v4, "x-firebase-client"

    .line 487
    invoke-interface {v3}, Lcom/google/firebase/heartbeatinfo/HeartBeatController;->getHeartBeatsHeader()Lcom/google/android/gms/tasks/Task;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/tasks/Tasks;->await(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 486
    invoke-virtual {v2, v4, v5}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 490
    :catch_0
    move-exception v4

    .line 491
    .local v4, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    .line 492
    invoke-static {v1, v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 488
    .end local v4    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v4

    .line 489
    .local v4, "e":Ljava/util/concurrent/ExecutionException;
    invoke-static {v1, v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 493
    .end local v4    # "e":Ljava/util/concurrent/ExecutionException;
    :goto_0
    nop

    .line 495
    :cond_0
    :goto_1
    const-string v0, "X-Android-Cert"

    invoke-direct {p0}, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->getFingerprintHashForPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    const-string v0, "x-goog-api-key"

    invoke-virtual {v2, v0, p2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    return-object v2

    .line 470
    .end local v2    # "httpURLConnection":Ljava/net/HttpURLConnection;
    .end local v3    # "heartBeatController":Lcom/google/firebase/heartbeatinfo/HeartBeatController;
    :catch_2
    move-exception v0

    .line 471
    .local v0, "ignored":Ljava/io/IOException;
    new-instance v1, Lcom/google/firebase/installations/FirebaseInstallationsException;

    const-string v2, "Firebase Installations Service is unavailable. Please try again later."

    sget-object v3, Lcom/google/firebase/installations/FirebaseInstallationsException$Status;->UNAVAILABLE:Lcom/google/firebase/installations/FirebaseInstallationsException$Status;

    invoke-direct {v1, v2, v3}, Lcom/google/firebase/installations/FirebaseInstallationsException;-><init>(Ljava/lang/String;Lcom/google/firebase/installations/FirebaseInstallationsException$Status;)V

    throw v1
.end method

.method static parseTokenExpirationTimestamp(Ljava/lang/String;)J
    .locals 2
    .param p0, "expiresIn"    # Ljava/lang/String;

    .line 595
    sget-object v0, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->EXPIRATION_TIMESTAMP_PATTERN:Ljava/util/regex/Pattern;

    .line 596
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    .line 595
    const-string v1, "Invalid Expiration Timestamp."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 598
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 600
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_1

    .line 599
    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    .line 598
    :goto_1
    return-wide v0
.end method

.method private readCreateResponse(Ljava/net/HttpURLConnection;)Lcom/google/firebase/installations/remote/InstallationResponse;
    .locals 8
    .param p1, "conn"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/AssertionError;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 503
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 504
    .local v0, "inputStream":Ljava/io/InputStream;
    new-instance v1, Landroid/util/JsonReader;

    new-instance v2, Ljava/io/InputStreamReader;

    sget-object v3, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 505
    .local v1, "reader":Landroid/util/JsonReader;
    invoke-static {}, Lcom/google/firebase/installations/remote/TokenResult;->builder()Lcom/google/firebase/installations/remote/TokenResult$Builder;

    move-result-object v2

    .line 506
    .local v2, "tokenResult":Lcom/google/firebase/installations/remote/TokenResult$Builder;
    invoke-static {}, Lcom/google/firebase/installations/remote/InstallationResponse;->builder()Lcom/google/firebase/installations/remote/InstallationResponse$Builder;

    move-result-object v3

    .line 509
    .local v3, "builder":Lcom/google/firebase/installations/remote/InstallationResponse$Builder;
    invoke-virtual {v1}, Landroid/util/JsonReader;->beginObject()V

    .line 510
    :goto_0
    invoke-virtual {v1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 511
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v4

    .line 512
    .local v4, "name":Ljava/lang/String;
    const-string v5, "name"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 513
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/firebase/installations/remote/InstallationResponse$Builder;->setUri(Ljava/lang/String;)Lcom/google/firebase/installations/remote/InstallationResponse$Builder;

    goto/16 :goto_3

    .line 514
    :cond_0
    const-string v5, "fid"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 515
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/firebase/installations/remote/InstallationResponse$Builder;->setFid(Ljava/lang/String;)Lcom/google/firebase/installations/remote/InstallationResponse$Builder;

    goto :goto_3

    .line 516
    :cond_1
    const-string v5, "refreshToken"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 517
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/firebase/installations/remote/InstallationResponse$Builder;->setRefreshToken(Ljava/lang/String;)Lcom/google/firebase/installations/remote/InstallationResponse$Builder;

    goto :goto_3

    .line 518
    :cond_2
    const-string v5, "authToken"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 519
    invoke-virtual {v1}, Landroid/util/JsonReader;->beginObject()V

    .line 520
    :goto_1
    invoke-virtual {v1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 521
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v5

    .line 522
    .local v5, "key":Ljava/lang/String;
    const-string v6, "token"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 523
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/google/firebase/installations/remote/TokenResult$Builder;->setToken(Ljava/lang/String;)Lcom/google/firebase/installations/remote/TokenResult$Builder;

    goto :goto_2

    .line 524
    :cond_3
    const-string v6, "expiresIn"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 525
    nop

    .line 526
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->parseTokenExpirationTimestamp(Ljava/lang/String;)J

    move-result-wide v6

    .line 525
    invoke-virtual {v2, v6, v7}, Lcom/google/firebase/installations/remote/TokenResult$Builder;->setTokenExpirationTimestamp(J)Lcom/google/firebase/installations/remote/TokenResult$Builder;

    goto :goto_2

    .line 528
    :cond_4
    invoke-virtual {v1}, Landroid/util/JsonReader;->skipValue()V

    .line 530
    .end local v5    # "key":Ljava/lang/String;
    :goto_2
    goto :goto_1

    .line 531
    :cond_5
    invoke-virtual {v2}, Lcom/google/firebase/installations/remote/TokenResult$Builder;->build()Lcom/google/firebase/installations/remote/TokenResult;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/firebase/installations/remote/InstallationResponse$Builder;->setAuthToken(Lcom/google/firebase/installations/remote/TokenResult;)Lcom/google/firebase/installations/remote/InstallationResponse$Builder;

    .line 532
    invoke-virtual {v1}, Landroid/util/JsonReader;->endObject()V

    goto :goto_3

    .line 534
    :cond_6
    invoke-virtual {v1}, Landroid/util/JsonReader;->skipValue()V

    .line 536
    .end local v4    # "name":Ljava/lang/String;
    :goto_3
    goto/16 :goto_0

    .line 537
    :cond_7
    invoke-virtual {v1}, Landroid/util/JsonReader;->endObject()V

    .line 538
    invoke-virtual {v1}, Landroid/util/JsonReader;->close()V

    .line 539
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 540
    sget-object v4, Lcom/google/firebase/installations/remote/InstallationResponse$ResponseCode;->OK:Lcom/google/firebase/installations/remote/InstallationResponse$ResponseCode;

    invoke-virtual {v3, v4}, Lcom/google/firebase/installations/remote/InstallationResponse$Builder;->setResponseCode(Lcom/google/firebase/installations/remote/InstallationResponse$ResponseCode;)Lcom/google/firebase/installations/remote/InstallationResponse$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/firebase/installations/remote/InstallationResponse$Builder;->build()Lcom/google/firebase/installations/remote/InstallationResponse;

    move-result-object v4

    return-object v4
.end method

.method private static readErrorResponse(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 8
    .param p0, "conn"    # Ljava/net/HttpURLConnection;

    .line 625
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    .line 626
    .local v0, "errorStream":Ljava/io/InputStream;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 627
    return-object v1

    .line 629
    :cond_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    sget-object v4, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v0, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 631
    .local v2, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 632
    .local v3, "response":Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, "input":Ljava/lang/String;
    :goto_0
    if-eqz v4, :cond_1

    .line 633
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 632
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    goto :goto_0

    .line 635
    .end local v4    # "input":Ljava/lang/String;
    :cond_1
    const-string v4, "Error when communicating with the Firebase Installations server API. HTTP response: [%d %s: %s]"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    .line 638
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const/4 v6, 0x2

    aput-object v3, v5, v6

    .line 635
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 643
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 646
    goto :goto_1

    .line 644
    :catch_0
    move-exception v4

    .line 635
    :goto_1
    return-object v1

    .line 642
    .end local v3    # "response":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v1

    .line 643
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 646
    goto :goto_2

    .line 644
    :catch_1
    move-exception v3

    .line 647
    :goto_2
    throw v1

    .line 639
    :catch_2
    move-exception v3

    .line 640
    .local v3, "ignored":Ljava/io/IOException;
    nop

    .line 643
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 646
    goto :goto_3

    .line 644
    :catch_3
    move-exception v4

    .line 640
    :goto_3
    return-object v1
.end method

.method private readGenerateAuthTokenResponse(Ljava/net/HttpURLConnection;)Lcom/google/firebase/installations/remote/TokenResult;
    .locals 6
    .param p1, "conn"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/AssertionError;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 546
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 547
    .local v0, "inputStream":Ljava/io/InputStream;
    new-instance v1, Landroid/util/JsonReader;

    new-instance v2, Ljava/io/InputStreamReader;

    sget-object v3, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 548
    .local v1, "reader":Landroid/util/JsonReader;
    invoke-static {}, Lcom/google/firebase/installations/remote/TokenResult;->builder()Lcom/google/firebase/installations/remote/TokenResult$Builder;

    move-result-object v2

    .line 551
    .local v2, "builder":Lcom/google/firebase/installations/remote/TokenResult$Builder;
    invoke-virtual {v1}, Landroid/util/JsonReader;->beginObject()V

    .line 552
    :goto_0
    invoke-virtual {v1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 553
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v3

    .line 554
    .local v3, "name":Ljava/lang/String;
    const-string v4, "token"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 555
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/firebase/installations/remote/TokenResult$Builder;->setToken(Ljava/lang/String;)Lcom/google/firebase/installations/remote/TokenResult$Builder;

    goto :goto_1

    .line 556
    :cond_0
    const-string v4, "expiresIn"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 557
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->parseTokenExpirationTimestamp(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/google/firebase/installations/remote/TokenResult$Builder;->setTokenExpirationTimestamp(J)Lcom/google/firebase/installations/remote/TokenResult$Builder;

    goto :goto_1

    .line 559
    :cond_1
    invoke-virtual {v1}, Landroid/util/JsonReader;->skipValue()V

    .line 561
    .end local v3    # "name":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 562
    :cond_2
    invoke-virtual {v1}, Landroid/util/JsonReader;->endObject()V

    .line 563
    invoke-virtual {v1}, Landroid/util/JsonReader;->close()V

    .line 564
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 566
    sget-object v3, Lcom/google/firebase/installations/remote/TokenResult$ResponseCode;->OK:Lcom/google/firebase/installations/remote/TokenResult$ResponseCode;

    invoke-virtual {v2, v3}, Lcom/google/firebase/installations/remote/TokenResult$Builder;->setResponseCode(Lcom/google/firebase/installations/remote/TokenResult$ResponseCode;)Lcom/google/firebase/installations/remote/TokenResult$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firebase/installations/remote/TokenResult$Builder;->build()Lcom/google/firebase/installations/remote/TokenResult;

    move-result-object v3

    return-object v3
.end method

.method private writeFIDCreateRequestBodyToOutputStream(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "httpURLConnection"    # Ljava/net/HttpURLConnection;
    .param p2, "fid"    # Ljava/lang/String;
    .param p3, "appId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 216
    nop

    .line 217
    invoke-static {p2, p3}, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->buildCreateFirebaseInstallationRequestBody(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->getJsonBytes(Lorg/json/JSONObject;)[B

    move-result-object v0

    .line 216
    invoke-static {p1, v0}, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->writeRequestBodyToOutputStream(Ljava/net/URLConnection;[B)V

    .line 218
    return-void
.end method

.method private writeGenerateAuthTokenRequestBodyToOutputStream(Ljava/net/HttpURLConnection;)V
    .locals 1
    .param p1, "httpURLConnection"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 275
    nop

    .line 276
    invoke-static {}, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->buildGenerateAuthTokenRequestBody()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->getJsonBytes(Lorg/json/JSONObject;)[B

    move-result-object v0

    .line 275
    invoke-static {p1, v0}, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->writeRequestBodyToOutputStream(Ljava/net/URLConnection;[B)V

    .line 277
    return-void
.end method

.method private static writeRequestBodyToOutputStream(Ljava/net/URLConnection;[B)V
    .locals 4
    .param p0, "urlConnection"    # Ljava/net/URLConnection;
    .param p1, "jsonBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 234
    invoke-virtual {p0}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 235
    .local v0, "outputStream":Ljava/io/OutputStream;
    if-eqz v0, :cond_0

    .line 238
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 240
    .local v1, "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    :try_start_0
    invoke-virtual {v1, p1}, Ljava/util/zip/GZIPOutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    :try_start_1
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 244
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 247
    goto :goto_0

    .line 245
    :catch_0
    move-exception v2

    .line 248
    nop

    .line 249
    :goto_0
    return-void

    .line 242
    :catchall_0
    move-exception v2

    .line 243
    :try_start_2
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 244
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 247
    goto :goto_1

    .line 245
    :catch_1
    move-exception v3

    .line 248
    :goto_1
    throw v2

    .line 236
    .end local v1    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Cannot send request to FIS servers. No OutputStream available."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public createFirebaseInstallation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/installations/remote/InstallationResponse;
    .locals 9
    .param p1, "apiKey"    # Ljava/lang/String;
    .param p2, "fid"    # Ljava/lang/String;
    .param p3, "projectID"    # Ljava/lang/String;
    .param p4, "appId"    # Ljava/lang/String;
    .param p5, "iidToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/installations/FirebaseInstallationsException;
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->requestLimiter:Lcom/google/firebase/installations/remote/RequestLimiter;

    invoke-virtual {v0}, Lcom/google/firebase/installations/remote/RequestLimiter;->isRequestAllowed()Z

    move-result v0

    const-string v1, "Firebase Installations Service is unavailable. Please try again later."

    if-eqz v0, :cond_5

    .line 158
    const-string v0, "projects/%s/installations"

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, "resourceName":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->getFullyQualifiedRequestUri(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v2

    .line 160
    .local v2, "url":Ljava/net/URL;
    const/4 v3, 0x0

    .local v3, "retryCount":I
    :goto_0
    const/4 v4, 0x1

    if-gt v3, v4, :cond_4

    .line 162
    const v5, 0x8001

    invoke-static {v5}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 163
    invoke-direct {p0, v2, p1}, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->openHttpURLConnection(Ljava/net/URL;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v5

    .line 166
    .local v5, "httpURLConnection":Ljava/net/HttpURLConnection;
    :try_start_0
    const-string v6, "POST"

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v5, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 170
    if-eqz p5, :cond_0

    .line 171
    const-string v4, "x-goog-fis-android-iid-migration-auth"

    invoke-virtual {v5, v4, p5}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    :cond_0
    invoke-direct {p0, v5, p2, p4}, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->writeFIDCreateRequestBodyToOutputStream(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    .line 177
    .local v4, "httpResponseCode":I
    iget-object v6, p0, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->requestLimiter:Lcom/google/firebase/installations/remote/RequestLimiter;

    invoke-virtual {v6, v4}, Lcom/google/firebase/installations/remote/RequestLimiter;->setNextRequestTime(I)V

    .line 179
    invoke-static {v4}, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->isSuccessfulResponseCode(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 180
    invoke-direct {p0, v5}, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->readCreateResponse(Ljava/net/HttpURLConnection;)Lcom/google/firebase/installations/remote/InstallationResponse;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 204
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 180
    return-object v1

    .line 183
    :cond_1
    :try_start_1
    invoke-static {v5, p4, p1, p3}, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->logFisCommunicationError(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 185
    const/16 v6, 0x1ad

    if-eq v4, v6, :cond_3

    .line 192
    const/16 v6, 0x1f4

    if-lt v4, v6, :cond_2

    const/16 v6, 0x258

    if-ge v4, v6, :cond_2

    .line 203
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 204
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 193
    goto :goto_2

    .line 196
    :cond_2
    :try_start_2
    invoke-static {}, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->logBadConfigError()V

    .line 199
    invoke-static {}, Lcom/google/firebase/installations/remote/InstallationResponse;->builder()Lcom/google/firebase/installations/remote/InstallationResponse$Builder;

    move-result-object v6

    sget-object v7, Lcom/google/firebase/installations/remote/InstallationResponse$ResponseCode;->BAD_CONFIG:Lcom/google/firebase/installations/remote/InstallationResponse$ResponseCode;

    invoke-virtual {v6, v7}, Lcom/google/firebase/installations/remote/InstallationResponse$Builder;->setResponseCode(Lcom/google/firebase/installations/remote/InstallationResponse$ResponseCode;)Lcom/google/firebase/installations/remote/InstallationResponse$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/firebase/installations/remote/InstallationResponse$Builder;->build()Lcom/google/firebase/installations/remote/InstallationResponse;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/AssertionError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 203
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 204
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 199
    return-object v1

    .line 186
    :cond_3
    :try_start_3
    new-instance v6, Lcom/google/firebase/installations/FirebaseInstallationsException;

    const-string v7, "Firebase servers have received too many requests from this client in a short period of time. Please try again later."

    sget-object v8, Lcom/google/firebase/installations/FirebaseInstallationsException$Status;->TOO_MANY_REQUESTS:Lcom/google/firebase/installations/FirebaseInstallationsException$Status;

    invoke-direct {v6, v7, v8}, Lcom/google/firebase/installations/FirebaseInstallationsException;-><init>(Ljava/lang/String;Lcom/google/firebase/installations/FirebaseInstallationsException$Status;)V

    .end local v0    # "resourceName":Ljava/lang/String;
    .end local v2    # "url":Ljava/net/URL;
    .end local v3    # "retryCount":I
    .end local v5    # "httpURLConnection":Ljava/net/HttpURLConnection;
    .end local p1    # "apiKey":Ljava/lang/String;
    .end local p2    # "fid":Ljava/lang/String;
    .end local p3    # "projectID":Ljava/lang/String;
    .end local p4    # "appId":Ljava/lang/String;
    .end local p5    # "iidToken":Ljava/lang/String;
    throw v6
    :try_end_3
    .catch Ljava/lang/AssertionError; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 203
    .end local v4    # "httpResponseCode":I
    .restart local v0    # "resourceName":Ljava/lang/String;
    .restart local v2    # "url":Ljava/net/URL;
    .restart local v3    # "retryCount":I
    .restart local v5    # "httpURLConnection":Ljava/net/HttpURLConnection;
    .restart local p1    # "apiKey":Ljava/lang/String;
    .restart local p2    # "fid":Ljava/lang/String;
    .restart local p3    # "projectID":Ljava/lang/String;
    .restart local p4    # "appId":Ljava/lang/String;
    .restart local p5    # "iidToken":Ljava/lang/String;
    :catchall_0
    move-exception v1

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 204
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 205
    throw v1

    .line 200
    :catch_0
    move-exception v4

    goto :goto_1

    :catch_1
    move-exception v4

    .line 203
    .local v4, "ignored":Ljava/lang/Throwable;
    :goto_1
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 204
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 201
    nop

    .line 160
    .end local v4    # "ignored":Ljava/lang/Throwable;
    .end local v5    # "httpURLConnection":Ljava/net/HttpURLConnection;
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 208
    .end local v3    # "retryCount":I
    :cond_4
    new-instance v3, Lcom/google/firebase/installations/FirebaseInstallationsException;

    sget-object v4, Lcom/google/firebase/installations/FirebaseInstallationsException$Status;->UNAVAILABLE:Lcom/google/firebase/installations/FirebaseInstallationsException$Status;

    invoke-direct {v3, v1, v4}, Lcom/google/firebase/installations/FirebaseInstallationsException;-><init>(Ljava/lang/String;Lcom/google/firebase/installations/FirebaseInstallationsException$Status;)V

    throw v3

    .line 153
    .end local v0    # "resourceName":Ljava/lang/String;
    .end local v2    # "url":Ljava/net/URL;
    :cond_5
    new-instance v0, Lcom/google/firebase/installations/FirebaseInstallationsException;

    sget-object v2, Lcom/google/firebase/installations/FirebaseInstallationsException$Status;->UNAVAILABLE:Lcom/google/firebase/installations/FirebaseInstallationsException$Status;

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/installations/FirebaseInstallationsException;-><init>(Ljava/lang/String;Lcom/google/firebase/installations/FirebaseInstallationsException$Status;)V

    throw v0
.end method

.method public deleteFirebaseInstallation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "apiKey"    # Ljava/lang/String;
    .param p2, "fid"    # Ljava/lang/String;
    .param p3, "projectID"    # Ljava/lang/String;
    .param p4, "refreshToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/installations/FirebaseInstallationsException;
        }
    .end annotation

    .line 315
    const-string v0, "projects/%s/installations/%s"

    filled-new-array {p3, p2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 316
    .local v0, "resourceName":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->getFullyQualifiedRequestUri(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    .line 318
    .local v1, "url":Ljava/net/URL;
    const/4 v2, 0x0

    .line 319
    .local v2, "retryCount":I
    :goto_0
    const/4 v3, 0x1

    if-gt v2, v3, :cond_4

    .line 320
    const v3, 0x8002

    invoke-static {v3}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 321
    invoke-direct {p0, v1, p1}, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->openHttpURLConnection(Ljava/net/URL;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v3

    .line 323
    .local v3, "httpURLConnection":Ljava/net/HttpURLConnection;
    :try_start_0
    const-string v4, "DELETE"

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 324
    const-string v4, "Authorization"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FIS_v2 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    .line 328
    .local v4, "httpResponseCode":I
    const/16 v5, 0xc8

    if-eq v4, v5, :cond_3

    const/16 v5, 0x191

    if-eq v4, v5, :cond_3

    const/16 v5, 0x194

    if-ne v4, v5, :cond_0

    goto :goto_2

    .line 332
    :cond_0
    const/4 v5, 0x0

    invoke-static {v3, v5, p1, p3}, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->logFisCommunicationError(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    const/16 v5, 0x1ad

    if-eq v4, v5, :cond_2

    const/16 v5, 0x1f4

    if-lt v4, v5, :cond_1

    const/16 v5, 0x258

    if-ge v4, v5, :cond_1

    goto :goto_1

    .line 339
    :cond_1
    invoke-static {}, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->logBadConfigError()V

    .line 341
    new-instance v5, Lcom/google/firebase/installations/FirebaseInstallationsException;

    const-string v6, "Bad config while trying to delete FID"

    sget-object v7, Lcom/google/firebase/installations/FirebaseInstallationsException$Status;->BAD_CONFIG:Lcom/google/firebase/installations/FirebaseInstallationsException$Status;

    invoke-direct {v5, v6, v7}, Lcom/google/firebase/installations/FirebaseInstallationsException;-><init>(Ljava/lang/String;Lcom/google/firebase/installations/FirebaseInstallationsException$Status;)V

    .end local v0    # "resourceName":Ljava/lang/String;
    .end local v1    # "url":Ljava/net/URL;
    .end local v2    # "retryCount":I
    .end local v3    # "httpURLConnection":Ljava/net/HttpURLConnection;
    .end local p1    # "apiKey":Ljava/lang/String;
    .end local p2    # "fid":Ljava/lang/String;
    .end local p3    # "projectID":Ljava/lang/String;
    .end local p4    # "refreshToken":Ljava/lang/String;
    throw v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    .restart local v0    # "resourceName":Ljava/lang/String;
    .restart local v1    # "url":Ljava/net/URL;
    .restart local v2    # "retryCount":I
    .restart local v3    # "httpURLConnection":Ljava/net/HttpURLConnection;
    .restart local p1    # "apiKey":Ljava/lang/String;
    .restart local p2    # "fid":Ljava/lang/String;
    .restart local p3    # "projectID":Ljava/lang/String;
    .restart local p4    # "refreshToken":Ljava/lang/String;
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 346
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 347
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 336
    goto :goto_0

    .line 346
    :cond_3
    :goto_2
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 347
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 329
    return-void

    .line 346
    .end local v4    # "httpResponseCode":I
    :catchall_0
    move-exception v4

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 347
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 348
    throw v4

    .line 343
    :catch_0
    move-exception v4

    .line 344
    .local v4, "ignored":Ljava/io/IOException;
    nop

    .end local v4    # "ignored":Ljava/io/IOException;
    add-int/lit8 v2, v2, 0x1

    .line 346
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 347
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 348
    nop

    .line 349
    .end local v3    # "httpURLConnection":Ljava/net/HttpURLConnection;
    goto :goto_0

    .line 351
    :cond_4
    new-instance v3, Lcom/google/firebase/installations/FirebaseInstallationsException;

    const-string v4, "Firebase Installations Service is unavailable. Please try again later."

    sget-object v5, Lcom/google/firebase/installations/FirebaseInstallationsException$Status;->UNAVAILABLE:Lcom/google/firebase/installations/FirebaseInstallationsException$Status;

    invoke-direct {v3, v4, v5}, Lcom/google/firebase/installations/FirebaseInstallationsException;-><init>(Ljava/lang/String;Lcom/google/firebase/installations/FirebaseInstallationsException$Status;)V

    throw v3
.end method

.method public generateAuthToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/installations/remote/TokenResult;
    .locals 9
    .param p1, "apiKey"    # Ljava/lang/String;
    .param p2, "fid"    # Ljava/lang/String;
    .param p3, "projectID"    # Ljava/lang/String;
    .param p4, "refreshToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/installations/FirebaseInstallationsException;
        }
    .end annotation

    .line 392
    iget-object v0, p0, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->requestLimiter:Lcom/google/firebase/installations/remote/RequestLimiter;

    invoke-virtual {v0}, Lcom/google/firebase/installations/remote/RequestLimiter;->isRequestAllowed()Z

    move-result v0

    const-string v1, "Firebase Installations Service is unavailable. Please try again later."

    if-eqz v0, :cond_6

    .line 398
    filled-new-array {p3, p2}, [Ljava/lang/Object;

    move-result-object v0

    .line 399
    const-string v2, "projects/%s/installations/%s/authTokens:generate"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 400
    .local v0, "resourceName":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->getFullyQualifiedRequestUri(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v2

    .line 401
    .local v2, "url":Ljava/net/URL;
    const/4 v3, 0x0

    .local v3, "retryCount":I
    :goto_0
    const/4 v4, 0x1

    if-gt v3, v4, :cond_5

    .line 403
    const v5, 0x8003

    invoke-static {v5}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 404
    invoke-direct {p0, v2, p1}, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->openHttpURLConnection(Ljava/net/URL;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v5

    .line 406
    .local v5, "httpURLConnection":Ljava/net/HttpURLConnection;
    :try_start_0
    const-string v6, "POST"

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 407
    const-string v6, "Authorization"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FIS_v2 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    invoke-virtual {v5, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 410
    invoke-direct {p0, v5}, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->writeGenerateAuthTokenRequestBodyToOutputStream(Ljava/net/HttpURLConnection;)V

    .line 412
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    .line 413
    .local v4, "httpResponseCode":I
    iget-object v6, p0, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->requestLimiter:Lcom/google/firebase/installations/remote/RequestLimiter;

    invoke-virtual {v6, v4}, Lcom/google/firebase/installations/remote/RequestLimiter;->setNextRequestTime(I)V

    .line 415
    invoke-static {v4}, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->isSuccessfulResponseCode(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 416
    invoke-direct {p0, v5}, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->readGenerateAuthTokenResponse(Ljava/net/HttpURLConnection;)Lcom/google/firebase/installations/remote/TokenResult;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 443
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 444
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 416
    return-object v1

    .line 419
    :cond_0
    const/4 v6, 0x0

    :try_start_1
    invoke-static {v5, v6, p1, p3}, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->logFisCommunicationError(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 421
    const/16 v6, 0x191

    if-eq v4, v6, :cond_4

    const/16 v6, 0x194

    if-ne v4, v6, :cond_1

    goto :goto_1

    .line 425
    :cond_1
    const/16 v6, 0x1ad

    if-eq v4, v6, :cond_3

    .line 432
    const/16 v6, 0x1f4

    if-lt v4, v6, :cond_2

    const/16 v6, 0x258

    if-ge v4, v6, :cond_2

    .line 443
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 444
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 433
    goto :goto_3

    .line 436
    :cond_2
    :try_start_2
    invoke-static {}, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->logBadConfigError()V

    .line 438
    invoke-static {}, Lcom/google/firebase/installations/remote/TokenResult;->builder()Lcom/google/firebase/installations/remote/TokenResult$Builder;

    move-result-object v6

    sget-object v7, Lcom/google/firebase/installations/remote/TokenResult$ResponseCode;->BAD_CONFIG:Lcom/google/firebase/installations/remote/TokenResult$ResponseCode;

    invoke-virtual {v6, v7}, Lcom/google/firebase/installations/remote/TokenResult$Builder;->setResponseCode(Lcom/google/firebase/installations/remote/TokenResult$ResponseCode;)Lcom/google/firebase/installations/remote/TokenResult$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/firebase/installations/remote/TokenResult$Builder;->build()Lcom/google/firebase/installations/remote/TokenResult;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/AssertionError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 443
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 444
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 438
    return-object v1

    .line 426
    :cond_3
    :try_start_3
    new-instance v6, Lcom/google/firebase/installations/FirebaseInstallationsException;

    const-string v7, "Firebase servers have received too many requests from this client in a short period of time. Please try again later."

    sget-object v8, Lcom/google/firebase/installations/FirebaseInstallationsException$Status;->TOO_MANY_REQUESTS:Lcom/google/firebase/installations/FirebaseInstallationsException$Status;

    invoke-direct {v6, v7, v8}, Lcom/google/firebase/installations/FirebaseInstallationsException;-><init>(Ljava/lang/String;Lcom/google/firebase/installations/FirebaseInstallationsException$Status;)V

    .end local v0    # "resourceName":Ljava/lang/String;
    .end local v2    # "url":Ljava/net/URL;
    .end local v3    # "retryCount":I
    .end local v5    # "httpURLConnection":Ljava/net/HttpURLConnection;
    .end local p1    # "apiKey":Ljava/lang/String;
    .end local p2    # "fid":Ljava/lang/String;
    .end local p3    # "projectID":Ljava/lang/String;
    .end local p4    # "refreshToken":Ljava/lang/String;
    throw v6

    .line 422
    .restart local v0    # "resourceName":Ljava/lang/String;
    .restart local v2    # "url":Ljava/net/URL;
    .restart local v3    # "retryCount":I
    .restart local v5    # "httpURLConnection":Ljava/net/HttpURLConnection;
    .restart local p1    # "apiKey":Ljava/lang/String;
    .restart local p2    # "fid":Ljava/lang/String;
    .restart local p3    # "projectID":Ljava/lang/String;
    .restart local p4    # "refreshToken":Ljava/lang/String;
    :cond_4
    :goto_1
    invoke-static {}, Lcom/google/firebase/installations/remote/TokenResult;->builder()Lcom/google/firebase/installations/remote/TokenResult$Builder;

    move-result-object v6

    sget-object v7, Lcom/google/firebase/installations/remote/TokenResult$ResponseCode;->AUTH_ERROR:Lcom/google/firebase/installations/remote/TokenResult$ResponseCode;

    invoke-virtual {v6, v7}, Lcom/google/firebase/installations/remote/TokenResult$Builder;->setResponseCode(Lcom/google/firebase/installations/remote/TokenResult$ResponseCode;)Lcom/google/firebase/installations/remote/TokenResult$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/firebase/installations/remote/TokenResult$Builder;->build()Lcom/google/firebase/installations/remote/TokenResult;

    move-result-object v1
    :try_end_3
    .catch Ljava/lang/AssertionError; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 443
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 444
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 422
    return-object v1

    .line 443
    .end local v4    # "httpResponseCode":I
    :catchall_0
    move-exception v1

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 444
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 445
    throw v1

    .line 440
    :catch_0
    move-exception v4

    goto :goto_2

    :catch_1
    move-exception v4

    .line 443
    .local v4, "ignored":Ljava/lang/Throwable;
    :goto_2
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 444
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 441
    nop

    .line 401
    .end local v4    # "ignored":Ljava/lang/Throwable;
    .end local v5    # "httpURLConnection":Ljava/net/HttpURLConnection;
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 447
    .end local v3    # "retryCount":I
    :cond_5
    new-instance v3, Lcom/google/firebase/installations/FirebaseInstallationsException;

    sget-object v4, Lcom/google/firebase/installations/FirebaseInstallationsException$Status;->UNAVAILABLE:Lcom/google/firebase/installations/FirebaseInstallationsException$Status;

    invoke-direct {v3, v1, v4}, Lcom/google/firebase/installations/FirebaseInstallationsException;-><init>(Ljava/lang/String;Lcom/google/firebase/installations/FirebaseInstallationsException$Status;)V

    throw v3

    .line 393
    .end local v0    # "resourceName":Ljava/lang/String;
    .end local v2    # "url":Ljava/net/URL;
    :cond_6
    new-instance v0, Lcom/google/firebase/installations/FirebaseInstallationsException;

    sget-object v2, Lcom/google/firebase/installations/FirebaseInstallationsException$Status;->UNAVAILABLE:Lcom/google/firebase/installations/FirebaseInstallationsException$Status;

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/installations/FirebaseInstallationsException;-><init>(Ljava/lang/String;Lcom/google/firebase/installations/FirebaseInstallationsException$Status;)V

    throw v0
.end method
