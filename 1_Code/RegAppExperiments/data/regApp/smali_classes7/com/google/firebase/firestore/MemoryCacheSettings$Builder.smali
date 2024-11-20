.class public Lcom/google/firebase/firestore/MemoryCacheSettings$Builder;
.super Ljava/lang/Object;
.source "MemoryCacheSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/MemoryCacheSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private gcSettings:Lcom/google/firebase/firestore/MemoryGarbageCollectorSettings;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-static {}, Lcom/google/firebase/firestore/MemoryEagerGcSettings;->newBuilder()Lcom/google/firebase/firestore/MemoryEagerGcSettings$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/firestore/MemoryEagerGcSettings$Builder;->build()Lcom/google/firebase/firestore/MemoryEagerGcSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/firestore/MemoryCacheSettings$Builder;->gcSettings:Lcom/google/firebase/firestore/MemoryGarbageCollectorSettings;

    .line 71
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/firestore/MemoryCacheSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firebase/firestore/MemoryCacheSettings$1;

    .line 68
    invoke-direct {p0}, Lcom/google/firebase/firestore/MemoryCacheSettings$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/firebase/firestore/MemoryCacheSettings;
    .locals 3

    .line 76
    new-instance v0, Lcom/google/firebase/firestore/MemoryCacheSettings;

    iget-object v1, p0, Lcom/google/firebase/firestore/MemoryCacheSettings$Builder;->gcSettings:Lcom/google/firebase/firestore/MemoryGarbageCollectorSettings;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/firestore/MemoryCacheSettings;-><init>(Lcom/google/firebase/firestore/MemoryGarbageCollectorSettings;Lcom/google/firebase/firestore/MemoryCacheSettings$1;)V

    return-object v0
.end method

.method public setGcSettings(Lcom/google/firebase/firestore/MemoryGarbageCollectorSettings;)Lcom/google/firebase/firestore/MemoryCacheSettings$Builder;
    .locals 0
    .param p1, "gcSettings"    # Lcom/google/firebase/firestore/MemoryGarbageCollectorSettings;

    .line 82
    iput-object p1, p0, Lcom/google/firebase/firestore/MemoryCacheSettings$Builder;->gcSettings:Lcom/google/firebase/firestore/MemoryGarbageCollectorSettings;

    .line 83
    return-object p0
.end method
