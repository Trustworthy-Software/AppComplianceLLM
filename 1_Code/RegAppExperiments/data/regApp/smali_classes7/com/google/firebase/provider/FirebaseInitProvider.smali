.class public Lcom/google/firebase/provider/FirebaseInitProvider;
.super Landroid/content/ContentProvider;
.source "FirebaseInitProvider.java"


# static fields
.field static final EMPTY_APPLICATION_ID_PROVIDER_AUTHORITY:Ljava/lang/String; = "com.google.firebase.firebaseinitprovider"

.field private static final TAG:Ljava/lang/String; = "FirebaseInitProvider"

.field private static currentlyInitializing:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static startupTime:Lcom/google/firebase/StartupTime;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    invoke-static {}, Lcom/google/firebase/StartupTime;->now()Lcom/google/firebase/StartupTime;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/provider/FirebaseInitProvider;->startupTime:Lcom/google/firebase/StartupTime;

    .line 40
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/google/firebase/provider/FirebaseInitProvider;->currentlyInitializing:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private static checkContentProviderAuthority(Landroid/content/pm/ProviderInfo;)V
    .locals 2
    .param p0, "info"    # Landroid/content/pm/ProviderInfo;

    .line 85
    const-string v0, "FirebaseInitProvider ProviderInfo cannot be null."

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-string v0, "com.google.firebase.firebaseinitprovider"

    iget-object v1, p0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    return-void

    .line 87
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Incorrect provider authority in manifest. Most likely due to a missing applicationId variable in application\'s build.gradle."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getStartupTime()Lcom/google/firebase/StartupTime;
    .locals 1

    .line 44
    sget-object v0, Lcom/google/firebase/provider/FirebaseInitProvider;->startupTime:Lcom/google/firebase/StartupTime;

    return-object v0
.end method

.method public static isCurrentlyInitializing()Z
    .locals 1

    .line 49
    sget-object v0, Lcom/google/firebase/provider/FirebaseInitProvider;->currentlyInitializing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Landroid/content/pm/ProviderInfo;

    .line 60
    invoke-static {p2}, Lcom/google/firebase/provider/FirebaseInitProvider;->checkContentProviderAuthority(Landroid/content/pm/ProviderInfo;)V

    .line 61
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    .line 62
    return-void
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .line 107
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .line 113
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 3

    .line 68
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/google/firebase/provider/FirebaseInitProvider;->currentlyInitializing:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 69
    invoke-virtual {p0}, Lcom/google/firebase/provider/FirebaseInitProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/firebase/FirebaseApp;->initializeApp(Landroid/content/Context;)Lcom/google/firebase/FirebaseApp;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "FirebaseInitProvider"

    if-nez v1, :cond_0

    .line 70
    :try_start_1
    const-string v1, "FirebaseApp initialization unsuccessful"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 72
    :cond_0
    const-string v1, "FirebaseApp initialization successful"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    :goto_0
    nop

    .line 76
    sget-object v1, Lcom/google/firebase/provider/FirebaseInitProvider;->currentlyInitializing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 74
    return v0

    .line 76
    :catchall_0
    move-exception v1

    sget-object v2, Lcom/google/firebase/provider/FirebaseInitProvider;->currentlyInitializing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 77
    throw v1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .line 101
    const/4 v0, 0x0

    return-object v0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .line 128
    const/4 v0, 0x0

    return v0
.end method
