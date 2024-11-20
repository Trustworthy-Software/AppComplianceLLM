.class Lcom/google/firebase/firestore/core/SyncEngine$LimboResolution;
.super Ljava/lang/Object;
.source "SyncEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/core/SyncEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LimboResolution"
.end annotation


# instance fields
.field private final key:Lcom/google/firebase/firestore/model/DocumentKey;

.field private receivedDocument:Z


# direct methods
.method constructor <init>(Lcom/google/firebase/firestore/model/DocumentKey;)V
    .locals 0
    .param p1, "key"    # Lcom/google/firebase/firestore/model/DocumentKey;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Lcom/google/firebase/firestore/core/SyncEngine$LimboResolution;->key:Lcom/google/firebase/firestore/model/DocumentKey;

    .line 102
    return-void
.end method

.method static synthetic access$000(Lcom/google/firebase/firestore/core/SyncEngine$LimboResolution;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/firebase/firestore/core/SyncEngine$LimboResolution;

    .line 90
    iget-boolean v0, p0, Lcom/google/firebase/firestore/core/SyncEngine$LimboResolution;->receivedDocument:Z

    return v0
.end method

.method static synthetic access$002(Lcom/google/firebase/firestore/core/SyncEngine$LimboResolution;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/firestore/core/SyncEngine$LimboResolution;
    .param p1, "x1"    # Z

    .line 90
    iput-boolean p1, p0, Lcom/google/firebase/firestore/core/SyncEngine$LimboResolution;->receivedDocument:Z

    return p1
.end method

.method static synthetic access$100(Lcom/google/firebase/firestore/core/SyncEngine$LimboResolution;)Lcom/google/firebase/firestore/model/DocumentKey;
    .locals 1
    .param p0, "x0"    # Lcom/google/firebase/firestore/core/SyncEngine$LimboResolution;

    .line 90
    iget-object v0, p0, Lcom/google/firebase/firestore/core/SyncEngine$LimboResolution;->key:Lcom/google/firebase/firestore/model/DocumentKey;

    return-object v0
.end method
