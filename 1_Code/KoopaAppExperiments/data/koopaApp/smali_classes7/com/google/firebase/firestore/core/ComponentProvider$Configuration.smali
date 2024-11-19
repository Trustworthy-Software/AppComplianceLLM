.class public Lcom/google/firebase/firestore/core/ComponentProvider$Configuration;
.super Ljava/lang/Object;
.source "ComponentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/core/ComponentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Configuration"
.end annotation


# instance fields
.field private final asyncQueue:Lcom/google/firebase/firestore/util/AsyncQueue;

.field private final context:Landroid/content/Context;

.field private final databaseInfo:Lcom/google/firebase/firestore/core/DatabaseInfo;

.field private final datastore:Lcom/google/firebase/firestore/remote/Datastore;

.field private final initialUser:Lcom/google/firebase/firestore/auth/User;

.field private final maxConcurrentLimboResolutions:I

.field private final settings:Lcom/google/firebase/firestore/FirebaseFirestoreSettings;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/firebase/firestore/util/AsyncQueue;Lcom/google/firebase/firestore/core/DatabaseInfo;Lcom/google/firebase/firestore/remote/Datastore;Lcom/google/firebase/firestore/auth/User;ILcom/google/firebase/firestore/FirebaseFirestoreSettings;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "asyncQueue"    # Lcom/google/firebase/firestore/util/AsyncQueue;
    .param p3, "databaseInfo"    # Lcom/google/firebase/firestore/core/DatabaseInfo;
    .param p4, "datastore"    # Lcom/google/firebase/firestore/remote/Datastore;
    .param p5, "initialUser"    # Lcom/google/firebase/firestore/auth/User;
    .param p6, "maxConcurrentLimboResolutions"    # I
    .param p7, "settings"    # Lcom/google/firebase/firestore/FirebaseFirestoreSettings;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/google/firebase/firestore/core/ComponentProvider$Configuration;->context:Landroid/content/Context;

    .line 68
    iput-object p2, p0, Lcom/google/firebase/firestore/core/ComponentProvider$Configuration;->asyncQueue:Lcom/google/firebase/firestore/util/AsyncQueue;

    .line 69
    iput-object p3, p0, Lcom/google/firebase/firestore/core/ComponentProvider$Configuration;->databaseInfo:Lcom/google/firebase/firestore/core/DatabaseInfo;

    .line 70
    iput-object p4, p0, Lcom/google/firebase/firestore/core/ComponentProvider$Configuration;->datastore:Lcom/google/firebase/firestore/remote/Datastore;

    .line 71
    iput-object p5, p0, Lcom/google/firebase/firestore/core/ComponentProvider$Configuration;->initialUser:Lcom/google/firebase/firestore/auth/User;

    .line 72
    iput p6, p0, Lcom/google/firebase/firestore/core/ComponentProvider$Configuration;->maxConcurrentLimboResolutions:I

    .line 73
    iput-object p7, p0, Lcom/google/firebase/firestore/core/ComponentProvider$Configuration;->settings:Lcom/google/firebase/firestore/FirebaseFirestoreSettings;

    .line 74
    return-void
.end method


# virtual methods
.method getAsyncQueue()Lcom/google/firebase/firestore/util/AsyncQueue;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/google/firebase/firestore/core/ComponentProvider$Configuration;->asyncQueue:Lcom/google/firebase/firestore/util/AsyncQueue;

    return-object v0
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/google/firebase/firestore/core/ComponentProvider$Configuration;->context:Landroid/content/Context;

    return-object v0
.end method

.method getDatabaseInfo()Lcom/google/firebase/firestore/core/DatabaseInfo;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/google/firebase/firestore/core/ComponentProvider$Configuration;->databaseInfo:Lcom/google/firebase/firestore/core/DatabaseInfo;

    return-object v0
.end method

.method getDatastore()Lcom/google/firebase/firestore/remote/Datastore;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/google/firebase/firestore/core/ComponentProvider$Configuration;->datastore:Lcom/google/firebase/firestore/remote/Datastore;

    return-object v0
.end method

.method getInitialUser()Lcom/google/firebase/firestore/auth/User;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/google/firebase/firestore/core/ComponentProvider$Configuration;->initialUser:Lcom/google/firebase/firestore/auth/User;

    return-object v0
.end method

.method getMaxConcurrentLimboResolutions()I
    .locals 1

    .line 97
    iget v0, p0, Lcom/google/firebase/firestore/core/ComponentProvider$Configuration;->maxConcurrentLimboResolutions:I

    return v0
.end method

.method getSettings()Lcom/google/firebase/firestore/FirebaseFirestoreSettings;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/google/firebase/firestore/core/ComponentProvider$Configuration;->settings:Lcom/google/firebase/firestore/FirebaseFirestoreSettings;

    return-object v0
.end method
